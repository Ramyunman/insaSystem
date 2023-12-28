package kr.co.vo;

import java.sql.Date;

public class Notice {

	private int n_idx;
	private String n_title;
	private String n_content;
	private int n_views;
	private String n_writer;
	private Date n_datetime;
	private int n_group;
	private int n_order;
	private int n_depth;
	
	public int getN_idx() {
		return n_idx;
	}
	public void setN_idx(int n_idx) {
		this.n_idx = n_idx;
	}
	public String getN_title() {
		return n_title;
	}
	public void setN_title(String n_title) {
		this.n_title = n_title;
	}
	public String getN_content() {
		return n_content;
	}
	public void setN_content(String n_content) {
		this.n_content = n_content;
	}
	public int getN_views() {
		return n_views;
	}
	public void setN_views(int n_views) {
		this.n_views = n_views;
	}
	public String getN_writer() {
		return n_writer;
	}
	public void setN_writer(String n_writer) {
		this.n_writer = n_writer;
	}
	public Date getN_datetime() {
		return n_datetime;
	}
	public void setN_datetime(Date n_datetime) {
		this.n_datetime = n_datetime;
	}
	public int getN_group() {
		return n_group;
	}
	public void setN_group(int n_group) {
		this.n_group = n_group;
	}
	public int getN_order() {
		return n_order;
	}
	public void setN_order(int n_order) {
		this.n_order = n_order;
	}
	public int getN_depth() {
		return n_depth;
	}
	public void setN_depth(int n_depth) {
		this.n_depth = n_depth;
	}
	
	
}
