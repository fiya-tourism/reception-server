
<!------------------子页框架商品详情-------------------->
<div id="sub_from" style="padding-top:10px;">
    <div class="cw1200">
		<!------------------公共盒子-------------------->
		<div class="public_box bg1">
			<div class="public_title">
				<div class="fl"><img src="/images/from_title_left.png"/></div>
				<div class="con">
					<div class="lamp_ico"><img src="/images/lamp_ico.png"/></div>
					<div class="name"><img src="/images/f_t_item_info.png"/></div>
				</div>
				<div class="fr"><img src="/images/from_title_right.png"/></div>
				<div class="clear"></div>
			</div>
			<!------------------特产信息-------------------->
			<div id="item_info">
				<!-----------------主图---------------->
				<div class="preview">
					<div id="vertical" class="bigImg">
						<img src="/images/zt1.jpg" id="midimg" />
						<div style="display:none;" id="winSelector"></div>
					</div>
					<div id="imageMenu">
						<ul>
							<li id="onlickImg"><img src="/images/zt1.jpg"/></li>
							<li><img src="/images/zt2.jpg"/></li>
							<li><img src="/images/zt3.jpg"/></li>
							<li><img src="/images/zt4.jpg"/></li>
							<li><img src="/images/zt5.jpg"/></li>
						</ul>
					</div>
					<div id="bigView" style="display:none;"><img width="800" height="800" /></div>
				</div>
				<!-----------------内容信息---------------->
				<div class="cont_info">
					<div class="name"><h2>西秘鲁红提500g 葡萄 新鲜水果</h2></div>
					<!-------------商品属性（价位数量）---------------->
					<div class="p_number">
						<div class="unit_price">
							<ul>
								<li class="fl">商品单价：<strong id="price_item_1">￥350.00</strong></li>
								<li class="fr">已成交：3笔</li>
								<div class="clear"></div>
							</ul>
						</div>
						<!------------商品规格-------------->
						<script type="text/javascript">
							$(function(){
							$(".yListr ul li em").click(function(){
								$(this).addClass("yListrclickem").siblings().removeClass("yListrclickem");
							})
							})
						</script>
						<div class="yListr">
							<ul>
								<li>
									<span>颜色</span>
									<em class="yListrclickem">深灰色<i></i></em>
									<em>金色<i></i></em>
									<em>银色<i></i></em>
								</li>
								<li>
									<span>尺寸</span>
									<em class="yListrclickem">港版（二网）<i></i></em>
									<em>类型<i></i></em>
								</li>
							</ul>
						</div>
						<!-------------数量增减变动价格（产品页）-------------->
						<script type="text/javascript" src="js/payfor.js"></script>
						<div class="add_chose">
							<label>数量：</label>
                            <#--<a class="DisDe" href="javascript:orderInserDtelete()"><i>-</i></a>
                            <input class="Amount" value="1" onblur="orderchange()" autocomplete="off" id="orderUpdate" maxlength="100">
                            <a class="Increase" href="javascript:orderInsertCount()"><i>+</i></a>-->


                            <a class="reduce"   href="javascript:orderInserDtelete()">-</a>
                            <input type="text"  value="1" onblur="orderchange()" autocomplete="off" id="orderUpdate" maxlength="100" class="text" />
                            <a class="add" href="javascript:orderInsertCount()">+</a></br>
							<span>库存：1500件</span>
							<div class="clear"></div>
						</div>
						<div class="buy">
							<ul>
								<li>总价：<span class="total-font" id="total_item_1">￥89.00</span></li>
								<li><span class="jifen">购买商品可获得：<b id="total_points">18</b>积分</span></li>
								<li><a class="go_buy" href="javascript:tiemoreder()">立即购买</a><a class="car_buy" href="javascript:tiemshop()">加入购物车</a></li>
								<li>运费：<span class="tp_bg">卖家承担运费</span></li>
								<li>提醒：<span class="tp_bg">此商品为鲜活易腐类，不支持7天无理由退货</span></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="clear"></div>	
		</div>
		<div class="w810 fl">
			<!------------------公共盒子-------------------->
			<div class="public_box bg1">
				<div class="public_title">
					<div class="fl"><img src="/images/from_title_left.png"/></div>
					<div class="con">
						<div class="lamp_ico"><img src="/images/lamp_ico.png"/></div>
						<div class="name"><img src="/images/f_t_project_d.png"/></div>
					</div>
					<div class="fr"><img src="/images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------特产详情-------------------->
				<div id="project_details">
					<img alt="" src="/images/p1.jpg"/>
				</div>
			</div>
			<!------------------公共盒子-------------------->
			<div class="public_box bg1">
				<div class="public_title">
					<div class="fl"><img src="/images/from_title_left.png"/></div>
					<div class="con">
						<div class="lamp_ico"><img src="/images/lamp_ico.png"/></div>
						<div class="name"><img src="/images/f_t_comment2.png"/></div>
					</div>
					<div class="fr"><img src="/images/from_title_right.png"/></div>
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
								<div class="pic"><img src="/images/head1.jpg"/></div>
								<div class="con">
									<label>A monologue. 独白。</label>
									<p>非常好</p>
									<span>发表于：2017-02-05 14:20</span>
								</div>
								<div class="tip"><span>5#</span></div>
							</li>
							<li>
								<div class="pic"><img src="/images/head1.jpg"/></div>
								<div class="con">
									<label>A monologue. 独白。</label>
									<p>非常好</p>
									<span>发表于：2017-02-05 14:20</span>
								</div>
								<div class="tip"><span>4#</span></div>
							</li>
							<li>
								<div class="pic"><img src="/images/head1.jpg"/></div>
								<div class="con">
									<label>A monologue. 独白。</label>
									<p>非常好</p>
									<span>发表于：2017-02-05 14:20</span>
								</div>
								<div class="tip"><span class="t_c t_box">地板</span></div>
							</li>
							<li>
								<div class="pic"><img src="/images/head1.jpg"/></div>
								<div class="con">
									<label>A monologue. 独白。</label>
									<p>非常好</p>
									<span>发表于：2017-02-05 14:20</span>
								</div>
								<div class="tip"><span class="t_b t_box">板凳</span></div>
							</li>
							<li>
								<div class="pic"><img src="/images/head1.jpg"/></div>
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
					<div class="fl"><img src="/images/from_title_left.png"/></div>
					<div class="con">
						<div class="lamp_ico"><img src="/images/lamp_ico.png"/></div>
						<div class="name"><img src="/images/f_t_hot_project.png"/></div>
					</div>
					<div class="fr"><img src="/images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------商品推荐-------------------->
				<div id="project_recom">
					<ul>
						<li>
							<div class="pic"><a href="#"><img class="scale-effect" src="/images/t2.jpg"/></a></div>
							<div class="con">
								<a href="#">西秘鲁红提500g 葡萄 新鲜水果西秘鲁红提500g 葡萄 新鲜水果</a>
								<p>￥<label>330</label></p>
							</div>
							<div class="clear"></div>
						</li>
					</ul>
			</div>
		<div class="clear"></div>
    </div>
</div>
<!-----------------产品主图特效---------------->
<script type="text/javascript">
    var order = $("#orderUpdate").val();
    var order2=null;
    var cou =0;

    function orderchange() {
        order2=$("#orderUpdate").val();
        if(order<1||order2<1||order==null||order2==null){
            $("#orderUpdate").attr({"value":1})
            $("#orderspan").html("<span id='orderspan'></span>");
            ++cou;
        }else if (order>100||order2>100){
            $("#orderUpdate").attr({"value":1})
            alert("库存不足,请从新选择数量")
        }else {
            $("#orderUpdate").attr({"value":order2})
            $("#orderspan").html("<span id='orderspan'></span>");
            ++cou;
        }
    }
    function orderInserDtelete() {
        orderchange();
        if(order>=1){
            if(cou!=null){
                if(order<1||order2<1||order==null||order2==null||order==1||order2==1){
                    $("#orderUpdate").attr({"value":1})
                    ++cou;
                }else {
                    --order2;
                    $("#orderUpdate").attr({"value":this.order2})
                }
            }else {
                --order;
                $("#orderUpdate").attr({"value":this.order})
            }
        }
    }
    function orderInsertCount() {
        orderchange();
        if(order>=1) {
            if (cou != null) {
                ++order2;
                if (order2>100){
                    $("#orderUpdate").attr({"value":1})
                    alert("库存不足,请从新选择数量")
                }else {
                    $("#orderUpdate").attr({"value": this.order2})
                    $("#orderspan").html("<span id='orderspan'></span>");
                }
            }else {
                ++order;
                if (order>100){
                    $("#orderUpdate").attr({"value":1})
                    alert("库存不足,请从新选择数量")
                }else {
                    $("#orderUpdate").attr({"value": this.order})
                    $("#orderspan").html("<span id='orderspan'></span>");
                }
            }
        }
    }


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
