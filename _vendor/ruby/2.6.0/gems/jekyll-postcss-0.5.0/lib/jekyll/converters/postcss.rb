# frozen_string_literal: true

require "digest"
require_relative "../../jekyll-postcss/socket"

module Jekyll
  module Converters
    class PostCss < Converter
      safe true
      priority :normal

      def initialize(config = {})
        super

        @cache_enabled = config.fetch("postcss", {}).fetch("cache", true)
        @socket = config.fetch("socket") { ::PostCss::Socket.new }
        @raw_cache = nil
        @import_raw_cache = {}
        @converted_cache = nil
      end

      def matches(ext)
        [".css", ".scss", ".sass"].include?(ext.downcase)
      end

      def output_ext(ext)
        ext
      end

      def convert(content)
        raise PostCssNotFoundError unless Dir.exist?("./node_modules/postcss")

        @raw_digest = Digest::MD5.hexdigest content
        @raw_import_digests = import_digests(content)

        if cache_disabled? || cache_miss?
          @raw_cache = @raw_digest.dup
          @import_raw_cache = @raw_import_digests.dup

          @socket.write content

          @converted_cache = @socket.read
        end

        reset

        @converted_cache
      end

      private

      def import_digests(content)
        content
          .scan(%r!^@import "(?<file>.*)";$!)
          .flatten
          .each_with_object({}) do |import, acc|
            file = "#{import}.css"
            acc[import] = Digest::MD5.hexdigest IO.read(file) if File.file?(file)
          end
      end

      def cache_disabled?
        @cache_enabled == false
      end

      def cache_miss?
        @raw_import_digests
          .map { |import, hash| @import_raw_cache[import] != hash }
          .unshift(@raw_cache != @raw_digest)
          .any?
      end

      def reset
        @raw_digest = nil
        @raw_import_digest = nil
      end
    end
  end
end

class PostCssNotFoundError < RuntimeError; end
