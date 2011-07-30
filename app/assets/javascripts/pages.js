(function ( $, window, document, undefined ) {
	$('.post_text_link').live('click', function (e){
		$('.post_extended_text').toggle();
		$(this).html('Hide');//this changes the link text
		return false;
	})
})( jQuery, this, document );


