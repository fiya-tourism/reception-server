<html>
<head>
    <!------------核心样式-------------->
    <link rel="stylesheet" type="text/css" href="/css/user.css">
</head>
<body>
<!-----------------用户banner---------------->
<div id="user_banner">
	<div class="pic">
		<a href="javascript:usermy_head()">
			<img src="/images/user_head_pic.jpg"/>
			<div>更换头像</div>
		</a>
	</div>
	<div class="con">
		<h2>Alpha</h2>
		<p>人生旅程，不同的是沿途风景以及看风景的心情</p>
	</div>
</div>
<!-----------------快捷导航---------------->
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
</script>
</body>
</html>