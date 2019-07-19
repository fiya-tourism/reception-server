
<div id="phone_rwm">
    <img src="/images/phone_rwm.png">
    <p>手机扫一扫二维码<br>观看手机端</p>
</div>
<!--首页轮播图-->
<script src="/js/jquery.superslide.2.1.1.js" type="text/javascript"></script>
<div class="h_banner">
    <ul class="h_b_list">
        <li><a style="background:url(/images/banner1.jpg) no-repeat center;" href="#"></a></li>
        <li><a style="background:url(/images/banner2.png) no-repeat center;" href="#"></a></li>
        <li><a style="background:url(/images/banner3.jpg) no-repeat center;" href="#"></a></li>
        <li><a style="background:url(/images/banner4.png) no-repeat center;" href="#"></a></li>
    </ul>
    <a class="prev" href="javascript:void(0)"></a>
    <a class="next" href="javascript:void(0)"></a>
</div>
<script>
    //鼠标移过，左右按钮显示
    $(".h_banner").hover(function(){
        $(this).find(".prev,.next").fadeTo("show",0.5);
    },function(){
        $(this).find(".prev,.next").hide();
    });
    /*鼠标移过某个按钮 高亮显示*/
    $(".prev,.next").hover(function(){
        $(this).fadeTo("show",1);
    },function(){
        $(this).fadeTo("show",0.7);
    });
    $(".h_banner").slide({ titCell:".num ul" , mainCell:".h_b_list" , effect:"fold", autoPlay:true, delayTime:700 , autoPage:true });
</script>
