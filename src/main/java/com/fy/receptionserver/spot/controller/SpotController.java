package com.fy.receptionserver.spot.controller;

import com.fy.receptionserver.Util.DataGrid;
import com.fy.receptionserver.Util.PageUtils;
import com.fy.receptionserver.spot.entity.Spots;
import com.fy.receptionserver.spot.server.SpotService;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * @ProjectName: reception-server
 * @Package: com.fy.receptionserver.spot
 * @ClassName: controller
 * @Author: 彭志新
 * @Description: 旅游控制层
 * @Date: 2019/7/19 22:18
 * @Version: 1.0
 */
@Controller
@RequestMapping("spotcontroller")
public class SpotController {
    @Autowired
    private SpotService spotService;

    private static final String URL_PSPOT="/spots/";

    @ResponseBody
    @RequestMapping(value="spotlist",method = RequestMethod.GET)
    public ModelAndView spotlist(PageUtils page){
        ModelAndView mod= new ModelAndView(URL_PSPOT+"select_list");
        Gson gson= new Gson();
        String pagea = gson.toJson(page, PageUtils.class);
        DataGrid<Spots> dataGrid=spotService.spotlist(pagea);
        mod.addObject("list",dataGrid.getRows());
        return mod;
    }

    @ResponseBody
    @RequestMapping("spotById")
    public ModelAndView spotById(Integer Id){
        ModelAndView mod= new ModelAndView(URL_PSPOT+"scenic");
        Spots spots = spotService.spotById(Id);
        mod.addObject("spots",spots);
        return mod;
    }



}
