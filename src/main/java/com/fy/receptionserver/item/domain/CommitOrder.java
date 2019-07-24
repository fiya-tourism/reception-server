package com.fy.receptionserver.item.domain;

import java.math.BigDecimal;

/**
 * Created by monst on 2019/7/24.
 */
public class CommitOrder {

    private String itemPath;
    private String itemName;
    private BigDecimal itemPrice;
    private Integer itemCount;
    private BigDecimal itemAllPrice;

    public String getItemPath() {
        return itemPath;
    }

    public void setItemPath(String itemPath) {
        this.itemPath = itemPath;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public BigDecimal getItemPrice() {
        return itemPrice;
    }

    public void setItemPrice(BigDecimal itemPrice) {
        this.itemPrice = itemPrice;
    }

    public Integer getItemCount() {
        return itemCount;
    }

    public void setItemCount(Integer itemCount) {
        this.itemCount = itemCount;
    }

    public BigDecimal getItemAllPrice() {
        return itemAllPrice;
    }

    public void setItemAllPrice(BigDecimal itemAllPrice) {
        this.itemAllPrice = itemAllPrice;
    }
}
