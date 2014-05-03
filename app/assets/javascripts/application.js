// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require highcharts
//= require_tree .

$(document).ready(function(){
    function setWrapperMinHeight() {
        $win_height = window.innerHeight;
	$doc_height = $(document).height();
	$relative =(($win_height > $doc_height ? $win_height : $doc_height ));
	$(".row-fluid").css("min-height",($relative-$('.navbar').height() - $('.footer').height()));
    }
    setWrapperMinHeight();
    window.onresize = function() {
	setWrapperMinHeight();
    }
});
