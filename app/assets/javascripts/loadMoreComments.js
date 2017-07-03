$(document).ready(function(){
	$('.more-comments').on('click', function(){
		$(this).on('ajax:success', function(event, data, status, xhr){
			var postID=$(this).data('post-id');
			$('#comments_'+postID).html(data);
			$('#comments-paginator-'+postID).html('<a id="more-comments" data-post-id='+postID+'data-type="html" data-remote="true" href="/posts/'+postID+'/comments>show more comments</a>');
		});
	});
});