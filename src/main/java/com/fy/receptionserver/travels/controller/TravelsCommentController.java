package com.fy.receptionserver.travels.controller;

import com.fy.receptionserver.travels.service.TravelsCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("tro")
public class TravelsCommentController {
    @Autowired
    private TravelsCommentService travelsCommentService;

}
