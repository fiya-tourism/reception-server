
<!------------------游记乡村-------------------->
<div id="note_list">
	<div class="banner">
		<h2>精彩瞬间</h2>
		<p>发现美丽乡村，记录精彩瞬间，保存美好回忆</p>
	</div>
	<div class="tag">
		<div class="cw1200">
			<a class="cur" href="#">最新游记</a><span></span>
			<a href="#">发现精彩</a><span></span>
			<a href="javascript:insertnote()">我要写游记</a>
		</div>
	</div>
    <div id="selectlist">

	<div class="con">
		<div class="cw1200">
			<ul class="am-avg-sm-2">
                    <#list list as travel>
				<li>
					<div class="box">
						<div class="pic">
							<div class="cover"><a href="javascript:noteById()"><img class="scale-effect " src="/images/1458530382234p1aebir9i21s4q2hiiso1ip6msf29.jpg"/></a></div>
							<div class="head"><img src="/images/head1.jpg"/></div>
						</div>
						<div class="meta">
							<p><a href="javascript:noteById()"></a>${travel.travelsPicture}</p>
							<span>${(travel.travelsRelease)?string('yyyy-MM-dd')} 作者：A monologue. 独白。<label><img src="/images/state_icon1.png"/>18</label><label><img src="/images/state_icon2.png"/>20</label></span>
						</div>
					</div>
				</li>
                    </#list>
                    <div class="clear"></div>
			</ul>
		</div>
	</div>


    </div>
</div>
  <#--共有${PageInfo.total }条
           公有${PageInfo.pages }页
           当前是${PageInfo.pageNum }页
           <a href="javascript:pagee(1)">首页</a>
           <a href="javascript:pagee(2)">上一页</a>
           <a href="javascript:pagee(3)">下一页</a>
           <a href="javascript:pagee(4)">尾页</a>
           <script type="application/javascript">
               var pageNums = null;
               function pagee(str){
                   if (str == 1) {
                       pageNums = 1;
                   }
                   if(str == 2){
                       if (${PageInfo.pageNum }>1){
                           pageNums=${PageInfo.pageNum };
                           --pageNums;
                           console.log(pageNums)
                       }

                   }
                   if(str == 3){
                       if (${PageInfo.prePage }<${PageInfo.pages }){
                           pageNums = ${PageInfo.pageNum };
                           ++pageNums;

                       }
                   }
                   if(str == 4){
                       pageNums	= ${PageInfo.pages };
                   }
                   if (pageNums !=null){
                       getDate(pageNums);
                   }

                   function getDate(pageNums) {

                       location.href ="/con/ask?pageNum="+pageNums;
                   }
                   $.ajax({
                       type:"POST",
                       url:"/con/ask",
                       data:{"pageNum":pageNums},
                       dataType:"html",
                       success:function (data) {
                           $("#selectlist").val(data);
                       },
                       error:function () {
                           alert("有问题")
                       }

                   });


               }
           </script>-->