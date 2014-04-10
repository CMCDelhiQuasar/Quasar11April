package com.cmcdelhi.quasar.action;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.cmcdelhi.quasar.exceptions.NameException;
import com.cmcdelhi.quasar.fee.FeeDetails;
import com.cmcdelhi.quasar.paymentDetails.FullFeePayment;
import com.cmcdelhi.quasar.student.Student;
import com.opensymphony.xwork2.ActionSupport;

public class StudentRegistrationDetailAction extends ActionSupport implements
		ServletRequestAware, SessionAware {

	String studentname;
	String studentemail;
	String coursename;
	long contact;
	long coursefee;
	double servicetax;
	double discount;
	long fine;
	String paymenttype;
	int totalinstallments;
	long registrationamount;

	// the request Object
	HttpServletRequest request;

	// this is for maintaining the sesson throughout the student registration.
	Map registrationSessionMap;

	// this list will contain the unexpected exceptions
	List<String> errorsList = new ArrayList<String>();

	public String execute() {

		Enumeration enm = request.getParameterNames();

		while (enm.hasMoreElements()) {
			String paramName = (String) enm.nextElement();
			String paramValue = request.getParameter(paramName);

			System.out.println(paramName + "  :  " + paramValue);

		}

		System.out.println("------------------------------------>>>>>>");

		return "success";
	}

	public String startRegistrationSession() {

		Enumeration enm = request.getParameterNames();

		while (enm.hasMoreElements()) {
			String paramName = (String) enm.nextElement();
			String paramValue = request.getParameter(paramName);

			System.out.println(paramName + "  :  " + paramValue);

		}

		System.out.println("------------------------------------>>>>>>");

		// ///------->>>>> Check for the Key <<<<<-------------///

		System.out.println("Inside REg Session ");

		// String registeringStudentEmail = null;
		//
		// if (registrationSessionMap.containsKey("REGISTERING_STUDENT_EMAIL"))
		// {
		// registeringStudentEmail = (String) registrationSessionMap
		// .get("REGISTERING_STUDENT_EMAIL");
		//
		// }
		//
		// if (registeringStudentEmail != null) {
		// return SUCCESS;
		// }

		// ---- In future I will also check for the key(password)
		if (getStudentemail() != null) {
			// then create a student object and put it inside the session

			try {
				Student s = new Student();
				s.setName(getStudentname());
				s.setEmailId(getStudentemail());
				s.setCourseName(getCoursename());
				s.setContactNumber(getContact());

				// Fee Detail Object
				FeeDetails studentFeeDetail = new FeeDetails();
				studentFeeDetail.setCourseFees(getCoursefee());
				studentFeeDetail.setServiceTax(getServicetax());
				studentFeeDetail.setDiscountAvailable(getDiscount());
				studentFeeDetail.setFine(getFine());

				// setting fee detail in Student
				s.setFeeDetails(studentFeeDetail);

				registrationSessionMap.put("REGISTERING_STUDENT_EMAIL",
						getStudentemail());
				registrationSessionMap.put("shagird", s);

			} catch (NameException e) {
				errorsList.add("Name Exception : " + e.getMessage());
				e.printStackTrace();
			} catch (Exception e) {
				errorsList.add("Exception : " + e.getMessage());
				e.printStackTrace();
			}

		}

		if (errorsList.isEmpty()) {
			// if student opted for full fees then directly take him to
			// registration payment page
			if (getPaymenttype().equals("Full Fees")) {
				// create a full fee payment object
				FullFeePayment ffp = new FullFeePayment();

				// set it into the session

				return "gotoregistrationpaymentpage";
				// otherwise go to installment configuration page
			} else {
				registrationSessionMap.put("NUMBER_OF_INSTALLMENTS",
						getTotalinstallments());

				// create installment payment object

				return "gotoinstallmentconfigpage";
			}
		}

		return INPUT;

	}

	public List<String> getErrorsList() {
		return errorsList;
	}

	public void setErrorsList(List<String> errorsList) {
		this.errorsList = errorsList;
	}

	public String getStudentname() {
		return studentname;
	}

	public void setStudentname(String studentname) {
		this.studentname = studentname;
	}

	public String getStudentemail() {
		return studentemail;
	}

	public void setStudentemail(String studentemail) {
		this.studentemail = studentemail;
	}

	public String getCoursename() {
		return coursename;
	}

	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}

	public long getContact() {
		return contact;
	}

	public void setContact(long contact) {
		this.contact = contact;
	}

	public long getCoursefee() {
		return coursefee;
	}

	public void setCoursefee(long coursefee) {
		this.coursefee = coursefee;
	}

	public double getServicetax() {
		return servicetax;
	}

	public void setServicetax(double servicetax) {
		this.servicetax = servicetax;
	}

	public double getDiscount() {
		return discount;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}

	public long getFine() {
		return fine;
	}

	public void setFine(long fine) {
		this.fine = fine;
	}

	public String getPaymenttype() {
		return paymenttype;
	}

	public void setPaymenttype(String paymenttype) {
		this.paymenttype = paymenttype;
	}

	public int getTotalinstallments() {
		return totalinstallments;
	}

	public void setTotalinstallments(int totalinstallments) {
		this.totalinstallments = totalinstallments;
	}

	public long getRegistrationamount() {
		return registrationamount;
	}

	public void setRegistrationamount(long registrationamount) {
		this.registrationamount = registrationamount;
	}

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		request = arg0;
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		registrationSessionMap = arg0;
	}

}
