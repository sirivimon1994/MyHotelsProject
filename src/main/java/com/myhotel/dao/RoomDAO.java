package com.myhotel.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.myhotel.model.Room;

public class RoomDAO {

	
	  // Method to call stored procedure and retrieve room availability as JSON
    public static String getRoomAvailability(Connection conn, String checkInDate, String checkOutDate,
                                            int adults, int children, String promoCode) throws SQLException {
        String jsonResult = null;
        String sql = "{CALL usp_roomavailabilitylist(?, ?, ?, ?, ?)}";

        try (CallableStatement stmt = conn.prepareCall(sql)) {
            // Set parameters for the stored procedure
            stmt.setString(1, checkInDate);
            stmt.setString(2, checkOutDate);
            stmt.setInt(3, adults);
            stmt.setInt(4, children);
            stmt.setString(5, promoCode);

            // Execute the query
            try (ResultSet rs = stmt.executeQuery()) {
                // Process JSON result
                if (rs.next()) {
                    jsonResult = rs.getString("result");
                }
            } catch (SQLException e) {
                throw new SQLException("Error executing query: " + e.getMessage());
            }

        } catch (SQLException e) {
            throw new SQLException("Error preparing statement: " + e.getMessage());
        }

        return jsonResult;
    }
    
    // Method to convert JSON response to list of Room objects
    public static List<Room> convertJsonToRoomList(String jsonResponse) {
        List<Room> rooms = new ArrayList<>();

        try {
            JSONArray jsonArray = new JSONArray(jsonResponse);

            for (int i = 0; i < jsonArray.length(); i++) {
                JSONObject roomTypeJson = jsonArray.getJSONObject(i);

                // Extract room type details from JSON
                int roomTypeID = roomTypeJson.getInt("RoomTypeID");
                int adult = roomTypeJson.getInt("Adult");
                int children = roomTypeJson.getInt("Children");
                double price = roomTypeJson.getDouble("Price");
                int roomCount = roomTypeJson.getInt("RoomCount");
                String amenities = roomTypeJson.getString("Amenities");
                String image = roomTypeJson.getString("Image");
                String roomName = roomTypeJson.getString("RoomName");
                // Create Room object and add to list
                Room room = new Room(roomTypeID, adult, children, price, roomCount, amenities, image, roomName);
                rooms.add(room);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }

        return rooms;
    }
    
	
}
