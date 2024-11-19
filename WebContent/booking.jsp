<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.myhotel.controller.DateTimeController" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Room Booking</title>
    
    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    
    
    <style>
        /* Basic CSS for layout */
	        body {
	            font-family: Arial, sans-serif;
	            display: flex;
	            justify-content: center;
	            align-items: flex-start;
	            height: 100vh;
	            margin: 0;
	        }
	  
	        .position-relative .bg-primary, 
	        .position-relative .bg-white {
	            border-radius: 15px;
	        }
        
        	.container {
    		display: block; /* Ensure container is block-level */
			}
			
			.property-item-wrapper {
			    width: 100%; /* Ensure full width for each item */
			    display: block;
			    margin-bottom: 20px; /* Add space between items */
			}
			
			/* Optional: Ensure no grid or flex styles are applied to child elements */
			.property-item-wrapper .property-item {
			    display: block; 
			    width: 100%;
			}
			
			.property-item-wrapper img {
			    width: 100%;
			}
			
			.btn-booknow {
			    background-color: #ff5733; /* Custom background color */
			    color: #fff; /* Text color */
			    border: none; /* Remove border */
			}
			
			.btn-booknow:hover {
			    background-color: #e04e2a; /* Darker background color on hover */
			    color: #fff; /* Text color on hover */
			}
			
		   /* Define styles for expanded container */
		        .expanded {
		            transition: all 0.3s ease-in-out;
		            height: auto;
		            max-height: 1000px; /* Arbitrary value, adjust as needed */
		            overflow: visible;
		        }

    </style>
    
</head>
<body>

  	<!-- Header with hotel name -->
    <div class="header">
        <span class="hotel-name">Hotel ABC</span>
    </div>
<div class="col-sm-3" ">
    <!--START OF ROOM DETAIL  -->   
      <div class="container-lg py-5">
            <div class="container" id="paymentDetailContainer">
                <div class="bg-light rounded p-3">
                    <div class="bg-white rounded p-4" style="border: 1px dashed rgba(0, 185, 142, .3)">
                        <div class="row g-5 align-items-center">
                        	 <!-- <form action="PaymentServlet" method="post"> -->
                                <div class="mb-4">
                                    <h1 class="mb-3">Booking Details</h1>
                                </div>
                                 <div class="p-4 pb-0">
                                         <p><i class="text-primary me-2"></i>Check-in Date: ${checkInDate}</p>
                                         <p><i class="text-primary me-2"></i>Check-out Date: ${checkOutDate}</p>
                                         <p><i class="text-primary me-2"></i>Adults: ${adults}</p>
                                         <p><i class="text-primary me-2"></i>Children: ${children}</p>
                                         <p><i class="text-primary me-2"></i>Stay overnight : ${countStay}</p>  
                                         <p><i class="text-primary me-2"></i>Promotion Code: ${promoCode}</p>
                                 </div>
                               
                                  <div id="roomDetails"> </div> <!-- Container to display room details -->
                                 
                                
                                 <input type="booknow" id="btnBooknow"  class="btn btn-dark py-3 px-4" value="Booking Now" onclick="expandContent()" href="#" >
                           <!--   </form> -->
   
                           <!--START OF PAYMENT DETAIL -->      
         					<div id="roomDetails2" style="display: none;"> 
	         					<h4>Banking</h4>
					                <p><i class="text-primary me-2"></i>Room Type: Deluxe Suite</p>
					                <p><i class="text-primary me-2"></i>Number of Rooms: 2</p>
					                <p><i class="text-primary me-2"></i>Special Requests: None</p>          
				               <div class="row g-4">
				                   <div class="col-lg-4 wow fadeInUp" data-wow-delay="0.1s">
				                       <a class="cat-item d-block bg-light text-center rounded p-3" onclick="selectBank(0)">
				                           <div class="rounded p-4" >
				                               <div class="icon mb-3">
				                                   <img class="img-fluid" src="img/icon-apartment.png" alt="Icon">
				                               </div>
				                               <h6>Banking A</h6>
				                               <span>XXXXXX</span>
				                           </div>
				                       </a>
				                   </div>
				                   <div class="col-lg-4 wow fadeInUp" data-wow-delay="0.3s">
				                       <a class="cat-item d-block bg-light text-center rounded p-3" onclick="selectBank(1)">
				                           <div class="rounded p-4">
				                               <div class="icon mb-3">
				                                   <img class="img-fluid" src="img/icon-villa.png" alt="Icon">
				                               </div>
				                               <h6>Banking B</h6>
				                               <span>XXXXXX</span>
				                           </div>
				                       </a>
				                   </div>
				                   <div class="col-lg-4 wow fadeInUp" data-wow-delay="0.5s">
				                       <a class="cat-item d-block bg-light text-center rounded p-3" onclick="selectBank(2)">
				                           <div class="rounded p-4">
				                               <div class="icon mb-3">
				                                   <img class="img-fluid" src="img/icon-house.png" alt="Icon">
				                               </div>
				                               <h6>Banking C</h6>
				                               <span>XXXXXX</span>
				                           </div>
				                       </a>
				                   </div>
				               </div>

				                <button id="btnChange" class="btn btn-dark border-0 w-100 py-3" onclick="reduceContent()" href="#" >Change Room</button>
				                
		<!-- START BUTTON PAYMENT  -->
								<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter" onclick="displayJson()">
									  Submit Payment
								</button>
		<!-- END BUTTON PAYMENT  -->
 								<button id="btnPaying" class="btn btn-dark border-0 w-100 py-3">Submit Payment</button>
 								      <div id="submitPayment"> 
								       ...
								       </div>
         				   </div> 
         				<!--END OF PAYMENT DETAIL -->
                        </div>
                    </div>
                </div>
            </div>
       </div>
  <!--END OF ROOM DETAIL  -->   
</div>
  <!--START OF ROOM LIST  -->  
<div class="col-sm-6" style="margin-right: 5% !important;">
    <div class="p-5 bg-primary text-white text-center" style="margin-top: 5% !important;">
	  		<h1>Sunrise Hotel</h1>
	</div>
	<div class="main-container">
		<div class="bg-light rounded p-3">
		  <div class="bg-white rounded p-4" style="border: 1px dashed rgba(0, 185, 142, .3)">
		   <c:forEach var="room" items="${rooms}" varStatus="loop">
		        <div class="property-item-wrapper mb-4">
		            <div class="property-item rounded overflow-hidden" >
		                <div class="position-relative overflow-hidden">
		                    <a href=""><img class="img-fluid" src="${room.image}" alt=""></a>
		                    <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Special offer</div>
		                    <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">2 Adults 1 Children</div>
		                </div>
		           		 <div class="p-4 pb-0 d-flex justify-content-between align-items-center">
	                    <div>
	                        <h5 class="text-primary mb-3">${room.roomName}</h5>
	                        <a class="d-block h5 mb-2" href="">Price : ${room.price} Euro</a>
	                    </div>
		                  
		                  <!-- "View Details" Button -->

                    	    <div>
				                <label>
				                    <input type="radio" name="breakfastOption${loop.index}" value="true" onclick="selectDetail(${loop.index}, true)">
				                    Breakfast (+20) 
				                </label>
				                <label>
				                    <input type="radio" name="breakfastOption${loop.index}" value="false" onclick="selectDetail(${loop.index}, false)">
				                    No-Breakfast
				                </label>
				            </div>
                		</div>
		                <div class="d-flex border-top">
		                    <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>${room.amenities}</small>
		                    <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>Adults: ${room.adult}</small>
		                    <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>Children: ${room.children}</small>
		                </div>
		                 
		            </div>
		        </div>
		    </c:forEach>
		    </div>
		    </div>
		</div>
</div>
	
<!--END OF ROOM LIST  --> 
		

		
		<!-- Modal -->
		<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalCenterTitle">Confirmation</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		       		<div id="dialogPayment"></div>
				  	<div id="jsonValues">
				        <p><strong>Room Name:</strong> <span id="roomName"></span></p>
				        <p><strong>With Breakfast:</strong> <span id="withBreakfast"></span></p>
				        <p><strong>Amenities:</strong> <span id="amenities"></span></p>
				        <p><strong>Price:</strong> <span id="price"></span></p>
				        <p><strong>Amount:</strong> <span id="amount"></span></p>
				        <p><strong>Payment:</strong> <span id="bankingdes"></span></p>
				        <%
				          DateTimeController formatter = new DateTimeController();
						  String formattedDateTime = formatter.formatDateTime();
						 %>
						 <div>
						    <strong>Formatted DateTime:</strong> <%= formattedDateTime %>
						</div>
				  </div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-primary">Pay Now</button>
		      </div>
		    </div>
		  </div>
		</div>	
    </div>
   </div>
   </div>	
   <!--END OF ROOM LIST  -->  	
		
		
		
		 
    <!-- JavaScript -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
	<!-- START SCRIPT BOOKING  -->
	<script>
	   function selectDetail(index , isBreakfast) {
		    var radioButtons = document.getElementsByName("breakfastOption" + index);
		    for (var i = 0; i < radioButtons.length; i++) {
		        if (radioButtons[i].value !== isBreakfast.toString()) {
		            radioButtons[i].checked = false;
		        }
		    }
		    var roomsData = [];

		    <c:forEach var="room" items="${rooms}">
		        var roomObj = {
		            price: ${room.price},
		            roomTypeID: "${room.roomTypeID}",
		            roomName: "${room.roomName}", // Assuming roomName is a string
		            amenities: "${room.amenities}", // Assuming amenities is a string
		            withBreakfast: false, // Initialize withBreakfast attribute
		            amount: ${room.price} // Initialize total
		        };
		        roomsData.push(roomObj);
		    </c:forEach>

	        var htmlContent = "";
	        var i = 0;
	        var countStay = ${countStay};
	        var stays = (countStay == 0) ? 1 : countStay;
	        var roomTypeID;
	        var jsonString;
	        for (var i = 0; i < roomsData.length; i++) {
	            if (i == index) {
	                var room = roomsData[i];
	                if (room) {
	                	if (isBreakfast) {
	                		room.withBreakfast = true;
	                		room.amount = room.price + (20 * stays)
		                } 
	                	 // Display room name and amenities
	                    htmlContent += "<h5>Room Name: " + room.roomName + "</h5>";
	                    htmlContent += "<p>Amenities: " + room.amenities + "</p>";
	                    
	                    var totalPrice;
	                    if (isBreakfast) {
	                        htmlContent += "<h5>Total Price with Breakfast: " + room.amount + " Euro</h5>";
	                    } else {
	                        htmlContent += "<h5>Total Price without Breakfast: " + room.amount + " Euro</h5>";
	                    }
	                   
	                } else {
	                    htmlContent += "<h5>No room selected or invalid index.</h5>";
	                }
	                jsonString = JSON.stringify(room);
	                break;
	            }
	        }

	        document.getElementById("roomDetails").innerHTML = htmlContent;
	       /*  submitPayment.style.display = 'none'; */
	        document.getElementById("submitPayment").innerHTML = jsonString; 

	        
       }
	   roomDetails2.style.display = 'none';
	   
       function expandContent() {
    	   btnBooknow.style.display = 'none';
    	   roomDetails2.style.display = 'block';
       }
	   
       function reduceContent() {
    	   btnBooknow.style.display = 'block';
    	   roomDetails2.style.display = 'none';
       }

       </script>
        <!-- END SCRIPT BOOKING  -->
       
       
       <!-- SCRIPT PAYMENT DIALOG -->
       <script> 
       function selectBank(index) {
    	   var jsonString = document.getElementById("submitPayment").innerHTML;
	    	
    	   var paymentObject = JSON.parse(jsonString);
    	   
    	   // Adding more keys Banking
	       switch(index) {
	       case 0:
	    	   paymentObject ["banking"] = "BANK001";
	    	   paymentObject ["bankingdes"] = "Debit Card";
	           break;
	       case 1:
	    	   paymentObject ["banking"] = "BANK002";
	    	   paymentObject ["bankingdes"] = "Credit Card";
	           break;
	       case 2:
	    	   paymentObject ["banking"] = "BANK003";
	    	   paymentObject ["bankingdes"] = "Pay at Hotel";
	           break;
	       default:
	           break;
	       	}
    	   
	       var updatedJsonString = JSON.stringify(paymentObject);
	       console.log("Updated JSON String:", updatedJsonString); // Debug log
	       document.getElementById("submitPayment").innerHTML =  updatedJsonString;
	       document.getElementById("dialogPayment").innerHTML = updatedJsonString; 
	     

	       var updatedJsonString = JSON.stringify(paymentObject);
           console.log("Updated JSON String:", updatedJsonString); // Debug log

           // Display JSON values as text in HTML
           document.getElementById('price').textContent = paymentObject.price;
           document.getElementById('roomName').textContent = paymentObject.roomName;
           document.getElementById('amenities').textContent = paymentObject.amenities;
           document.getElementById('withBreakfast').textContent = paymentObject.withBreakfast?"Brekfast":"No Breakfast";
           document.getElementById('amount').textContent = paymentObject.amount;
           document.getElementById('bankingdes').textContent = paymentObject.bankingdes;

	        
	        
  	    }
    

   
    
     
	</script>
	<!--END SCRIPT PAYMENT DIALOG -->
	
	
	
    
</body>
</html>
