document.addEventListener('DOMContentLoaded', function() {
  var menuButton = document.getElementById('button');
  var closeButton = document.getElementById('close-button');
  var menu = document.getElementById('menu');

  menuButton.addEventListener('click', function() {
    menu.classList.remove('hidden');
  });

  closeButton.addEventListener('click', function() {
    menu.classList.add('hidden');
  });
});
