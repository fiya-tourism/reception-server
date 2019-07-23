<ul>
<#list itemSpuList as item>
    <li>
        <div class="pic"><a href="#"><img class="scale-effect" src="http://localhost:8011${item.pictureUrl!}"/></a></div>
        <div class="con">
            <h3><a href="#">${item.itemTitle!}</a></h3>
            <label>${item.itemName!}</label>
        </div>
        <div class="price">
            <p>￥<label>
                <#list item.itemSkuList as sku>
                        ${sku.iskuSalePrice!}
                    </#list>
            </label></p>
            <span>运费: 0.00</span>
        </div>
        <div class="other">
            <span>${item.itemId}人付款</span>
            <a href="#">${item.itemId-5}条评论</a>
        </div>
        <div class="view">
            <a href="javascript:reShow(${item.itemId})">查看详情</a>
        </div>
        <div class="clear"></div>
    </li>
</#list>
</ul>
