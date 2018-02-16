$(document).ready(function(){
    $("a.sidebar-toggle").on("click", function(){
       $("body").toggleClass("sidebar-open");
    });
    $("#cancel").on("click", function(){
        $(".popUpBg").hide(1000);
    });
    $(".orderIt").on("click", function(){
        $(".popUpBg").show(1000);
        $("form input[name='book_id']").val($("#product h2").attr("id"));        
    });
    $('#comments').DataTable();
});
