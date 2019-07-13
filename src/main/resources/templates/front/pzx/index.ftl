<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>首页</title>
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
<!-------------------二维码看手机------------------->
<div id="phone_rwm">
	<img src="/images/phone_rwm.png">
	<p>手机扫一扫二维码<br>观看手机端</p>
</div>
<!-------------------工具栏------------------->
<div id="toolbar">
    <div class="cw1200">
        <ul class="fl">
            <li class="tb"><p>您好，欢迎访问河洛文化旅游网！</p></li>
			<li class="tb"><a href="#" data-am-modal="{target: '#my-alert'}">签到</a><span>|</span></li>
            <li class="tb"><a href="login.html">登录</a><span>|</span></li>
            <li class="tb"><a href="register.html">注册</a></li>
        </ul>
		<!-------------------签到弹出层------------------->
		<div id="sign_layer">
			<div class="am-modal am-modal-alert" tabindex="-1" id="my-alert">
			  <div class="am-modal-dialog">
				<div class="win-m">
					<p class="p1">签到成功</p>
					<p class="p1">获得<span class="already-sign">20</span>积分</p>
					<p class="p2">每天签到都可以获得积分哦</p>
					<div class="am-modal-footer">
					  <span class="am-modal-btn">知道了</span>
					</div>
				</div>
				
			  </div>
			</div>
		</div>
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
							<li><a href="my_index.html"><i class="i1"></i>我的主页</a></li>
							<li><a href="write_note.html"><i class="i2"></i>写游记</a></li>
							<li><a href="my_note.html"><i class="i9"></i>我的游记</a></li>
							<li><a href="collection_list.html"><i class="i3"></i>我的收藏</a></li>
							<li><a href="project_order.html"><i class="i4"></i>商品订单</a></li>
							<li><a href="scenic_order.html"><i class="i5"></i>旅游订单</a></li>
							<li><a href="note_comments.html"><i class="i6"></i>我的评论</a></li>
							<li><a href="my_info.html"><i class="i7"></i>设置</a></li>
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
        <div class="logo fl"><a title="" href="index.html"><img alt="" src="/images/t_logo.jpg"></a></div>
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
			<script type="text/javascript" src="/js/jquery.select.js"></script>
            <!-------------------导航------------------->
            <div class="nav">
                <ul>
                    <#--<li><a title="" class="cur" href="index.html">首页</a></li>-->
                    <#--<li><a class="tta" title="" href="scenic_list.html">孟津旅游</a></li>-->
                    <#--<li><a title="" href="mall_list.html">特产商城</a></li>-->
                    <#--<li><a title="" href="note_list.html">美丽乡村</a></li>-->
                    <#--<li><a title="" href="news_list.html">新闻资讯</a></li>-->
                    <li><a title="" class="cur" href="javascript:">首页</a></li>
                    <li><a class="tta" title="" href="javascript:">孟津旅游</a></li>
                    <li><a title="" href="javascript:">特产商城</a></li>
                    <li><a title="" href="javascript:">美丽乡村</a></li>
                    <li><a title="" href="javascript:">新闻资讯</a></li>
                </ul>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>


<!------------------banner-------------------->
<div id="banner"></div>
<#--<script src="/js/jquery.superslide.2.1.1.js" type="text/javascript"></script>-->
<#--<div class="h_banner">-->
    <#--<ul class="h_b_list">-->
        <#--<li><a style="background:url(/images/banner1.jpg) no-repeat center;" href="#"></a></li>-->
        <#--<li><a style="background:url(/images/banner2.png) no-repeat center;" href="#"></a></li>-->
        <#--<li><a style="background:url(/images/banner3.jpg) no-repeat center;" href="#"></a></li>-->
        <#--<li><a style="background:url(/images/banner4.png) no-repeat center;" href="#"></a></li>-->
    <#--</ul>-->
    <#--<a class="prev" href="javascript:void(0)"></a>-->
    <#--<a class="next" href="javascript:void(0)"></a>-->
<#--</div>-->
<#--<script>-->
    <#--//鼠标移过，左右按钮显示-->
    <#--$(".h_banner").hover(function(){-->
        <#--$(this).find(".prev,.next").fadeTo("show",0.5);-->
    <#--},function(){-->
        <#--$(this).find(".prev,.next").hide();-->
    <#--});-->
    <#--/*鼠标移过某个按钮 高亮显示*/-->
    <#--$(".prev,.next").hover(function(){-->
        <#--$(this).fadeTo("show",1);-->
    <#--},function(){-->
        <#--$(this).fadeTo("show",0.7);-->
    <#--});-->
    <#--$(".h_banner").slide({ titCell:".num ul" , mainCell:".h_b_list" , effect:"fold", autoPlay:true, delayTime:700 , autoPage:true });-->
<#--</script>-->

<!------------------广告-------------------->
<#--<div class="h_gg">-->
    <#--<a title="" href="#"><img alt="" src="/images/g1.jpg"/></a>-->
    <#--<a title="" href="#"><img alt="" src="/images/g2.jpg"/></a>-->
    <#--<a title="" href="#"><img alt="" src="/images/g3.jpg"/></a>-->
    <#--<a title="" href="#"><img alt="" src="/images/g4.jpg"/></a>-->
<#--</div>-->
<!------------------精彩活动-------------------->
<#--<div class="h_bg1_g"></div>-->
<#--<div id="h_activity">-->
    <#--<div class="cw1200">-->
        <#--<div class="title"><img alt="" src="/images/h_title1.png"/></div>-->
        <#--<div class="con">-->
            <#--<div class="box">-->
                <#--<a title="" href="activities.html">-->
                    <#--<img alt="" class="scale-effect" src="/images/n1.jpg"/>-->
                    <#--<p>春节逛吃哪里去？看洛阳庙会、灯展集锦</p>-->
                    <#--<span><i class="am-icon-clock-o"></i>2017/01/20</span>-->
                <#--</a>-->
            <#--</div>-->
            <#--<div class="video">-->
                <#--<img alt="" src="/images/n6.jpg"/>-->
            <#--</div>-->
            <#--<div class="box">-->
                <#--<a title="" href="activities.html">-->
                    <#--<img alt="" class="scale-effect" src="/images/n1.jpg"/>-->
                    <#--<p>春节逛吃哪里去？看洛阳庙会、灯展集锦</p>-->
                    <#--<span><i class="am-icon-clock-o"></i>2017/01/20</span>-->
                <#--</a>-->
            <#--</div>-->
            <#--<div class="clear"></div>-->
        <#--</div>-->
    <#--</div>-->
<#--</div>-->
<#--<div class="h_bg1_g"></div>-->
<!------------------孟津旅游-------------------->
<div id="h_scenic">
    <div class="cw1200">
        <div class="title"><img alt="" src="/images/h_title2.png"/></div>
        <div class="con">
            <div class="tag"><img alt="" src="/images/h_title2_t.jpg"/></div>
            <div class="box">
                <ul>
                    <li><a title="" href="scenic.html"><img alt="" class="scale-effect" src="/images/j1.jpg"/><span>龙马负图寺</span></a></li>
                    <li><a title="" href="scenic.html"><img alt="" class="scale-effect" src="/images/y3.jpg"/><span>老君山风景区</span></a></li>
                    <li><a title="" href="scenic.html"><img alt="" class="scale-effect" src="/images/10F118AC-FE28-4986-A6D0-B9E739F8CFDC.jpg"/><span>鸡冠洞</span></a></li>
                    <li><a title="" href="scenic.html"><img alt="" class="scale-effect" src="/images/2c90cca2458c651b01458c95cc0b000c.jpg"/><span>千唐志斋</span></a></li>
                    <li><a title="" href="scenic.html"><img alt="" class="scale-effect" src="/images/DD0E49BD-47F5-4B10-85DB-FE2390B91541.jpg"/><span>龙门石窟</span></a></li>
                    <div class="clear"></div>
                </ul>
                <div class="more"><a href="scenic_list.html">热门景区<span>+</span></a></div>
                
            </div>
            <div class="box">
                <ul>
                    <li><a title="" href="scenic.html"><img alt="" class="scale-effect" src="/images/uu1.jpg"/><span>郁金香庄园</span></a></li>
                    <li><a title="" href="scenic.html"><img alt="" class="scale-effect" src="/images/uu2.jpg"/><span>小浪底度假村</span></a></li>
                    <li><a title="" href="scenic.html"><img alt="" class="scale-effect" src="/images/uu3.jpg"/><span>银滩农业观光园</span></a></li>
                    <li><a title="" href="scenic.html"><img alt="" class="scale-effect" src="/images/uu4.jpg"/><span>《琦梦红提园》采摘</span></a></li>
                    <li><a title="" href="scenic.html"><img alt="" class="scale-effect" src="/images/uu5.jpg"/><span>夜游丽景门</span></a></li>
                    <div class="clear"></div>
                </ul>
                <div class="more"><a title="" href="scenic_list.html">休闲度假<span>+</span></a></div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<!------------------孟津美食-------------------->
<#--<div id="h_food">-->
    <#--<div class="cw1200">-->
        <#--<div class="title"><img src="/images/h_title3.png"/></div>-->
        <#--<div class="con">-->
            <#--<div class="box fl">-->
                <#--<div class="big">-->
                    <#--<div class="pic"><a title="" href="#"><img alt="" class="scale-effect" src="/images/f0.jpg"/></a></div>-->
                    <#--<p>所谓“水席”，有二层含义：一是以汤水见长，二是吃一道换一道，一道道上菜，象流水一般，故名“水席”。洛阳水席最初只是在民间流行，唐代武则天时，将洛...</p>-->
                <#--</div>-->
                <#--<div class="list">-->
                    <#--<ul>-->
                        <#--<li>-->
                            <#--<a title="" href="#">-->
                                <#--<div class="pic"><img alt="" class="scale-effect" src="/images/f1.jpg"/></div>-->
                                <#--<p>宴天下大酒店老城店</p>-->
                            <#--</a>-->
                        <#--</li>-->
                        <#--<li>-->
                            <#--<a title="" href="#">-->
                                <#--<div class="pic"><img alt="" class="scale-effect" src="/images/f2.png"/></div>-->
                                <#--<p>宴天下大酒店老城店</p>-->
                            <#--</a>-->
                        <#--</li>-->
                        <#--<li>-->
                            <#--<a title="" href="#">-->
                                <#--<div class="pic"><img alt="" class="scale-effect" src="/images/f3.jpg"/></div>-->
                                <#--<p>宴天下大酒店老城店</p>-->
                            <#--</a>-->
                        <#--</li>-->
                        <#--<div class="clear"></div>-->
                    <#--</ul>-->
                    <#--<div class="more"><a title="" href="#">查看更多</a></div>-->
                <#--</div>-->
            <#--</div>-->
            <#--<div class="box fr">-->
                <#--<div class="big">-->
                    <#--<div class="pic"><a href="#"><img alt="" class="scale-effect" src="/images/f00.jpg"/></a></div>-->
                    <#--<p>所谓“水席”，有二层含义：一是以汤水见长，二是吃一道换一道，一道道上菜，象流水一般，故名“水席”。洛阳水席最初只是在民间流行，唐代武则天时，将洛...</p>-->
                <#--</div>-->
                <#--<div class="list">-->
                    <#--<ul>-->
                        <#--<li>-->
                            <#--<a title="" href="#">-->
                                <#--<div class="pic"><img alt="" class="scale-effect" src="/images/f1.jpg"/></div>-->
                                <#--<p>宴天下大酒店老城店</p>-->
                            <#--</a>-->
                        <#--</li>-->
                        <#--<li>-->
                            <#--<a title="" href="#">-->
                                <#--<div class="pic"><img alt="" class="scale-effect" src="/images/f2.png"/></div>-->
                                <#--<p>宴天下大酒店老城店</p>-->
                            <#--</a>-->
                        <#--</li>-->
                        <#--<li>-->
                            <#--<a title="" href="#">-->
                                <#--<div class="pic"><img alt="" class="scale-effect" src="/images/f3.jpg"/></div>-->
                                <#--<p>宴天下大酒店老城店</p>-->
                            <#--</a>-->
                        <#--</li>-->
                        <#--<div class="clear"></div>-->
                    <#--</ul>-->
                    <#--<div class="more"><a title="" href="#">查看更多</a></div>-->
                <#--</div>-->
            <#--</div>-->
            <#--<div class="clear"></div>-->
        <#--</div>-->
    <#--</div>-->
<#--</div>-->
<!------------------孟津特产-------------------->
<div id="h_project">
    <div class="cw1200">
        <div class="title"><img alt="" src="/images/h_title4.png"/></div>
        <div class="con">
            <ul>
                <li>
                    <a title="" href="#">
                        <img alt="" class="scale-effect" src="/images/t1.jpg"/>
                        <p>新米 有机杂粮小米黄小米2000g 粮食五谷 农家包邮</p>
                    </a>
                </li>
                <li>
                    <a title="" href="#">
                        <img class="scale-effect" src="/images/t2.jpg"/>
                        <p>《孟津贡梨主题公园》孟津酥梨</p>
                    </a>
                </li>
                <li>
                    <a title="" href="#">
                        <img alt="" class="scale-effect" src="/images/t3.jpg"/>
                        <p>《幸福农场》孟津葡萄</p>
                    </a>
                </li>
                <li>
                    <a title="" href="#">
                        <img alt="" class="scale-effect" src="/images/t4.jpg"/>
                        <p>有机药用黑豆</p>
                    </a>
                </li>
                <li>
                    <a title="" href="#">
                        <img alt="" class="scale-effect" src="/images/t5.jpg"/>
                        <p>大麦茶</p>
                    </a>
                </li>       
            </ul>
        </div>
    </div>
</div>  
<!------------------美丽乡村-------------------->
<div id="h_note">
    <div class="cw1200">
        <div class="title"><img alt="" src="/images/h_title5.png"/></div>
        <div class="con">
            <ul>
                <li>
                    <div class="box">
                        <div class="pic">
                            <a title="" href="#"><img alt="" class="scale-effect" src="/images/nt_1.jpg"/></a>
                        </div>
                        <div class="user">
                            <div class="head"><img alt="" src="/images/head1.jpg"/></div>
                            <p>A monologue. 独白。</p>
                            <span><label><img alt="" src="/images/state_icon1.png"/>18</label><label><img src="/images/state_icon2.png"/>20</label></span>
                        </div>
                        <div class="cont">
                            <a title="" href="#"><h3>洛阳，历史长河中的一处停歇</h3></a>
                            <p>习惯并且爱上了走在路上的感觉不是想去探寻什么只是心中泛滥的小情怀在走</p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="box">
                        <div class="pic">
                            <a title="" href="#"><img alt="" class="scale-effect" src="/images/nt_2.jpg"/></a>
                        </div>
                        <div class="user">
                            <div class="head"><img alt="" src="/images/hh2.jpg"/></div>
                            <p>卖萌の小喵咪</p>
                            <span><label><img alt="" src="/images/state_icon1.png"/>18</label><label><img src="/images/state_icon2.png"/>20</label></span>
                        </div>
                        <div class="cont">
                            <a title="" href="#"><h3>洛阳，历史长河中的一处停歇</h3></a>
                            <p>习惯并且爱上了走在路上的感觉不是想去探寻什么只是心中泛滥的小情怀在走</p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="box">
                        <div class="pic">
                            <a title="" href="#"><img alt="" class="scale-effect" src="/images/nt_3.jpg"/></a>
                        </div>
                        <div class="user">
                            <div class="head"><img src="/images/hh3.jpg"/></div>
                            <p>独闯世界fell</p>
                            <span><label><img alt="" src="/images/state_icon1.png"/>18</label><label><img src="/images/state_icon2.png"/>20</label></span>
                        </div>
                        <div class="cont">
                            <a title="" href="#"><h3>洛阳，历史长河中的一处停歇</h3></a>
                            <p>习惯并且爱上了走在路上的感觉不是想去探寻什么只是心中泛滥的小情怀在走</p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="box">
                        <div class="pic">
                            <a title="" href="#"><img class="scale-effect" src="/images/nt0.jpg"/></a>
                        </div>
                        <div class="user">
                            <div class="head"><img src="/images/hh4.jpg"/></div>
                            <p>大叔god说走就走</p>
                            <span><label><img alt="" src="/images/state_icon1.png"/>18</label><label><img src="/images/state_icon2.png"/>20</label></span>
                        </div>
                        <div class="cont">
                            <a title="" href="#"><h3>洛阳，历史长河中的一处停歇</h3></a>
                            <p>习惯并且爱上了走在路上的感觉不是想去探寻什么只是心中泛滥的小情怀在走</p>
                        </div>
                    </div>
                </li>
                
                <div class="clear"></div>
            </ul>
        </div>
    </div>
</div>
<!------------------首页新闻-------------------->
<#--<div id="h_news">-->
    <#--<div class="cw1200">-->
        <#--<div class="activity_news fl">-->
            <#--<div class="title"><img alt="" src="/images/h_title6.png"/></div>-->
            <#--<div class="con">-->
                <#--<ul>-->
                    <#--<li><a title="" href="article.html"><img class="scale-effect" src="/images/n1.jpg"/><p>春节逛吃哪里去？看洛阳庙会、灯展集锦</p></a></li>-->
                    <#--<li><a title="" href="article.html"><img class="scale-effect" src="/images/n2.jpg"/><p>春节洛阳九县六区超嗨的节目单出炉</p></a></li>-->
                    <#--<li><a title="" href="article.html"><img class="scale-effect" src="/images/n3.jpg"/><p>栾川各景区“冬游季”活动大比拼</p></a></li>-->
                    <#--<li><a title="" href="article.html"><img class="scale-effect" src="/images/n4.jpg"/><p>美！滑雪看戏吃鱼宴，今年过年来嵩县！</p></a></li>-->
                <#--</ul>-->
            <#--</div>-->
        <#--</div>-->
        <#--<div class="hot_news fr">-->
            <#--<div class="title"><img src="/images/h_title7.png"/></div>-->
            <#--<div class="con">-->
     <#---->
                <#--<div data-am-widget="slider" class="pic am-slider am-slider-c4" data-am-slider='{"controlNav":false}'>-->
                    <#--<ul class="am-slides">-->
                        <#--<li>-->
                            <#--<a href="article.html">-->
								<#--<img alt="" src="/images/n5.jpg"/>-->
								<#--<div class="am-slider-desc">春节黄金周，洛阳旅游全线飘红</div>-->
							<#--</a>-->
                        <#--</li>-->
                        <#--<li>-->
                            <#--<a href="article.html">-->
								<#--<img alt="" src="/images/n5.jpg"/>-->
								<#--<div class="am-slider-desc">春节黄金周，洛阳旅游全线飘红</div>-->
							<#--</a>-->
                        <#--</li>-->
                    <#--</ul>-->
                <#--</div>-->

                <#--<div class="list">-->
                    <#--<ul>-->
                        <#--<li><a title="" href="article.html">正月十五，这些习俗要了解02/09</a><span>01/18</span></li>-->
                        <#--<li><a title="" href="article.html">正月十五，这些习俗要了解02/09</a><span>01/18</span></li>-->
                        <#--<li><a title="" href="article.html">正月十五，这些习俗要了解02/09</a><span>01/18</span></li>-->
                        <#--<li><a title="" href="article.html">正月十五，这些习俗要了解02/09</a><span>01/18</span></li>-->
                        <#--<li><a title="" href="article.html">正月十五，这些习俗要了解02/09</a><span>01/18</span></li>-->
                    <#--</ul>-->
                <#--</div>-->
            <#--</div>-->
        <#--</div>-->
        <#--<div class="clear"></div>-->
    <#--</div>-->
<#--</div>-->
<!-----------------版底---------------->
<div id="footer">
    <div class="cw1200">
        <div class="line"><img alt="" src="/images/b_line.png"/></div>
        <div class="b_logo"><img alt="" src="/images/b_logo.png"/></div>
        <div class="con">
            <p>河洛文化旅游发展有限公司 版权所有</p>
            <p>地址：河南省洛阳市孟津县旅游游客接待中心　邮编：471000　电话：0379-60000000　业务电话：0379-6000000</p>
            <p>Copyright 2016 zgqygc.com All Rights Reserved | 豫ICP备10000000号　技术支持：闪迅</p>
        </div>
        <div class="clear"></div>
    </div>
</div>
<script>
    $(function(){
        $.ajax({

        })

    })

</script>
</body>
</html>