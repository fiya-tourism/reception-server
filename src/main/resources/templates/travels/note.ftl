
<!------------------游记版头-------------------->
<div id="note_head">
	<div class="head">
		<div class="banner"><img src="${(travel.travelsPicture)!''}"/></div>
		<div class="title">
			<div class="cw1200"><p>${(travel.travelsTitle)!''}</p></div>
			<span><img src="/images/eye_ico.png"/>999+</span>
		</div>
	</div>
	<div class="user">
		<div class="cw1200">
			<div class="pic"><img src="/images/head1.jpg"/></div>
			<div class="meta">
				<label>作者：A monologue. 独白。</label>
				<span>发布于：${(travel.travelsCreate)?string("yyyy-MM-dd HH:mm:ss")}</span>
			</div>
			<div class="operation">
				<a href="#">
					<img src="/images/favour_ico.png"/>
					<p>50个赞</p>
				</a>
				<a href="#">
					<img src="/images/collection_ico.png"/>
					<p>21个收藏</p>
				</a>
			</div>
		</div>
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
				<!------------------文章-------------------->
				<div id="article">
	
					<div class="con">

						<p>${(travel.travelsText)!''}</p>

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
					<div class="release">
						<img src="/images/head1.jpg"/>
						<input class="text" type="text" placeholder="说说你的看法..."/>
						<input class="submit" type="submit" value="发表"/>
						<div class="clear"></div>
					</div>
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
						<div class="name"><img src="/images/f_t_other_share.png"/></div>
						<div class="more"><a href="note_list.html">更多>></a></div>
					</div>
					<div class="fr"><img src="/images/from_title_right.png"/></div>
					<div class="clear"></div>
				</div>
				<!------------------其他人分享-------------------->
				<div id="other_share">
					<ul>
						<li>
							<div class="pic">
								<div class="cover"><a href="/reception/noteById"><img class="scale-effect " src="/images/10F118AC-FE28-4986-A6D0-B9E739F8CFDC.jpg"/></a></div>
								<div class="head"><img src="/images/head1.jpg"/></div>
							</div>
							<div class="meta">
								<p><a href="/reception/noteById">洛阳，历史长河中的一处停歇</a></p>
								<span>作者：A monologue. 独白。<label><img src="/images/state_icon1.png"/>18</label><label><img src="/images/state_icon2.png"/>20</label></span>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="clear"></div>
    </div>
</div>
