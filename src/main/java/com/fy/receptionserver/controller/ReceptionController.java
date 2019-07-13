package com.fy.receptionserver.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("reception")
public class ReceptionController {
    private static final String  URL="/front/";
    private static final String  PZXURL="/front/pzx/";
    private static final String  HYQURL="/front/hyq/";
    private static final String  SSOURL="/front/sl/";
    private static final String  WYURL="/front/wy/";
    private static final String  XZURL="/front/xz/";
    private static final String  ZYURL="/front/zy/";



    @RequestMapping("login")
    public String login(){
        return URL+"login";
    }


    //--------------------------hyq ------------------------------------------
    @RequestMapping("mall")
    public String mall(){
        return HYQURL+"mall_list";
    }

    @RequestMapping("project")
    public String project(){
        return HYQURL+"project";
    }

    @RequestMapping("shopCar")
    public String shopCar(){
        return HYQURL+"shop_car";
    }

    @RequestMapping("ProjectComments")
    public String ProjectComments(){
        return HYQURL+"project_comments";
    }


    //-------------------------------------pzx-----------------------------------



    @RequestMapping("scemic")
    public String scemic(){
        return PZXURL+"scemic";
    }

    @RequestMapping("scenicComments")
    public String scenicComments(){
        return PZXURL+"scenic_comments";
    }

    @RequestMapping("scenicList")
    public String scenicList(){
        return PZXURL+"scenic_list";
    }

    @RequestMapping("index")
    public String index(){
        return PZXURL+"index";
    }



 //------------------------------------- sso ------------------------------

    @RequestMapping("note")
    public String note(){
        return SSOURL+"note";
    }

    @RequestMapping("note_comments")
    public String noteComments(){
        return SSOURL+"note_comments";
    }

    @RequestMapping("noteList")
    public String noteList(){
        return SSOURL+"note_list";
    }

    @RequestMapping("writeNote")
    public String writeNote(){
        return SSOURL+"write_note";
    }


    //---------------------------------wy --------------------------------------------

    @RequestMapping("collectionList")
    public String collectionList(){
        return WYURL+"collection_list";
    }

    @RequestMapping("myContact")
    public String myContact(){
        return WYURL+"my_contact";
    }

    @RequestMapping("myHead")
    public String myHead(){
        return WYURL+"my_head";
    }

    @RequestMapping("myIndex")
    public String myIndex(){
        return WYURL+"my_index";
    }


    @RequestMapping("myInfo")
    public String myInfo(){
        return WYURL+"my_info";
    }

    @RequestMapping("myNote")
    public String myNote(){
        return WYURL+"my_note";
    }

    @RequestMapping("security")
    public String security(){
        return WYURL+"security";
    }

}
