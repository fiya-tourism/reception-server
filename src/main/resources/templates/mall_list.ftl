<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>商城列表</title>
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
                    <li><a class="cur" href="mall_list.html">特产商城</a></li>
                    <li><a href="note_list.html">美丽乡村</a></li>
                    <li><a href="news_list.html">新闻资讯</a></li>
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
						<div class="name"><img src="images/f_t_news_list.png"/></div>
					</div>
					<div class="fr"><img src="images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------列表分类-------------------->
				<div id="list_sort">
					<span>产品类型：</span>
					<div class="list_1">
						<a class="cur" href="#">全部</a>
						<a href="#">农产品</a>
						<a href="#">水果</a>
						<a href="#">工艺品</a>
						<a href="#">副食品</a>
						<div class="clear"></div>
					</div>
                    <div class="list_2">
                        <a class="cur" href="#">纪念品</a>
                        <a href="#">农产品</a>
                        <a href="#">水果</a>
                        <a href="#">工艺品</a>
                        <a href="#">副食品</a>
                        <a href="#">农产品</a>
                        <a href="#">水果</a>
                        <a href="#">工艺品</a>
                        <a href="#">副食品</a>
                        <a href="#">农产品</a>
                        <div class="clear"></div>
                    </div>
                    <div class="list_3">
                        <a class="cur" href="#">纪念品</a>
                        <a href="#">农产品</a>
                        <a href="#">水果</a>
                        <a href="#">工艺品</a>
                        <a href="#">副食品</a>
                        <a href="#">农产品</a>
                        <a href="#">水果</a>
                        <a href="#">工艺品</a>
                        <a href="#">副食品</a>
                        <a href="#">农产品</a>
                        <a href="#">水果</a>
                        <a href="#">工艺品</a>
                        <div class="clear"></div>
                    </div>
				</div>
				<!------------------特产列表-------------------->
				<div id="mall_list">
					<ul>
						<li>
							<div class="pic"><a href="project.html"><img class="scale-effect" src="images/t2.jpg"/></a></div>
							<div class="con">
								<h3><a href="project.html">秘鲁红提500g 葡萄 新鲜水果秘鲁红提500g 葡萄 新鲜水果</a></h3>
								<label>孟津绮梦红提生态园</label>
							</div>
							<div class="price">
								<p>￥<label>330</label></p>
								<span>运费: 5.00</span>
							</div>
							<div class="other">
								<span>76人付款</span>
								<a href="project.html">132条评论</a>
							</div>
							<div class="view">
								<a href="project.html">查看详情</a>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="article.html"><img class="scale-effect" src="images/t2.jpg"/></a></div>
							<div class="con">
								<h3><a href="article.html">秘鲁红提500g 葡萄 新鲜水果秘鲁红提500g 葡萄 新鲜水果</a></h3>
								<label>孟津绮梦红提生态园</label>
							</div>
							<div class="price">
								<p>￥<label>330</label></p>
								<span>运费: 5.00</span>
							</div>
							<div class="other">
								<span>76人付款</span>
								<a href="project.html">132条评论</a>
							</div>
							<div class="view">
								<a href="project.html">查看详情</a>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="article.html"><img class="scale-effect" src="images/t2.jpg"/></a></div>
							<div class="con">
								<h3><a href="article.html">秘鲁红提500g 葡萄 新鲜水果秘鲁红提500g 葡萄 新鲜水果</a></h3>
								<label>孟津绮梦红提生态园</label>
							</div>
							<div class="price">
								<p>￥<label>330</label></p>
								<span>运费: 5.00</span>
							</div>
							<div class="other">
								<span>76人付款</span>
								<a href="project.html">132条评论</a>
							</div>
							<div class="view">
								<a href="project.html">查看详情</a>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="article.html"><img class="scale-effect" src="images/t2.jpg"/></a></div>
							<div class="con">
								<h3><a href="article.html">秘鲁红提500g 葡萄 新鲜水果秘鲁红提500g 葡萄 新鲜水果</a></h3>
								<label>孟津绮梦红提生态园</label>
							</div>
							<div class="price">
								<p>￥<label>330</label></p>
								<span>运费: 5.00</span>
							</div>
							<div class="other">
								<span>76人付款</span>
								<a href="project.html">132条评论</a>
							</div>
							<div class="view">
								<a href="project.html">查看详情</a>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="article.html"><img class="scale-effect" src="images/t2.jpg"/></a></div>
							<div class="con">
								<h3><a href="article.html">秘鲁红提500g 葡萄 新鲜水果秘鲁红提500g 葡萄 新鲜水果</a></h3>
								<label>孟津绮梦红提生态园</label>
							</div>
							<div class="price">
								<p>￥<label>330</label></p>
								<span>运费: 5.00</span>
							</div>
							<div class="other">
								<span>76人付款</span>
								<a href="project.html">132条评论</a>
							</div>
							<div class="view">
								<a href="project.html">查看详情</a>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="article.html"><img class="scale-effect" src="images/t2.jpg"/></a></div>
							<div class="con">
								<h3><a href="article.html">秘鲁红提500g 葡萄 新鲜水果秘鲁红提500g 葡萄 新鲜水果</a></h3>
								<label>孟津绮梦红提生态园</label>
							</div>
							<div class="price">
								<p>￥<label>330</label></p>
								<span>运费: 5.00</span>
							</div>
							<div class="other">
								<span>76人付款</span>
								<a href="project.html">132条评论</a>
							</div>
							<div class="view">
								<a href="project.html">查看详情</a>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="article.html"><img class="scale-effect" src="images/t2.jpg"/></a></div>
							<div class="con">
								<h3><a href="article.html">秘鲁红提500g 葡萄 新鲜水果秘鲁红提500g 葡萄 新鲜水果</a></h3>
								<label>孟津绮梦红提生态园</label>
							</div>
							<div class="price">
								<p>￥<label>330</label></p>
								<span>运费: 5.00</span>
							</div>
							<div class="other">
								<span>76人付款</span>
								<a href="project.html">132条评论</a>
							</div>
							<div class="view">
								<a href="project.html">查看详情</a>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a href="article.html"><img class="scale-effect" src="images/t2.jpg"/></a></div>
							<div class="con">
								<h3><a href="article.html">秘鲁红提500g 葡萄 新鲜水果秘鲁红提500g 葡萄 新鲜水果</a></h3>
								<label>孟津绮梦红提生态园</label>
							</div>
							<div class="price">
								<p>￥<label>330</label></p>
								<span>运费: 5.00</span>
							</div>
							<div class="other">
								<span>76人付款</span>
								<a href="project.html">132条评论</a>
							</div>
							<div class="view">
								<a href="project.html">查看详情</a>
							</div>
							<div class="clear"></div>
						</li>
					</ul>
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
						<div class="more"><a href="#">更多>></a></div>
					</div>
					<div class="fr"><img src="images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------公共推荐-------------------->
				<div id="public_recom">
					<ul>
						<li>
							<a href="#">
								<div class="pic"><img class="scale-effect" src="images/2016122223895.jpg"/></div>
								<p>洛阳古城慢时</p>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="pic"><img class="scale-effect" src="images/2016122223895.jpg"/></div>
								<p>洛阳古城慢时</p>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="pic"><img class="scale-effect" src="images/2016122223895.jpg"/></div>
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
						<div class="more"><a href="#">更多>></a></div>
					</div>
					<div class="fr"><img src="images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------公共推荐-------------------->
				<div id="public_recom">
					<ul>
						<li>
							<a href="#">
								<div class="pic"><img class="scale-effect" src="images/2016122223895.jpg"/></div>
								<p>洛阳古城慢时</p>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="pic"><img class="scale-effect" src="images/2016122223895.jpg"/></div>
								<p>洛阳古城慢时</p>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="pic"><img class="scale-effect" src="images/2016122223895.jpg"/></div>
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
						<div class="more"><a href="#">更多>></a></div>
					</div>
					<div class="fr"><img src="images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------公共推荐-------------------->
				<div id="public_recom">
					<ul>
						<li>
							<a href="#">
								<div class="pic"><img class="scale-effect" src="images/2016122223895.jpg"/></div>
								<p>洛阳古城慢时</p>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="pic"><img class="scale-effect" src="images/2016122223895.jpg"/></div>
								<p>洛阳古城慢时</p>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="pic"><img class="scale-effect" src="images/2016122223895.jpg"/></div>
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
						<div class="more"><a href="#">更多>></a></div>
					</div>
					<div class="fr"><img src="images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------公共推荐-------------------->
				<div id="public_recom">
					<ul>
						<li>
							<a href="#">
								<div class="pic"><img class="scale-effect" src="images/2016122223895.jpg"/></div>
								<p>洛阳古城慢时</p>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="pic"><img class="scale-effect" src="images/2016122223895.jpg"/></div>
								<p>洛阳古城慢时</p>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="pic"><img class="scale-effect" src="images/2016122223895.jpg"/></div>
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