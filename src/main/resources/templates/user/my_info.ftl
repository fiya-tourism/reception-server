
<!-----------------框架---------------->
<div class="cw1000">
	<div class="w280 fl">
		<div class="public_box">
			<!-----------------设置导航---------------->
			<div id="set_nav">
				<ul>
					<li><a class="cur" href="javascript:usermy_info();"><i class="ico1"></i>我的信息</a></li>
					<li><a href="javascript:usermy_head()"><i class="ico2"></i>我的头像</a></li>
					<li><a href="javascript:usermy_contact()"><i class="ico3"></i>常用联系人</a></li>
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
			<form id="userform">
				<table class="table_list">
                    <input type="hidden" name="userId" id="userId">
					<tr>
						<th>昵称：</th>
						<td><input type="text" name="userName" id="name"/></td>
					</tr>
					<tr>
						<th>性别：</th>
						<td>
							<input  type="radio" name="userSex" value="1" id="sex1" > 男
							<input  type="radio" name="userSex" value="2" id="sex2"> 女
						</td>
					</tr>
                    <tr>
                        <th>手机号：</th>
                        <td><input type="text" name="userPhone" id="phone"/></td>
                    </tr>
                    <tr>
                        <th>年龄：</th>
                        <td><input type="text" name="userAge" id="age"/></td>
                    </tr>
					<tr>
						<th>居住城市：</th>
						<td><input type="text" name="userDwell" id="dwell"/></td>
					</tr>
					<tr>
						<th>出生日期：</th>
						<td><input type="date" name="userBir" id="bir"></td>
					</tr>
					<tr>
						<th>个人签名：</th>
						<td><textarea name="userSignature" id="userSignature">Dream of starting！</textarea></td>
					</tr>
				</table>
					<div class="operation"><input type="button" onclick="save()" value="保存" /></div>
            </form>
			</div>
		</div>	
	</div>
	<div class="clear"></div>
</div>
<script>
    /**
     * 根据ID查询
     */
    $.ajax({
        url:'/user/toUpdate',
        type:'get',
        data:{"userId":$("#userId").val()},
        dataType:'json',
        success:function(data){
          /*  $("#userform").form("load",data);*/
            $("#userId").val(data.userId);
            $("#name").val(data.userName);
            $("#phone").val(data.userPhone);
            $("#age").val(data.userAge);
            $("#dwell").val(data.userDwell);
            $("#bir").val(data.userBir);
            $("#userSignature").val(data.userSignature);
            if(data.userSex==1){
                $("#sex1").attr("checked",true);
            }else{
                $("#sex2").attr("checked",true);
            }
        }
    })


    /**
     * 根据ID修改数据
     */
    function save(){
        var userSex = "";
        userSex = $("#sex1").val();
        userSex = $("#sex2").val();
        var userName = $("#name").val();
        var userPhone = $("#phone").val();
        var userAge = $("#age").val();
        var userDwell = $("#dwell").val();
        var userBir = $("#bir").val();
        var userSignature = $("#userSignature").val();
        $.ajax({
            url:'/user/updateInfo',
            type:'post',
            data:{
                "userName":userName,
                "userSex":userSex,
                "userPhone":userPhone,
                "userAge":userAge,
                "userDwell":userDwell,
                "userBir":userBir,
                "userSignature":userSignature,
                "userId":$("#userId").val()
            },
            dataType:'json',
            success:function(data){
                if(data=="修改成功"){
                    alert("修改成功");
                    window.location.reload();
                }else{
                    alert(data.msg);
                }
            }
        })
    }
</script>
