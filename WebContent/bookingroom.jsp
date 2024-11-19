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

 

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
   

     <!-- Bootstrap CSS -->
	 <link rel="stylesheet" href="css/bootstrap.min.css">
	  
	 <!-- Font Awesome CSS -->
	 <link rel="stylesheet" href="css/font-awesome.min.css">
	  
	 <!-- Custom CSS (if any) -->
	 <link rel="stylesheet" href="css/style.css">

    
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
		        
		        
			.rounded-lg {
			  border-radius: 1rem;
			}
			
			.nav-pills .nav-link {
			  color: #555;
			}
			
			.nav-pills .nav-link.active {
			  color: #fff;
			}

    </style>
    
</head>
<body>

 <div class="container-xxl bg-white p-0">
  
   		<!-- Navbar Start -->
        <div class="container-fluid nav-bar bg-transparent">
            <nav class="navbar navbar-expand-lg bg-white navbar-light py-0 px-4">
                <a href="index.html" class="navbar-brand d-flex align-items-center text-center">
                       <img class="img-fluid" src="img/sunriseicon.webp" alt="Icon"  style="width: 70px;  height: 70px;">
                    <h1 class="m-0 text-primary">Sunrise Hotel</h1>
                </a>
                <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-auto">
                        <a href="index.jsp" class="nav-item nav-link active">Home</a>
                        <a href="about.jsp" class="nav-item nav-link">About</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Our Hotel</a>
                            <div class="dropdown-menu rounded-0 m-0">
                                <a href="property-list.jsp" class="dropdown-item">Room</a>
                                <a href="property-type.jsp" class="dropdown-item">Amenities</a>
                                <a href="property-agent.jsp" class="dropdown-item">Contact</a>
                            </div>
                        </div>
                        <a href="contact.jsp" class="nav-item nav-link">Contact</a>
                         <a href="about.jsp" class="nav-item nav-link">
						    <i class="fas fa-book"></i> My Booking
						 </a>
                    </div>
                   
                    <a href="" class="btn btn-primary px-3 d-none d-lg-flex">REQUEST QUOTATION</a> 
                    
                </div>
            </nav>
        </div>
        <!-- Navbar End -->


  

    <div class="row g-5 ">
   		<div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
		   <!-- <div class="col-sm-3"> -->
		    <!--START OF ROOM DETAIL  -->   
		      <div class="container-lg py-5">
		            <div class="container" id="paymentDetailContainer">
		                <div class="bg-light rounded p-3">
		                    <div class="bg-white rounded p-4" style="border: 1px dashed rgba(0, 185, 142, .3)">
		                        <div class="row g-5 align-items-center">
		                        	 <!-- <form action="PaymentServlet" method="post"> -->
		                               
		                                 <h3>Booking Details</h3>
		                             
		                                 <div class="p-4 pb-0">
		                                         <p><i class="text-primary me-2"></i>Check-in Date: ${checkInDate}</p>
		                                         <p><i class="text-primary me-2"></i>Check-out Date: ${checkOutDate}</p>
		                                         <p><i class="text-primary me-2"></i>Adults: ${adults}</p>
		                                         <p><i class="text-primary me-2"></i>Children: ${children}</p>
		                                         <p><i class="text-primary me-2"></i>Stay overnight : ${countStay}</p>  
		                                         <p><i class="text-primary me-2"></i>Promotion Code: ${promoCode}</p>
		                                 </div>
		                               
		                                  <div id="roomDetails"> </div> <!-- Container to display room details -->
		                                 
		                                <!-- START BUTTON PAYMENT  -->
										<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter" onclick="displayJson()">
											  Submit Payment
										</button>
										<!-- END BUTTON PAYMENT  -->
		                                 
		                           <!--   </form> -->
		   
		                           <!--START OF PAYMENT DETAIL -->      
		         					<div id="roomDetails2" style="display: none;"> 		
										
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


	 <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s" >
  <!--START OF ROOM LIST  -->  
		<!-- <div class="col-sm-6" > -->
		 <!--    <div class="p-5 bg-primary text-white text-center" style="margin-top: 5% !important;">
			  		<h1>Sunrise Hotel</h1>
			</div> -->
			<div class="main-container" style="margin-right: 10% !important; margin-top: 5% !important;">
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
	</div>

		
		<!-- Modal -->
		<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered" role="document">
		    <div class="modal-content">
		        <!--START DIALOG POP UP -->
				<div class="row">
				    <div class="col-lg-10 mx-auto" style="margin-top: 5% !important; ">
				      <!-- <div class="bg-white rounded-lg shadow-sm p-5"> -->
				        <!-- Credit card form tabs -->
				        <ul role="tablist" class="nav bg-light nav-pills rounded-pill nav-fill mb-3">
				          <li class="nav-item">
				            <a data-toggle="pill" href="#nav-tab-card" class="nav-link active rounded-pill">
				                                <i class="fa fa-credit-card"></i>
				                                Credit Card
				                            </a>
				          </li>
				          <li class="nav-item">
				            <a data-toggle="pill" href="#nav-tab-paypal" class="nav-link rounded-pill">
				                                <i class="fa fa-paypal"></i>
				                                Paypal
				                            </a>
				          </li>
				          <li class="nav-item">
				            <a data-toggle="pill" href="#nav-tab-bank" class="nav-link rounded-pill">
				                                <i class="fa fa-university"></i>
				                                 Bank Transfer
				                             </a>
				          </li>
				        </ul>
				        <!-- End -->
				
				
				        <!-- Credit card form content -->
				        <div class="tab-content">
				
				          <!-- credit card info-->
				          <div id="nav-tab-card" class="tab-pane fade show active">
				            <p class="alert alert-success">Some text success or error</p>
				            <form role="form">
				              <div class="form-group">
				                <label for="username">Full name (on the card)</label>
				                <input type="text" name="username" placeholder="Jason Doe" required class="form-control">
				              </div>
				              <div class="form-group">
				                <label for="cardNumber">Card number</label>
				                <div class="input-group">
				                  <input type="text" name="cardNumber" placeholder="Your card number" class="form-control" required>
				                  <div class="input-group-append">
				                    <span class="input-group-text text-muted">
				                                                <i class="fa fa-cc-visa mx-1"></i>
				                                                <i class="fa fa-cc-amex mx-1"></i>
				                                                <i class="fa fa-cc-mastercard mx-1"></i>
				                                            </span>
				                  </div>
				                </div>
				              </div>
				              <div class="row">
				                <div class="col-sm-8">
				                  <div class="form-group">
				                    <label><span class="hidden-xs">Expiration</span></label>
				                    <div class="input-group">
				                      <input type="number" placeholder="MM" name="" class="form-control" required>
				                      <input type="number" placeholder="YY" name="" class="form-control" required>
				                    </div>
				                  </div>
				                </div>
				                <div class="col-sm-4">
				                  <div class="form-group mb-4">
				                    <label data-toggle="tooltip" title="Three-digits code on the back of your card">CVV
				                                                <i class="fa fa-question-circle"></i>
				                                            </label>
				                    <input type="text" required class="form-control">
				                  </div>
				                </div>
				
				
				
				              </div>
				              <button type="button" class="subscribe btn btn-primary btn-block rounded-pill shadow-sm"> Confirm  </button>
				            </form>
				          </div>
				          <!-- End -->
				
				          <!-- Paypal info -->
				          <div id="nav-tab-paypal" class="tab-pane fade">
				            <p>Paypal is easiest way to pay online</p>
				            <p>
				              <button type="button" class="btn btn-primary rounded-pill"><i class="fa fa-paypal mr-2"></i> Log into my Paypal</button>
				            </p>
				            <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
				            </p>
				          </div>
				          <!-- End -->
				
				          <!-- bank transfer info -->
				          <div id="nav-tab-bank" class="tab-pane fade">
				            <h6>Bank account details</h6>
				            <dl>
				              <dt>Bank</dt>
				              <dd> THE WORLD BANK</dd>
				            </dl>
				            <dl>
				              <dt>Account number</dt>
				              <dd>7775877975</dd>
				            </dl>
				            <dl>
				              <dt>IBAN</dt>
				              <dd>CZ7775877975656</dd>
				            </dl>
				            <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
				            </p>
				          </div>
				          <!-- End -->
				        </div>
				        <!-- End -->
				
				     <!--   </div>  -->
				   </div>
				  </div>
				<!-- END DIALOG POP UP   -->
				
				<div class="modal-footer" style="margin-top: 5% !important;">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		      </div>	      
		    </div>
		  </div>
		</div>		
   <!--END OF ROOM LIST  -->  	
		  <!-- Footer Start -->
        <div class="container-fluid bg-dark text-white-50 footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Get In Touch</h5>
                        <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>123 Street, New York, USA</p>
                        <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+012 345 67890</p>
                        <p class="mb-2"><i class="fa fa-envelope me-3"></i>info@example.com</p>
                        <div class="d-flex pt-2">
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Quick Links</h5>
                        <a class="btn btn-link text-white-50" href="">About Us</a>
                        <a class="btn btn-link text-white-50" href="">Contact Us</a>
                        <a class="btn btn-link text-white-50" href="">Our Services</a>
                        <a class="btn btn-link text-white-50" href="">Privacy Policy</a>
                        <a class="btn btn-link text-white-50" href="">Terms & Condition</a>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Photo Gallery</h5>
                        <div class="row g-2 pt-2">
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="img/property-1.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="img/property-2.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="img/property-3.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="img/property-4.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="img/property-5.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="img/property-6.jpg" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Newsletter</h5>
                        <p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
                        <div class="position-relative mx-auto" style="max-width: 400px;">
                            <input class="form-control bg-transparent w-100 py-3 ps-4 pe-5" type="text" placeholder="Your email">
                            <button type="button" class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">SignUp</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="copyright">
                    <div class="row">
                        <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                            &copy; <a class="border-bottom" href="#">Your Site Name</a>, All Right Reserved. 
							
							<!--/*** This template is free as long as you keep the footer authorâs credit link/attribution link/backlink. If you'd like to use the template without the footer authorâs credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
							Designed By <a class="border-bottom" href="https://htmlcodex.com">HTML Codex</a>
                        </div>
                        <div class="col-md-6 text-center text-md-end">
                            <div class="footer-menu">
                                <a href="">Home</a>
                                <a href="">Cookies</a>
                                <a href="">Help</a>
                                <a href="">FQAs</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->
		
</div>
		

    <!-- JavaScript -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
	<!-- Bootstrap Bundle JS (includes Popper.js) -->
	<script src="js/bootstrap.bundle.min.js"></script>
	<!-- Custom JS (if any) -->
	<script src="js/script.js"></script>
	
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
	                    htmlContent += "<h5>"+ room.roomName +  "</h5>";
	                    htmlContent += "<p>" + room.amenities + "</p>";
	                    
	                    var totalPrice;
	                    if (isBreakfast) {
	                        htmlContent += "<p>Total Price with Breakfast: " + room.amount + " Euro</p>";
	                    } else {
	                        htmlContent += "<p>Total Price without Breakfast: " + room.amount + " Euro</p>";
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
    
       $(function() {
    	   $('[data-toggle="tooltip"]').tooltip()
    	 })
   
    
     
	</script>
	<!--END SCRIPT PAYMENT DIALOG -->
	
	
	
    
</body>
</html>
