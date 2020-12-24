$(".card-box").click(function() {
    $(".display-box").addClass("display-box-show");        
    $(".black").css("display", "block");
    $(".black").click(function() {
        $(".display-box").removeClass("display-box-show");
        $(".shopping-cart-box").removeClass("display-box-show");
        $(".black").css("display", "none");
    })
});

$(".shopping-cart").click(function() {
    $(".shopping-cart-box").addClass("display-box-show");
    $(".black").css("display", "block");
    $(".black").click(function() {
        $(".shopping-cart-box").removeClass("display-box-show");
        $(".black").css("display", "none");
    })
});    

$(".close-display-box").click(function() {
    $(".display-box").removeClass("display-box-show");
    $(".shopping-cart-box").removeClass("display-box-show");
    $(".black").css("display", "none");
});

$(".display-icon-plus").click(function() {
    $(".display-qty").get(0).value++;
})

$(".display-icon-minus").click(function() {
    if ($(".display-qty").val() != 1) {
        $(".display-qty").get(0).value--;
    }
})

