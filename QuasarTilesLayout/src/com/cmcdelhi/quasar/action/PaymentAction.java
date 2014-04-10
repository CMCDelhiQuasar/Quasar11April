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
public class PaymentAction extends ActionSupport{
	private int proposedAmount;
	private int depositedAmount;
	private Date proposedDate;
	private Date paymentDate;
	private String paymentMode;

	/**
	 * @return the proposedAmount
	 */
	public int getProposedAmount() {
		return proposedAmount;
	}

	/**
	 * @param proposedAmount
	 *            the proposedAmount to set
	 */
	public void setProposedAmount(int proposedAmount) {
		this.proposedAmount = proposedAmount;
	}

	/**
	 * @return the depositedAmount
	 */
	public int getDepositedAmount() {
		return depositedAmount;
	}

	/**
	 * @param depositedAmount
	 *            the depositedAmount to set
	 */
	public void setDepositedAmount(int depositedAmount) {
		this.depositedAmount = depositedAmount;
	}

	/**
	 * @return the proposedDate
	 */
	public Date getProposedDate() {
		return proposedDate;
	}

	/**
	 * @param proposedDate
	 *            the proposedDate to set
	 */
	public void setProposedDate(Date proposedDate) {
		this.proposedDate = proposedDate;
	}

	/**
	 * @return the paymentDate
	 */
	public Date getPaymentDate() {
		return paymentDate;
	}

	/**
	 * @param paymentDate
	 *            the paymentDate to set
	 */
	public void setPaymentDate(Date paymentDate) {
		this.paymentDate = paymentDate;
	}

	/**
	 * @return the paymentMode
	 */
	public String getPaymentMode() {
		return paymentMode;
	}

	/**
	 * @param paymentMode
	 *            the paymentMode to set
	 */
	public void setPaymentMode(String paymentMode) {
		this.paymentMode = paymentMode;
	}
	
	public String execute()
	{
		
		return "success";
	}
}
