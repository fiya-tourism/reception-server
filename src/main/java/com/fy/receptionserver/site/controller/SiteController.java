package com.fy.receptionserver.site.controller;

import com.fy.receptionserver.commons.ResultMsg;
import com.fy.receptionserver.site.domain.SiteVO;
import com.fy.receptionserver.user.domain.UserVO;
import com.fy.receptionserver.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author 武豫
 * @create 2019-07-20 9:40
 * @desc
 **/
@Controller
@RequestMapping("site")
public class SiteController {

    @Autowired
    private UserService userService;

    /**
     * 添加地址信息
     * @param siteVO
     * @return
     */
    @RequestMapping("add")
    @ResponseBody
    public ResultMsg add(HttpServletRequest request, SiteVO siteVO){
        UserVO resultMsg1 = (UserVO) request.getSession().getAttribute("resultMsg1");
        siteVO.setUserId(resultMsg1.getUserId());
        return userService.add(siteVO);

    }

    /**
     *  根据id查询所有的地址
     * @param siteId
     * @return
     */
    @RequestMapping("querySiteList")
    @ResponseBody
    public ModelAndView querySiteList(Integer siteId){
        ModelAndView mav = new ModelAndView("/user/my_contact");
        List<SiteVO> siteVOList =  userService.querySiteList(siteId);
        mav.addObject("list",siteVOList);
        return mav;
    }

}
