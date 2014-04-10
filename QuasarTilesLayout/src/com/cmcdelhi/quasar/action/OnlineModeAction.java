package com.cmcdelhi.quasar.action;

import com.opensymphony.xwork2.ActionSupport;

public class OnlineModeAction extends ActionSupport {

	long transactionId;
	long reicptNumber;

	public String execute() {
		return "success";
	}

	public long getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(long transactionId) {
		this.transactionId = transactionId;
	}

	public long getReicptNumber() {
		return reicptNumber;
	}

	public void setReicptNumber(long reicptNumber) {
		this.reicptNumber = reicptNumber;
	}
	
	
}
