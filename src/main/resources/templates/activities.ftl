﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>活动详情</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<!-------------jquery库-------------->
  	<script type="text/javascript" src="/js/jquery-1.8.3.min.js"></script>
	<!-------------Amazeui--------------->
    <script type="text/javascript" src="/js/amazeui.js"></script>
    <link rel="stylesheet" type="text/css" href="/css/amazeui.css">
    <!------------核心样式-------------->
    <link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
<!-------------------工具栏------------------->
<div id="toolbar">
    <div class="cw1200">
        <ul class="fl">
            <li class="tb"><p>您好，欢迎访问河洛文化旅游网！</p></li>
            <li class="tb"><a href="/login.html">登录</a><span>|</span></li>
            <li class="tb"><a href="/register.html">注册</a></li>
        </ul>
        <ul class="fr">
            <li class="tb">
				<a href="#">我的河洛</a>
				<!-------------------用户------------------->
				<div class="user">
					<a class="user-hd" href="#">
						<img src="/images/user_head_pic.jpg"/><b></b>
						<div class="clear"></div>
					</a>
					<div class="user-bd">
						<div class="integral"><img src="/images/integral_ico.png"/>当前积分 609</div>
						<ul class="nav_sort">
							<li><a href="/my_index.html"><i class="i1"></i>我的主页</a></li>
							<li><a href="/write_note.html"><i class="i2"></i>写游记</a></li>
							<li><a href="/my_note.html"><i class="i9"></i>我的游记</a></li>
							<li><a href="/collection_list.html"><i class="i3"></i>我的收藏</a></li>
							<li><a href="/project_order.html"><i class="i4"></i>商品订单</a></li>
							<li><a href="/scenic_order.html"><i class="i5"></i>旅游订单</a></li>
							<li><a href="/note_comments.html"><i class="i6"></i>我的评论</a></li>
							<li><a href="/my_info.html"><i class="i7"></i>设置</a></li>
							<li><a href="#"><i class="i8"></i>退出</a></li>
						</ul>
					</div>
				</div>
				<span>|</span>
			</li>
            <li class="tb"><a href="/shop_car.html"><i class="cart_ico"></i>购物车</a><span>|</span></li>
            <li class="tb"><a href="/news_list.html">用户帮助中心</a><span>|</span></li>
            <li class="tb"><img src="/images/tel_ico.gif"/><font>40000-40000</font></li>
        </ul>
        <div class="clear"></div>
    </div>
</div>
<!-------------------版头------------------->
<div id="header">
    <div class="cw1200">
        <!-------------------logo------------------->
        <div class="logo fl"><a href="index.html"><img src="images/t_logo.jpg"></a></div>
        <div class="search_nav fl">
            <!-------------------搜索------------------->
            <div class="search radius6">
				<form name="searchform" method="post" action="/e/search/index.php">
					<input name='ecmsfrom' type='hidden' value='9'>
					<input type="hidden" name="show" value="title,newstext">
					<select name="classid" id="choose">
						<option value="0">景区</option>
						<option value="1">特产</option>
						<option value="4">游记</option>
						<option value="22">文章</option>
					</select> 
					<input class="inp_srh" name="keyboard"  placeholder="请输入您要搜索的关键词" >
					<input class="btn_srh" type="submit" name="submit" value="搜索">
				</form>
			</div>
			<script type="text/javascript" src="js/jquery.select.js"></script>
            <!-------------------导航------------------->
            <div class="nav">
                <ul>
                    <li><a title="" href="index.html">首页</a></li>
                    <li>
						<a title="" class="cur" href="scenic_list.html">
							孟津旅游
					
						</a>
					</li>
                    <li><a title="" href="mall_list.html">特产商城</a></li>
                    <li><a title="" href="note_list.html">美丽乡村</a></li>
                    <li><a title="" href="news_list.html">新闻资讯</a></li>
                </ul>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>
<!------------------子页框架-------------------->
<div id="sub_from" style="padding-top:10px;">
    <div class="cw1200">
		<!------------------公共盒子-------------------->
		<div class="public_box bg1">
			<div class="public_title">
				<div class="fl"><img src="images/from_title_left.png"/></div>
				<div class="con">
					<div class="lamp_ico"><img src="images/lamp_ico.png"/></div>
					<div class="name"><img src="images/f_t_activity_enrolment.png"/></div>
				</div>
				<div class="fr"><img src="images/from_title_right.png"/></div>
				<div class="clear"></div>
			</div>
			<!------------------活动报名-------------------->
			<div id="activity_enrolment">
				<div class="pic"><img src="images/n1.jpg"/></div>
				<div class="con">
					<h2>春节逛吃哪里去？看洛阳庙会、灯展集锦</h2>
					<ul>
						<li><font>出发时间：2017/01/23</font></li>
						<li>活动咨询：<span>0379-63789053</span><p>集合地点：<span>洛阳市关林庙会</span></p></li>
						<li>活动费用：<label>￥495</label></li>
					</ul>
					<div class="buy"><a href="submit_orders.html">立即报名</a><span>参团人数：15/30</span></div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		<div class="w810 fl">
			<!------------------公共盒子-------------------->
			<div class="public_box bg1">
				<div class="public_title">
					<div class="fl"><img src="images/from_title_left.png"/></div>
					<div class="con">
						<div class="lamp_ico"><img src="images/lamp_ico.png"/></div>
						<div class="name"><img src="images/f_t_activity_introduce.png"/></div>
					</div>
					<div class="fr"><img src="images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------特产详情-------------------->
				<div id="article">
					1、洛阳白云山度假区：名家好戏连连看
				　　洛阳白云山23年来首度冬季不闭园，大年初一至初三，在白云山铜河游客服务中心广场，推出“鸿运当头，好戏连连看”原汁原味过大年活动。
				　　主要节目：锣鼓队、大型舞狮和小型舞狮开场表演。开封市豫剧团表演三天，主要剧目：穆桂英挂帅、疯哑怨、文状元挂帅、桃花庵、伍子胥反朝、打金枝、泪洒相思地、清风亭、李文忠征北、五世请缨、钱塘江血案、开馆审子、杨靖招亲、包青天、陈平打朝、三孝堂、大型神话剧《包公探阴山》、大型现代戏《我爱我爹》、李树建进京剧目十大精品之一《程婴救孤》。
				　　地址：白云山景区游客服务中心广场
				　　2、木札岭速龙滑雪场冰雪狂欢节
				　　活动主题：全民健身，滑雪嘉年华!活动时间：2017年元月23日至元月26日(非周末时间段);参与对象：以寒假休假的中小学生、家长为主，倡导亲子游、亲情游、自然游;优惠政策：一进三，即一张滑雪门票进三人，代理机构按协议的价格政策执行;活动限量：9999人，一进三，只需要3333张票，其中，6666人为免门票。组织形式：由各地市代理社团负责具体的组织实施，可团可散，散团同价;价格指导：散客，128元滑雪票，进一家三人。电话：0379-66586688
				　　3、白云山下冰雪乐园春节期间优惠活动
				　　原价138元全天不限时滑雪票，持嵩县身份证优惠到30元/人，
				　　持嵩县身份证享受138元全天滑雪不限时，送木屋别墅住宿!电话：0379-62757033 62757035
				　　4、嵩湖生态园：”返璞归真忆童年“5天乐民俗文化活动
				</div>
			</div>
			<!------------------公共盒子-------------------->
			<div class="public_box bg1">
				<div class="public_title">
					<div class="fl"><img src="images/from_title_left.png"/></div>
					<div class="con">
						<div class="lamp_ico"><img src="images/lamp_ico.png"/></div>
						<div class="name"><img src="images/f_t_comment2.png"/></div>
					</div>
					<div class="fr"><img src="images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------评论-------------------->
				<div id="comment">
					<div class="list">
						<div class="tag">
							<a class="cur" href="#">最新评价</a><span>|</span><a href="#">正序排列</a>
						</div>
						<ul>
							<li>
								<div class="pic"><img src="images/head1.jpg"/></div>
								<div class="con">
									<label>A monologue. 独白。</label>
									<p>非常好</p>
									<span>发表于：2017-02-05 14:20</span>
								</div>
								<div class="tip"><span>5#</span></div>
							</li>
							<li>
								<div class="pic"><img src="images/head1.jpg"/></div>
								<div class="con">
									<label>A monologue. 独白。</label>
									<p>非常好</p>
									<span>发表于：2017-02-05 14:20</span>
								</div>
								<div class="tip"><span>4#</span></div>
							</li>
							<li>
								<div class="pic"><img src="images/head1.jpg"/></div>
								<div class="con">
									<label>A monologue. 独白。</label>
									<p>非常好</p>
									<span>发表于：2017-02-05 14:20</span>
								</div>
								<div class="tip"><span class="t_c t_box">地板</span></div>
							</li>
							<li>
								<div class="pic"><img src="images/head1.jpg"/></div>
								<div class="con">
									<label>A monologue. 独白。</label>
									<p>非常好</p>
									<span>发表于：2017-02-05 14:20</span>
								</div>
								<div class="tip"><span class="t_b t_box">板凳</span></div>
							</li>
							<li>
								<div class="pic"><img src="images/head1.jpg"/></div>
								<div class="con">
									<label>A monologue. 独白。</label>
									<p>非常好</p>
									<span>发表于：2017-02-05 14:20</span>
								</div>
								<div class="tip"><span class="t_a t_box">沙发</span></div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="w380 fr">
			<!------------------公共盒子-------------------->
			<div class="public_box bg2">
				<div class="public_title">
					<div class="fl"><img src="images/from_title_left.png"/></div>
					<div class="con">
						<div class="lamp_ico"><img src="images/lamp_ico.png"/></div>
						<div class="name"><img src="images/f_t_other_activity.png"/></div>
					</div>
					<div class="fr"><img src="images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------活动推荐-------------------->
				<div id="activity_recom">
					<ul>
						<li>
							<div class="pic"><a title="" href="#"><img alt="" class="scale-effect" src="images/nt_1.jpg"/></a></div>
							<div class="con">
								<a href="#">龙门石窟白马寺一日游 包车包中午餐</a>
								<span><i class="am-icon-clock-o"></i>2017/01/20</span>
							</div>
							<div class="clear"></div>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="clear"></div>
    </div>
</div>

<!-----------------版底---------------->
<div id="footer">
    <div class="cw1200">
        <div class="line"><img src="images/b_line.png"/></div>
        <div class="b_logo"><img src="images/b_logo.png"/></div>
        <div class="con">
            <p>河洛文化旅游发展有限公司 版权所有</p>
            <p>地址：河南省洛阳市孟津县旅游游客接待中心　邮编：471000　电话：0379-60000000　业务电话：0379-6000000</p>
            <p>Copyright 2016 zgqygc.com All Rights Reserved | 豫ICP备10000000号　技术支持：闪迅</p>
        </div>
        <div class="clear"></div>
    </div>
</div>

<!-----------------产品主图特效---------------->
<script type="text/javascript">
$(document).ready(function(){
	// 图片上下滚动
	var count = $("#imageMenu li").length - 5; /* 显示 6 个 li标签内容 */
	var interval = $("#imageMenu li:first").width();
	var curIndex = 0;
	
	$('.scrollbutton').click(function(){
		if( $(this).hasClass('disabled') ) return false;
		
		if ($(this).hasClass('smallImgUp')) --curIndex;
		else ++curIndex;
		
		$('.scrollbutton').removeClass('disabled');
		if (curIndex == 0) $('.smallImgUp').addClass('disabled');
		if (curIndex == count-1) $('.smallImgDown').addClass('disabled');
		
		$("#imageMenu ul").stop(false, true).animate({"marginLeft" : -curIndex*interval + "px"}, 600);
	});
	
	// 解决 ie6 select框 问题
	$.fn.decorateIframe = function(options) {
        if ($.browser.msie && $.browser.version < 7) {
            var opts = $.extend({}, $.fn.decorateIframe.defaults, options);
            $(this).each(function() {
                var $myThis = $(this);
                //创建一个IFRAME
                var divIframe = $("<iframe />");
                divIframe.attr("id", opts.iframeId);
                divIframe.css("position", "absolute");
                divIframe.css("display", "none");
                divIframe.css("display", "block");
                divIframe.css("z-index", opts.iframeZIndex);
                divIframe.css("border");
                divIframe.css("top", "0");
                divIframe.css("left", "0");
                if (opts.width == 0) {
                    divIframe.css("width", $myThis.width() + parseInt($myThis.css("padding")) * 2 + "px");
                }
                if (opts.height == 0) {
                    divIframe.css("height", $myThis.height() + parseInt($myThis.css("padding")) * 2 + "px");
                }
                divIframe.css("filter", "mask(color=#fff)");
                $myThis.append(divIframe);
            });
        }
    }
    $.fn.decorateIframe.defaults = {
        iframeId: "decorateIframe1",
        iframeZIndex: -1,
        width: 0,
        height: 0
    }
    //放大镜视窗
    $("#bigView").decorateIframe();

    //点击到中图
    var midChangeHandler = null;
	
    $("#imageMenu li img").bind("click", function(){
		if ($(this).attr("id") != "onlickImg") {
			midChange($(this).attr("src").replace("small", "mid"));
			$("#imageMenu li").removeAttr("id");
			$(this).parent().attr("id", "onlickImg");
		}
	}).bind("mouseover", function(){
		if ($(this).attr("id") != "onlickImg") {
			window.clearTimeout(midChangeHandler);
			midChange($(this).attr("src").replace("small", "mid"));
			$(this).css();
		}
	}).bind("mouseout", function(){
		if($(this).attr("id") != "onlickImg"){
			$(this).removeAttr("style");
			midChangeHandler = window.setTimeout(function(){
				midChange($("#onlickImg img").attr("src").replace("small", "mid"));
			}, 1000);
		}
	});

    function midChange(src) {
        $("#midimg").attr("src", src).load(function() {
            changeViewImg();
        });
    }

    //大视窗看图
    function mouseover(e) {
        if ($("#winSelector").css("display") == "none") {
            $("#winSelector,#bigView").show();
        }

        $("#winSelector").css(fixedPosition(e));
        e.stopPropagation();
    }


    function mouseOut(e) {
        if ($("#winSelector").css("display") != "none") {
            $("#winSelector,#bigView").hide();
        }
        e.stopPropagation();
    }


    $("#midimg").mouseover(mouseover); //中图事件
    $("#midimg,#winSelector").mousemove(mouseover).mouseout(mouseOut); //选择器事件

    var $divWidth = $("#winSelector").width(); //选择器宽度
    var $divHeight = $("#winSelector").height(); //选择器高度
    var $imgWidth = $("#midimg").width(); //中图宽度
    var $imgHeight = $("#midimg").height(); //中图高度
    var $viewImgWidth = $viewImgHeight = $height = null; //IE加载后才能得到 大图宽度 大图高度 大图视窗高度

    function changeViewImg() {
        $("#bigView img").attr("src", $("#midimg").attr("src").replace("mid", "big"));
    }

    changeViewImg();

    $("#bigView").scrollLeft(0).scrollTop(0);
    function fixedPosition(e) {
        if (e == null) {
            return;
        }
        var $imgLeft = $("#midimg").offset().left; //中图左边距
        var $imgTop = $("#midimg").offset().top; //中图上边距
        X = e.pageX - $imgLeft - $divWidth / 2; //selector顶点坐标 X
        Y = e.pageY - $imgTop - $divHeight / 2; //selector顶点坐标 Y
        X = X < 0 ? 0 : X;
        Y = Y < 0 ? 0 : Y;
        X = X + $divWidth > $imgWidth ? $imgWidth - $divWidth : X;
        Y = Y + $divHeight > $imgHeight ? $imgHeight - $divHeight : Y;

        if ($viewImgWidth == null) {
            $viewImgWidth = $("#bigView img").outerWidth();
            $viewImgHeight = $("#bigView img").height();
            if ($viewImgWidth < 200 || $viewImgHeight < 200) {
                $viewImgWidth = $viewImgHeight = 800;
            }
            $height = $divHeight * $viewImgHeight / $imgHeight;
            $("#bigView").width($divWidth * $viewImgWidth / $imgWidth);
            $("#bigView").height($height);
        }

        var scrollX = X * $viewImgWidth / $imgWidth;
        var scrollY = Y * $viewImgHeight / $imgHeight;
        $("#bigView img").css({ "left": scrollX * -1, "top": scrollY * -1 });
        $("#bigView").css({ "top": 75, "left": $(".preview").offset().left + $(".preview").width() + 15 });

        return { left: X, top: Y };
    }

});
</script>
</body>
</html>