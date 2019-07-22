package com.fy.receptionserver.travels.controller;

import com.fy.receptionserver.travels.domain.Travel;
import com.fy.receptionserver.travels.service.TravelsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("con")
public class TravelsController {

    @Autowired
    private TravelsService travelsService;

    @RequestMapping("ask")
    @ResponseBody
    public ModelAndView ask(){
        ModelAndView mv = new ModelAndView("/travels/note_list");
        List<Travel> list = travelsService.ask();
        mv.addObject("list",list);
        return mv;
    }

    @RequestMapping("travelsById")
    @ResponseBody
    public ModelAndView travelsById(Integer travelsId){
        ModelAndView mv = new ModelAndView("/travels/note");
        Travel travel = travelsService.travelsById(travelsId);
        mv.addObject("sun",travel);
        return mv;
    }
    @RequestMapping("insertInIt")
    @ResponseBody
    public Integer insertInIt(Travel travel){
        Integer to = travelsService.insertInIt(travel);
            if (to == 1){
                return 1;
            }
            return 2;
    }

}
