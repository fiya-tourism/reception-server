<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>我的信息</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-------------jquery库-------------->
  	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<!-------------Amazeui--------------->
    <script type="text/javascript" src="js/amazeui.js"></script>
    <link rel="stylesheet" type="text/css" href="css/amazeui.css">
    <!------------核心样式-------------->
    <link rel="stylesheet" type="text/css" href="css/user.css">    
</head>
<body>

<!-------------------版头------------------->
<div id="header">
    <div class="cw1000">
        <!-------------------logo------------------->
        <div class="logo"><a title="" href="index.html"><img alt="" src="images/logo.jpg" /></a></div>
		<!-------------------导航------------------->
		<div class="nav">
			<ul>
				<li><a title="" href="index.html">首页</a><span>|</span></li>
				<li><a title="" href="scenic_list.html">孟津旅游</a><span>|</span></li>
				<li><a title="" href="mall_list.html">特产商城</a><span>|</span></li>
				<li><a title="" href="note_list.html">美丽乡村</a><span>|</span></li>
				<li><a title="" href="news_list.html">新闻资讯</a></li>
				<div class="clear"></div>
			</ul>
		</div>
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
        <div class="clear"></div>
    </div>
</div>
<!-----------------用户banner---------------->
<div id="user_banner">
	<div class="pic">
		<a href="my_head.html">
			<img src="images/user_head_pic.jpg"/>
			<div>更换头像</div>
		</a>
	</div>
	<div class="con">
		<h2>Alpha</h2>
		<p>人生旅程，不同的是沿途风景以及看风景的心情</p>
	</div>
</div>
<!-----------------快捷导航---------------->
<div id="quick_nav">
	<a href="my_index.html"><span class="ico1"><img src="images/nav_ico1.png"/></span>个人主页</a>
	<a href="write_note.html"><span class="ico2"><img src="images/nav_ico2.png"/></span>发布游记</a>
	<a href="my_note.html"><span class="ico7"><img src="images/nav_ico7.png"/></span>我的游记</a>
	<a href="collection_list.html"><span class="ico3"><img src="images/nav_ico3.png"/></span>我的收藏</a>
	<a href="project_order.html"><span class="ico4"><img src="images/nav_ico4.png"/></span>商品订单</a>
	<a href="scenic_order.html"><span class="ico5"><img src="images/nav_ico5.png"/></span>旅游订单</a>
	<a href="note_comments.html"><span class="ico6"><img src="images/nav_ico6.png"/></span>我的评论</a>
</div>
<!-----------------框架---------------->
<div class="cw1000">
	<div class="w280 fl">
		<div class="public_box">
			<!-----------------设置导航---------------->
			<div id="set_nav">
				<ul>
					<li><a class="cur" href="my_info.html"><i class="ico1"></i>我的信息</a></li>
					<li><a href="my_head.html"><i class="ico2"></i>我的头像</a></li>
					<li><a href="my_contact.html"><i class="ico3"></i>常用联系人</a></li>
					<li><a href="security.html"><i class="ico4"></i>修改密码</a></li>
				</ul>
			</div>
		</div>	
	</div>
	<div class="w700 fr">
		<div class="public_box">
			<!-----------------我的信息---------------->
			<div id="set_box">
				<div class="title"><h2>我的信息</h2></div>
				<table class="table_list">
					<tr>
						<th>昵称：</th>
						<td><input class="text" type="text" value="Alpha"/></td>
					</tr>
					<tr>
						<th>性别：</th>
						<td>
							<label class="am-radio">
								<input class="radio" type="radio" name="radio3" value="" data-am-ucheck checked> 男
							</label>
							<label class="am-radio">
								<input class="radio" type="radio" name="radio3" value="" data-am-ucheck> 女
							</label>
							<label class="am-radio">
								<input class="radio" type="radio" name="radio3" value="" data-am-ucheck> 保密
							</label>
						</td>
					</tr>
					<tr>
						<th>居住城市：</th>
						<td><input class="text" type="text" value="洛阳"/></td>
					</tr>
					<tr>
						<th>出生日期：</th>
						<td><input type="text" readonly="true" class="text"></td>
					</tr>
					<tr>
						<th>个人签名：</th>
						<td><textarea placeholder="例：一场说走就走的旅行，不必在乎终点！">Dream of starting！</textarea></td>
					</tr>
				</table>
				<div class="operation"><input type="submit" class="save" value="保存" /></div>
			
			</div>
		</div>	
	</div>
	<div class="clear"></div>
</div>
<!-----------------版底---------------->
<div id="footer">
	<p>河洛文化旅游发展有限公司 版权所有</p>
	<p>Copyright 2016 zgqygc.com All Rights Reserved | 豫ICP备10000000号　技术支持：闪迅</p>
</div>
</body>
</html>