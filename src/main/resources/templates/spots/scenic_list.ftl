
<!------------------子页框架  旅游详情页-------------------->
<div id="sub_from">
    <div class="cw1200">
		<div class="w810 fl">
			<!------------------公共盒子-------------------->
			<div class="public_box bg1">
				<div class="public_title">
					<div class="fl"><img src="/images/from_title_left.png"/></div>
					<div class="con">
						<div class="lamp_ico"><img src="/images/lamp_ico.png"/></div>
						<div class="name"><img src="/images/f_t_news_list.png"/></div>
					</div>
					<div class="fr"><img src="/images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------列表分类-------------------->
			<#--</a><a href="javascript:activitieslist()">旅游活动</a>-->
				<#--<div id="list_sort">-->
					<#--<ul>-->
						<#--<li><span>产品类型：</span><a class="cur" href="javascript:scenic_list()">旅游景区<div class="clear"></div></li>-->
					<#--</ul>-->
				<#--</div>-->
				<!------------------景区列表-------------------->
				<div id="selectSpotList"></div>
			</div>
		</div>

		<div class="w380 fr">
			<!------------------公共盒子-------------------->
			<div class="public_box bg2">
				<div class="public_title">
					<div class="fl"><img src="/images/from_title_left.png"/></div>
					<div class="con">
						<div class="lamp_ico"><img src="/images/lamp_ico.png"/></div>
						<div class="name"><img src="/images/f_t_mobile_platform.png"/></div>
					</div>
					<div class="fr"><img src="/images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------移动平台-------------------->
				<div id="mobile_platform">
					<img src="/images/mp_pic.jpg"/>
					<img src="/images/mp_tag.png"/>
					<img src="/images/rwm.jpg"/>
					<p>微信订票/查询优惠政策请扫二维码</p>
				</div>
			</div>
			<!------------------公共盒子-------------------->
			<div class="public_box bg2">
				<div class="public_title">
					<div class="fl"><img src="/images/from_title_left.png"/></div>
					<div class="con">
						<div class="lamp_ico"><img src="/images/lamp_ico.png"/></div>
						<div class="name"><img src="/images/f_t_culture.png"/></div>
						<div class="more"><a href="#">更多>></a></div>
					</div>
					<div class="fr"><img src="/images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------公共推荐-------------------->
				<div id="public_recom">
					<ul>
						<li>
							<a href="#">
								<div class="pic"><img class="scale-effect" src="/images/2016122223895.jpg"/></div>
								<p>洛阳古城慢时</p>
							</a>
						</li>
						<div class="clear"></div>
					</ul>
				</div>
			</div>
			<!------------------公共盒子-------------------->
			<div class="public_box bg2">
				<div class="public_title">
					<div class="fl"><img src="/images/from_title_left.png"/></div>
					<div class="con">
						<div class="lamp_ico"><img src="/images/lamp_ico.png"/></div>
						<div class="name"><img src="/images/f_t_project.png"/></div>
						<div class="more"><a href="#">更多>></a></div>
					</div>
					<div class="fr"><img src="/images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------公共推荐-------------------->
				<div id="public_recom">
					<ul>
						<li>
							<a href="#">
								<div class="pic"><img class="scale-effect" src="/images/2016122223895.jpg"/></div>
								<p>洛阳古城慢时</p>
							</a>
						</li>
						<div class="clear"></div>
					</ul>
				</div>
			</div>
			<!------------------公共盒子-------------------->
			<div class="public_box bg2">
				<div class="public_title">
					<div class="fl"><img src="/images/from_title_left.png"/></div>
					<div class="con">
						<div class="lamp_ico"><img src="/images/lamp_ico.png"/></div>
						<div class="name"><img src="/images/f_t_food.png"/></div>
						<div class="more"><a href="#">更多>></a></div>
					</div>
					<div class="fr"><img src="/images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------公共推荐-------------------->
				<div id="public_recom">
					<ul>
						<li>
							<a href="#">
								<div class="pic"><img class="scale-effect" src="/images/2016122223895.jpg"/></div>
								<p>洛阳古城慢时</p>
							</a>
						</li>
						<div class="clear"></div>
					</ul>
				</div>
			</div>
			<!------------------公共盒子-------------------->
			<div class="public_box bg2">
				<div class="public_title">
					<div class="fl"><img src="/images/from_title_left.png"/></div>
					<div class="con">
						<div class="lamp_ico"><img src="/images/lamp_ico.png"/></div>
						<div class="name"><img src="/images/f_t_life.png"/></div>
						<div class="more"><a href="#">更多>></a></div>
					</div>
					<div class="fr"><img src="/images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------公共推荐-------------------->
				<div id="public_recom">
					<ul>
						<li>
							<a href="#">
								<div class="pic"><img class="scale-effect" src="/images/2016122223895.jpg"/></div>
								<p>洛阳古城慢时</p>
							</a>
						</li>

						<div class="clear"></div>
					</ul>
				</div>
			</div>
		</div>
		<div class="clear"></div>
    </div>
</div>
<script>
    $(function () {
		$.ajax({
			type:"GET",
			url:"/spotcontroller/spotlist",
			async:false,
			success:function (data) {
				$("#selectSpotList").html(data);
            }
		})
    })


</script>