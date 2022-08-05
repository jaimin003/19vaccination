/*
Theme Name: Carona - Corona virus (COVID-19) Medical Template
Author: Codezion Softwares
Author URL: https://themeforest.net/user/codezionsoftwares
Version: 1.0.0
*/
(function ($) {
  'use strict';
  	// custom-select
  	$(document).ready(function() {
        $('.custom-select').niceSelect();
        $("td:empty").addClass('no-bg')
    });
    // Navigation fix
	$(window).scroll(function () {
	    var sticky = $('.header .navigation-wrapper'),
	      scroll = $(window).scrollTop();
	    if (scroll >= 100) sticky.addClass('sticky');
	    else sticky.removeClass('sticky');
	});
    $(document).ready(function () {
	    $(".hamburger-menu").click(function () {
	      $(".menu-btn").toggleClass("active");
	      $(".main-menu").toggleClass("active");
	      $("body").toggleClass("menu-open");
	      $('html').toggleClass('overflow');
	    });
	});
    // Navigation
    $(document).ready(function () {
	    $('.main-menu li.menu-item-has-children>a, .main-menu li.menu-item-has-megamenu>a').on('click', function () {
	      $(this).removeAttr('href');
	      var element = $(this).parent('li');
	      if (element.hasClass('open')) {
	        element.removeClass('open');
	        element.find('li').removeClass('open');
	        element.find('ul.submenu, .megamenu').slideUp();
	      } else {
	        element.addClass('open');
	        element.children('ul.submenu, .megamenu').slideDown();
	        element.siblings('li').children('ul.submenu, .megamenu').slideUp();
	        element.siblings('li').removeClass('open');
	        element.siblings('li').find('li').removeClass('open');
	        element.siblings('li').find('ul.submenu, .megamenu').slideUp();
	      }
	    });
	    $('.menu-item-has-children>a').append('<span class="arrow"></span>');
    	$('.menu-item-has-megamenu>a').append('<span class="arrow"></span>');
	});
	// counter
    $('.count').each(function () {
        $(this).prop('Counter', 0).animate({
            Counter: $(this).text()
        }, {
            duration: 4000,
            easing: 'swing',
            step: function (now) {
                $(this).text(Math.ceil(now));
            }
        });
    });
    // Datepicker
	$(document).ready(function () {
	    $('.datepickr').datepicker({
	      timepicker: false,
	      minDate: new Date()
	    });
	    $('.dob').datepicker({
	      timepicker: false,
	    });
	    $('.timepickr').datepicker({
	      timepicker: true,
	      onlyTimepicker: true,
	      range: true,
	    });
	});
	// Button style
    $('.btn_text_effect .button_title').each(function () {
		$(this).html($(this).text().replace(/([^\x00-\x80]|\w)/g, "<span class='btn_letters'>$&</span>"));
	});
	var btnHover = document.querySelectorAll('.btn_text_effect');
	btnHover.forEach(function (btnHover) {
		btnHover.addEventListener('mouseenter', function () {
			var letter = btnHover.querySelectorAll('.btn_letters');
			anime.timeline({}).add({
				targets: letter,
				translateY: ["1.1em", 0],
				translateZ: 0,
				duration: 750,
				delay: (el, i) => 50 * i
			});
		});
	});
	// doctors-slider
	$('.doctors-slider').slick({
	    slidesToShow: 4,
	    slidesToScroll: 1,
	    arrows: false,
	    dots: false,
	    infinite: true,
	    autoplay: true,
	    autoplaySpeed: 1000,
	    speed: 3000,
	    cssEase: 'linear',
	    pauseOnHover: true,
	    responsive: [{
			breakpoint: 1200,
			settings: {
				slidesToShow: 3,
			}
		},{
			breakpoint: 992,
			settings: {
				slidesToShow: 2,
			}
		},{
			breakpoint: 550,
			settings: {
				slidesToShow: 1,
			}
		}]
	});
	// blog-slider
	$('.blog-slider').slick({
	    slidesToShow: 3,
	    slidesToScroll: 1,
	    arrows: false,
	    dots: false,
	    infinite: true,
	    autoplay: true,
	    autoplaySpeed: 1000,
	    speed: 3000,
	    cssEase: 'linear',
	    pauseOnHover: true,
	    responsive: [{
			breakpoint: 992,
			settings: {
				slidesToShow: 2,
			}
		},{
			breakpoint: 767,
			settings: {
				slidesToShow: 1,
			}
		}]
	});
	// sponser-slider
	$('.sponser-slider').slick({
	    slidesToShow: 6,
	    slidesToScroll: 1,
	    arrows: false,
	    dots: false,
	    infinite: true,
	    autoplay: true,
	    autoplaySpeed: 1000,
	    speed: 3000,
	    cssEase: 'linear',
	    pauseOnHover: true,
	    responsive: [{
			breakpoint: 992,
			settings: {
				slidesToShow: 4,
			}
		},{
			breakpoint: 767,
			settings: {
				slidesToShow: 3,
			}
		},{
			breakpoint: 500,
			settings: {
				slidesToShow: 2,
			}
		}]
	});
	// ft-tweets-slider
  	$('.ft-tweets-slider').slick({
	    infinite: true,
	    slidesToShow: 3,
	    slidesToScroll: 1,
	    arrows: false,
	    dots:false,
	    vertical:true,
	    autoplay: true,
	    autoplaySpeed: 0,
	    speed: 3000,
	    cssEase: 'linear',
	    pauseOnHover: true
	});
	// popular-post-slider
	$('.popular-post-slider, .recent-post-slider').slick({
	    slidesToShow: 1,
	    slidesToScroll: 1,
	    arrows: true,
	    dots: false,
	    infinite: true,
	    autoplay: true,
	    autoplaySpeed: 1000,
	    speed: 3000,
	    cssEase: 'linear',
	    pauseOnHover: true
	});
	// Contact Us
	$(document).ready(function($){
      // on focus
      $(".form-style-1 .form-control").focus(function() {
          $(this).siblings("label").addClass("has-value");
      })
      // blur input fields on unfocus + if has no value
      .blur(function() {
        var text_val = $(this).val();
        if(text_val === "") {
          $(this).siblings("label").removeClass("has-value");
        }
      });
    }); 
    // time counter
	function makeTimer() {
	    var endTime = new Date("01 January 2021 00:00:00 GMT+05:30");
	    endTime = (Date.parse(endTime) / 1000);
	    var now = new Date();
	    now = (Date.parse(now) / 1000);
	    var timeLeft = endTime - now;
	    var days = Math.floor(timeLeft / 86400);
	    var hours = Math.floor((timeLeft - (days * 86400)) / 3600);
	    var minutes = Math.floor((timeLeft - (days * 86400) - (hours * 3600)) / 60);
	    var seconds = Math.floor((timeLeft - (days * 86400) - (hours * 3600) - (minutes * 60)));
	    if (hours < "10") {
	      hours = "0" + hours;
	    }
	    if (minutes < "10") {
	      minutes = "0" + minutes;
	    }
	    if (seconds < "10") {
	      seconds = "0" + seconds;
	    }
	    $("#cvdays").html(days);
	    $("#cvhours").html(hours);
	    $("#cvminutes").html(minutes);
	    $("#cvseconds").html(seconds);
	}
	setInterval(function () {
	    makeTimer();
	}, 1000);
	// smooth scroll
	  $.fn.smoothScroll = function (setting) {
	    var _default = {
	        duration: 1000,
	        easing: 'swing',
	        offset: 0,
	        top: '100px'
	      },
	      _setting = $.extend(_default, setting),
	      _handler = function () {
	        var dest = 0,
	          target = this.hash,
	          $target = $(target);
	        $(this).on('click', function (e) {
	          e.preventDefault();
	          if ($target.offset().top > ($(document).height() - $(window).height())) {
	            dest = $(document).height() - $(window).height();
	          } else {
	            dest = $target.offset().top - _setting.offset;
	          }
	          $('html, body').animate({
	            scrollTop: dest
	          }, _setting.duration, _setting.easing);
	        });
	      };
	    return this.each(_handler);
	  };
	  $('.scrollbtn').smoothScroll({
	    duration: 1000, // animation speed
	    easing: 'swing', // find more easing options on http://api.jqueryui.com/easings/
	    offset: 0 // custom offset
	  });
    // back to top
	var offset = 220;
	var duration = 500;
	$(window).on('scroll', function() {
	    if ($(this).scrollTop() > offset) {
	        $('.back-top').fadeIn(duration);
	    } else {
	        $('.back-top').fadeOut(duration);
	    }
	});
	$('.back-top').on('click', function(event) {
	    event.preventDefault();
	    $('html, body').animate({scrollTop: 0}, "slow");
	    return false;
	});
	if($(window).scrollTop() > offset) {
	    $('.back-top').fadeOut(0);
	}
	$('a[href="#"]').click(function(e) {
	    e.preventDefault ? e.preventDefault() : e.returnValue = false;
	});
})(jQuery);