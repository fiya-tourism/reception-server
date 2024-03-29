﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>提交订单</title>
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
        <div class="logo"><a title="" href="/reception/index"><img alt="" src="/images/logo.jpg" /></a></div>
        <!-------------------头部导航------------------->
        <div class="head_title">
            提交订单
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

<!-----------------提交订单---------------->
<div id="submit_orders">
    <div class="cw1000">
        <div class="main_title">
            <ul>
                <li style="width:35%;">商品信息</li>
                <li style="width:15%;">单价</li>
                <li style="width:30%;">数量</li>
                <li style="width:20%;">总价</li>
            </ul>
        </div>
        <div class="list_box">
            <ul>
                <li>
                    <div class="con">
                        <div class="info" style="width:35%;">
                            <div class="pic"><a href="#"><img width=53 height=53 src="${spots.pictureUrl}" /></a></div>
                            <div class="name">
                                <a href="#">${spots.spotsName}门票</a>
                                <p>下单日期：<div id="date"></div></p>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="price" style="width:15%;"><label>￥${spots.spotsPrice}</label></div>
                        <div class="number" style="width:30%;">
                            <div class="Spinner">
                                <a class="DisDe" href="javascript:orderInserDtelete()"><i>-</i></a>
                               <input class="Amount" value="1" onblur="orderchange()" autocomplete="off" id="orderUpdate" maxlength="100">
                                <a class="Increase" href="javascript:orderInsertCount()"><i>+</i></a></br>
                                <span id="orderspan"></span>
                            </div>
                        </div>

                        <div class="price" style="width:20%;"><span>￥${spots.spotsPrice}</span></div>
                        <div class="clear"></div>
                    </div>
                </li>

            </ul>
        </div>
        <!-----------------景区信息---------------->
        <div class="info_mo">
            <table>
                <tr>
                    <th colspan="2">景区信息</th>
                </tr>
                <tr>
                    <td>景区名称:${spots.spotsName}</td>
                    <td>联系方式：${spots.spotsPhone}</td>
                </tr>
                <tr>
                    <td>开放时间：全年</td>
                    <td>详细地址：${spots.spotsAddress}</td>
                </tr>
            </table>
        </div>
        <!-----------------活动信息---------------->
        <#--<div class="info_mo">-->
            <#--<table>-->
                <#--<tr>-->
                    <#--<th colspan="2">活动信息</th>-->
                <#--</tr>-->
                <#--<tr>-->
                    <#--<td>活动：春节逛吃哪里去？看洛阳庙会、灯展集锦</td>-->
                    <#--<td>活动咨询：0379-63789053</td>-->
                <#--</tr>-->
                <#--<tr>-->
                    <#--<td>出发时间：2017/01/23</td>-->
                    <#--<td>集合地点：洛阳市关林庙会</td>-->
                <#--</tr>-->
            <#--</table>-->
        <#--</div>-->
        <div class="contact">
            <ul>
                <li class="title">
                    <h2><i class="am-icon-user"></i> 联系人信息</h2>
                    <a href="#" class="add_book" data-am-modal="{target: '#my-popup'}">选择已有联系人</a>
                    <div class="am-popup" id="my-popup">
                        <div class="am-popup-inner">
                            <div class="am-popup-hd">
                                <h4 class="am-popup-title">联系人列表</h4>
                                <span data-am-modal-close
                                      class="am-close">&times;</span>
                            </div>
                            <div class="am-popup-bd">
                                <#list spots.userVO as user>
                                <ul>
                                    <li><i class="am-icon-user"></i><span class="name">${()!""}</span>17670362580
                                        <label class="am-radio-inline">
                                            <input type="radio" name="radio3" value="" data-am-ucheck>
                                        </label>
                                    </li>
                                </ul>
                                </#list>
                                <input class="submit" type="submit" value="确定"/>
                            </div>
                        </div>
                    </div>


                </li>
                <li>
                    <span class="name">姓名：</span>
                    <input type="text" class="text" placeholder="请填写真实姓名">
                    <div class="radio_box">
                        <label class="am-radio-inline">
                            <input type="radio" name="radio1" value="" data-am-ucheck>
                            男士
                        </label>
                        <label class="am-radio-inline">
                            <input type="radio" name="radio1" value="" data-am-ucheck checked>
                            女士
                        </label>
                    </div>
                </li>
                <li>
                    <span class="name">手机：</span>
                    <input type="text"  class="text" placeholder="请填写手机号">
                    <p>（消费时所需的兑换码会发送至您的手机，请您保持手机畅通）</p>
                </li>
            </ul>

        </div>
        <div class="tip">
            <h2>供应商信息</h2>
            <p>本产品由河洛旅游或其关联公司旅行社及具有资质的合作旅行社提供相关服务</p>
        </div>








        <div class="calculation">
            <a href="javascript:toOrder(${spots.spotsId})">提交订单</a>
            <span>合计（含运费0.00元）： <b>￥0.00</b></span>

        </div>
    </div>
    <div class="clear"></div>
</div>
<!-----------------版底---------------->
<div id="footer">
    <p>河洛文化旅游发展有限公司 版权所有</p>
    <p>Copyright 2016 zgqygc.com All Rights Reserved | 豫ICP备10000000号　技术支持：闪迅</p>
</div>
    <script>
        var order = $("#orderUpdate").val();
        var order2=null;
        var cou =0;

        $("#date").val(new Date());

        function orderchange() {
            order2=$("#orderUpdate").val();
            if(order<1||order2<1||order==null||order2==null){
                $("#orderUpdate").attr({"value":1});
                $("#orderspan").html("<span id='orderspan'></span>");
                ++cou;
            }else if (order>100||order2>100){
                $("#orderUpdate").attr({"value":1});
                alert("库存不足,请从新选择数量")
            }else {
                $("#orderUpdate").attr({"value":order2});
                $("#orderspan").html("<span id='orderspan'></span>");
                ++cou;
            }
        }
        function orderInserDtelete() {
            orderchange();
                if(order>=1){
                    if(cou!=null){
                        if(order<1||order2<1||order==null||order2==null||order==1||order2==1){
                            $("#orderUpdate").attr({"value":1})
                            ++cou;
                        }else {
                            --order2;
                            $("#orderUpdate").attr({"value":this.order2})
                        }
                    }else {
                        --order;
                        $("#orderUpdate").attr({"value":this.order})
                    }
                }
        }
        function orderInsertCount() {
            orderchange();
            if(order>=1) {
                if (cou != null) {
                    ++order2;
                    if (order2>100){
                        $("#orderUpdate").attr({"value":1})
                        alert("库存不足,请从新选择数量")
                    }else {
                        $("#orderUpdate").attr({"value": this.order2})
                        $("#orderspan").html("<span id='orderspan'></span>");
                    }
                }else {
                    ++order;
                    if (order>100){
                        $("#orderUpdate").attr({"value":1})
                        alert("库存不足,请从新选择数量")
                    }else {
                        $("#orderUpdate").attr({"value": this.order})
                        $("#orderspan").html("<span id='orderspan'></span>");
                    }
                }
            }
        }

        //去确认订单页面
        function toOrder(strId) {
            location.href="/spotcontroller/spotById?Id="+strId+"&"+"ordersubmit="+2;
        }
    </script>
</body>
</html>