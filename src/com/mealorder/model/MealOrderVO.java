package com.mealorder.model;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class MealOrderVO {
	private String meal_odno;
	private String mb_id;
	private String rm_no;
	private Timestamp od_time;
	private Integer total_price;
	private String od_status;
	
	public String getMeal_odno() {
		return meal_odno;
	}
	public void setMeal_odno(String meal_odno) {
		this.meal_odno = meal_odno;
	}
	public String getMb_id() {
		return mb_id;
	}
	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}
	public String getRm_no() {
		return rm_no;
	}
	public void setRm_no(String rm_no) {
		this.rm_no = rm_no;
	}
	public Timestamp getOd_time() {
		return od_time;
	}
	public void setOd_time(Timestamp od_time) {
		this.od_time = od_time;
	}
	public Integer getTotal_price() {
		return total_price;
	}
	public void setTotal_price(Integer total_price) {
		this.total_price = total_price;
	}
	public String getOd_status() {
		return od_status;
	}
	public void setOd_status(String od_status) {
		this.od_status = od_status;
	}
}
