// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

window.addEventListener('load', function () {
  var loadingSpinner = document.getElementById('loading-spinner');
  if (loadingSpinner) {
    setTimeout(function () {
      loadingSpinner.style.opacity = 0;

      setTimeout(function () {
        loadingSpinner.style.display = 'none';
      }, 300);
    }, 300);
  }
});
