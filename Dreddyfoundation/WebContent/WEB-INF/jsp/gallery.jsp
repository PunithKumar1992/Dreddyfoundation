
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<meta charset="ISO-8859-1">

<head>


    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Dayananda Doundation</title>

<link rel="shortcut icon" type="image/png" href="images/home/LOGO.png">

   
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
   
    <link href="assets/css/icofont.css" rel="stylesheet">
  
    <link href="assets/css/magnific-popup.css" rel="stylesheet">
  
    <link href="assets/css/jquery.lineProgressbar.css" rel="stylesheet">
 
    <link href="assets/css/owl.carousel.css" rel="stylesheet">
  
    <link href="assets/css/jquery-ui.min.css" rel="stylesheet">
  
    <link href="assets/css/slicknav.min.css" rel="stylesheet">
    
    <link href="assets/css/animate.css" rel="stylesheet">
   
    <link href="assets/css/style.css" rel="stylesheet">
 
    <link href="assets/css/responsive.css" rel="stylesheet">

</head>

<body>

   <div class="navbar-section">
        <div class="container">
            <div class="row">
                <div class="col-md-2 col-sm-2">
                    <a href="index" class="logo">
                        <img src="images/home/LOGO.png" alt="logo image">
                    </a>
                </div>
  <div class="col-md-10 col-sm-10">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-4 col-sm-10">
                            <div class="support-bar-wrapper ">
                              
                               <div class="support-content">
                                     <a href="" class="support-email"> <i class="icofont icofont-phone"></i>9943607961<span class="separetor">&#10072;</span></a>
                                    <a href="#" class="support-number"> <i class="icofont icofont-ui-dial-phone"></i> +123 456 789 000 <span class="separetor">&#10072;</span></a>

                                       
                                    </div> 
                                </div>
                            </div> 
                        </div> 
                    <div class="col-md-9 text-right">
                            <ul id="main-menu" class="main-menu">
                                <li><a href="index">Home</a></li>
                                <li><a href="about">ABOUT</a></li>
                                <li><a href="Blog">Blog<i class="icofont icofont-thin-down"></i></a>
                                    <ul class="sub-menu">
                                        <li><a href="Blog">Blog</a></li>
                                      <!--   <li><a href="blogdetails">BlogDetails</a></li> -->
                                    </ul>
                                </li>
                                <li><a href="education">Education<i class="icofont icofont-thin-down"></i></a>
                                    <ul class="sub-menu">
                                        
                                    </ul>
                                </li>
                                <li><a href="gallery">Gallery<i class="icofont icofont-thin-down"></i></a>
                                    <ul class="sub-menu">
                                        </ul>
                                </li>
                                <li><a href="volunteer">Volunteer<i class="icofont icofont-thin-down"></i></a>
                                    <ul class="sub-menu">
                                     
                                    </ul>
                                </li>
                                <li><a href="contact">CONTACT</a></li>
                            </ul>
                        </div>
                        <div class="col-md-3 col-sm-1 text-right">
                            <div class="tools">
                              <a href="https://www.google.com" id="search-icon" name="search_text" ><i class="icofont icofont-search"  style="color:#000000"></i></a>
                               <span class="search-icon">
                      
                    </span>
                            </div>
                         
                            <div class="support-social ">
                                        <a href="https://www.facebook.com/BTdayanandareddy/"><i class="icofont icofont-social-facebook"></i></a>
                                        <a href="https://twitter.com/btdayanandreddy"><i class="icofont icofont-social-twitter"></i></a>
                                        <a href="https://www.youtube.com/watch?v=bs8hdfWTud4&feature=youtu.be"><i class="icofont icofont-social-google-plus"></i></a>
                                        <a href="https://www.instagram.com/dayanandareddyofficial/"><i class="icofont icofont-social-instagram"></i></a>
                                        
                                    </div>
                               
                                    
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
   
    
    <div class="overlay-bg"></div>


<section class="breadcumb-section breadcumb-bg"
style="background-image:url(assets/img/background.jpg);">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1>Gallery</h1>
              <p><a href="index">Home</a>/
                Gallery</p>
            </div>
        </div>
    </div>
</section>

    <section class="gallery">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3 text-center">
                    <div class="section-title">
                        <h2>Foundation <span>Events</span></h2>
                        <span class="title-separetor">
	                        <img src="images/health-care.png" alt="separetor image">
	                    </span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 text-center">
                    <div class="festival-menu">
                        <ul>
                            <li data-filter="*" class="active">ALL </li>
                            <li data-filter=".ADHA">Blood Dnonatecamp </li>
                            <li data-filter=".FITR">medicalcamp</li>
                            <li data-filter=".BARAT">fund raising</li>
                            <li data-filter=".RAMADAN">planting trees</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="masonary-container">
            <div class="festival-masonary">
            <c:forEach var="bloodimglist" items="${galerylist}" varStatus="theCount">
            <c:if test="${bloodimglist.galleryimg_type=='blooddonation'}">
                <div class="grid-item ADHA">
                    <div class="masonry-image dayanand-bg-${theCount.count }">
                        <div class="masonry-hover">
                            <div class="masonry-hover-content">
                                <a class="image-popup" title="this is a title" href="images/galleryimages/${bloodimglist.gallery_image}" ><i class="icofont icofont-camera"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                </c:if>
                </c:forEach>
                
                <c:forEach var="medicalimglist" items="${galerylist}" varStatus="theCount" >
                 <c:if test="${medicalimglist.galleryimg_type=='medicalcamp'}">
                <div class="grid-item FITR">
                    <div class="masonry-image dayanand-bg-${theCount.count}">
                        <div class="masonry-hover">
                            <div class="masonry-hover-content">
                                <a class="image-popup" title="this is a title" href="images/galleryimages/${medicalimglist.gallery_image}"><i class="icofont icofont-camera"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                </c:if>
                </c:forEach>
                
                <c:forEach var="fundimglist" items="${galerylist}" varStatus="theCount">
                <c:if test="${fundimglist.galleryimg_type=='fundraise'}">
                <div class="grid-item BARAT">
                    <div class="masonry-image dayanand-bg-${theCount.count}">
                        <div class="masonry-hover">
                            <div class="masonry-hover-content">
                                <a class="image-popup" title="this is a title" href="images/galleryimages/${fundimglist.gallery_image}"><i class="icofont icofont-camera"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                </c:if>
                </c:forEach>
                
                <c:forEach var="plantinglist" items="${galerylist}" varStatus="theCount">
                <c:if test="${plantinglist.galleryimg_type=='planting'}">
                <div class="grid-item RAMADAN">
                    <div class="masonry-image dayanand-bg-${theCount.count}">
                        <div class="masonry-hover">
                            <div class="masonry-hover-content">
                                <a class="image-popup" title="this is a title"  href="images/galleryimages/${fundimglist.gallery_image}"><i class="icofont icofont-camera"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                </c:if>
                </c:forEach>
            </div>
            <!-- <div class="more-festival-images">
                <a href="#" class="boxed-btn">View More</a>
            </div> -->
        </div>
    </section>

    <!-- count service start-->
    <section class="count-sectoin count-section-bg">
        <div class="container">
            <div class="row text-center">
                <div class="col-md-3 col-sm-6">
                    <div class="single-counter-box">
                        <div class="counter-wrapper">
                            <div class="count-icon">
                                <i class="icofont icofont-ui-love"></i>
                            </div>
                            <h4>Causes</h4>
                            <span class="count-separator"></span>
                            <span class="count-number"><strong>2500</strong></span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-counter-box">
                        <div class="counter-wrapper">
                            <div class="count-icon">
                                <i class="icofont icofont-holding-hands"></i>
                            </div>
                            <h4>Saved Life</h4>
                            <span class="count-separator"></span>
                            <span class="count-number"><strong>2500</strong></span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-counter-box">
                        <div class="counter-wrapper">
                            <div class="count-icon">
                                <i class="icofont icofont-unity-hand"></i>
                            </div>
                            <h4>Expert Volunteers</h4>
                            <span class="count-separator"></span>
                            <span class="count-number"><strong>2500</strong></span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-counter-box">
                        <div class="counter-wrapper">
                            <div class="count-icon">
                                <i class="icofont icofont-medical"></i>
                            </div>
                            <h4>Medical camp</h4>
                            <span class="count-separator"></span>
                            <span class="count-number">$ <strong>25,000</strong></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- count service end-->
    
    <!-- our team start-->
    <div class="our-team-section">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2 text-center">
                    <div class="section-title">
                        <h2>My<span>Volunteers</span></h2>
                        <span class="title-separetor">
                             <img src="images/health-care.png" alt="separetor image">
                         </span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="single-team-member">
                        <div class="team-profile">
                            <img src="images/300x2991.jpg" alt="team member">
                            <div class="team-hover">
                                <div class="team-details-wrapper text-center">
                                    <div class="team-table-cell">
                                        <div class="team-inner-top">
                                            <div class="team-member-name">
                                                <h4>Shanthipriya</h4>
                                            </div>
                                            <p>Only I can change my life. No one can do it for me.</p>
                                        </div>
                                        <div class="team-social-btn">
                                            <a href="#"><i class="icofont icofont-social-facebook"></i></a>
                                            <a href="#"><i class="icofont icofont-social-twitter"></i></a>
                                            <a href="#"><i class="icofont icofont-social-google-plus"></i></a>
                                            <a href="#"><i class="icofont icofont-social-instagram"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-team-member">
                        <div class="team-profile">
                            <img src="images/300x2992.jpg" alt="team member">
                            <div class="team-hover">
                                <div class="team-details-wrapper text-center">
                                    <div class="team-table-cell">
                                        <div class="team-inner-top">
                                            <div class="team-member-name">
                                                <h4>saranya</h4>
                                            </div>
                                            <p>Only I can change my life. No one can do it for me.</p>
                                        </div>
                                        <div class="team-social-btn">
                                            <a href="#"><i class="icofont icofont-social-facebook"></i></a>
                                            <a href="#"><i class="icofont icofont-social-twitter"></i></a>
                                            <a href="#"><i class="icofont icofont-social-google-plus"></i></a>
                                            <a href="#"><i class="icofont icofont-social-instagram"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-team-member">
                        <div class="team-profile">
                            <img src="images/300x2993.jpg" alt="team member">
                            <div class="team-hover">
                                <div class="team-details-wrapper text-center">
                                    <div class="team-table-cell">
                                        <div class="team-inner-top">
                                            <div class="team-member-name">
                                                <h4>sowmiya</h4>
                                            </div>
                                            <p>Only I can change my life. No one can do it for me.</p>
                                        </div>
                                        <div class="team-social-btn">
                                            <a href="#"><i class="icofont icofont-social-facebook"></i></a>
                                            <a href="#"><i class="icofont icofont-social-twitter"></i></a>
                                            <a href="#"><i class="icofont icofont-social-google-plus"></i></a>
                                            <a href="#"><i class="icofont icofont-social-instagram"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-team-member">
                        <div class="team-profile">
                            <img src="images/300x2994.jpg" alt="team member">
                            <div class="team-hover">
                                <div class="team-details-wrapper text-center">
                                    <div class="team-table-cell">
                                        <div class="team-inner-top">
                                            <div class="team-member-name">
                                                <h4>suseela</h4>
                                            </div>
                                            <p>Only I can change my life. No one can do it for me.</p>
                                        </div>
                                        <div class="team-social-btn">
                                            <a href="#"><i class="icofont icofont-social-facebook"></i></a>
                                            <a href="#"><i class="icofont icofont-social-twitter"></i></a>
                                            <a href="#"><i class="icofont icofont-social-google-plus"></i></a>
                                            <a href="#"><i class="icofont icofont-social-instagram"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--our team end-->
    
    <div class="newsletter"><!--news letter section-->
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="news-letter-wrapper">
                            <div class="row">
                                <div class="col-md-5">
                                    <span class="sub-title">Subscribe</span>
                                    <h4>to our newsletter</h4>
                                </div>
                                <div class="col-md-7">
                                    <form action="">
                                        <div class="form-element">
                                            <input type="email" name="email" placeholder="Enter your email address....">
                                            <span class="has-icon"><input type="submit" value="submit"></span>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     <!--footer area start-->
  <footer class="footer-section">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="widget-one-wrapper">
                        <div class="footer-logo">
                            <img src="images/home/LOGO.png" alt="footer logo">
                        </div>
                        <div class="widget-one-body">
                            <p>With the new day comes new strength and new thoughts</p>
                            <a href="#" class="boxed-btn">Read More <i class="icofont icofont-curved-double-right"></i></a>
                            <div class="footer-social-links">
                                <a href="https://www.facebook.com/BTdayanandareddy/"><i class="icofont icofont-social-facebook"></i></a>
                                        <a href="https://twitter.com/btdayanandreddy"><i class="icofont icofont-social-twitter"></i></a>
                                        <a href="https://www.youtube.com/watch?v=bs8hdfWTud4&feature=youtu.be"><i class="icofont icofont-social-google-plus"></i></a>
                                        <a href="https://www.instagram.com/dayanandareddyofficial/"><i class="icofont icofont-social-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="widget-two-wrapper">
                        <div class="widget-title">
                            <h4>Contact us</h4>
                            <span class="title-separetor">
                                 <img src="images/health-care.png" alt="separetor image">
                             </span>
                        </div>
                        <div class="widget-two-body">
                            <p><i class="icofont icofont-phone"></i> + 123 456 789 000</p>
                            <p><a href="mailTo:example@gmail.com"><i class="icofont icofont-email"></i>foundation@gmail.com</a></p>
                            <p><a href="#"><i class="icofont icofont-web"></i> foundation.com</a></p>
                            <p><i class="icofont icofont-location-pin"></i>Rajajinagar,d -block,mkk road</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-7">
                    <div class="widget-three-wrapper">
                        <div class="widget-title">
                            <h4>Header Links</h4>
                            <span class="title-separetor">
                                 <img src="images/health-care.png" alt="separetor image">
                             </span>
                        </div>
                        <div class="widget-three-body">
                            <ul>
                                <li><a href="event-list"><i class="icofont icofont-hand-right"></i> Home</a></li>
                                <li><a href="single-cause"><i class="icofont icofont-hand-right"></i>about us</a></li>
                                <li><a href="donate"><i class="icofont icofont-hand-right"></i>education</a></li>
                                <li><a href="contact"><i class="icofont icofont-hand-right"></i>gallery</a></li>
                                <li><a href="sign-up"><i class="icofont icofont-hand-right"></i>volunteer</a></li>
                                <li><a href="#"><i class="icofont icofont-hand-right"></i>Contact</a></li>
                                
                            </ul>
                        </div>
                    </div>
                    
                    
                </div>
                    <div class="col-md-3 col-sm-5">
                    <div class="widget-four-wrapper">
                        <div class="widget-title">
                        <h4>Contact Form</h4>
                         <span class="title-separetor">
                                 <img src="images/health-care.png" alt="separetor image">
                             </span>
                            <div class="widget-four-bodyyy">
<form>
    
							<input type="text" name="name"  placeholder="Full Name">
							<br><br>
							<input type="text" name="email" placeholder="Email Address" >
							<br><br>
							<textarea name="message" placeholder="Your Message"></textarea>
							  <a href="#" class="boxed-btn">submit</a>
						</form> 
                    </div>   
                    </div>     
            </div>
        </div>
    </footer>
     <!--footer area end-->
     <!--copyright area start-->
   <div class="copyright-area">
        <div class="container">
            <div class="row">
              <p>  © 2018 Dayananda Reddy. All Rights Reserved</p>  
                </div>
                <div class="col-md-6 col-sm-6 ">
                    <div class="footer-menu">
                        <a href="http://www.appfonehub.com/">Designed by Appfone Hub Pvt Ltd.</a><span>,</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!--copyright area end-->
        
    <div class="scroll-to-top">
        <i class="icofont icofont-rounded-up"></i>
    </div>
    

    <script src="assets/js/jquery.js"></script>
   
    <script src="assets/js/isotope.pkgd.js"></script>
 
    <script src="assets/js/jquery.magnific-popup.js"></script>
    <!--way point script load-->
    <script src="assets/js/waypoints.min.js"></script>
  
    <script src="assets/js/jquery.lineProgressbar.js"></script>

    <script src="assets/js/jquery.counterup.min.js"></script>
   
    <script src="assets/js/jquery.countdown.js"></script>
 
    <script src="assets/js/owl.carousel.min.js"></script>
  
    <script src="assets/js/imagesloaded.pkgd.js"></script>
   
    <script src="assets/js/bootstrap.min.js"></script>
   
    <script src="assets/js/jquery.slicknav.min.js"></script>

    <script src="assets/js/jquery-ui.min.js"></script>
   
    <script src="assets/js/audio-player/audio.min.js"></script>
    
    <script src="assets/js/wow.min.js"></script>
   
    <script src="assets/js/main.js"></script>
</body>

</html>




</html>