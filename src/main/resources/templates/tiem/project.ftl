<!------------------子页框架-------------------->
<div class="cw1200">
    <!------------------公共盒子-------------------->
    <div class="public_box bg1">
        <div class="public_title">
            <div class="fl"><img src="/images/from_title_left.png"/></div>
            <div class="con">
                <div class="lamp_ico"><img src="/images/lamp_ico.png"/></div>
                <div class="name"><img src="/images/f_t_item_info.png"/></div>
            </div>
            <div class="fr"><img src="/images/from_title_right.png"/></div>
            <div class="clear"></div>
        </div>
        <!------------------特产信息-------------------->
        <div id="item_info">
            <!-----------------主图---------------->
            <div class="preview">
                <div id="vertical" class="bigImg">
                <#list itemReShow.itemPictureList as item>
                    <img src="http://localhost:8011${item.pictureUrl!}" id="midimg" />
                    <input type="hiden" name="itemPath" value="http://localhost:8011${item.pictureUrl!}"/>
                    <div style="display:none;" id="winSelector"></div>
                    <#if item.pictureSequence==1></#if>
                    <#break/>
                </#list>
                </div>
                <div id="imageMenu">
                    <ul>
                    <#list itemReShow.itemPictureList as item>
                        <#if item.pictureSequence==1>
                            <li id="onlickImg"><img src="http://localhost:8011${item.pictureUrl!}"/></li>
                        <#else>
                            <li><img src="http://localhost:8011${item.pictureUrl!}"/></li>
                        </#if>
                    </#list>
                    </ul>
                </div>
                <div id="bigView" style="display:none;"><img width="800" height="800" /></div>
            </div>
            <!-----------------内容信息---------------->
            <div class="cont_info">
                <div class="name"><h2>${itemReShow.itemName!}</h2></div>
                <input type="hidden" name="itemName" value="${itemReShow.itemName!}"/>
                <!-------------商品属性（价位数量）---------------->
                <div class="p_number">
                    <div class="unit_price">
                        <ul>
                            <li class="fl">商品单价：<strong id="price_item_1">￥${itemReShow.iskuSalePrice}</strong></li>
                            <input type="hidden" name="itemPrice" value="${itemReShow.iskuSalePrice}"/>
                            <li class="fr">已成交：3笔</li>
                            <div class="clear"></div>
                        </ul>
                    </div>
                    <!------------商品规格-------------->
                    <script type="text/javascript">
                        $(function(){
                            $(".yListr ul li em").click(function(){
                                $(this).addClass("yListrclickem").siblings().removeClass("yListrclickem");
                            })
                        })
                    </script>
                    <div class="yListr">
                        <ul>
                        <#list itemReShow.itemAttrList as attr>
                            <li>
                                <span>${attr.attrAttrKey!}</span>
                                <#list itemReShow.itemAttrList as attr2>
                                    <#if attr2_index==0>
                                        <em class="yListrclickem">${attr2.attrAttrValue!}<i></i></em>
                                    <#else>
                                        <em>${attr2.attrAttrValue!}<i></i></em>
                                    </#if>
                                </#list>
                            </li>
                            <#break/>
                        </#list>
                        </ul>
                    </div>
                    <!-------------数量增减变动价格（产品页）-------------->
                    <script type="text/javascript" src="/js/payfor.js"></script>
                    <div class="add_chose">
                        <label>数量：</label>
                        <a class="reduce" onClick="setAmount.reduce('#qty_item_1')" href="javascript:void(0)">-</a>
                        <input type="text" name="qty_item_1" value="1" id="qty_item_1" onKeyUp="setAmount.modify('#qty_item_1')" class="text" />
                        <a class="add" onClick="setAmount.add('#qty_item_1')" href="javascript:void(0)">+</a>
                        <span>库存：1500件</span>
                        <div class="clear"></div>
                    </div>
                    <div class="buy">
                        <ul>
                            <li>总价：<span class="total-font" id="total_item_1">￥${itemReShow.iskuSalePrice}</span></li>
                            <li><span class="jifen">购买商品可获得：<b id="total_points">18</b>积分</span></li>
                            <li><a class="go_buy" href="javascript:buy()">立即购买</a><a class="car_buy" href="shop_car.html">加入购物车</a></li>
                            <li>运费：<span class="tp_bg">卖家承担运费</span></li>
                            <li>提醒：<span class="tp_bg">${itemReShow.itemTitle!}</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
    <div class="w810 fl">
        <!------------------公共盒子-------------------->
        <div class="public_box bg1">
            <div class="public_title">
                <div class="fl"><img src="/images/from_title_left.png"/></div>
                <div class="con">
                    <div class="lamp_ico"><img src="/images/lamp_ico.png"/></div>
                    <div class="name"><img src="/images/f_t_project_d.png"/></div>
                </div>
                <div class="fr"><img src="/images/from_title_right.png"/></div>
                <div class="clear"></div>
            </div>
            <!------------------特产详情-------------------->
            <div id="project_details">
                 ${itemReShow.itemIntroduceValue!}
            </div>
        </div>
        <!------------------公共盒子-------------------->
        <div class="public_box bg1">
            <div class="public_title">
                <div class="fl"><img src="/images/from_title_left.png"/></div>
                <div class="con">
                    <div class="lamp_ico"><img src="/images/lamp_ico.png"/></div>
                    <div class="name"><img src="/images/f_t_comment2.png"/></div>
                </div>
                <div class="fr"><img src="/images/from_title_right.png"/></div>
                <div class="clear"></div>
            </div>
            <!------------------评论-------------------->
            <div id="comment">
                <div class="list">
                    <div class="tag">
                        <a class="cur" href="#">最新评价</a><span>|</span><a href="#">正序排列</a>
                    </div>
                    <ul>
                        <li>
                            <div class="pic"><img src="/images/head1.jpg"/></div>
                            <div class="con">
                                <label>A monologue. 独白。</label>
                                <p>非常好</p>
                                <span>发表于：2017-02-05 14:20</span>
                            </div>
                            <div class="tip"><span>5#</span></div>
                        </li>
                        <li>
                            <div class="pic"><img src="/images/head1.jpg"/></div>
                            <div class="con">
                                <label>A monologue. 独白。</label>
                                <p>非常好</p>
                                <span>发表于：2017-02-05 14:20</span>
                            </div>
                            <div class="tip"><span>4#</span></div>
                        </li>
                        <li>
                            <div class="pic"><img src="/images/head1.jpg"/></div>
                            <div class="con">
                                <label>A monologue. 独白。</label>
                                <p>非常好</p>
                                <span>发表于：2017-02-05 14:20</span>
                            </div>
                            <div class="tip"><span class="t_c t_box">地板</span></div>
                        </li>
                        <li>
                            <div class="pic"><img src="/images/head1.jpg"/></div>
                            <div class="con">
                                <label>A monologue. 独白。</label>
                                <p>非常好</p>
                                <span>发表于：2017-02-05 14:20</span>
                            </div>
                            <div class="tip"><span class="t_b t_box">板凳</span></div>
                        </li>
                        <li>
                            <div class="pic"><img src="/images/head1.jpg"/></div>
                            <div class="con">
                                <label>A monologue. 独白。</label>
                                <p>非常好</p>
                                <span>发表于：2017-02-05 14:20</span>
                            </div>
                            <div class="tip"><span class="t_a t_box">沙发</span></div>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
    </div>
    <div class="w380 fr">
        <!------------------公共盒子-------------------->
        <div class="public_box bg2">
            <div class="public_title">
                <div class="fl"><img src="/images/from_title_left.png"/></div>
                <div class="con">
                    <div class="lamp_ico"><img src="/images/lamp_ico.png"/></div>
                    <div class="name"><img src="/images/f_t_hot_project.png"/></div>
                </div>
                <div class="fr"><img src="/images/from_title_right.png"/></div>
                <div class="clear"></div>
            </div>
            <!------------------商品推荐-------------------->
            <div id="project_recom">
                <ul>
                    <li>
                        <div class="pic"><a href="#"><img class="scale-effect" src="/images/t2.jpg"/></a></div>
                        <div class="con">
                            <a href="#">西秘鲁红提500g 葡萄 新鲜水果西秘鲁红提500g 葡萄 新鲜水果</a>
                            <p>￥<label>330</label></p>
                        </div>
                        <div class="clear"></div>
                    </li>
                    <li>
                        <div class="pic"><a href="#"><img class="scale-effect" src="/images/t3.jpg"/></a></div>
                        <div class="con">
                            <a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
                            <p>￥<label>330</label></p>
                        </div>
                        <div class="clear"></div>
                    </li>
                    <li>
                        <div class="pic"><a href="#"><img class="scale-effect" src="/images/t4.jpg"/></a></div>
                        <div class="con">
                            <a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
                            <p>￥<label>330</label></p>
                        </div>
                        <div class="clear"></div>
                    </li>
                    <li>
                        <div class="pic"><a href="#"><img class="scale-effect" src="/images/t5.jpg"/></a></div>
                        <div class="con">
                            <a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
                            <p>￥<label>330</label></p>
                        </div>
                        <div class="clear"></div>
                    </li>
                    <li>
                        <div class="pic"><a href="#"><img class="scale-effect" src="/images/t2.jpg"/></a></div>
                        <div class="con">
                            <a href="#">西秘鲁红提500g 葡萄 新鲜水果</a>
                            <p>￥<label>330</label></p>
                        </div>
                        <div class="clear"></div>
                    </li>
                    <div class="clear"></div>
                </ul>
            </div>
        </div>
    </div>
    <div class="clear"></div>
</div>

<script>
    //点击购买
    function buy(){
        var itemPath = $("input[name='itemPath']").val();
        var itemName = $("input[name='itemName']").val();
        var itemPrice = $("input[name='itemPrice']").val().replace(",","");
        var itemCount = $("#qty_item_1").val();
        var itemAllPrice = itemPrice*itemCount;
        $.ajax({
            url:'/item/commitOrder',
            type:'post',
            data:{
                'itemPath':itemPath,
                'itemName':itemName,
                'itemPrice':itemPrice,
                'itemCount':itemCount,
                'itemAllPrice':itemAllPrice
            },
            dataType:'html',
            success:function(data){
                $("html").html(data);
            }
        });
    }
</script>

<!-----------------产品主图特效---------------->
<script type="text/javascript">
    $(document).ready(function(){
        // 图片上下滚动
        var count = $("#imageMenu li").length - 5; /* 显示 6 个 li标签内容 */
        var interval = $("#imageMenu li:first").width();
        var curIndex = 0;

        $('.scrollbutton').click(function(){
            if( $(this).hasClass('disabled') ) return false;

            if ($(this).hasClass('smallImgUp')) --curIndex;
            else ++curIndex;

            $('.scrollbutton').removeClass('disabled');
            if (curIndex == 0) $('.smallImgUp').addClass('disabled');
            if (curIndex == count-1) $('.smallImgDown').addClass('disabled');

            $("#imageMenu ul").stop(false, true).animate({"marginLeft" : -curIndex*interval + "px"}, 600);
        });

        // 解决 ie6 select框 问题
        $.fn.decorateIframe = function(options) {
            if ($.browser.msie && $.browser.version < 7) {
                var opts = $.extend({}, $.fn.decorateIframe.defaults, options);
                $(this).each(function() {
                    var $myThis = $(this);
                    //创建一个IFRAME
                    var divIframe = $("<iframe />");
                    divIframe.attr("id", opts.iframeId);
                    divIframe.css("position", "absolute");
                    divIframe.css("display", "none");
                    divIframe.css("display", "block");
                    divIframe.css("z-index", opts.iframeZIndex);
                    divIframe.css("border");
                    divIframe.css("top", "0");
                    divIframe.css("left", "0");
                    if (opts.width == 0) {
                        divIframe.css("width", $myThis.width() + parseInt($myThis.css("padding")) * 2 + "px");
                    }
                    if (opts.height == 0) {
                        divIframe.css("height", $myThis.height() + parseInt($myThis.css("padding")) * 2 + "px");
                    }
                    divIframe.css("filter", "mask(color=#fff)");
                    $myThis.append(divIframe);
                });
            }
        }
        $.fn.decorateIframe.defaults = {
            iframeId: "decorateIframe1",
            iframeZIndex: -1,
            width: 0,
            height: 0
        }
        //放大镜视窗
        $("#bigView").decorateIframe();

        //点击到中图
        var midChangeHandler = null;

        $("#imageMenu li img").bind("click", function(){
            if ($(this).attr("id") != "onlickImg") {
                midChange($(this).attr("src").replace("small", "mid"));
                $("#imageMenu li").removeAttr("id");
                $(this).parent().attr("id", "onlickImg");
            }
        }).bind("mouseover", function(){
            if ($(this).attr("id") != "onlickImg") {
                window.clearTimeout(midChangeHandler);
                midChange($(this).attr("src").replace("small", "mid"));
                $(this).css();
            }
        }).bind("mouseout", function(){
            if($(this).attr("id") != "onlickImg"){
                $(this).removeAttr("style");
                midChangeHandler = window.setTimeout(function(){
                    midChange($("#onlickImg img").attr("src").replace("small", "mid"));
                }, 1000);
            }
        });

        function midChange(src) {
            $("#midimg").attr("src", src).load(function() {
                changeViewImg();
            });
        }

        //大视窗看图
        function mouseover(e) {
            if ($("#winSelector").css("display") == "none") {
                $("#winSelector,#bigView").show();
            }

            $("#winSelector").css(fixedPosition(e));
            e.stopPropagation();
        }


        function mouseOut(e) {
            if ($("#winSelector").css("display") != "none") {
                $("#winSelector,#bigView").hide();
            }
            e.stopPropagation();
        }


        $("#midimg").mouseover(mouseover); //中图事件
        $("#midimg,#winSelector").mousemove(mouseover).mouseout(mouseOut); //选择器事件

        var $divWidth = $("#winSelector").width(); //选择器宽度
        var $divHeight = $("#winSelector").height(); //选择器高度
        var $imgWidth = $("#midimg").width(); //中图宽度
        var $imgHeight = $("#midimg").height(); //中图高度
        var $viewImgWidth = $viewImgHeight = $height = null; //IE加载后才能得到 大图宽度 大图高度 大图视窗高度

        function changeViewImg() {
            $("#bigView img").attr("src", $("#midimg").attr("src").replace("mid", "big"));
        }

        changeViewImg();

        $("#bigView").scrollLeft(0).scrollTop(0);
        function fixedPosition(e) {
            if (e == null) {
                return;
            }
            var $imgLeft = $("#midimg").offset().left; //中图左边距
            var $imgTop = $("#midimg").offset().top; //中图上边距
            X = e.pageX - $imgLeft - $divWidth / 2; //selector顶点坐标 X
            Y = e.pageY - $imgTop - $divHeight / 2; //selector顶点坐标 Y
            X = X < 0 ? 0 : X;
            Y = Y < 0 ? 0 : Y;
            X = X + $divWidth > $imgWidth ? $imgWidth - $divWidth : X;
            Y = Y + $divHeight > $imgHeight ? $imgHeight - $divHeight : Y;

            if ($viewImgWidth == null) {
                $viewImgWidth = $("#bigView img").outerWidth();
                $viewImgHeight = $("#bigView img").height();
                if ($viewImgWidth < 200 || $viewImgHeight < 200) {
                    $viewImgWidth = $viewImgHeight = 800;
                }
                $height = $divHeight * $viewImgHeight / $imgHeight;
                $("#bigView").width($divWidth * $viewImgWidth / $imgWidth);
                $("#bigView").height($height);
            }

            var scrollX = X * $viewImgWidth / $imgWidth;
            var scrollY = Y * $viewImgHeight / $imgHeight;
            $("#bigView img").css({ "left": scrollX * -1, "top": scrollY * -1 });
            $("#bigView").css({ "top": 75, "left": $(".preview").offset().left + $(".preview").width() + 15 });

            return { left: X, top: Y };
        }

    });


</script>
