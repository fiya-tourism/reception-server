package com.fy.receptionserver.Util;


import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

public class PageUtils {

	/** 当前页 */
	private int page = 1;
	/** 每页条数 */
	private int rows = 10;
	/** 开始条数的下标 */
	private int startPos;

	//状态 1上架 、0未上架
	private Integer grounding;
	// 景区编号
	private Integer postId;
	
	/** 排序列 */
	private String sort;
	/** 排序方式 */
	private String order;

	private  Integer type;
	// 条件
	private Integer userId; //景区id

	private String userName;

	@JsonFormat(pattern="yyyy-MM-dd",timezone="GMT+8")
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date userBir;  //结束时间

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getRows() {
		return rows;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

	public int getStartPos() {
		return startPos;
	}

	public void setStartPos(int startPos) {
		this.startPos = startPos;
	}

	public Integer getGrounding() {
		return grounding;
	}

	public void setGrounding(Integer grounding) {
		this.grounding = grounding;
	}

	public Integer getPostId() {
		return postId;
	}

	public void setPostId(Integer postId) {
		this.postId = postId;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Date getUserBir() {
		return userBir;
	}

	public void setUserBir(Date userBir) {
		this.userBir = userBir;
	}
}
