<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- index.html -->
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title th:text="${hotelName} + ' - Welcome'">Park Hotel - Welcome</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- jQuery and jQuery UI CSS -->
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

    <!-- Custom CSS -->
    <link rel="stylesheet" th:href="@{/css/styles.css}" />
   
</head>
<body>
    <header>
	        <nav class="navbar navbar-expand-lg">
	            <div class="container">
	                <a class="navbar-brand" href="#" th:text="${hotelName}">Park Hotel</a>
	                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	                    <span class="navbar-toggler-icon"></span>
	                </button>
	                <div class="collapse navbar-collapse" id="navbarNav">
	                    <ul class="navbar-nav ml-auto">
	                        <li class="nav-item">
	                            <a class="nav-link" href="#home">Home</a>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link" href="#rooms">Rooms</a>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link" href="#amenities">Amenities</a>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link" href="#contact">Contact</a>
	                        </li>
	                    </ul>
	                </div>
	            </div>
	        </nav>
	        
	        <jsp:include page="welcome.jsp" />
	         <div class="front-layout">
			         <h1 style="color: #ffffff; font-size: 3em;">Welcome to <span th:text="${hotelName}">Park Hotel</span></h1>
			        <h2 class="lead" style="color: #ffffff; ">A luxurious stay in the heart of the city.</h2>
     	    </div>
      
    </header>
  
 
   <%-- 	<section id="home" class="hero">
			        <div class="container text-center">
			            <h2>Welcome to <span th:text="${hotelName}">Park Hotel</span></h2>
			            <p class="lead">A luxurious stay in the heart of the city.</p>
			            <a href="#contact" class="btn btn-primary">Contact Us</a>
			        </div>
	</section> --%>
	

    
			

	<section id="checkinout" class="checkinout">
		   <div class="row justify-content-center">
            <div class="col-md-8 search-container">
                <h1 class="text-center">Find Your Perfect Stay</h1>
                <form id="bookingForm" action="HotelServlet" method="post" class="mt-4">
                    <div class="form-row">
                     <div class="form-group">
		                <label for="check-in">Check-in:</label>
		                <input type="date" id="checkin" name="checkin" required>
		            </div>
		            <div class="form-group">
		                <label for="check-out">Check-out:</label>
		                <input type="date" id="checkout" name="checkout" required>
		            </div>
		            <div class="form-group">
		                <label for="guests">Gäste:</label>
		                <input type="number" id="guests" name="guests" min="1" required>
		            </div>
		            <div class="form-group">
		                <label for="guests">Child:</label>
		                <input type="number" id="childs" name="childs" min="1" required>
		            </div>
		            <div class="form-group">
		                <label for="promocode">Promotion-Code:</label>
		                <input type="text" id="promocode" name="promocode">
		            </div>
		            <div class="form-group">
		                <button type="submit">Book now</button>
		            </div>
                        
                    </div>
                       
                  
                </form>
            </div>
        </div>
	</section>
	
	 <!-- jQuery, jQuery UI, and Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
    <script>
    $(function() {
        $("#checkin").datepicker({
            dateFormat: 'yy-mm-dd',
            minDate: 0,
            onSelect: function(dateText, inst) {
                var minDate = $('#checkin').datepicker('getDate');
                minDate.setDate(minDate.getDate() + 1);
                $("#checkout").datepicker("option", "minDate", minDate);
            }
        });
        $("#checkout").datepicker({
            dateFormat: 'yy-mm-dd',
            minDate: 1
        });
    });
    </script>


    <section id="rooms" class="rooms">
        <div class="container">
            <h2>Our Rooms</h2>
            <div class="row">
                <!-- Room cards using Bootstrap grid system -->
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <img class="card-img-top" src="room1.jpg" alt="Room 1">
                        <div class="card-body">
                            <h5 class="card-title">Deluxe Room</h5>
                            <p class="card-text">Luxurious and spacious rooms with modern amenities.</p>
                            <a href="#" class="btn btn-primary">Mehr erfahren</a>
                        </div>
                    </div>
                </div>
                <!-- Add more room cards as needed -->
                 <div class="col-md-4 mb-4">
                    <div class="card">
                        <img class="card-img-top" src="room1.jpg" alt="Room 1">
                        <div class="card-body">
                            <h5 class="card-title">Superior Room</h5>
                            <p class="card-text">Luxurious and spacious rooms with modern amenities.</p>
                            <a href="#" class="btn btn-primary">Mehr erfahren</a>
                        </div>
                    </div>
                </div>
                 <div class="col-md-4 mb-4">
                    <div class="card">
                        <img class="card-img-top" src="room1.jpg" alt="Room 1">
                        <div class="card-body">
                            <h5 class="card-title">Family Room</h5>
                            <p class="card-text">Luxurious and spacious rooms with modern amenities.</p>
                            <a href="#" class="btn btn-primary">Mehr erfahren</a>
                        </div>
                    </div>
                 </div>
            </div>
        </div>
    </section>

    <section id="amenities" class="amenities bg-light">
        <div class="container">
            <h2>Our Amenities</h2>
            <div class="row">
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Swimming Pool</h5>
                            <p class="card-text">Relax and unwind by our outdoor swimming pool.</p>
                            <a href="#" class="btn btn-primary">Mehr erfahren</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Spa & Wellness Center</h5>
                            <p class="card-text">Indulge in rejuvenating spa treatments.</p>
                            <a href="#" class="btn btn-primary">Mehr erfahren</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Restaurant & Bar</h5>
                            <p class="card-text">Experience gourmet dining at our restaurant and bar.</p>
                            <a href="#" class="btn btn-primary">Mehr erfahren</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

   <footer class="footer">
   	<div class="container">
        <div class="row">
            <div class="col-md-3 mb-4">
            
             	<div class="footer-section">
                    <div class="contact-info">
                        <h3>Kontaktiere uns</h3>
                        <p>For reservations or inquiries:</p>
                        <p>Phone: <span th:text="${phoneNumber}">+1-123-456-7890</span></p>
			            <p>Email: <span th:text="${email}">info@parkhotel.com</span></p>
			            <a href="#contact" class="btn btn-primary">Contact Us</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-4">
	             <div class="footer-section">
	                    <div class="useful-links">
	                        <h3>Wetterbericht</h3>                       
	                    </div>
	                </div>
             </div>
            <div class="col-md-3 mb-4">
               <div class="footer-section">
                    <div class="useful-links">
                        <h3>Nützliche Links</h3>
                        <ul class="footer-links">
                            <li><a href="#">Startseite</a></li>
                            <li><a href="#">Zimmer</a></li>
                            <li><a href="#">Über uns</a></li>
                            <li><a href="#">Kontakt</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-4">
                   <div class="footer-section">
                    <h3>Hotel Buchungsseite</h3>
                    <p>Eine elegante Unterkunft für Ihren nächsten Aufenthalt.</p>
                    <ul class="social-links">
                        <li><a href="#"><i class="fab fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                        <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
                    </ul>
                </div>
            </div>
     
        </div>
    </div>
    
  </footer>
<%--     <footer class="bg-dark text-white">
    
        <div class="container">
            <p>&copy; 2024 <span th:text="${hotelName}">Park Hotel</span>. All rights reserved.</p>
        </div>
    </footer> --%>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- Custom JavaScript -->
    <script src="/js/scripts.js"></script>
</body>
</html>