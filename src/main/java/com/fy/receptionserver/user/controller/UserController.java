package com.fy.receptionserver.user.controller;

import com.fy.receptionserver.user.domain.UserVO;
import com.fy.receptionserver.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author 武豫
 * @create 2019-07-19 15:25
 * @desc
 **/
@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService userService;
    /**
     *  根据id 查询用户信息
     * @param
     * @return
     */
    @RequestMapping("toUpdate")
    @ResponseBody
    public String toUpdate(Integer userId){
        return userService.toUpdate(userId);
    }

    /**
     *  修改用户信息
     * @param userVO
     * @return
     */
    @RequestMapping("updateInfo")
    @ResponseBody
    public String updateInfo(UserVO userVO){
        return userService.updateInfo(userVO);
    }


}
