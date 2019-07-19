package com.fy.receptionserver.user.service;

import com.fy.receptionserver.user.domain.UserVO;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
    String toUpdate(@RequestParam("userId")Integer userId);


    /**
     *  修改用户信息
     * @param userVO
     * @return
     */
    @RequestMapping(value="user/updateInfo",method = RequestMethod.POST)
    String updateInfo(@RequestBody UserVO userVO);
}
