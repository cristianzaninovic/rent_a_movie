// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import 'popper'
import 'bootstrap'
import "jquery"
import "jquery_ujs"
import "./jquery_ui"

document.addEventListener('DOMContentLoaded', () => {
  document.addEventListener('click', (event) => {
    if (event.target.classList.contains('remove-client')) {
      event.preventDefault();
      const nestedFields = event.target.closest('.nested-fields');
      const clientIdInput = nestedFields.querySelector('input[name*="[client_id]"]');
      
      if (clientIdInput) {
        clientIdInput.value = null;
      }
      
      const destroyField = nestedFields.querySelector('input[type="hidden"][name*="_destroy"]');
      if (destroyField) {
        destroyField.value = '1';
      }
      nestedFields.style.display = 'none';
    }
  });
});