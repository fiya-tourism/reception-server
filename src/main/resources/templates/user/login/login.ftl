<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>登录</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-------------jquery库-------------->
  	<script type="text/javascript" src="/js/jquery-1.8.3.min.js"></script>
	<!-------------Amazeui--------------->
    <script type="text/javascript" src="/js/amazeui.js"></script>
    <link rel="stylesheet" type="text/css" href="/css/amazeui.css">
    <!------------核心样式-------------->
    <link rel="stylesheet" type="text/css" href="/css/user.css">

    <link rel="stylesheet" href="/commons/jquery-easyui/themes/default/easyui.css">
    <link rel="stylesheet" href="/commons/jquery-easyui/themes/icon.css">
    <script type="text/javascript" src="/commons/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="/commons/jquery-easyui/jquery.min.js"></script>
    <script type="text/javascript" src="/commons/jquery-easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="/commons/jquery-easyui/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="/commons/dialog/dialog-plus.js"></script>
    <script type="text/javascript" src="/js/webuploader-0.1.5/webuploader.js"></script>

</head>
<body>

<!-------------------登录------------------->
<div id="log_register">

	<div class="lr_box">

		<div class="tag">
			<ul>
				<li><a class="cur" href="/reception/userlogin">登录</a></li>
				<li><a href="/reception/userregister">注册</a></li>
				<div class="clear"></div>
			</ul>
		</div>
		<table class="table_list">
			<tbody>
				<tr>
					<td><input class="text" name="userPhone" type="text" placeholder="手机号" id="phone"><span id="phoneSpan"></span></td>
				</tr>
				<tr>
					<td><input class="text"  type="password" name="userPassword" placeholder="您的密码" id="password"><span id="passSpan"></span></td>
				</tr>

				<tr>
                    <td class="clearfix">
                        <label class="one"  for="code">验证码：</label>
                        <input type="text" name="codeImg" id="code" size="5" class="easyui-textbox" >
                        <img src="/login/getImg" height="60px" onclick="this.src= change()">
                        <span id="ucode"></span>
                    </td>
				</tr>
                <tr>
                    <td><input class="button" type="button" value="登录" onclick="loginCustomer()"><span id="login"></span></td>
                </tr>
			</tbody>
		</table>

	</div>

</div>

</body>
<script>

    function change(){
        return '/login/getImg?aaa'+ Math.random();
    }

    function loginCustomer(){
        var userPhone = $("#phone").val();
        var userPassword = $("#password").val();
        var codeImg = $("#code").val();
        //正则验证手机号
        var phone = /^1\d{10}$/;
        var bool = phone.test(userPhone);
        if(!bool){
            $("#phoneSpan").html("<font color='red'>手机号格式错误</font>");
            return;
        }
        //判断手机号不能为空
        if(userPhone == ''){
            $("#phoneSpan").html("<font color='red'>手机号不能为空</font>")
        }

        //判断密码不能为空  和  不能小于6位数
        var pass = /^[A-Za-z0-9]{6,}$/
        var passNull = pass.test(userPassword);
        if(!passNull){
            $("#passSpan").html("<font color='red'>密码不能小于6位</font>");
            return;
        }

        if(userPassword == null){
            $("#passSpan").html("<font color='red'>密码不能为空</font>");
            return;
        }

        //如果上面都没问题  去后台验证手机号和密码是否都一致
        $.ajax({
            url:'/login/toLogin',
            type:'get',
            data:{
                "userPhone":userPhone,
                "userPassword":userPassword,
                'codeImg':codeImg
            },
            dataType:'json',
            success:function(data){
                if(data.code==500){
                    $("#login").html(data.msg)
                }else{
                    $.messager.confirm('提示', data.msg+"确定跳转吗?", function(r){
                        if (r){
                            location.href="/reception/index";
                        }
                    });
                }
            }
        })
    }

</script>

</html>