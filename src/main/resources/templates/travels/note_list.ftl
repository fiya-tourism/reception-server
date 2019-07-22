
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
    <div class="con">
        <div class="cw1200">

            <ul class="am-avg-sm-2">
				<#list list as travel>

				<li>
                    <div class="box">
                        <div class="pic">

                            <div class="cover"><a href="javascript:travels('${travel.travelsId}')"><img class="scale-effect " src="/images/1458530382234p1aebir9i21s4q2hiiso1ip6msf29.jpg"/></a></div>
                            <div class="head"><img src="/images/head1.jpg"/></div>
                        </div>
                        <div class="meta">
                            <input id="${(travel.travelsId)!''}"  hidden value="${(travel.travelsId)!''}">
                            <p><a href="javascript:travels()">${(travel.travelsTitle)!''}</a></p>
                            <span>${(travel.travelsCreate)?string("yyyy-MM-dd HH:mm:ss")} 作者：A monologue. 独白。<label><img src="/images/state_icon1.png"/>18</label><label><img src="/images/state_icon2.png"/>20</label></span>
                        </div>
                    </div>

                </li>
				</#list>
                <div class="clear"></div>
            </ul>
        </div>
    </div>

</div>
<script>
    function travels(travelsId) {
        $("#banner").remove();
        $("#home").attr("class","");
        $("#scenicList").attr("class","");
        $("#tiemId").attr("class","");
        $("#note").attr("class","cur");
        $("#userindexdiv").remove();
        $("#h_scenic").remove();
        $("#h_project").remove();
        $("#h_note").remove();
        var s =travelsId;
        alert(s)
        $.ajax({
            type:"POST",
            data:{"travelsId":s},
            url:"/con/travelsById",
            datatype:"html",
            success:function (data) {
                $("#conmpenr").html(data);
            }
        })
    }
</script>