package com.myhotel.model;


import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;



public class JsonToArray {
	

	  public List<SearchRoom> convertJsonToRoomList(String jsonString) {
	        List<SearchRoom> rooms = new ArrayList<>();
	        try {
	            JSONObject json = new JSONObject(jsonString);
	            JSONArray roomsArray = json.getJSONArray("rooms");

	            for (int i = 0; i < roomsArray.length(); i++) {
	                JSONObject roomObject = roomsArray.getJSONObject(i);
	                SearchRoom room = new SearchRoom();
	                room.setRoomID(roomObject.getInt("roomID"));
	                room.setRoomNumber(roomObject.getString("roomNumber"));
	                room.setPricePerNight(roomObject.getDouble("pricePerNight"));
	                room.setCapacityAdults(roomObject.getInt("capacityAdults"));
	                room.setCapacityChildren(roomObject.getInt("capacityChildren"));
	                rooms.add(room);
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return rooms;
	    }
}
