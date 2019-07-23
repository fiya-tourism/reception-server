package com.fy.receptionserver.item.feign;

import com.fy.receptionserver.item.domain.DataGrid;
import com.fy.receptionserver.item.domain.ItemReShow;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by monst on 2019/7/20.
 */
@FeignClient("ITEM-SERVER")
public interface ItemServiceFeign {

    @RequestMapping("item/queryList")
    DataGrid queryItemList(@RequestParam("pageJson") String pageJson, @RequestParam("searchJson") String seacherJson);

    @RequestMapping("item/getItemById")
    ItemReShow getItemById(@RequestParam("itemId") Integer itemId);
}
