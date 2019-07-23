
<!-----------------框架---------------->
<div class="cw1000">
    <div class="w280 fl">
        <div class="public_box">
            <!-----------------设置导航---------------->
            <div id="set_nav">
                <ul>
                    <li><a href="my_info.html"><i class="ico1"></i>我的信息</a></li>
                    <li><a href="my_head.html"><i class="ico2"></i>我的头像</a></li>
                    <li><a class="cur" href="my_contact.html"><i class="ico3"></i>常用联系人</a></li>
                    <li><a href="security.html"><i class="ico4"></i>修改密码</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="w700 fr"  id="platform">
        <div class="public_box">
            <!-----------------常用联系人---------------->
            <div id="set_box">
                <div class="title"><h2>常用联系人</h2></div>
                <form id="site_from">
                    <table class="table_list" >
                        <tr>
                            <th>联系人：</th>
                            <td><input  type="text"  name="userName" id="name"/></td>
                        </tr>
                        <tr>
                            <th>所在地区：</th>
                            <td data-toggle="distpicker">
                                <select data-province="---- 所在省 ----" style="width:120px" id="province" naem="siteProvince"></select>
                                <select data-city="---- 所在市 ----" style="width:120px" id="city" name="siteCity"></select>
                                <select data-district="---- 所在区 ----" style="width:120px" id="county" name="siteCounty"></select>
                            </td>
                        </tr>
                        <tr>
                            <th>详细地址：</th>
                            <td><textarea name="siteParticular" id="particular"></textarea></td>
                        </tr>
                        <tr>
                            <th>手机号码：</th>
                            <td><input class="text" type="text" id="phone" name="sitePhone" /></td>
                        </tr>
                        <tr>
                            <th>邮政编码：</th>
                            <td><input class="text" type="text" id="postalcode" name="sitePostalcode"/></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <label class="am-checkbox">
                                    <input type="checkbox" id="checkbox_a1" class="chk_1" />
                                    <label for="checkbox_a1"></label> 设置为默认
                                </label>
                            </td>
                        </tr>
                    </table>
                    <div class="operation"><input type="button" class="save" onclick="save()" value="保存" /></div>
                </form>
                <!-----------------联系列表---------------->


                <div  id="platform">
                    <ul class="address">
					<#list list as siteVOList>
                        <li>
                            <div>
                                <div class="dt">联系人：</div>
                                <div class="dd">${siteVOList.userName!''}</div>
                                <div class="clear"></div>
                            </div>
                            <div>
                                <div class="dt">详细地址：</div>
                                <div class="dd">
                                    <p> ${siteVOList.siteProvince!''}${siteVOList.siteCity!''}${siteVOList.siteCounty!''}</p>
                                    <p>${siteVOList.siteParticular!''}</p>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div>
                                <div class="dt">邮政编码：</div>
                                <div class="dd">${siteVOList.sitePostalcode!''}</div>
                                <div class="clear"></div>
                            </div>
                            <div>
                                <div class="dt">手机号码：</div>
                                <div class="dd">${siteVOList.sitePhone!''}</div>
                                <div class="clear"></div>
                            </div>
                            <div class="i-first">默认地址</div>
                            <div class="btns">
                                <a href="javascript:;" data-id="183590" class="modifyThis">修改</a> / <a href="javascript:;" data-id="183590" class="delThis">删除</a>
                            </div>
                        </li>
					</#list>
                    </ul>
                </div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
    <script>


        function select() {
            $.ajax({
                url: "/site/querySiteList",
                type: "get",
                data:{"userId":1},
                dataType: "html",
                success: function (data) {
                    $("#platform").html(data);
                }
            })
        }


        /**
         *  添加地址信息
         */
        function save(){
            var sitePhone = $("#phone").val();
            var siteProvince = $("#province").val();
            var siteCity = $("#city").val();
            var siteCounty = $("#county").val();
            var siteParticular = $("#particular").val();
            var sitePhone = $("#phone").val();
            var sitePostalcode = $("#postalcode").val();

            $.ajax({
                url:'/site/add',
                type:'post',
                data:{
                    "siteName":$("#name").val(),
                    "siteProvince":$("#province").val(),
                    "siteCity":$("#city").val(),
                    "siteCounty":$("#county").val(),
                    "siteParticular":$("#particular").val(),
                    "sitePhone":$("#phone").val(),
                    "sitePostalcode":$("#postalcode").val(),
                    "userId":1
                },
                dataType:'json',
                success:function(data){
                    if(data.code==200){
                        alert("新增成功");
                        coutact();
                    }else{
                        alert(data.msg);
                    }
                }
            })
        }

    </script>

    <script type="text/javascript" src="/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="/js/distpicker.data.js"></script>
    <script type="text/javascript" src="/js/distpicker.js"></script>
    <script type="text/javascript" src="/js/main.js"></script>