package com.myhotel.controller;

import java.time.LocalDate;
import java.time.format.DateTimeParseException;
import java.time.temporal.ChronoUnit;
import java.text.SimpleDateFormat;
import java.util.Date;


public class DateTimeController {


    public String getCurrentDate() {
        LocalDate currentDate = LocalDate.now();
        return currentDate.toString();
    }
    

    /**
     * Calculates the difference in days between two dates.
     * 
     * @param startDate the start date in YYYY-MM-DD format.
     * @param endDate the end date in YYYY-MM-DD format.
     * @return the difference in days as a string or an error message if the date format is invalid.
     */
    public String diffDate(String startDate, String endDate) {
        try {
            LocalDate start = LocalDate.parse(startDate);
            LocalDate end = LocalDate.parse(endDate);
            long daysBetween = ChronoUnit.DAYS.between(start, end);
            return String.valueOf(daysBetween);
        } catch (DateTimeParseException e) {
            return "Invalid date format. Please use YYYY-MM-DD.";
        }
    }
    
    public String formatDateTime() {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date now = new Date();
        return formatter.format(now);
    }

}
