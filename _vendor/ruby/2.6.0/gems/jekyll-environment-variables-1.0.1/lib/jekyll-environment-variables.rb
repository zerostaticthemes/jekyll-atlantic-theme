module Jekyll
  class EnvironmentVariables < Generator
    def generate(site)
      site.config['env'] = {}
      ENV.each do |key, value|
        site.config['env'][key] = value
      end
    end
  end
end
