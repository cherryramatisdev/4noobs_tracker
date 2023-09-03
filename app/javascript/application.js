// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

window.addEventListener('load', function () {
  var loadingSpinner = document.getElementById('loading-spinner');
  if (loadingSpinner) {
    // Set a short delay to ensure a smooth fade-out effect
    setTimeout(function () {
      loadingSpinner.style.opacity = 0;
      // After the opacity transition, hide the spinner
      setTimeout(function () {
        loadingSpinner.style.display = 'none';
      }, 300);
    }, 300);
  }
});
