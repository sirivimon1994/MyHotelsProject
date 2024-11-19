package com.myhotel.controller;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.myhotel.Application;
import com.myhotel.dao.DatabaseManager;
import com.myhotel.dao.RoomDAO;
import com.myhotel.model.JsonToArray;
import com.myhotel.model.Room;
import com.myhotel.model.SearchRoom;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@WebServlet("/HotelServlet")
public class HotelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DateTimeController dateController;


    @Override
    public void init() throws ServletException {
        super.init();
        dateController = new DateTimeController(); // Instantiate DateController
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	    // Retrieve form data
        String checkInDate =  request.getParameter("checkin");
        String checkOutDate =  request.getParameter("checkout");
        int adults = Integer.parseInt(request.getParameter("adults")); 
        int children = Integer.parseInt(request.getParameter("children"));  
        String promoCode = request.getParameter("promocode");
        
        // Calculate number of days between checkInDate and checkOutDate
        String countStay = dateController.diffDate(checkInDate, checkOutDate);
        
        // Check room availability
        try (Connection conn = DatabaseManager.getConnection()) {
        	
        	// Assuming jsonResult is obtained from Database or API
        	String jsonResult = Application.callGetRoomAvailabilityList(conn, checkInDate, checkOutDate, adults,
                     children, promoCode);
	        
	
	        // Convert JSON to List<Room>
	        List<Room> rooms = RoomDAO.convertJsonToRoomList(jsonResult);
	                
	        // Set attribute in request for further processing or rendering
            request.setAttribute("rooms", rooms);
            request.setAttribute("checkInDate", checkInDate);
            request.setAttribute("checkOutDate", checkOutDate);
            request.setAttribute("adults", adults);
            request.setAttribute("children", children);
            request.setAttribute("promoCode", promoCode);
            request.setAttribute("countStay", countStay );
            
	        request.getRequestDispatcher("/bookingroom.jsp").forward(request, response);

        } catch (SQLException e) {
        	   e.printStackTrace(); // Handle or log the exception as needed
               // Redirect to an error page or handle the error appropriately
               response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error retrieving room availability.");
        }

	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		doGet(request, response);
	}

}
