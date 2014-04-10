package com.cmcdelhi.quasar.action;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

public class CashModeAction extends ActionSupport implements
		ServletRequestAware {

	HttpServletRequest request;

	/**
	 * 
	 */
	private static final long serialVersionUID = 8303209053388538476L;
	long thousandnotes;
	long fivehundred;
	long hundred;
	long fifty;
	long twenty;
	long ten;
	long five;
	long two;
	long one;
	String cashAmount;

	public String execute() {

		Enumeration enm = request.getParameterNames();
		System.out.println("Haeder Informations -------- >>");

		while (enm.hasMoreElements()) {
			String headerName = (String) enm.nextElement();
			String headervalue = request.getParameter(headerName);
			System.out.println(headerName + " : " + headervalue);
		}

		return "success";
	}

	public long getThousandnotes() {
		return thousandnotes;
	}

	public void setThousandnotes(long thousandnotes) {
		this.thousandnotes = thousandnotes;
	}

	public long getFivehundred() {
		return fivehundred;
	}

	public void setFivehundred(long fivehundred) {
		this.fivehundred = fivehundred;
	}

	public long getHundred() {
		return hundred;
	}

	public void setHundred(long hundred) {
		this.hundred = hundred;
	}

	public long getFifty() {
		return fifty;
	}

	public void setFifty(long fifty) {
		this.fifty = fifty;
	}

	public long getTwenty() {
		return twenty;
	}

	public void setTwenty(long twenty) {
		this.twenty = twenty;
	}

	public long getTen() {
		return ten;
	}

	public void setTen(long ten) {
		this.ten = ten;
	}

	public long getFive() {
		return five;
	}

	public void setFive(long five) {
		this.five = five;
	}

	public long getTwo() {
		return two;
	}

	public void setTwo(long two) {
		this.two = two;
	}

	public long getOne() {
		return one;
	}

	public void setOne(long one) {
		this.one = one;
	}

	public String getCashAmount() {
		return cashAmount;
	}

	public void setCashAmount(String cashAmount) {
		this.cashAmount = cashAmount;
	}

	@Override
	public void validate() {

		System.out.println("Inside validate method");

		if (cashAmount.length() == 0 || Integer.parseInt(cashAmount) <= 0) {
			addFieldError("cashAmount", "Please check cash amount!!");
          System.out.println("control out.");
		}

	}

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		request = arg0;
	}
}
