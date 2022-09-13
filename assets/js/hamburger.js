var body = document.querySelector('body');
var menuOpenTrigger = document.querySelector('#menu-trigger');
var menuCloseTrigger = document.querySelector('#menu-close');
var menuContainer = document.querySelector('#menu-container');
var hamburgerIcon = document.querySelector('.hamburger');

if (menuOpenTrigger !== null) {
  menuOpenTrigger.addEventListener('click', function(e) {
    console.log("asldj")
    menuContainer.classList.toggle('hidden');
    menuContainer.classList.toggle('flex');
    hamburgerIcon.classList.toggle('is-active');
    body.classList.toggle('lock-scroll');
  });
  menuCloseTrigger.addEventListener('click', function(e) {
    console.log("asldj")
    menuContainer.classList.toggle('hidden');
    menuContainer.classList.toggle('flex');
    hamburgerIcon.classList.toggle('is-active');
    body.classList.toggle('lock-scroll');
  });
}
