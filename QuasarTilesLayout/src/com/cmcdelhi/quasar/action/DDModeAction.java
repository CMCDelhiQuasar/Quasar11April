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
public class DDModeAction extends ActionSupport{
	private long DDNumber;
	private String bankName;
	private Date issueDate;
	/**
	 * @return the dDNumber
	 */
	public long getDDNumber() {
		return DDNumber;
	}
	/**
	 * @param dDNumber the dDNumber to set
	 */
	public void setDDNumber(long dDNumber) {
		DDNumber = dDNumber;
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
	
}
