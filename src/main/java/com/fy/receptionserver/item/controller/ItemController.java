package com.fy.receptionserver.item.controller;

import com.fy.receptionserver.item.domain.DataGrid;
import com.fy.receptionserver.item.domain.ItemReShow;
import com.fy.receptionserver.item.domain.ItemSpu;
import com.fy.receptionserver.item.domain.ItemSpuSearchVo;
import com.fy.receptionserver.item.domain.PageUtil;
import com.fy.receptionserver.item.feign.ItemServiceFeign;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by monst on 2019/7/20.
 */
@RestController
@RequestMapping("item")
public class ItemController {

    @Autowired
    private ItemServiceFeign itemServiceFeign;


    /**
     * 调用商品列表查询
     * @return
     */
    @RequestMapping("queryList")
    public ModelAndView queryItemList(Integer itemType){
        ModelAndView mav = new ModelAndView("tiem/item_list");
        ItemSpuSearchVo itemSpuSearchVo = new ItemSpuSearchVo();
        if(itemType==0){
            itemType = null;
        }
        itemSpuSearchVo.setItemType(itemType);
        String seacherJson = new Gson().toJson(itemSpuSearchVo);

        PageUtil pageUtil = new PageUtil();
        pageUtil.setPage(0);
        pageUtil.setRows(10);
        String pageJson = new Gson().toJson(pageUtil);

        DataGrid dataGrid = itemServiceFeign.queryItemList(pageJson,seacherJson);
        List<ItemSpu> itemSpuList = dataGrid.getRows();
        mav.addObject("itemSpuList",itemSpuList);
        return mav;
    }

    /**
     * 调用回显接口
     * @return
     */
    @RequestMapping("reShow")
    public ModelAndView getItemById(Integer itemId){
        ModelAndView mav = new ModelAndView("tiem/project");
        ItemReShow itemReShow = itemServiceFeign.getItemById(itemId);
        mav.addObject("itemReShow",itemReShow);
        return mav;
    }


    //点击购买 进入订单页面
    @RequestMapping("toOrder")
    public ModelAndView toOrder(){
        ModelAndView mav = new ModelAndView("tiem/shop_car");
        return mav;
    }

}
