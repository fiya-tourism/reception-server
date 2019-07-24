
<!------------------景区版头-------------------->
<div id="scenic_head" style="background:url(${spots.pictureUrl}) no-repeat center;background-size:100%;">
	<div class="cw1200">
		<div class="title"><p>${spots.spotsName}</p></div>
		<a href="#" class="view_gallery" id="botn">查看图库<i class="am-icon-chevron-circle-right"></i></a>
		
		<ul style="display:none;" data-am-widget="gallery" class="am-gallery am-avg-sm-2 am-avg-md-3 am-avg-lg-4 am-gallery-default" data-am-gallery="{ pureview: true }" >
		  <li>
			<div class="am-gallery-item">
				<a href="/images/10F118AC-FE28-4986-A6D0-B9E739F8CFDC.jpg" class="">
				  <img src="/images/10F118AC-FE28-4986-A6D0-B9E739F8CFDC.jpg"  alt="远方 有一个地方 那里种有我们的梦想"/>
				  <div style="display:none;">
					<h3 class="am-gallery-title">远方 有一个地方 那里种有我们的梦想</h3>
					<div class="am-gallery-desc">2375-09-26</div>
					</div>
				</a>
			</div>
		  </li>
		  <li>
			<div class="am-gallery-item">
				<a href="/images/1458530382234p1aebir9i21s4q2hiiso1ip6msf29.jpg" class="">
				  <img src="/images/1458530382234p1aebir9i21s4q2hiiso1ip6msf29.jpg"  alt="某天 也许会相遇 相遇在这个好地方"/>
					<h3 class="am-gallery-title">某天 也许会相遇 相遇在这个好地方</h3>
					<div class="am-gallery-desc">2375-09-26</div>
				</a>
			</div>
		  </li>
		  <li>
			<div class="am-gallery-item">
				<a href="/images/1470142217075p1ap5krur5imd15qq1ims12ojghn2.jpg" class="">
				  <img src="/images/1470142217075p1ap5krur5imd15qq1ims12ojghn2.jpg"  alt="不要太担心 只因为我相信"/>
					<h3 class="am-gallery-title">不要太担心 只因为我相信</h3>
					<div class="am-gallery-desc">2375-09-26</div>
				</a>
			</div>
		  </li>
		  <li>
			<div class="am-gallery-item">
				<a href="/images/DD0E49BD-47F5-4B10-85DB-FE2390B91541.jpg" class="">
				  <img src="/images/DD0E49BD-47F5-4B10-85DB-FE2390B91541.jpg"  alt="终会走过这条遥远的道路"/>
					<h3 class="am-gallery-title">终会走过这条遥远的道路</h3>
					<div class="am-gallery-desc">2375-09-26</div>
				</a>
			</div>
		  </li>
		  <li>
			<div class="am-gallery-item">
				<a href="/images/banner3.jpg" class="">
				  <img src="/images/banner3.jpg"  alt="终会走过这条遥远的道路"/>
					<h3 class="am-gallery-title">终会走过这条遥远的道路</h3>
					<div class="am-gallery-desc">2375-09-26</div>
				</a>
			</div>
		  </li>
		</ul>
		<script>
			$("#botn").live("click",function(){
				$(".am-gallery-item img").click();
			});
		
			$(document).ready(function(){
				$(".am-icon-chevron-left").attr("class", "am-icon-close");
			});
		</script>
	</div>
</div>
<!------------------子页框架-------------------->
<div id="sub_from">
    <div class="cw1200">
		<div class="w810 fl">
			<!------------------公共盒子-------------------->
			<div class="public_box bg1">
				<div class="public_title">
					<div class="fl"><img src="/images/from_title_left.png"/></div>
					<div class="con">
						<div class="lamp_ico"><img src="/images/lamp_ico.png"/></div>
						<div class="name"><img src="/images/f_t_article.png"/></div>
					</div>
					<div class="fr"><img src="/images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------景区介绍-------------------->
				<div id="article">
					<div class="con">
						<p>${spots.conentisert}</p>
					</div>
				</div>
			</div>
			<!------------------公共盒子-------------------->
			<div class="public_box bg1">
				<div class="public_title">
					<div class="fl"><img src="/images/from_title_left.png"/></div>
					<div class="con">
						<div class="lamp_ico"><img src="/images/lamp_ico.png"/></div>
						<div class="name"><img src="/images/f_t_comment.png"/></div>
					</div>
					<div class="fr"><img src="/images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------评论-------------------->
				<div id="comment">
			
					<div class="list">
						<div class="tag">
							<a class="cur" href="#">最新评论</a><span>|</span><a href="#">正序排列</a>
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
						<div class="name"><img src="/images/f_t_online_book.png"/></div>
					</div>
					<div class="fr"><img src="/images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------在线预订-------------------->
				<div id="online_book">
					<ul>
						<li>景区名称：<span>${spots.spotsName}</span></li>
						<li>电话咨询：<span>${spots.spotsPhone}</span></li>
						<li>开放时间：<span>全年</span></li>
						<li>景点地址：<span>${spots.spotsAddress}</span></li>
						<li>费用：<label>￥${spots.spotsPrice}</label></li>
					</ul>
					<a class="buy" href="javascript:submitfunction(${spots.spotsId})">立即预订</a>
				</div>
			</div>
			<!------------------公共盒子-------------------->
			<div class="public_box bg2">
				<div class="public_title">
					<div class="fl"><img src="/images/from_title_left.png"/></div>
					<div class="con">
						<div class="lamp_ico"><img src="/images/lamp_ico.png"/></div>
						<div class="name"><img src="/images/f_t_surrounding_specialty.png"/></div>
					</div>
					<div class="fr"><img src="/images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------周边推荐-------------------->
				<div class="peripheral_recom">
					<ul>
						<li>
							<div class="pic"><a title="" href="#"><img alt="" class="scale-effect" src="/images/nt_1.jpg"/></a></div>
							<div class="con">
								<a href="#">春艳牡丹</a>
								<p>志斋是研究唐代三百年文治武功和书法艺术的史料宝库</p>
								<span>距离35公里</span>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a title="" href="#"><img alt="" class="scale-effect" src="/images/nt_1.jpg"/></a></div>
							<div class="con">
								<a href="#">春艳牡丹</a>
								<p>志斋是研究唐代三百年文治武功和书法艺术的史料宝库</p>
								<span>距离35公里</span>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a title="" href="#"><img alt="" class="scale-effect" src="/images/nt_1.jpg"/></a></div>
							<div class="con">
								<a href="#">春艳牡丹</a>
								<p>志斋是研究唐代三百年文治武功和书法艺术的史料宝库</p>
								<span>距离35公里</span>
							</div>
							<div class="clear"></div>
						</li>
					</ul>
				</div>
			</div>
			<!------------------公共盒子-------------------->
			<div class="public_box bg2">
				<div class="public_title">
					<div class="fl"><img src="/images/from_title_left.png"/></div>
					<div class="con">
						<div class="lamp_ico"><img src="/images/lamp_ico.png"/></div>
						<div class="name"><img src="/images/f_t_surrounding_hotel.png"/></div>
					</div>
					<div class="fr"><img src="/images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------周边推荐-------------------->
				<div class="peripheral_recom">
					<ul>
						<li>
							<div class="pic"><a title="" href="#"><img alt="" class="scale-effect" src="/images/nt_1.jpg"/></a></div>
							<div class="con">
								<a href="#">春艳牡丹</a>
								<p>志斋是研究唐代三百年文治武功和书法艺术的史料宝库</p>
								<span>距离35公里</span>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a title="" href="#"><img alt="" class="scale-effect" src="/images/nt_1.jpg"/></a></div>
							<div class="con">
								<a href="#">春艳牡丹</a>
								<p>志斋是研究唐代三百年文治武功和书法艺术的史料宝库</p>
								<span>距离35公里</span>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="pic"><a title="" href="#"><img alt="" class="scale-effect" src="/images/nt_1.jpg"/></a></div>
							<div class="con">
								<a href="#">春艳牡丹</a>
								<p>志斋是研究唐代三百年文治武功和书法艺术的史料宝库</p>
								<span>距离35公里</span>
							</div>
							<div class="clear"></div>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="clear"></div>
    </div>
</div>
<script>
	function submitfunction(strId) {
		location.href="/spotcontroller/spotById?Id="+strId+"&"+"ordersubmit="+1;
		// $.ajax({
		// 	type:"GET",
		// 	url:"/spotcontroller/spotById",
		// 	data:{"Id":strId,"ordersubmit":1},
		// 	success:function (){
		//
		// 	}
		//
		// })
    }
</script>