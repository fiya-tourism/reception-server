<#list list as itme>
<div id="scenic_list">
    <ul>
        <li>
            <div class="pic"><a href="javascript:scentByid(${itme.spotsId})"><img class="scale-effect" src="/images/y1.jpg"/></a></div>
            <div class="con">
                <h3><a href="javascript:scentByid()">${itme.spotsName}</a></h3>
                <p>${itme.spotsActivity}</p>
            </div>
            <div class="tip">
                <#if itme.spotsType==1> <img src="/images/leisure_ico.png"/>景点<#else><img src="/images/scenic_ico.png"/>休闲</#if>
            </div>
            <div class="clear"></div>
        </li>
    </ul>
</div>
</#list>