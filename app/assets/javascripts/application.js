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

    // 闹钟震动
    function state1(){
	$(".bell").removeClass("r2"); 
	$(".bell").addClass("r1");
	setTimeout(state2,90);
    }
    function state2(){	   
	$(".bell").removeClass("r1");
	$(".bell").addClass("r2"); 
	setTimeout(state1,90);
    }
    state1();
//    $("body").append('')
/*
    var ws = new SockJS('http://127.0.0.1:15674/stomp');
    var client = Stomp.over(ws);
    var on_connect = function() {
	client.subscribe("/MessageAlarm", function(m) {
	    alert(m)
	});
    };
    var on_error =  function() {
	alert(2)
    };
    client.connect('guest', 'guest', on_connect, on_error, '/');
*/

});
