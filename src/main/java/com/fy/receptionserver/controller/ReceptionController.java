package com.fy.receptionserver.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("reception")
public class ReceptionController {
    private static final String  URL="/front/pzx/";

    @RequestMapping("index")
    public String index(){
        return URL+"index";
    }

}
