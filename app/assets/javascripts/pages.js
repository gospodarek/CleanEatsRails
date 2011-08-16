jQuery.noConflict();

jQuery(document).ready(function() {  
     jQuery("a[rel^='prettyPhoto']").prettyPhoto(
		{show_title: false}
	);
	
 });

(function ( $, window, document, undefined ) {
	$('.post_text_link').live('click', function (e){
		var txt = $(this).parent().children('.post_extended_text');//this goes to parent and then finds .post_extended_text child
		var comment_text = $(this).parent().children('.comments');
		if (txt.css("display")=="none") {
			txt.css("display", "inline");
			comment_text.css("display", "inline");
			$(this).html('Hide');
		} else {
			txt.css("display", "none");
			comment_text.css("display", "none");
			$(this).html(' ...More');
		}
		return false;
	})
})( jQuery, this, document );


