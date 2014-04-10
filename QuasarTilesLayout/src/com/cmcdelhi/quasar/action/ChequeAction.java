/**
 * 
 */
package com.cmcdelhi.quasar.action;

import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author BHASKAR MILKHA
 *
 */
public class ChequeAction extends ActionSupport{
	private long chequeNumber;
	private String bankName;
	private Date issueDate;
	/**
	 * @return the chequeNumber
	 */
	public long getChequeNumber() {
		return chequeNumber;
	}
	/**
	 * @param chequeNumber the chequeNumber to set
	 */
	public void setChequeNumber(long chequeNumber) {
		this.chequeNumber = chequeNumber;
	}
	/**
	 * @return the bankName
	 */
	public String getBankName() {
		return bankName;
	}
	/**
	 * @param bankName the bankName to set
	 */
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	/**
	 * @return the issueDate
	 */
	public Date getIssueDate() {
		return issueDate;
	}
	/**
	 * @param issueDate the issueDate to set
	 */
	public void setIssueDate(Date issueDate) {
		this.issueDate = issueDate;
	}
	public String execute() {
		return "success";
	}
}
