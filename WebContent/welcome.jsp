<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- slider.jsp -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Page Slider</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>

        .carousel-item {
            height: 400px; /* Adjust height as needed */
            background: no-repeat center center scroll;
            background-size: cover;
        }
        .carousel-container {
            width: 100%; /* Adjust width as needed */
            margin: auto;
        }
        
         /* Front layout */
         .front-layout {
            padding: 25px;
            background-color: rgba(52, 152, 219, 0.8);
            color: white;
            text-align: center;
            border-radius: 0px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        
    	.front-layout2 {
		    position: absolute;
		    top: 50%; /* Vertikal zentrieren */
		    left: 0; /* An die linke Seite des Bildschirms positionieren */
		    transform: translate(-50%, -50%); /* Korrektur, um wirklich zu zentrieren */
		    z-index: 1000; /* Sicherstellen, dass es vor anderen Elementen liegt */
		    padding: 15px 25px;
		    background: rgba(0, 0, 0, 0.7); /* Halbdurchsichtiger Hintergrund */
		    color: #fff;
		    border-radius: 5px;
		    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
		    text-align: center;
		}
        

    </style>
</head>
<body>
    <div class="carousel-container">
        <div id="pageCarousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#pageCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#pageCarousel" data-slide-to="1"></li>
                <li data-target="#pageCarousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active" style="background-image: url(https://media-cdn.tripadvisor.com/media/photo-s/12/e2/82/62/harris-vertu-hotel-harmoni.jpg)">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>First Slide</h5>
                        <p>Some representative placeholder content for the first slide.</p>
                    </div>
                </div>
                <div class="carousel-item" style="background-image: url(https://media-cdn.tripadvisor.com/media/photo-s/12/e2/82/62/harris-vertu-hotel-harmoni.jpg)">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Second Slide</h5>
                        <p>Some representative placeholder content for the second slide.</p>
                    </div>
                </div>
                <div class="carousel-item" style="background-image: url(https://media-cdn.tripadvisor.com/media/photo-s/12/e2/82/62/harris-vertu-hotel-harmoni.jpg)">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Third Slide</h5>
                        <p>Some representative placeholder content for the third slide.</p>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#pageCarousel" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#pageCarousel" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>

    <!-- jQuery and Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>