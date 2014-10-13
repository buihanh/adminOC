$( document ).ready(function() {



    $("#hide-btn").click(function(){
        $(".download-view").animate({height:"0px"});
        $("#hide-btn").hide();
        $("#show-btn").show();
        $("#top-header").hide();
    });


    $("#show-btn").click(function(){
        $(".download-view").animate({height:"63px"});
        $("#hide-btn").show();
        $("#show-btn").hide();
        $("#top-header").show();
    });

    $("#preview-frame ").css("height","768px");
    //$( "#page" ).removeClass( "tablet-landscapes tablet-portraits smartphone-landscapes smartphone-portraits" );

    $( "#target-btn" ).click(function() {
        $( ".download-view " ).toggle();
    });

    $( ".auto" ).click(function() {
        $( "#page" ).removeClass( "tablet-landscapes tablet-portraits smartphone-landscapes smartphone-portraits" );
        $("#preview-frame ").css("height","768px");
    });
    $( ".tablet-landscape" ).click(function() {
        $("#preview-frame ").css("height","768px");
        $( "#page" ).removeClass( "tablet-landscapes tablet-portraits smartphone-landscapes smartphone-portraits" ).addClass("tablet-landscapes");

    });
    $( ".tablet-portrait" ).click(function() {
        $("#preview-frame ").css("height","1034px");
        $( "#page" ).removeClass( "tablet-landscapes tablet-portraits smartphone-landscapes smartphone-portrait" ).addClass("tablet-portraits");

    });
    $( ".smartphone-landscape" ).click(function() {
        $("#preview-frame ").css("height","318px");
        $( "#page" ).removeClass( "tablet-landscapes tablet-portraits smartphone-landscapes smartphone-portraits" ).addClass("smartphone-landscapes");

    });
    $( ".smartphone-portrait" ).click(function() {
        $("#preview-frame ").css("height","480px");
        $( "#page" ).removeClass( "tablet-landscapes tablet-portraits smartphone-landscapes smartphone-portraits" ).addClass("smartphone-portraits");

    });
	$("#search").keyup(
		function(){
			url = $('base').attr('href') + 'index.php?route=product/demo/search';
			//alert(url);
			search = $("#search").val();
			 $.ajax({
				type: "post",
				url : url,  
				data:{'search':search},
				dataType : "json",
				success : function(data){
				  
				  var temp = '<ul>';
					  for(var i in data)
					  {
						 temp += '<li>';
							 temp += '<a href="'+data[i]['href']+'">'+data[i]['name']+'</a>';							
						 temp += '<span>'+data[i]['price']+'</span></li>';
					  }
				   temp += '</ul>';
				   $(".search-content").html(temp);
				   
				 }
			});
		}
	);

});
