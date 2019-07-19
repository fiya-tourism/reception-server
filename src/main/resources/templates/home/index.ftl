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

<!-------------------工具栏 主页面------------------->
<div id="toolbar">
    <div class="cw1200">
        <ul class="fl">
            <li class="tb"><p>您好，欢迎访问河洛文化旅游网！</p></li>
			<li class="tb"><a href="#" data-am-modal="{target: '#my-alert'}">签到</a><span>|</span></li>
            <li class="tb"><a href="/reception/userlogin">登录</a><span>|</span></li>
            <li class="tb"><a href="/reception/userregister">注册</a></li>
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
                        <div id="activities_UlId"></div>
					</div>
				</div>
				<span>|</span>
			</li>
            <li class="tb"><a href="javascript:tiemshop()"><i class="cart_ico"></i>购物车</a><span>|</span></li>
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
        <div class="logo fl"><a title="" href="javascript:home();"><img alt="" src="/images/t_logo.jpg"></a></div>
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
                    <li><a title="" class="cur" id="home" href="javascript:home()">首页</a></li>
                    <li><a title="" id="scenicList" href="javascript:scenic_list()">孟津旅游</a></li>
                    <li><a title="" id="tiemId" href="javascript:tiemmall()">特产商城</a></li>
                    <li><a title="" id="note" href="javascript:notelist()">精彩瞬间</a></li>
                </ul>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>
<div id="conmpenr"></div>
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
    var whereindex;
    $(function(){
        whereindex =1;

        home();
    });
    //首页
    function home() {
        $("#banner").remove();
        $("#userindexdiv").remove();
        $("#h_scenic").remove();
        $("#h_project").remove();
        $("#h_note").remove();
        $("#conmpenr").empty();
        $("#home").attr("class","cur");
        $("#tiemId").attr("class","");
        $("#scenicList").attr("class","");
        $("#note").attr("class","");

        var  s= $("#userindexdiv").remove();
        if (s.length==1 || whereindex==1){
            $.ajax({
                type:"GET",
                url:"/reception/anavigate",
                async:false,
                dataType:"html",
                success:function (data) {
                    $("#activities_UlId").html(data);
                }
            })
            whereindex =2;
        }
        //游记
        $.ajax({
            type:"GET",
            url:"/reception/note",
            async:false,
            dataType:"html",
            success:function (data) {
                $("#conmpenr").after("<div id='h_note'></div>");
                $("#h_note").html(data);
            }
        })

        //特产
        $.ajax({
            type:"GET",
            url:"/reception/project",
            async:false,
            dataType:"html",
            success:function (data) {
                $("#conmpenr").after("<div id='h_project'></div>");
                $("#h_project").html(data);
            }
        })

        //旅游
        $.ajax({
            type:"GET",
            url:"/reception/scenic",
            async:false,
            dataType:"html",
            success:function (data) {
                $("#conmpenr").after("<div id='h_scenic'></div>");
                $("#h_scenic").html(data);
            }
        });

        //branner
        $.ajax({
            type:"GET",
            url:"/reception/branmer",
            async:false,
            dataType:"html",
            success:function (data) {
                $("#conmpenr").after("<div id='banner'></div>");
                $("#banner").html(data);
            }
        });
    }

    //旅游页面
    function scenic_list() {
        $("#banner").remove();
        $("#home").attr("class","");
        $("#tiemId").attr("class","");
        $("#note").attr("class","");
        $("#scenicList").attr("class","cur");
        $("#userindexdiv").remove();
        $("#h_scenic").remove();
        $("#h_project").remove();
        $("#h_note").remove();
        var  s= $("#userindexdiv").remove();
        if (s.length==1 || whereindex==1){
            $.ajax({
                type:"GET",
                url:"/reception/anavigate",
                async:false,
                dataType:"html",
                success:function (data) {
                    $("#activities_UlId").html(data);
                }
            })
        }
            $.ajax({
                type:"GET",
                url:"/reception/index",
                async:false,
                dataType:"html",
                success:function (data) {
                    $("#conmpenr").html(data);
                }
            })
    }
    //旅游详情页面
    function scentByid() {
        $("#banner").remove();
        $("#home").attr("class","");
        $("#tiemId").attr("class","");
        $("#note").attr("class","");
        $("#scenicList").attr("class","cur");
        $("#h_scenic").remove();
        $("#h_project").remove();
        $("#h_note").remove();
        $.ajax({
            type:"GET",
            url:"/reception/scenicById",
            async:false,
            dataType:"html",
            success:function (data) {
                $("#conmpenr").html(data);
            }
        })
    }
    //旅游活动页面
    function activitieslist() {
        $("#banner").remove();
        $("#home").attr("class","");
        $("#tiemId").attr("class","");
        $("#note").attr("class","");
        $("#scenicList").attr("class","cur");
        $("#h_scenic").remove();
        $("#h_project").remove();
        $("#h_note").remove();
        $.ajax({
            type:"GET",
            url:"/reception/activitieslistpzx",
            async:false,
            dataType:"html",
            success:function (data) {
                $("#conmpenr").html(data);
            }
        })
    }
    //旅游活动页面
    function activitiesById() {
        $("#banner").remove();
        $("#home").attr("class","");
        $("#tiemId").attr("class","");
        $("#note").attr("class","");
        $("#scenicList").attr("class","cur");
        $("#h_scenic").remove();
        $("#h_project").remove();
        $("#h_note").remove();
        $.ajax({
            type:"GET",
            url:"/reception/activitiesById",
            async:false,
            dataType:"html",
            success:function (data) {
                $("#conmpenr").html(data);
            }
        })
    }

    //旅游定单页面
    function scenicorder() {
        $("#userindexdiv").remove();
        $("#banner").remove();
        $("#home").attr("class","");
        $("#tiemId").attr("class","");
        $("#note").attr("class","");
        $("#scenicList").attr("class","cur");
        $("#h_scenic").remove();
        $("#h_project").remove();
        $("#h_note").remove();
        location.href="/reception/scenicorder";
        // $.ajax({
        //     type:"GET",
        //     url:"/reception/scenicorder",
        //     async:false,
        //     dataType:"html",
        //     success:function (data) {
        //         $("#conmpenr").html(data);
        //     }
        // })
    }
    //商品页面
    function tiemmall() {
        $("#banner").remove();
        $("#home").attr("class","");
        $("#scenicList").attr("class","");
        $("#note").attr("class","");
        $("#tiemId").attr("class","cur");
        $("#h_scenic").remove();
        $("#h_project").remove();
        $("#h_note").remove();
        $("#userindexdiv").remove();
        var  s= $("#userindexdiv").remove();
        if (s.length==1 || whereindex==1){
            $.ajax({
                type:"GET",
                url:"/reception/anavigate",
                async:false,
                dataType:"html",
                success:function (data) {
                    $("#activities_UlId").html(data);
                }
            })
        }
            $.ajax({
                type:"GET",
                url:"/reception/tiemmall",
                async:false,
                dataType:"html",
                success:function (data) {
                    $("#conmpenr").html(data);
                }
            })
    }
    //商品详情页面
    function tiemById() {
        $("#banner").remove();
        $("#home").attr("class","");
        $("#scenicList").attr("class","");
        $("#note").attr("class","");
        $("#tiemId").attr("class","cur");
        $("#userindexdiv").remove();
        $("#h_scenic").remove();
        $("#h_project").remove();
        $("#h_note").remove();
        $.ajax({
            type:"GET",
            url:"/reception/tiemById",
            async:false,
            dataType:"html",
            success:function (data) {
                $("#conmpenr").html(data);
            }
        })
    }

    //商品购物车页面
    function tiemshop() {
        location.href="/reception/tiemshop";
    }
    //商品订单页面
    function tiemoreder() {
        location.href="/reception/tiemoreder";
    }

    //游记展示页面
        function notelist() {
            $("#banner").remove();
            $("#home").attr("class","");
            $("#scenicList").attr("class","");
            $("#tiemId").attr("class","");
            $("#note").attr("class","cur");
            $("#h_scenic").remove();
            $("#h_project").remove();
            $("#h_note").remove();
            var  s= $("#userindexdiv").remove();
            if (s.length==1 || whereindex==1){
                $.ajax({
                    type:"GET",
                    url:"/reception/anavigate",
                    async:false,
                    dataType:"html",
                    success:function (data) {
                        $("#activities_UlId").html(data);
                    }
                })
            }
            $.ajax({
                type:"GET",
                url:"/reception/notelist",
                async:false,
                dataType:"html",
                success:function (data) {
                    $("#conmpenr").html(data);
                }
            })
    }
    //游记详情页面
    function noteById() {
        $("#banner").remove();
        $("#home").attr("class","");
        $("#scenicList").attr("class","");
        $("#tiemId").attr("class","");
        $("#note").attr("class","cur");
        $("#userindexdiv").remove();
        $("#h_scenic").remove();
        $("#h_project").remove();
        $("#h_note").remove();
        $.ajax({
            type:"GET",
            url:"/reception/noteById",
            async:false,
            dataType:"html",
            success:function (data) {
                $("#conmpenr").html(data);
            }
        })
    }
    //写游记页面
    function insertnote() {
        $("#banner").remove();
        $("#home").attr("class","");
        $("#scenicList").attr("class","");
        $("#tiemId").attr("class","");
        $("#note").attr("class","cur");
        $("#userindexdiv").remove();
        $("#h_scenic").remove();
        $("#h_project").remove();
        $("#h_note").remove();

        $.ajax({
            type:"GET",
            url:"/reception/insertnote",
            async:false,
            dataType:"html",
            success:function (data) {
                $("#conmpenr").html(data);
            }
        })
    }
    //用户主页，页面
    function userindex() {
        $("#conmpenr").empty();
        $("#banner").remove();
        $("#home").attr("class","");
        $("#scenicList").attr("class","");
        $("#tiemId").attr("class","");
        $("#note").attr("class","");
        $("#userindexdiv").remove();
        $("#h_scenic").remove();
        $("#h_project").remove();
        $("#h_note").remove();
        location.href="/reception/userindex";
        /*$.ajax({
            type:"GET",
            url:"/reception/userindex",
            async:false,
            dataType:"html",
            success:function (data) {
                $("#conmpenr").after("<div id='userindexdiv'></div>");
                $("#userindexdiv").html(data);
            }
        })*/
    }

</script>
</body>
</html>