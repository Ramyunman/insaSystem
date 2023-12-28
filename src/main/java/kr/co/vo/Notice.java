package kr.co.vo;

import java.sql.Date;

public class Notice {

	private int nIdx;
	private String nTitle;
	private String nContent;
	private int nViews;
	private String nWriter;
	private Date nDate;
	private int nGroup;
	private int nOrder;
	private int nDepth;
	
	public int getnIdx() {
		return nIdx;
	}
	public void setnIdx(int nIdx) {
		this.nIdx = nIdx;
	}
	public String getnTitle() {
		return nTitle;
	}
	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}
	public String getnContent() {
		return nContent;
	}
	public void setnContent(String nContent) {
		this.nContent = nContent;
	}
	public int getnViews() {
		return nViews;
	}
	public void setnViews(int nViews) {
		this.nViews = nViews;
	}
	public String getnWriter() {
		return nWriter;
	}
	public void setnWriter(String nWriter) {
		this.nWriter = nWriter;
	}
	public Date getnDate() {
		return nDate;
	}
	public void setnDate(Date nDate) {
		this.nDate = nDate;
	}
	public int getnGroup() {
		return nGroup;
	}
	public void setnGroup(int nGroup) {
		this.nGroup = nGroup;
	}
	public int getnOrder() {
		return nOrder;
	}
	public void setnOrder(int nOrder) {
		this.nOrder = nOrder;
	}
	public int getnDepth() {
		return nDepth;
	}
	public void setnDepth(int nDepth) {
		this.nDepth = nDepth;
	}
	
	
		
}
