<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>注册</title>
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
    <script type="text/javascript" src="/commons/webuploader-0.1.5/webuploader.js"></script>

</head>
<body>

<!-------------------登录------------------->
<div id="log_register">
	
	<div class="lr_box">
		
		<div class="tag">
			<ul>
				<li><a href="/reception/userlogin">登录</a></li>
				<li><a class="cur" href="/reception/userregister">注册</a></li>
				<div class="clear"></div>
			</ul>
		</div>
		<table class="table_list">
			<tbody>
				<tr>
					<td><input class="text" id="phone" name="userPhone" type="text" placeholder="手机号" onblur="checkPhone()"><span id="phoneSpan"></span></td>
				</tr>
				<tr>
					<td><input class="text" id="password"  type="password" name="userPassword" lass="{required:true,rangelength:[8,20],}" placeholder="您的密码"></td>
				</tr>
                <tr>
                    <td><input id="confirm_password" name="confirm_password" type="password" class="{required:true,equalTo:'#password'}" value placeholder="确认密码" onblur="checkPass()" ><span id="passSpan"></span></td>
                </tr>
				<tr>
                    <td class="clearfix">
                        <input id="sms" name="code" type="text" class="{required:true,rangelength:[6,20]}" value placeholder="请输入手机验证码"  />
                        <input type="button" value="发送验证码" onclick="sendPhoneCode()"><span id="smsSpan"></span>
                    </td>
				</tr>
				<tr>
					<td><input class="submit" type="button" onclick="regCustomer()"  value="注册"></td>
				</tr>
			</tbody>
		</table>

	</div>

</div>

<script>

    var flag = false;

    var sms = $("#sms").val();
    //异步ajax验证手机号是否存在
    function checkPhone(){
        //手机号正则
        var zz = /^1\d{10}$/;
        var bool = zz.test($("#phone").val());
        if(!bool){
            $("#phoneSpan").html("<font color='red'>请输入正确格式的手机号</font>");
            return;
        }
        //去数据库验证手机号是否存在
        $.ajax({
            url:'/login/checkPhone',
            type:'get',
            data:{"userPhone":$("#phone").val()},
            dataType:'json',
            success:function(data){
                if(data.code==500){
                    $("#phoneSpan").html("<font color='red'>"+data.msg+"</font>");
                    flag = false;
                    return ;
                }else{
                    $("#phoneSpan").html("√");
                    flag = true;
                }
            }
        });
    }

    //校验密码是否一致
    function checkPass(){
        var userPassword = $("#password").val();
        var pass = $("#confirm_password").val();
        var msg = "";
        //如果密码不一致 返回提示信息
        if(userPassword != pass){
            msg = "<font color='red'>两次密码不一致 请重试</font>"
            $("#passSpan").html(msg)
            flag = false;
            return ;
        }
        $("#passSpan").html(msg)
    }



    //注册用户
    function regCustomer(){

        //异步验证手机号
        checkPhone();
        if(!flag){
            return;
        }
        //验证两次密码是否一致
        checkPass();
        if(!flag){
            return;
        }

        //去后台 新增用户信息
        $.ajax({
            url:'/login/register',
            type:'get',
            data:{
                'userPhone':$("#phone").val(),
                'userPassword':$("#password").val(),
                'code':sms
            },
            dataType:'json',
            success:function(data){
                if(data.code==500){
                    $("#reg").html("<font color='red'>"+data.msg+"</font>")
                }else{
                    $.messager.confirm('提示', data.msg+"!确定要跳转到登录页面?", function(r){
                        if (r){
                            location.href="/reception/userregister";
                        }
                    });
                }
            }
        })

    }

    //发送手机验证码
    function sendPhoneCode(){
        $.ajax({
            url:'/login/getSms',
            type:'get',
            data:{'userPhone':$("#phone").val()},
            dataType:'json',
            success:function(data){
                if(data.code==500){
                    $("#smsSpan").html(data.msg);
                }else{
                    $.messager.show({
                        title:'提示',
                        msg:data.msg,
                        timeout:2000,
                        showType:'fade'
                    })
                }
            }
        })
    }

</script>
</body>
</html>