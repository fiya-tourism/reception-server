<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>文章</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-------------jquery库-------------->
  	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <!-------------Amazeui--------------->
    <script type="text/javascript" src="js/amazeui.js"></script>
    <link rel="stylesheet" type="text/css" href="css/amazeui.css">
    <!------------核心样式-------------->
    <link rel="stylesheet" type="text/css" href="css/style.css">    
</head>
<body>
<!-------------------工具栏------------------->
<div id="toolbar">
    <div class="cw1200">
        <ul class="fl">
            <li class="tb"><p>您好，欢迎访问河洛文化旅游网！</p></li>
            <li class="tb"><a href="login.html">登录</a><span>|</span></li>
            <li class="tb"><a href="register.html">注册</a></li>
        </ul>
        <ul class="fr">
            <li class="tb">
				<a href="#">我的河洛</a>
				<!-------------------用户------------------->
				<div class="user">
					<a class="user-hd" href="#">
						<img src="images/user_head_pic.jpg"/><b></b>
						<div class="clear"></div>
					</a>
					<div class="user-bd">
						<div class="integral"><img src="images/integral_ico.png"/>当前积分 609</div>
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
            <li class="tb"><a href="shop_car.html"><i class="cart_ico"></i>购物车</a><span>|</span></li>
            <li class="tb"><a href="news_list.html">用户帮助中心</a><span>|</span></li>
            <li class="tb"><img src="images/tel_ico.gif"/><font>40000-40000</font></li>
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
                    <li><a href="index.html">首页</a></li>
                    <li><a href="scenic_list.html">孟津旅游</a></li>
                    <li><a href="mall_list.html">特产商城</a></li>
                    <li><a href="note_list.html">美丽乡村</a></li>
                    <li><a class="cur" href="news_list.html">新闻资讯</a></li>
                </ul>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>
<!------------------子页框架-------------------->
<div id="sub_from">
    <div class="cw1200">
		<div class="w810 fl">
			<!------------------公共盒子-------------------->
			<div class="public_box bg1">
				<div class="public_title">
					<div class="fl"><img src="images/from_title_left.png"/></div>
					<div class="con">
						<div class="lamp_ico"><img src="images/lamp_ico.png"/></div>
						<div class="name"><img src="images/f_t_article.png"/></div>
					</div>
					<div class="fr"><img src="images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------文章-------------------->
				<div id="article">
					<div class="title">
						<h2>我市国家3A级旅游景区有望增至18家</h2>
						<p>发布时间：2017/02/08 10:39   阅读 0 次</p>
						<div class="bdsharebuttonbox">
							<a href="#" class="bds_more" data-cmd="more"></a>
							<a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a>
							<a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
							<a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a>
							<a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a>
							<a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
						</div>
						<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"1","bdSize":"16"},"share":{},"image":{"viewList":["qzone","tsina","tqq","renren","weixin"],"viewText":"分享到：","viewSize":"16"},"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["qzone","tsina","tqq","renren","weixin"]}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
					</div>
					<div class="con">
						<p>日前，记者从市旅发委获悉，我市旅游资源规划开发质量等级评定委员会通过现场检查、达标审核、集体研究等程序，经公示无异议后，确定我市新安函谷关景区、伊川鹤鸣峡风景区、嵩县石头部落景区、东方红工业游景区4家景区为国家3A级旅游景区。</p>
						<p>至此，我市国家A级旅游景区数量已增至45家。其中，国家5A级旅游景区5家，国家4A级旅游景区18家，国家3A级旅游景区17家，国家2A级旅游景区5家。</p>
						<p>另悉，嵩县白云小镇景区也有望获批国家3A级旅游景区，目前正在公示(2月4日至9日)。待公示结束，我市国家A级旅游景区数量将达到46家。</p>
						<img src="images/y1.jpg"/>
						<p>日前，记者从市旅发委获悉，我市旅游资源规划开发质量等级评定委员会通过现场检查、达标审核、集体研究等程序，经公示无异议后，确定我市新安函谷关景区、伊川鹤鸣峡风景区、嵩县石头部落景区、东方红工业游景区4家景区为国家3A级旅游景区。</p>
						<img src="images/y2.jpg"/>
						<p>至此，我市国家A级旅游景区数量已增至45家。其中，国家5A级旅游景区5家，国家4A级旅游景区18家，国家3A级旅游景区17家，国家2A级旅游景区5家。</p>
						<p>另悉，嵩县白云小镇景区也有望获批国家3A级旅游景区，目前正在公示(2月4日至9日)。待公示结束，我市国家A级旅游景区数量将达到46家。</p>
						<img src="images/y3.jpg"/>
						<p>市旅发委产业促进科科长赵晖表示，我市国家3A级景区队伍的壮大，将进一步提升我市旅游业发展的核心竞争力，提高我市旅游产业经济效益，促进我市旅游业转型升级，为洛阳市发展全域旅游及创建国际文化旅游名城提供强大支撑。(金曦 林琳)(2月4日至9日)。待公示结束，我市国家A级旅游景区数量将达到46家。</p>
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
						<div class="name"><img src="images/f_t_mobile_platform.png"/></div>
					</div>
					<div class="fr"><img src="images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------移动平台-------------------->
				<div id="mobile_platform">
					<img src="images/mp_pic.jpg"/>
					<img src="images/mp_tag.png"/>
					<img src="images/rwm.jpg"/>
					<p>微信订票/查询优惠政策请扫二维码</p>
				</div>
			</div>
			<!------------------公共盒子-------------------->
			<div class="public_box bg2">
				<div class="public_title">
					<div class="fl"><img src="images/from_title_left.png"/></div>
					<div class="con">
						<div class="lamp_ico"><img src="images/lamp_ico.png"/></div>
						<div class="name"><img src="images/f_t_culture.png"/></div>
						<div class="more"><a href="news_list.html">更多>></a></div>
					</div>
					<div class="fr"><img src="images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------公共推荐-------------------->
				<div id="public_recom">
					<ul>
						<li>
							<a href="article.html">
								<div class="pic"><img src="images/2016122223895.jpg"/></div>
								<p>洛阳古城慢时</p>
							</a>
						</li>
						<li>
							<a href="article.html">
								<div class="pic"><img src="images/2016122223895.jpg"/></div>
								<p>洛阳古城慢时</p>
							</a>
						</li>
						<li>
							<a href="article.html">
								<div class="pic"><img src="images/2016122223895.jpg"/></div>
								<p>洛阳古城慢时</p>
							</a>
						</li>
						<div class="clear"></div>
					</ul>
				</div>
			</div>
			<!------------------公共盒子-------------------->
			<div class="public_box bg2">
				<div class="public_title">
					<div class="fl"><img src="images/from_title_left.png"/></div>
					<div class="con">
						<div class="lamp_ico"><img src="images/lamp_ico.png"/></div>
						<div class="name"><img src="images/f_t_project.png"/></div>
						<div class="more"><a href="mall_list.html">更多>></a></div>
					</div>
					<div class="fr"><img src="images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------公共推荐-------------------->
				<div id="public_recom">
					<ul>
						<li>
							<a href="project.html">
								<div class="pic"><img src="images/2016122223895.jpg"/></div>
								<p>洛阳古城慢时</p>
							</a>
						</li>
						<li>
							<a href="project.html">
								<div class="pic"><img src="images/2016122223895.jpg"/></div>
								<p>洛阳古城慢时</p>
							</a>
						</li>
						<li>
							<a href="project.html">
								<div class="pic"><img src="images/2016122223895.jpg"/></div>
								<p>洛阳古城慢时</p>
							</a>
						</li>
						<div class="clear"></div>
					</ul>
				</div>
			</div>
			<!------------------公共盒子-------------------->
			<div class="public_box bg2">
				<div class="public_title">
					<div class="fl"><img src="images/from_title_left.png"/></div>
					<div class="con">
						<div class="lamp_ico"><img src="images/lamp_ico.png"/></div>
						<div class="name"><img src="images/f_t_food.png"/></div>
						<div class="more"><a href="news_list.html">更多>></a></div>
					</div>
					<div class="fr"><img src="images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------公共推荐-------------------->
				<div id="public_recom">
					<ul>
						<li>
							<a href="article.html">
								<div class="pic"><img src="images/2016122223895.jpg"/></div>
								<p>洛阳古城慢时</p>
							</a>
						</li>
						<li>
							<a href="article.html">
								<div class="pic"><img src="images/2016122223895.jpg"/></div>
								<p>洛阳古城慢时</p>
							</a>
						</li>
						<li>
							<a href="article.html">
								<div class="pic"><img src="images/2016122223895.jpg"/></div>
								<p>洛阳古城慢时</p>
							</a>
						</li>
						<div class="clear"></div>
					</ul>
				</div>
			</div>
			<!------------------公共盒子-------------------->
			<div class="public_box bg2">
				<div class="public_title">
					<div class="fl"><img src="images/from_title_left.png"/></div>
					<div class="con">
						<div class="lamp_ico"><img src="images/lamp_ico.png"/></div>
						<div class="name"><img src="images/f_t_life.png"/></div>
						<div class="more"><a href="news_list.html">更多>></a></div>
					</div>
					<div class="fr"><img src="images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------公共推荐-------------------->
				<div id="public_recom">
					<ul>
						<li>
							<a href="article.html">
								<div class="pic"><img src="images/2016122223895.jpg"/></div>
								<p>洛阳古城慢时</p>
							</a>
						</li>
						<li>
							<a href="article.html">
								<div class="pic"><img src="images/2016122223895.jpg"/></div>
								<p>洛阳古城慢时</p>
							</a>
						</li>
						<li>
							<a href="article.html">
								<div class="pic"><img src="images/2016122223895.jpg"/></div>
								<p>洛阳古城慢时</p>
							</a>
						</li>
						<div class="clear"></div>
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
</body>
</html>