package com.fy.receptionserver.redirect;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("reception")
public class ReceptionController {
    private static final String  URL="/home/";
    private static final String  URL_spots="/spots/";
    private static final String  URL_tiem="/tiem/";
    private static final String  URL_travels="/travels/";
    private static final String  URL_user="/user/";

    //首页
    @RequestMapping("index")
    public String index(){
        return URL+"index";
    }
    //导航栏
    @RequestMapping("anavigate")
    public String anavigate(){
        return URL+"anavigate";
    }
    //首页轮波图
    @RequestMapping("branmer")
    public String branmer(){ return URL+"banner"; }
    //首页旅游展示
    @RequestMapping("scenic")
    public String scenic(){
        return URL+"scenic";
    }
    //首页商城展示
    @RequestMapping("project")
    public String project(){
        return URL+"project";
    }
    //首页游记展示
    @RequestMapping("note")
    public String note(){
        return URL+"note";
    }
    //旅游展示
    @RequestMapping("scenicpzx")
    public String scenicpzx(){
        return URL_spots+"scenic_list";
    }
    //旅游活动展示
    @RequestMapping("activitieslistpzx")
    public String activitieslistpzx(){
        return URL_spots+"activities_list";
    }
    //旅游详情
    @RequestMapping("scenicById")
    public String scenicById(){
        return URL_spots+"scenic";
    }
    //活动详情
    @RequestMapping("activitiesById")
    public String activitiesById(){
        return URL_spots+"activities";
    }
    //旅游订单页
    @RequestMapping("scenicorder")
    public String scenicorder(){
        return URL_spots+"submit_orders";
    }
    //旅游订单结算页
    @RequestMapping("scenicordersubmit")
    public String scenicordersubmit(){
        return URL_spots+"confirm_order2";
    }


    //商品展示
    @RequestMapping("tiemmall")
    public String tiemmall(){
        return URL_tiem+"mall_list";
    }
    //商品详情展示
    @RequestMapping("tiemById")
    public String tiemById(){
        return URL_tiem+"project";
    }

    //商品购物车页面
    @RequestMapping("tiemshop")
    public String tiemshop(){
        return URL_tiem+"shop_car";
    }
    //商品结算页面
    @RequestMapping("tiemoreder")
    public String tiemoreder(){
        return URL_tiem+"confirm_order";
    }
   /* //游记页面
    @RequestMapping("notelist")
    public String notelist(){
        return URL_travels+"note_list";
    }
    //游记页面
    @RequestMapping("noteById")
    public String noteById(){
        return URL_travels+"note";
    }*/
    //写游记页面
    @RequestMapping("insertnote")
    public String insertnote(){
        return URL_travels+"write_note";
    }

    //登录
    @RequestMapping("userlogin")
    public String userlogin(){
        return URL_user+"login/login";
    }
    //注册
    @RequestMapping("userregister")
    public String userregister(){
        return URL_user+"login/register";
    }

    //个人主页
    @RequestMapping("userindex")
    public String userindex(){
        return URL_user+"my_index";
    }
    //个人主页数据
    @RequestMapping("userindexdata")
    public String userindexdata(){
        return URL_user+"my_indexload";
    }
    //写游记
    @RequestMapping("usernote")
    public String usernote(){
        return URL_user+"write_note";
    }
    //我的游记
    @RequestMapping("userMy_note")
    public String userMynote(){
        return URL_user+"my_note";
    }
    //我的收藏
    @RequestMapping("usercollection_list")
    public String usercollection_list(){
        return URL_user+"collection_list";
    }
    //商品订单
    @RequestMapping("userproject_order")
    public String userproject_order(){
        return URL_user+"project_order";
    }
    //旅游订单
    @RequestMapping("userscenic_order")
    public String userscenic_order(){
        return URL_user+"scenic_order";
    }
    //我的评论
    @RequestMapping("usernote_comments")
    public String usernote_comments(){
        return URL_user+"note_comments";
    }
    //设置
    @RequestMapping("usermy_info")
    public String usermy_info(){
        return URL_user+"my_info";
    }
    //更换头像
    @RequestMapping("usermy_head")
    public String usermy_head(){
        return URL_user+"my_head";
    }
    //常用联系人
    @RequestMapping("usermycontact")
    public String usermycontact(){
        return URL_user+"my_contact";
    }



}
