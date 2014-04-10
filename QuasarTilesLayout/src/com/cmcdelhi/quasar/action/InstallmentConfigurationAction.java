package com.cmcdelhi.quasar.action;

import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;

public class InstallmentConfigurationAction extends ActionSupport {

	long proposedAmount1;
	Date proposedDate1;
	String comments1;
	long proposedAmount2;
	Date proposedDate2;
	String comments2;

	public String execute() {
		System.out.println("come to execute method");
		return "success";
	}

	public long getProposedAmount1() {
		return proposedAmount1;
	}

	public void setProposedAmount1(long proposedAmount1) {
		this.proposedAmount1 = proposedAmount1;
	}

	public Date getProposedDate1() {
		return proposedDate1;
	}

	public void setProposedDate1(Date proposedDate1) {
		this.proposedDate1 = proposedDate1;
	}

	public String getComments1() {
		return comments1;
	}

	public void setComments1(String comments1) {
		this.comments1 = comments1;
	}

	public long getProposedAmount2() {
		return proposedAmount2;
	}

	public void setProposedAmount2(long proposedAmount2) {
		this.proposedAmount2 = proposedAmount2;
	}

	public Date getProposedDate2() {
		return proposedDate2;
	}

	public void setProposedDate2(Date proposedDate2) {
		this.proposedDate2 = proposedDate2;
	}

	public String getComments2() {
		return comments2;
	}

	public void setComments2(String comments2) {
		this.comments2 = comments2;
	}

}
