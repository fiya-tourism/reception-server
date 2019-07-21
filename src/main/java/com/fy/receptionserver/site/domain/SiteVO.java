package com.fy.receptionserver.site.domain;


import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @author 武豫
 * @create 2019-07-18 11:06
 * @desc
 **/
public class SiteVO {

    //主键id
    private Integer siteId;

    //用户主键
    private Integer userId;

    //收货人姓名
    private String siteName;

    //省份
    private String siteProvince;

    //城市
    private String siteCity;

    //县/区
    private String siteCounty;

    //详细地址
    private String siteParticular;

    //收货人手机号
    private String sitePhone;

    //邮政编码
    private Integer sitePostalcode;

    //默认地址
    private Integer siteDefault;

    //创建时间
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date comCreate;

    //修改时间
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date  comUpdate;

    //状态
    private Integer comYn;

    public Integer getSiteId() {
        return siteId;
    }

    public void setSiteId(Integer siteId) {
        this.siteId = siteId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getSiteName() {
        return siteName;
    }

    public void setSiteName(String siteName) {
        this.siteName = siteName;
    }

    public String getSiteProvince() {
        return siteProvince;
    }

    public void setSiteProvince(String siteProvince) {
        this.siteProvince = siteProvince;
    }

    public String getSiteCity() {
        return siteCity;
    }

    public void setSiteCity(String siteCity) {
        this.siteCity = siteCity;
    }

    public String getSiteCounty() {
        return siteCounty;
    }

    public void setSiteCounty(String siteCounty) {
        this.siteCounty = siteCounty;
    }

    public String getSiteParticular() {
        return siteParticular;
    }

    public void setSiteParticular(String siteParticular) {
        this.siteParticular = siteParticular;
    }

    public String getSitePhone() {
        return sitePhone;
    }

    public void setSitePhone(String sitePhone) {
        this.sitePhone = sitePhone;
    }

    public Integer getSitePostalcode() {
        return sitePostalcode;
    }

    public void setSitePostalcode(Integer sitePostalcode) {
        this.sitePostalcode = sitePostalcode;
    }

    public Integer getSiteDefault() {
        return siteDefault;
    }

    public void setSiteDefault(Integer siteDefault) {
        this.siteDefault = siteDefault;
    }

    public Date getComCreate() {
        return comCreate;
    }

    public void setComCreate(Date comCreate) {
        this.comCreate = comCreate;
    }

    public Date getComUpdate() {
        return comUpdate;
    }

    public void setComUpdate(Date comUpdate) {
        this.comUpdate = comUpdate;
    }

    public Integer getComYn() {
        return comYn;
    }

    public void setComYn(Integer comYn) {
        this.comYn = comYn;
    }
}
