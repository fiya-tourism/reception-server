package com.fy.receptionserver.item.domain;


import java.util.Date;

/**
 * Created by monst on 2019/7/17.
 */
public class ItemComment {
    private String _id;
    private String value;
    private Date createTime;

    public String get_id() {
        return _id;
    }

    public void set_id(String _id) {
        this._id = _id;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public ItemComment() {
    }

    public ItemComment(String _id, String value, Date createTime) {
        this._id = _id;
        this.value = value;
        this.createTime = createTime;
    }
}
