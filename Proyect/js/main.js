$(document).ready(function  (){

	
var buttons = ".buttons .nav-link:nth-child";

$( 	buttons + '(1) .icon' ).hover(

//hover function

	function(){
		$(this).css({

			"border-radius" : "30px",
			"padding" : "20px 10px"
		});

		$(buttons + '(1) .icon-text').css({
			"width" : "130px",
			"padding" : "6px 39px"
		})

	},

	//hover over fuction

	function(){

		$(this).css({

			"border-radius" : "20px 10px",
			"padding" : "10px 13px"
		});
		$(buttons + '(1) .icon-text').css({
			"width" : "0px",
			"padding" : "6px 0px"
		})
	}

 );

	


});