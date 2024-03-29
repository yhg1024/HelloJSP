package com.momo.dto;

/**
 * 리스트를 조회하기 위한 라파메터 셋팅
 */
public class Criteria {
	// 기본값을 설정
	private int pageNo = 1;
	private int amount = 10;
	
	private int startNum;
	private int endNum;
	
	public Criteria() {
		
	}
	
	/**
	 * 생성자를 통해 페이지번호와 페이지당 게시물의 수를 받아와서
	 * 시작번호와 끝번호를 구합니다.
	 * @param pageNo
	 * @param amount
	 */
	public Criteria(String pageNo, String amount) {
		
		if(pageNo != null && !"".equals(pageNo)) {
			this.pageNo =Integer.parseInt(pageNo);
		}
		if(amount != null && !"".equals(amount)) {
			this.amount =Integer.parseInt(amount);
		}
		endNum = this.pageNo * this.amount;
		startNum = this.endNum - (this.amount -1);
	}
	
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getStartNum() {
		return startNum;
	}
	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}
	public int getEndNum() {
		return endNum;
	}
	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}
}
