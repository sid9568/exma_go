import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    const btn = document.querySelector("button.mobile-menu-button");
    const menu = document.querySelector(".mobile-menu");

    btn.addEventListener("click", () => {
      menu.classList.toggle("hidden");
    });
  }

  show_hide() {
    var dropdown = document.querySelector('.dropdown1');
    dropdown.classList.toggle('open');
  }
}
