import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['clientsFields'];

  connect() {
    console.log('ClientFields controller connected');
  }

  async loadExistingClientFields(event) {
    event.preventDefault();
    const response = await fetch('/movies/existing_client_fields');
    var content = await response.text();
    // var content = content.replace(/NEW_RECORD/g, new Date().valueOf())
    console.log(content);
    this.clientsFieldsTarget.insertAdjacentHTML('beforeend', content);
  }

  async loadNewClientFields(event) {
    event.preventDefault();
    const response = await fetch('/movies/new_client_fields');
    var content = await response.text();
    var content = content.replace(/NEW_RECORD/g, new Date().valueOf())
    console.log(content);
    this.clientsFieldsTarget.insertAdjacentHTML('beforeend', content);
  }
}