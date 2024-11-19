package com.myhotel.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.myhotel.model.JsonToArray;
import com.myhotel.model.SearchRoom;


@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public PaymentServlet() {
        super();
   
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//		doGet(request, response);
		String paymentData = request.getParameter("paymentData");
        
		 // Do something with the payment data
        System.out.println("Payment Data: " + paymentData);
	}

}
