<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>我的主页</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-------------jquery库-------------->
    <script type="text/javascript" src="/js/jquery-1.8.3.min.js"></script>
    <!-------------Amazeui--------------->
    <script type="text/javascript" src="/js/amazeui.js"></script>
    <link rel="stylesheet" type="text/css" href="/css/amazeui.css">
    <!------------核心样式-------------->
    <link rel="stylesheet" type="text/css" href="/css/user.css">

</head>
<body>

<!-------------------版头------------------->
<div id="header">
    <div class="cw1000">
        <!-------------------logo------------------->
        <div class="logo"><a title="" href="javascript:home()"><img alt="" src="/images/logo.jpg" /></a></div>
        <!-------------------导航------------------->
        <div class="nav">
            <ul>
                <li><a title="" href="javascript:home()">首页</a><span>|</span></li>
                <li><a title="" id="scenicList" href="javascript:scenic_list()">孟津旅游</a><span>|</span></li>
                <li><a title="" id="tiemId" href="javascript:tiemmall()">特产商城</a><span>|</span></li>
                <li><a title="" id="note" href="javascript:notelist()">精彩瞬间</a></li>
                <div class="clear"></div>
            </ul>
        </div>
        <!-------------------用户------------------->
        <div class="user">
            <a class="user-hd" href="#">
                <img src="/images/user_head_pic.jpg"/><b></b>
                <div class="clear"></div>
            </a>
            <div class="user-bd">
                <div class="integral"><img src="/images/integral_ico.png"/>当前积分 609</div>
                <ul class="nav_sort">
                    <li><a href="javascript:index()"><i class="i1"></i>我的主页</a></li>
                    <li><a href="javascript:insertnote()"><i class="i2"></i>写游记</a></li>
                    <li><a href="javascript:selectnote()"><i class="i9"></i>我的游记</a></li>
                    <li><a href="javascript:usercollect()"><i class="i3"></i>我的收藏</a></li>
                    <li><a href="javascript:selectitem()"><i class="i4"></i>商品订单</a></li>
                    <li><a href="javascript:userscenic_order()"><i class="i5"></i>旅游订单</a></li>
                    <li><a href="javascript:usernote_comments()"><i class="i6"></i>我的评论</a></li>
                    <li><a href="javascript:usermy_info()"><i class="i7"></i>设置</a></li>
                    <li><a href="#"><i class="i8"></i>退出</a></li>
                </ul>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>
<!-----------------快捷导航---------------->
<div id="quick_nav">
    <a href="javascript:index()"><span class="ico1"><img src="/images/nav_ico1.png"/></span>个人主页</a>
    <a href="javascript:insertnote()"><span class="ico2"><img src="/images/nav_ico2.png"/></span>发布游记</a>
    <a href="javascript:selectnote()"><span class="ico7"><img src="/images/nav_ico7.png"/></span>我的游记</a>
    <a href="javascript:usercollect()"><span class="ico3"><img src="/images/nav_ico3.png"/></span>我的收藏</a>
    <a href="javascript:selectitem()"><span class="ico4"><img src="/images/nav_ico4.png"/></span>商品订单</a>
    <a href="javascript:userscenic_order()"><span class="ico5"><img src="/images/nav_ico5.png"/></span>旅游订单</a>
    <a href="javascript:usernote_comments()"><span class="ico6"><img src="/images/nav_ico6.png"/></span>我的评论</a>
</div>
<div id="my_index"></div>
<script>
	$(function () {
        $("#userhead").empty();
        $("#banner").remove();
        $("#home").attr("class","");
        $("#scenicList").attr("class","");
        $("#tiemId").attr("class","");
        $("#note").attr("class","");
        $("#h_scenic").remove();
        $("#h_project").remove();
        $("#h_note").remove();
        $("#my_index").empty();
        index()
    })

    function home() {
        // $.ajax({
        //     type:"GET",
        //     url:"/reception/anavigate",
        //     async:false,
        //     dataType:"html",
        //     success:function (data) {
        //         $("#activities_UlId").html(data);
        //     }
        // })
        location.href="/reception/index";
    }
    //旅游页面
    function scenic_list() {
        $("#banner").remove();
        $("#home").attr("class", "");
        $("#tiemId").attr("class", "");
        $("#note").attr("class", "");
        $("#scenicList").attr("class", "cur");
        $("#userindexdiv").remove();
        $("#h_scenic").remove();
        $("#h_project").remove();
        $("#h_note").remove();
            $.ajax({
                type: "GET",
                url: "/reception/anavigate",
                async: false,
                dataType: "html",
                success: function (data) {
                    $("#activities_UlId").html(data);
                }
            })
        $.ajax({
            type:"GET",
            url:"/reception/scenicpzx",
            async:false,
            dataType:"html",
            success:function (data) {
                $("#conmpenr").html(data);
            }
        })

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

                $.ajax({
                    type:"GET",
                    url:"/reception/anavigate",
                    async:false,
                    dataType:"html",
                    success:function (data) {
                        $("#activities_UlId").html(data);
                    }
                })

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

                $.ajax({
                    type:"GET",
                    url:"/reception/anavigate",
                    async:false,
                    dataType:"html",
                    success:function (data) {
                        $("#activities_UlId").html(data);
                    }
                })
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
	function index() {
        $("#my_index").empty();

		$.ajax({
			type:"GET",
			url:"/reception/userindexdata",
			dataType:"html",
			success:function (data) {
				$("#my_index").html(data);
            }
		})
    }
    //写游记页面
    function insertnote() {
        $("#my_index").empty();
        $.ajax({
            type:"GET",
            url:"/reception/insertnote",
            async:false,
            dataType:"html",
            success:function (data) {
                $("#my_index").html(data);
            }
        })
    }

    //用户主页，页面
    function userindex() {
        $("#my_index").empty();
        $.ajax({
            type:"GET",
            url:"/reception/userindexdata",
            async:false,
            dataType:"html",
            success:function (data) {
                $("#my_index").html(data);
            }
        })
    }
    //发布游记
    function userinsertnote() {
        $("#my_index").empty();
        $.ajax({
            type:"GET",
            url:"/reception/usernote",
            async:false,
            dataType:"html",
            success:function (data) {
                $("#my_index").html(data);
            }
        })
    }
    //我的游记
    function selectnote() {
        $("#my_index").empty();

        $.ajax({
            type:"GET",
            url:"/reception/userMy_note",
            async:false,
            dataType:"html",
            success:function (data) {
                $("#my_index").html(data);
            }
        })
    }
    //我的收藏
    function usercollect() {
	    $("#my_index").empty();

        $.ajax({
            type:"GET",
            url:"/reception/usercollection_list",
            async:false,
            dataType:"html",
            success:function (data) {
                $("#my_index").html(data);
            }
        })
    }
    //商品订单
    function selectitem() {
        $("#my_index").empty();

        $.ajax({
            type:"GET",
            url:"/reception/userproject_order",
            async:false,
            dataType:"html",
            success:function (data) {
                $("#my_index").html(data);
            }
        })
    }
    //旅游订单
    function userscenic_order() {
        $("#my_index").empty();

        $.ajax({
            type:"GET",
            url:"/reception/userscenic_order",
            async:false,
            dataType:"html",
            success:function (data) {
                $("#my_index").html(data);
            }
        })
    }
    //我的评论
    function usernote_comments() {
        $("#my_index").empty();
        $.ajax({
            type:"GET",
            url:"/reception/usernote_comments",
            async:false,
            dataType:"html",
            success:function (data) {
                $("#my_index").html(data);
            }
        })
    }
    //用户设置
    function usermy_info() {
        $("#my_index").empty();
        $.ajax({
            type:"GET",
            url:"/reception/usermy_info",
            async:false,
            dataType:"html",
            success:function (data) {
                $("#my_index").html(data);
            }
        })
    }
    //更换头像
    function usermy_head() {
        $("#my_index").empty();

        $.ajax({
            type:"GET",
            url:"/reception/usermy_head",
            async:false,
            dataType:"html",
            success:function (data) {
                $("#my_index").html(data);
            }
        })
    }
    //常用联系人
    function usermy_contact() {
        $("#my_index").empty();

        $.ajax({
            type:"GET",
            url:"/reception/usermycontact",
            async:false,
            dataType:"html",
            success:function (data) {
                $("#my_index").html(data);
            }
        })
    }

</script>
</body>
</html>