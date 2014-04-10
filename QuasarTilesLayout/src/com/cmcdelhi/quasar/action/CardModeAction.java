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
public class CardModeAction extends ActionSupport {
	private String cardType;
	private long cardNumber;
	private long transactionId;
	private Date cardExpiryDate;
	
	/**
	 * @return the cardType
	 */
	public String getCardType() {
		return cardType;
	}
	/**
	 * @param cardType the cardType to set
	 */
	public void setCardType(String cardType) {
		this.cardType = cardType;
	}
	/**
	 * @return the cardNumber
	 */
	public long getCardNumber() {
		return cardNumber;
	}
	/**
	 * @param cardNumber the cardNumber to set
	 */
	public void setCardNumber(long cardNumber) {
		this.cardNumber = cardNumber;
	}
	/**
	 * @return the transactionId
	 */
	public long getTransactionId() {
		return transactionId;
	}
	/**
	 * @param transactionId the transactionId to set
	 */
	public void setTransactionId(long transactionId) {
		this.transactionId = transactionId;
	}
	/**
	 * @return the cardExpiryDate
	 */
	public Date getCardExpiryDate() {
		return cardExpiryDate;
	}
	/**
	 * @param cardExpiryDate the cardExpiryDate to set
	 */
	public void setCardExpiryDate(Date cardExpiryDate) {
		this.cardExpiryDate = cardExpiryDate;
	}
	
}
