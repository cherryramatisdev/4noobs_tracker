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
