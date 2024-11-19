package com.myhotel.model;

public class SearchRoom {
	private int roomID;
    private String roomNumber;
    private double pricePerNight;
    private int capacityAdults;
    private int capacityChildren;

    // Constructors, getters, setters (omitted for brevity)
    // Constructors
    public SearchRoom() {
        // Default constructor
    }

    public SearchRoom(int roomID, String roomNumber, double pricePerNight, int capacityAdults, int capacityChildren) {
        this.roomID = roomID;
        this.roomNumber = roomNumber;
        this.pricePerNight = pricePerNight;
        this.capacityAdults = capacityAdults;
        this.capacityChildren = capacityChildren;
    }

    // Getters and Setters
    public int getRoomID() {
        return roomID;
    }

    public void setRoomID(int roomID) {
        this.roomID = roomID;
    }

    public String getRoomNumber() {
        return roomNumber;
    }

    public void setRoomNumber(String roomNumber) {
        this.roomNumber = roomNumber;
    }

    public double getPricePerNight() {
        return pricePerNight;
    }

    public void setPricePerNight(double pricePerNight) {
        this.pricePerNight = pricePerNight;
    }

    public int getCapacityAdults() {
        return capacityAdults;
    }

    public void setCapacityAdults(int capacityAdults) {
        this.capacityAdults = capacityAdults;
    }

    public int getCapacityChildren() {
        return capacityChildren;
    }

    public void setCapacityChildren(int capacityChildren) {
        this.capacityChildren = capacityChildren;
    }
    
    @Override
    public String toString() {
        return "Room{" +
                "roomID=" + roomID +
                ", roomNumber='" + roomNumber + '\'' +
                ", pricePerNight=" + pricePerNight +
                ", capacityAdults=" + capacityAdults +
                ", capacityChildren=" + capacityChildren +
                '}';
    }
}