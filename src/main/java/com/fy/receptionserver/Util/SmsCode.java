package com.fy.receptionserver.Util;/**
 * Created by 二哥 on 2019/7/23.
 */

import com.fy.receptionserver.commons.ResultMsg;

import javax.servlet.http.HttpServletRequest;

/**
 * @author 武豫
 * @create 2019-07-23 15:44
 * @desc
 **/
public class SmsCode {

    public static ResultMsg sendPhoneCode(HttpServletRequest request, String userPhone) {
        ResultMsg rs = new ResultMsg();
        //生成随机验证码
        Integer code = CodeUtil.drawNum(6);
        try {
            //通过发送验证码工具类发送手机验证码
            SendSms.httpSms(userPhone,code);
            rs.setMsg("发送成功");
            rs.setCode(200);
        } catch (Exception e) {
            e.printStackTrace();
            rs.setMsg("<font color='red'>发送失败</font>");
            rs.setCode(500);
            rs.setSuccessFalse();
            return rs;
        }
        //将验证码存到缓存中
        request.getSession().setAttribute("code",code);
        return rs;
    }
}
