package com.myhotel;


import java.sql.Connection;
import java.sql.SQLException;

import com.myhotel.dao.RoomDAO;


public class Application {
	
	 	// Example method to retrieve room availability
	    public static String callGetRoomAvailabilityList(Connection conn, String checkInDate, String checkOutDate,
	                                                    int adults, int children, String promoCode) throws SQLException {
	        return RoomDAO.getRoomAvailability(conn, checkInDate, checkOutDate, adults, children, promoCode);
	    }
		
	    // Other utility methods, business logic methods, configurations, etc.
	    // Example:
	    public static String getAppVersion() {
	        return "1.0.0";
	    }
		
		
	
	      
	    
}