<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Dayanandfoundation</title>
  <link rel="shortcut icon" type="image/png" href="images/home/LOGO.png">
    
    <link rel="shortcut icon" type="image/png" href="">

   
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
                                       <!--  <li><a href="blogdetails">BlogDetails</a></li> -->
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
                              <a href="www.google.com" id="search-icon"  ><i class="icofont icofont-search"  style="color:#000000"></i></a>
                          
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
   
    <!--navbar section end-->
    <!--search box start-->
     <div class="search-box">
        <div class="search-box-wrapper">
           <div class="search-close-btn" id="serach-close-btn">
               <i class="icofont icofont-close-line-circled"></i>
           </div>
            <form action="">
                <p class="serach-element">
                    <input type="text" name="search_text" id="search_text">
                    <span class="search-icon">
                        <i class="icofont icofont-search-alt-1"></i>
                    </span>
                </p>
            </form>
        </div>
    </div>
    
    

    <div class="overlay-bg"></div>
    
    
   
    <header class="header-section">
      
        <div class="header-carousel-active">
        <c:forEach var="banlist" items="${bannerlist}">
            <div class="header-carousel-wrapper header-carousel-bg" 
               style="background: url(images/bannerimages/${banlist.banner_image});">
                <div class="single-header-carousel">
                    <div class="container">
                        <div class="row">
                             <div class="col-md-8">
                                <h1>Empower children <strong>dreams</strong></h1>
                                <p>Every day we bring real hope to millions of children in the world's hardest places as a sign of God's unconditional love.</p>
                                <a href="about" class="boxed-btn">Read More<i class="icofont icofont-curved-double-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </c:forEach>
           
        </div>
    </header>
  
    <div class="event-counter">
        <div class="container">
            <div class="row">
                <div class="col-md-3 text-left">
                    <div class="event-details">
                        <h3><i class="icofont icofont-ui-calendar"></i> UPCOMING event</h3>
                        <span class="sp-line"></span>
                        <p>Educational Awareness</p>
                        <p>6 th may, 2018</p>
                    </div>
                </div>
                <div class="col-md-7 col-sm-9 text-center">
                    <div class="row">
                        <div class="col-md-12">
                            <span class="counter">00d 0h 00m 0s</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-2 col-sm-3 text-right">
                    <div class="event-counter-links">
                        <a href="#" class="boxed-btn">Join Now</a>
                        <p>or <a href="#">View All Events</a><i class="icofont icofont-bubble-right"></i> </p>
                    </div>
                </div>
            </div>
        </div>
    </div>


 

    <section class="latest-event">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2 text-center">
                    <div class="section-title">
                        <h2>Latest <span>Event</span></h2>
                        <span class="title-separetor">
	                        <img src="images/home/health-care.png" alt="separetor image">
	                    </span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-sm-6">
                    <div class="single-post-wrapper">
                        <div class="post-thumb event-post-bg-2" 
                           style="background-image: url(assets/img/blogimg4.jpg);">
                            <span class="post-date"><strong>11</strong> May</span>
                        </div>
                        <div class="post-inner">
                            <a href="#">
                                <h3>Importance of education</h3>
                            </a>
                            <div class="post-meta">
                                <p class="time"><i class="icofont icofont-wall-clock"></i> 9:11 AM</p>
                                <a href="#" class="location"><i class="icofont icofont-location-pin"></i> priya</a>
                                <a href="#" class="comments"><i class="icofont icofont-speech-comments"></i> 7</a>
                                <a href="#" class="user"><i class="icofont icofont-user"></i> Admin</a>
                            </div>
                            <div class="port-body">
                            <br/>
                                <p>Organized cultural competitions, indoor and outdoor sports and promoted educational seminars to promote extracurricular activities. He has also donated push carts for vegetable vendors to help their livelihood.</p>
                                <a href="#" class="boxed-btn">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="single-post-wrapper">
                        <div class="post-thumb event-post-bg-1" 
                           style="background-image: url(assets/img/img20.JPG);">
                            <span class="post-date"><strong>11</strong> May</span>
                        </div>
                        <div class="post-inner">
                            <a href="#">
                                <h3>Importance of education</h3>
                            </a>
                            <div class="post-meta">
                                <p class="time"><i class="icofont icofont-wall-clock"></i> 9:11 AM</p>
                                <a href="#" class="location"><i class="icofont icofont-location-pin"></i>priya</a>
                                <a href="#" class="comments"><i class="icofont icofont-speech-comments"></i> 7</a>
                                <a href="#" class="user"><i class="icofont icofont-user"></i> Admin</a>
                            </div>
                            <div class="port-body">
                            <br>
                                <p>Dayananda Reddy was moved by the ideas and ideals of the leaders like Swami Vivekananda and Dr B.R Ambedkar having said that this (DF) has made a remarkable contribution towards Education.

</p>
                                <a href="#" class="boxed-btn">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-12">
                    <div class="event-post-list">
                        <div class="single-event-list highlight">
                            <div class="list-post-content">
                                <a href="#">
                                    <h4>Importance of education</h4>
                                </a>
                                <p>Develop a passion for learning. If you do, you will never cease to grow </p>
                            </div>
                        </div>
                        <div class="single-event-list">
                            <div class="list-post-thumb">
                                <img src="images/100 X 100 (1).jpg" alt="list post thumb">
                            </div>
                            <div class="list-post-content">
                                <a href="#">
                                    <h4>changing society..</h4>
                                </a>
                                <p>His first focus was on education and employment issues of the youth, as he found huge disparity in the education system of rural and urban students. </p>
                            </div>
                        </div>
                        <div class="single-event-list">
                            <div class="list-post-thumb">
                                <img src="images/100 X 100 1.jpg"  alt="list post thumb">
                            </div>
                            <div class="list-post-content">
                                <h4><a href="#">changing society..</a></h4>
                               <p> He also noted the following statistics of employment and employability skills of Indian youth, so this leads to Dayananda foundation in 2010</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <section class="our-service">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="section-title">
                        <h2>Foundation <span> Services</span></h2>
                        <span class="title-separetor">
	                        <img src="images/health-care.png" alt="separetor image">
	                    </span>
                    </div>
                    <div class="single-service-item">
                        <div class="service-icon">
                            <img src="images/political events.png" alt="service icon image">
                        </div>
                        <div class="service-content">
                        <div class="row">
                            <a href="#">
                                  <h3>Political<span class="color">events&amp;</span></h3>
                                
                            </a>
                          <p> Mr. Dayananda Reddy, was elected as a Member of Legislative Council of Karnataka representing the local bodies of Bangalore Urban District which covers 28 assembly constituencies.</p>
                       
                        </div>
                       
                    </div>
                    <br>
                    <div class="single-service-item">
                        <div class="service-icon">
                            <img src="images/spritual events.png" alt="service icon image">
                        </div>
                        <div class="service-content">
                            <a href="#">
                                <h3>Spiritual <span class="color">event&amp;</h3>
                            </a>
                            <p> Whoever knows how to speak to them, whoever knows how to listen to them, can learn the truth. They do not preach learning and precepts, they preach, undeterred by particulars, the ancient law of life.</p>
                            
                        </div>
                    </div>
                    <div class="single-service-item">
                        <div class="service-icon">
                            <img src="images/with leaders.png" alt="service icon image">
                        </div>
                        <div class="service-content">
                            <a href="#">
                                <h3>with &nbsp;<span class="color">leader&amp;</h3></h3>
                            </a>
                         <p> Dayananda Reddy was moved by the ideas and ideals of the leaders like Swami Vivekananda and Dr B.R Ambedkar having said that this (DF) has made a remarkable contribution towards community development since its inception.</p>
                        </div>
                    </div>
                    <div class="single-service-item">
                        <div class="service-icon">
                            <img src="images/other events.png" alt="service icon image">
                        </div>
                        <div class="service-content">
                            <a href="#">
                                <h3>Other &nbsp;<span class="color">events&amp;</span> </h3>
                            </a>
                            <p> since he is been proactively engaged in numerous activities like
Free Education
Free medical Camps
Donation of wheel Chairs to Handicapped
planting trees etc.
</p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
          
        <div class="our-srvice-right-img">
            <img src="assets/img/744X840.jpg" alt=" our service background">
        </div>
        
        
    </section>
    
    <section class="count-sectoin count-section-bg">
        <div class="container">
            <div class="row text-center">
                <div class="col-md-3 col-sm-6">
                    <div class="single-counter-box">
                        <div class="counter-wrapper">
                            <div class="count-icon">
                                <i class="icofont icofont-love"></i>
                            </div>
                            <h4>Childrens adopted</h4>
                            <span class="count-separator"></span>
                            <span class="count-number"><strong>7500</strong></span>
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
                         
                                  <i class="icofont icofont-coins"></i>
                            </div>
                            <h4>Medical camp</h4>
                            <span class="count-separator"></span>
                            <span class="count-number">$ <strong>250</strong></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- count service end-->

    

    <section class="our-causes">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2 text-center">
                    <div class="section-title">
                        <h2>Social welfare<span>Contribution</span></h2>
                        <span class="title-separetor">
                                <img src="images/health-care.png" alt="separetor image">
                            </span>
                    </div>
                </div>
            </div>
            <div class="cause-wrapper">
                <div class="row">
                    <div class="single-causes-item">
                        <div class="row">
                            <div class="col-md-4 col-sm-4">
                                <div class="cause-thumb">
                                    <img src="images/800X6001.jpg" alt="case image">
                                    <div class="box-shadow-bottom"></div>
                                    <div class="prog-item">
                                   
                                    </div>
                                </div>
                              
                            </div>
                            <div class="col-md-8 col-sm-8">
                                <div class="cause-right">
                                    <div class="cause-right-top">
                                            <h4>Contribution  <span class="color"> to society</span></h4>
                                        <p>Be inspired! Take a look at the impact of our programmes (DF) has made a remarkable contribution towards community development since its inception. Mr.
Dayananda- Founder of DF and Chairman of Bharath Goldstar Group (BGG) developed interest in social
activities and community development at a very young age. Since then he is been proactively engaged in
numerous activities like</p>
                                    </div>
                                    <div class="cause-right-bottom">
                                        <a href="blogdetails" class="boxed-btn">ReadMore</a>
                                        <div class="cause-right-social-icon text-right">
                                            Share: <a href="#"><i class="icofont icofont-social-facebook"></i></a>
                                            <a href="#"><i class="icofont icofont-social-twitter"></i></a>
                                            <a href="#"><i class="icofont icofont-social-linkedin"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="single-causes-item">
                        <div class="row">
                            <div class="col-md-4 col-sm-4">
                                <div class="cause-thumb">
                                    <img src="images/800X6002.jpg" alt="case image">
                                    <div class="box-shadow-bottom"></div>
                                    <div class="prog-item">
                                       
                                    </div>
                                </div>
                                
                            </div>
                            <div class="col-md-8 col-sm-8">
                                <div class="cause-right">
                                    <div class="cause-right-top">
                                     <h4>Health<span class="color">The Primary Focus</span></h4>
                                    
                                        <p>Health being the primary focus, Dayananda Reddy has been instrumental in organizing numerous Complete Medical Health Camps, Sponsored many free Cleft-Lip surgery camps, conducted various Blood Donation Camps, conducted workshops on spreading awareness on health & hygiene for the underprivileged, poor and rural women in Karnataka State, provided monitory aid to under privileged people for their treatments in well reputed hospitals.</p>


                                    </div>
                                    <div class="cause-right-bottom">
                                        <a href="blogdetails" class="boxed-btn">ReadMore</a>
                                        <div class="cause-right-social-icon text-right">
                                            Share: <a href="#"><i class="icofont icofont-social-facebook"></i></a>
                                            <a href="#"><i class="icofont icofont-social-twitter"></i></a>
                                            <a href="#"><i class="icofont icofont-social-linkedin"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="single-causes-item">
                        <div class="row">
                            <div class="col-md-4 col-sm-4">
                                <div class="cause-thumb">
                                    <img src="images/800X6003.jpg" alt="case image">
                                    <div class="box-shadow-bottom"></div>
                                     <div class="prog-item">
                                      
                                    </div>
                                </div>
                                
                            </div>
                            <div class="col-md-8 col-sm-8">
                                <div class="cause-right">
                                    <div class="cause-right-top">
                                        <h4>DayanandaFoundation’s  <span class="color">Milestones</span></h4>
                                     <p> The foundation is adopting students from
the age group of 14 and supporting them
with 3 years of high school education and
further support for technical education for
the students who have passed out 10th
grade. The reason for adopting students of
only 14 year olds is because the government
is providing compulsory education only till
the age of 14, but the students those who
cannot afford to continue their education
after 14 years will usually drop out from
school and they also cannot get into
employment until they are 18 years old due
to the child labor prohibition act</p>
                                    </div>
                                    <div class="cause-right-bottom">
                                        <a href="blogdetails" class="boxed-btn">ReadMore</a>
                                        <div class="cause-right-social-icon text-right">
                                            Share: <a href="#"><i class="icofont icofont-social-facebook"></i></a>
                                            <a href="#"><i class="icofont icofont-social-twitter"></i></a>
                                            <a href="#"><i class="icofont icofont-social-linkedin"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
   
   
   
    <section class="latest-news-section">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2 text-center">
                    <div class="section-title">
                        <h2>Latest <span>news </span></h2>
                        <span class="title-separetor">
                             <img src="images/health-care.png" alt="separetor image">
                         </span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="latest-news-left-post">
                        <div class="post-thumb">
                            <img src="images/770x495.jpg" alt="lattest news">
                        </div>
                        <div class="latest-news-left-post-content">
                            <div class="left-post-wrapper">
                                <div class="lattest-lefp-content-top">
                                    <h4>Foundation</h4>
                                    <p>Dayananda Foundation is a CSR initiative of Bharath Goldstar Group.
                                    The foundation is adopting students from the age group of 14 and supporting them with 3 years of high school,
                                     education and further support for technical education for the students who have passed out 10th grade. </p>
                                     <p>The reason for adopting students of only 14 year old's is because the government is providing compulsory education only till the age of 14, 
                                     but the students those who cannot afford to continue their education after 14 years will usually drop out from school and they also cannot get into employment until they are 18 years old due to the child labor prohibition.</p>
<!--                                     <p>Every day we bring real hope to millions of children in the world's hardest places as a sign of God's unconditional love.</p> -->
                                    <div class="post-meta">
                                        <a href="#"><i class="icofont icofont-speech-comments"></i> 7</a>
                                        <span><i class="icofont icofont-ui-love"></i> 5</span>
                                    </div>
                                </div>
                                <a href="#" class="boxed-btn">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="right-latest-news-wrapper">
                        <div class="single-latest-news-list">
                            <div class="post-thumb">
                                <img src="assets/img/aa.jpg" alt="latest news image">
                            </div>
                            <div class="single-news-wrapper">
                                <div class="latest-news-list-content">
                                    <h4> about Foundation....</h4>
                                    <p>This situation may forcibly push these teenagers into the wrong path which in turn has negative impact on the society.</p>
                               
                                </div>
                                
                                <!-- <a href="#" class="boxed-btn">Read More</a> -->
                            </div>
                        </div>
                       
                        <div class="single-latest-news-list">
                            <div class="post-thumb">
                                <img src="assets/img/270x188.jpg" alt="latest news image">
                            </div>
                            <div class="single-news-wrapper">
                                <div class="latest-news-list-content">
                                    <h4>Read More...</h4>
                                    <p>To address the said critical issue, the foundation has adopted 7500 underprivileged students from rural areas of Bangalore.</p>
                                  
                                </div>
                              
                            </div>
                        </div>
                        <div class="single-latest-news-list">
                            <div class="post-thumb">
                                <img src="assets/img/270x1881.jpg" alt="latest news image">
                            </div>
                            <div class="single-news-wrapper">
                                <div class="latest-news-list-content">
                                    <h4>Read More....</h4>
                                    <p>To address the said critical issue, the foundation has adopted 7500 underprivileged students from rural areas of Bangalore.</p>
                                  
                                </div>
                                <a href="#" class="boxed-btn">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
   
    <div class="donator-section our-donator-bg">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2 text-center">
                    <div class="section-title">
            	            <h2>Dayananda<span>Quotes</span></h2>
                        <span class="title-separetor our-donator">
                             <img src="images/health-care.png" alt="separetor image">
                         </span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8 text-center col-md-offset-2">
                    <div class="donator-carousel">
                    <c:forEach var="qlist" items="${quoteslist}">
                        <div class="signle-donartor">
                            <div class="donator-picture">
                                <img src="images/newimg.png" alt="donator image">
                            </div>
                            <div class="donator-content">
                                <h4>dayananda reddy</h4>
                                <p><i class="icofont icofont-quote-left"></i>${qlist.quote_msg}<i class="icofont icofont-quote-right"></i></p>
                            </div>
                        </div>
                       </c:forEach>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>
   
    <section class="our-product-section">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2 text-center">
                    
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="product-carousel">
                      
        </div>
    </section>

    
   
    

    <div class="newsletter">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="news-letter-wrapper">
                        <div class="row">
                            <div class="col-md-5">
                                <span class="sub-title">Subscribe </span>
                                <h4>our foundation</h4>
                            </div>
                            <div class="col-md-7">
                                <form action="give action">
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
                            <a href="about" class="boxed-btn">Read More <i class="icofont icofont-curved-double-right"></i></a>
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
                <div class="col-md-6 col-sm-6">
                  <p> © 2018 Dayananda Reddy. All Rights Reserved  </p>
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
  
    <script src="assets/js/waypoints.min.js"></script>
  
    <script src="assets/js/jquery.lineProgressbar.js"></script> 

    <script src="assets/js/jquery.counterup.min.js"></script>
   
    <script src="assets/js/jquery.countdown.js"></script>
 
    <script src="assets/js/owl.carousel.min.js"></script>
  
    <script src="assets/js/imagesloaded.pkgd.js"></script>
   
    <script src="assets/js/bootstrap.min.js"></script>
   
    <script src="assets/js/jquery.slicknav.min.js"></script>

    <script src="assets/js/jquery-ui.min.js"></script>
   

    
    <script src="assets/js/wow.min.js"></script>
   
    <script src="assets/js/main.js"></script>
</body>


</html>
