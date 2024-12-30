// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "jquery";
import "semantic-ui";

/* helper function to get the value of the menu and redirect to the selected page */
var urlmenu = document.getElementById('account');
urlmenu.onchange = function () {
    console.log("here");
    if (this.value !== '') window.location = this.options[this.selectedIndex].value;
};


