// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require_tree .

$(document).ready(function(){

  let bars = { 'rails-bar' : 90 ,
               'trinity-bar' : 85 ,
               'docker-bar': 70,
               'postgres-bar' : 75 ,
               'mysql-bar' : 50 ,
               'python-bar' : 45,
               'react-bar' : 55 };

  function startAnimation(entries, observer)
  {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        $(entry.target).children().addClass("skill-text")
        $(entry.target).width(`${bars[entry.target.id]}%`);
      }
    });
  }

  let options = {
      root: null,
      rootMargin: '0px',
      threshold: 0.3
    };

  let observer = new IntersectionObserver(startAnimation, options);

  Object.keys(bars).forEach(key => {
    observer.observe(document.getElementById(key));
  });

  $( "#new_contact" ).submit(function( event ) {
    $("#new_contact").fadeOut();
    $("#contact-container").append("<p class='lead text-center response-message'>Thank you for your message! I'll be in touch soon!</p>");
  });
});
