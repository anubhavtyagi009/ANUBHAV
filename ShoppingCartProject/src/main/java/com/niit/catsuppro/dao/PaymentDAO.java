package com.niit.catsuppro.dao;

import org.springframework.stereotype.Repository;

import com.niit.catsuppro.model.Payment;

@Repository("paymentDAO")
public interface PaymentDAO {
	
	public void paymentsave(Payment payment);

}
