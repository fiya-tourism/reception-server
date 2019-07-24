package com.fy.receptionserver.login;/**
 * Created by 二哥 on 2019/7/22.
 */

import com.fy.receptionserver.Util.SmsCode;
import com.fy.receptionserver.Util.Verification;
import com.fy.receptionserver.commons.ResultMsg;
import com.fy.receptionserver.user.domain.UserVO;
import com.fy.receptionserver.user.service.UserService;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author 武豫
 * @create 2019-07-22 10:39
 * @desc
 **/
@Controller
@RequestMapping("login")
public class LoginController {

    @Autowired
    private UserService userService;



    @RequestMapping("toLogin")
    @ResponseBody
    public ResultMsg toLogin(HttpServletRequest request, HttpServletResponse response, UserVO userVO, String codeImg) {
        // String s = new Gson().toJson(userVO,UserVO.class);
        Gson gson = new Gson();
        String user = gson.toJson(userVO, UserVO.class);
        ResultMsg resultMsg = new ResultMsg();
        String sionCode = null;
        //登录校验验证码
        //将验证码从缓存中获取
        if (codeImg != null) {
            Object attribute = request.getSession().getAttribute("codeImg");
            sionCode = attribute.toString();
                //将字符串转换成小写
                String s = sionCode.toLowerCase();
                String reCode = codeImg.toLowerCase();
                if (!reCode.equals(s)) {
                    resultMsg.setMsg("<font color='red'>验证码输入错误</font>");
                    resultMsg.setCode(500);
                    return resultMsg;
                }
        }
        //将session制空
        ResultMsg resultMsg1 =null;
        request.getSession().setAttribute("codeImg", null);
        UserVO userVO1 = userService.toLogin(user);
        if (userVO1.getUserId() != null) {
                request.getSession().setAttribute("resultMsg1", userVO1);
                resultMsg.setMsg("恭喜您 登录成功!!!");
         }else {
            resultMsg.setMsg("登陆失败");
        }

        return resultMsg;
    }
    @RequestMapping("getImg")
    @ResponseBody
    public String getImg(HttpServletRequest request, HttpServletResponse response){
        return   Verification.getImg(request, response);
    }
    @RequestMapping("checkPhone")
    @ResponseBody
    public ResultMsg checkPhone(UserVO userVO){
        return userService.checkPhone(userVO);
    }



    @RequestMapping("register")
    @ResponseBody
    public ResultMsg register(HttpServletRequest request,UserVO userVO, String code){
        Gson gson = new Gson();
        String user = gson.toJson(userVO, UserVO.class);
        ResultMsg resultMsg = new ResultMsg();
        // 将session置空
        ResultMsg resultMsg1 =null;
        request.getSession().setAttribute("code", null);
        resultMsg1 = userService.register(user);

        if (resultMsg1.getCode() == 200) {
            resultMsg.setMsg("恭喜您 注册成功!!!");
        }

        return resultMsg;
    }

    @RequestMapping("getSms")
    @ResponseBody
    public ResultMsg getSms(HttpServletRequest request, String userPhone){

        return SmsCode.sendPhoneCode(request,userPhone);
    }
}
