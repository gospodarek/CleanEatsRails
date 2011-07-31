(function ( $, window, document, undefined ) {
	$('.post_text_link').live('click', function (e){
		var txt = $(this).parent().children('.post_extended_text');
		if (txt.css("display")=="none") {
			txt.css("display", "inline");
			$(this).html('Collapse');
		} else {
			txt.css("display", "none");
			$(this).html(' ...More');
		}
		return false;
	})
})( jQuery, this, document );


//$(document).ready(function() {
  //    $("#markItUp").markItUp(mySettings);
 //  });
