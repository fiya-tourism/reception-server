<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>发布游记</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!------------核心样式-------------->
    <link rel="stylesheet" type="text/css" href="/css/user.css">
<#--upload-->
    <script type="text/javascript" src="/commons/webuploader-0.1.5/webuploader.js"></script>
    <link rel="stylesheet" href="/commons/webuploader-0.1.5/webuploader.css">
</head>
<body>
<!-------------------版头------------------->
<#--<div id="header">-->
    <#--<div class="cw1000">-->
        <#--<!-------------------logo-----------------&ndash;&gt;-->
        <#--<div class="logo"><a title="" href="/reception/index"><img alt="" src="/images/logo.jpg" /></a></div>-->
        <#--<!-------------------导航-----------------&ndash;&gt;-->
        <#--<div class="nav">-->
            <#--<ul>-->
                <#--<li><a title="" href="/reception/index">首页</a><span>|</span></li>-->
                <#--<div class="clear"></div>-->
            <#--</ul>-->
        <#--</div>-->
        <#--<!-------------------用户-----------------&ndash;&gt;-->
        <#--<div class="user">-->
            <#--<a class="user-hd" href="#">-->
                <#--<img src="/images/user_head_pic.jpg"/><b></b>-->
                <#--<div class="clear"></div>-->
            <#--</a>-->
            <#--<div class="user-bd">-->
                <#--<div class="integral"><img src="/images/integral_ico.png"/>当前积分 609</div>-->
                <#--<ul class="nav_sort">-->
                    <#--<li><a href="my_index.html"><i class="i1"></i>我的主页</a></li>-->
                    <#--<li><a href="write_note.html"><i class="i2"></i>写游记</a></li>-->
                    <#--<li><a href="my_note.html"><i class="i9"></i>我的游记</a></li>-->
                    <#--<li><a href="collection_list.html"><i class="i3"></i>我的收藏</a></li>-->
                    <#--<li><a href="project_order.html"><i class="i4"></i>商品订单</a></li>-->
                    <#--<li><a href="scenic_order.html"><i class="i5"></i>旅游订单</a></li>-->
                    <#--<li><a href="note_comments.html"><i class="i6"></i>我的评论</a></li>-->
                    <#--<li><a href="my_info.html"><i class="i7"></i>设置</a></li>-->
                    <#--<li><a href="#"><i class="i8"></i>退出</a></li>-->
                <#--</ul>-->
            <#--</div>-->
        <#--</div>-->
        <#--<div class="clear"></div>-->
    <#--</div>-->
<#--</div>-->
<!-----------------发布封面---------------->
<form id="youji">
<div id="write_cover">
    <dt><!--dom结构部分-->
        <div id="uploader-demo" >
            <!--用来存放item-->
        <#--<div id="fileList" class="uploader-list"  ></div>-->
            <div id="filePicker">更换封面</div>
        </div>
        <input type="hidden" name="travelsPicture" id="travelsPicture" />
        <img src="" name="travelsPicture" id="travelsPicture" width="1300px" height="700px">
    </dt>
    <div class="replace_name"><div class="cw1000"><input type="text" name="travelsTitle" placeholder="填写游记标题" maxlength="48" /></div></div>
</div>
<!-----------------框架---------------->
                <div id="editor" >
                </div>

    <textarea id="text1" hidden name="travelsText" style="width:100%; height:200px;"></textarea>
    <button id="btn1">获取html</button>

                <br/>

            欢迎使用：<br/>

                <div id="ttt"></div>
    <!-----------------发布按钮---------------->
    <div id="write_button">
        <a class="exit" href="#">退出</a>
        <input class="express" type="button" id="submitButto" value="发表" />
        <span>或</span>
        <input class="save" type="submit" href="#" value="保存草稿" />
        <div class="clear"></div>
    </div>
</div>
</form>
<!-----------------版底---------------->
<#--<div id="footer">-->
    <#--<p>河洛文化旅游发展有限公司 版权所有</p>-->
    <#--<p>Copyright 2016 zgqygc.com All Rights Reserved | 豫ICP备10000000号　技术支持：闪迅</p>-->
<#--</div>-->
<!-- 注意， 只需要引用 JS，无需引用任何 CSS ！！！-->
<script type="text/javascript" src="/js/wangEditor.min.js"></script>
</body>
<script>
    $(function () {
        spot = null;
    })
    var i= 0;

    $list = $("#fileList");
    //初始化Web Uploader
    var uploader = WebUploader.create({

        //设置文件上传域的name
        fileVal:"upfile",

        // 选完文件后，是否自动上传。
        auto: true,

        // swf文件路径
        swf: '<%=request.getContextPath()%>/commons/webuploader-0.1.5/Uploader.swf',

        // 文件接收服务端。
        server: '/con/uploadImg',

        // 选择文件的按钮。可选。
        // 内部根据当前运行是创建，可能是input元素，也可能是flash.
        pick: '#filePicker',

        // 只允许选择图片文件。
        accept: {
            title: 'Images',
            extensions: 'gif,jpg,jpeg,bmp,png',
            mimeTypes: 'image/*'
        }
    });

    //当有文件添加进来的时候
    uploader.on( 'fileQueued', function( file ) {
        $list.empty();
        var $li = $(
                '<div id="' + file.id + '" class="file-item thumbnail">' +
                '<img>' +
                '<div class="info">' + file.name + '</div>' +
                '</div>'
                ),
                $img = $li.find('img');

        // $list为容器jQuery实例
        $list.append( $li );

        // 创建缩略图
        // 如果为非图片文件，可以不用调用此方法。
        // thumbnailWidth x thumbnailHeight 为 100 x 100
        uploader.makeThumb( file, function( error, src ) {
            if ( error ) {
                $img.replaceWith('<span>不能预览</span>');
                return;
            }

            $img.attr( 'src', src );
        }, 400, 400);
    });

    //文件上传过程中创建进度条实时显示。
    uploader.on( 'uploadProgress', function( file, percentage ) {
        var $li = $( '#'+file.id ),
                $percent = $li.find('.progress span');

        // 避免重复创建
        if ( !$percent.length ) {
            $percent = $('<p class="progress"><span></span></p>')
                    .appendTo( $li )
                    .find('span');
        }

        $percent.css( 'width', percentage * 100 + '%' );
    });

    //文件上传成功，给item添加成功class, 用样式标记上传成功。
    uploader.on( 'uploadSuccess', function(file,res) {
        // $( '#'+file.id ).addClass('upload-state-done');
        //上传的图片路径
        //$("#urlHiddens").val(res._raw);
        //console.log($("img[name='travelsPicture']").);
        if (spot==null){
            spot= $("img[name='travelsPicture']").attr({"src":res._raw});
            $("#travelsPicture").val(res._raw);
        }
        if (i!=0){
            var str = "travelsPicture";
            str+i;
            $("#travelsPicture").after("<img name='travelsPicture' id=str width='100px'/>");
            $("#str").attr({"src":res._raw});
            $("#travelsPicture").val($("#travelsPicture").val()+","+res._raw);
        }
        i=1;
    });

    // 文件上传失败，显示上传出错。
    uploader.on( 'uploadError', function( file ) {
        var $li = $( '#'+file.id ),
                $error = $li.find('div.error');

        // 避免重复创建
        if ( !$error.length ) {
            $error = $('<div class="error"></div>').appendTo( $li );
        }

        $error.text('上传失败');
    });

    // 完成上传完了，成功或者失败，先删除进度条。
    uploader.on( 'uploadComplete', function( file ) {
        $( '#'+file.id ).find('.progress').remove();
    });
</script>
<script type="text/javascript">
    var datas ;
    var E = window.wangEditor;
    var editor = new E('#editor');
    var $text1 = $('#text1');
    // 自定义配置颜色（字体颜色、背景色）
    editor.customConfig.colors = [
        '#000000',
        '#eeece0',
        '#1c487f',
        '#4d80bf',
        '#c24f4a',
        '#8baa4a',
        '#7b5ba1',
        '#46acc8',
        '#f9963b',
        '#ffffff'
    ];
    // 通过 url 参数配置 debug 模式。url 中带有 errno:0 才会开启 debug 模式
    //editor.customConfig.debug = location.href.indexOf('errno:0') > 0;
    //设置上传的参数名
    editor.customConfig.uploadFileName = 'file';
    // 配置服务器端地址
    editor.customConfig.uploadImgServer ='/con/upload';
    // 将图片大小限制为 3M
    editor.customConfig.uploadImgMaxSize = 5 * 1024 * 1024;
    // 限制一次最多上传 5 张图片
    editor.customConfig.uploadImgMaxLength = 5;
    editor.customConfig.uploadImgHooks = {
        customInsert: function (insertImg, result, editor) {
            var url =result.data;//获取后台返回的url
            insertImg(url);
        }
    };
    // 表情面板可以有多个 tab ，因此要配置成一个数组。数组每个元素代表一个 tab 的配置
    editor.customConfig.emotions = [
        {
            // tab 的标题
            title: '默认',
            // type -> 'emoji' / 'image'
            type: 'image',
            // content -> 数组
            content: [
                {
                    alt: '[坏笑]',
                    src: 'http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/50/pcmoren_huaixiao_org.png'
                },
                {
                    alt: '[舔屏]',
                    src: 'http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/40/pcmoren_tian_org.png'
                }
            ]
        },
        {
            // tab 的标题
            title: 'emoji',
            // type -> 'emoji' / 'image'
            type: 'emoji',
            // content -> 数组
            content: ['😀', '😃', '😄', '😁', '😆']
        }
    ]
    editor.customConfig.onchange = function (html) {
        // 监控变化，同步更新到 textarea
        $text1.val(html)
    }
    //初始化
    editor.create();
    if (datas!=null){
        // 初始化 textarea 的值
        $text1.val(editor.txt.html());
        $text1.val(datas.conentisert);
        editor.txt.html($text1.val());
    }

    // editor.customConfig.onchange = function (html) {
    //     // 监控变化，同步更新到 textarea
    //     console.log(html);
    //     // 读取 html
    //     editor.txt.html($text1);
    //     $text1.val(html);
    // };



    $("#submitButto").mousedown(function(){
        $("submitButto").attr({"style":"background-color: #8baa4a;border-color: #8baa4a;width:84pt;height:32pt;"});
    });

    $("#submitButto").mouseover(function(){
        $("#submitButto").css("background-color","#5DB796");
    });
    $("#submitButto").mouseout(function(){
        $("#submitButto").css("background-color","#4781B7");
    });
    $("#submitButto").click(function () {
        $.ajax({
            type:"POST",
            url:"/con/insertInIt",
            data:$("#youji").serialize(),
            success:function (data) {
                $("#rightcontent").empty();
                var str = $("#submitButto").val;
                if (str=="发布景点"){
                    if (1==data){
                        alert("发布成功");
                        $.ajax({
                            type:"GET",
                            url:"/reception/index",
                            dataType:"html",
                            async:false,
                            success:function (data) {
                                $("#spotsListId").attr("class","current-menuleft");
                                $("#rightcontent").html(data);
                            }
                        })
                    } else {
                        alert("发布失败");
                    }
                }else {
                    if (1==data){
                        alert("保存成功");
                        $.ajax({
                            type: "GET",
                            url: "/reception/index",
                            dataType: "html",
                            async: false,
                            success: function (data) {
                                $("#spotsListId").attr("class", "current-menuleft");
                                $("#rightcontent").html(data);
                            }
                        })
                    } else {
                        alert("保存失败");
                    }
                }
            }
        })
    })

</script>
</html>