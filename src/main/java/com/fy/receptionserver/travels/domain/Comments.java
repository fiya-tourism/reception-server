package com.fy.receptionserver.travels.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class Comments implements Serializable {
    private Integer comTravelsId;

    private Integer userId;

    private Integer travelsId;

    private String comTravelsContent;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date comTravelsRelease;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date comTravelsCreate;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date comTravelsUpdate;

    private Integer comTravelsYn;

    @Override
    public String toString() {
        return "Comments{" +
                "comTravelsId=" + comTravelsId +
                ", userId=" + userId +
                ", travelsId=" + travelsId +
                ", comTravelsContent='" + comTravelsContent + '\'' +
                ", comTravelsRelease=" + comTravelsRelease +
                ", comTravelsCreate=" + comTravelsCreate +
                ", comTravelsUpdate=" + comTravelsUpdate +
                ", comTravelsYn=" + comTravelsYn +
                ", commentType=" + commentType +
                '}';
    }

    private Integer commentType;

    public Integer getCommentType() {
        return commentType;
    }

    public void setCommentType(Integer commentType) {
        this.commentType = commentType;
    }

    public Integer getComTravelsId() {
        return comTravelsId;
    }

    public void setComTravelsId(Integer comTravelsId) {
        this.comTravelsId = comTravelsId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getTravelsId() {
        return travelsId;
    }

    public void setTravelsId(Integer travelsId) {
        this.travelsId = travelsId;
    }

    public String getComTravelsContent() {
        return comTravelsContent;
    }

    public void setComTravelsContent(String comTravelsContent) {
        this.comTravelsContent = comTravelsContent == null ? null : comTravelsContent.trim();
    }

    public Date getComTravelsRelease() {
        return comTravelsRelease;
    }

    public void setComTravelsRelease(Date comTravelsRelease) {
        this.comTravelsRelease = comTravelsRelease;
    }

    public Date getComTravelsCreate() {
        return comTravelsCreate;
    }

    public void setComTravelsCreate(Date comTravelsCreate) {
        this.comTravelsCreate = comTravelsCreate;
    }

    public Date getComTravelsUpdate() {
        return comTravelsUpdate;
    }

    public void setComTravelsUpdate(Date comTravelsUpdate) {
        this.comTravelsUpdate = comTravelsUpdate;
    }

    public Integer getComTravelsYn() {
        return comTravelsYn;
    }

    public void setComTravelsYn(Integer comTravelsYn) {
        this.comTravelsYn = comTravelsYn;
    }
}