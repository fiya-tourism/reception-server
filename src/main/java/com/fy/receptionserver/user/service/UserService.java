package com.fy.receptionserver.user.service;

import com.fy.receptionserver.commons.ResultMsg;
import com.fy.receptionserver.site.domain.SiteVO;
import com.fy.receptionserver.user.domain.UserVO;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created by 二哥 on 2019/7/19.
 */
@FeignClient(value = "USER-SERVER")
public interface UserService {

    /**
     *  根据id 查询用户信息
     * @param
     * @return
     */
    @RequestMapping(value="user/toUpdate",method = RequestMethod.POST)
    UserVO toUpdate(@RequestParam("userId")Integer userId);


    /**
     *  修改用户信息
     * @param userVO
     * @return
     */
    @RequestMapping(value="user/updateInfo",method = RequestMethod.POST)
    String updateInfo(@RequestBody UserVO userVO);

    // ==========================地址=================================

    /**
     * 添加地址信息
     * @param siteVO
     * @return
     */
    @RequestMapping(value="site/add",method = RequestMethod.GET)
    ResultMsg add(@RequestBody SiteVO siteVO);



    /**
     *  根据id查询所有地址
     * @param siteId
     * @return
     */
    @RequestMapping(value="site/querySiteList",method = RequestMethod.GET)
    List<SiteVO> querySiteList(Integer siteId);




    // 登录
    @RequestMapping(value="login/toLogin",method = RequestMethod.GET)
    UserVO toLogin(@RequestParam("userVO") String userVO);

    @RequestMapping(value="login/checkPhone",method = RequestMethod.GET)
    ResultMsg checkPhone(@RequestBody UserVO userVO);

    @RequestMapping(value="login/register",method = RequestMethod.GET)
    ResultMsg register(@RequestParam("userVO") String user);
}
