package com.fy.receptionserver.commons;

public class ResultVo<T> {
	
	private Integer code; //成功失败的请求状态
	
	private String msg; //提示信息
	
	private T data; //

	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public T getData() {
		return data;
	}

	public void setData(T data) {
		this.data = data;
	}

	@Override
	public String toString() {
		return "ResultVo [code=" + code + ", msg=" + msg + ", data=" + data + "]";
	}

	public ResultVo(Integer code, String msg, T data) {
		super();
		this.code = code;
		this.msg = msg;
		this.data = data;
	}

	public ResultVo() {
		super();
	}
	//成功返回
	public static ResultVo success(String msg) {
		return new  ResultVo(200, msg,null);
	}
	//失败返回
	public static ResultVo error(Integer code, String msg) {
		return new  ResultVo(code, msg,null);
	}
	//成功带数据
//	public static ResultVo success(String msg, T data) {
//		return new  ResultVo(200, msg,data);
//	}

}
