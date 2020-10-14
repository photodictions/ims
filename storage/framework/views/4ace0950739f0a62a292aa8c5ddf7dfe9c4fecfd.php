

<?php $__env->startPush('css'); ?>
    <link rel="stylesheet" href="<?php echo e(asset('public/')); ?>/frontend/css/new_style.css"/>
<?php $__env->stopPush(); ?>

<?php $__env->startSection('main_content'); ?>
<?php
    $css= "background: linear-gradient(0deg, rgba(124, 50, 255, 0.6), rgba(199, 56, 216, 0.6)), url(".url($homePage->image).") no-repeat center;    background-size: cover;";
?>

 <style type="text/css">
 .client .news-item .news-text h4,
 .client .news-item .news-text h4 a{
     color:#323232;
 }
.course-icon {
    text-align: center;
    display:block;
    margin:0 auto 15px;
    height:auto;
    width:100%;
    background-color:transparent;
    border-radius:0;
}
.course-icon img{
        max-width: 100%;
    height: auto;
}
 </style>
   <!--================ Home Banner Area =================-->
  <!--<?php if(isset($per["Image Banner"])): ?>
 
    <section class="box-1420">
        <div class="home-banner-area" style="<?php echo e($css); ?>">
            <div class="banner-inner">
                <div class="banner-content">
                    <h5><?php echo e($homePage->title); ?></h5>
                    <h2><?php echo e($homePage->long_title); ?></h2>
                    <p><?php echo e($homePage->short_description); ?></p>
                    <a class="primary-btn fix-gr-bg semi-large" href="<?php echo e($homePage->link_url); ?>"><?php echo e($homePage->link_label); ?></a>
                </div>
            </div>
        </div>
    </section>
    <?php endif; ?>-->
    
    <section>
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                  <img src="https://ims.gehlotclasses.com//public/frontend/images/banner-july-1.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                  <img src="https://ims.gehlotclasses.com//public/frontend/images/July-banner-3.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                  <img src="https://ims.gehlotclasses.com/public/frontend/images/gehlot-classes-topper.jpg" class="d-block w-100" alt="...">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </section>


    <!--================ End Home Banner Area =================-->
    

	
 <!--================start course =================-->
    <section class="px-md-5 px-0 section-gap">
        <div class="container-fluid">
            <div class="py-3">
                <h3 class="main-title">CLASSROOM COURSES</h3>
            </div>
            <div class="row">
                <?php $__currentLoopData = $academics; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $academic): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 col-12">
                        <div class="course-card my-3 p-sm-4 px-0">
                            <div class="course-icon">
                                <img src="<?php echo e(asset($academic->image)); ?>">
                            </div>
                            <div class="course-text text-center">
                                <h3><?php echo e($academic->title); ?></h3>
    						    <h5> Class 11th, 12th & 12th Pass</h5>
                                <p><?php echo substr($academic->overview, 0, 50); ?></p>
                                <p class="mb-0"><a class="btn btn-dark" href="<?php echo e(url('course-Details/'.$academic->id)); ?>">Apply Now</a></p>
                            </div>
                        </div>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <!--<div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 col-12">-->
                <!--    <div class="course-card my-3 p-sm-4 px-0">-->
                <!--        <div class="course-icon">-->
                <!--            <img src="https://ims.gehlotclasses.com/public/frontend//images/icon-2.png">-->
                <!--        </div>-->
                <!--        <div class="course-text text-center">-->
                <!--            <h3>Foundation Course</h3>-->
                <!--            <h5>XI & XII with IIT-JEE / NEET PREPARATION</h5>-->
                <!--            <p>Focused for Cracking IIT-JEE & NEET Exam</p>-->
                <!--            <p class="mb-0"><a class="btn btn-dark" herf="javascript:void(0)">Apply Now</a></p>-->
                <!--        </div>-->
                <!--    </div>-->
                <!--</div>-->
                <!--<div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 col-12">-->
                <!--    <div class="course-card my-3 p-sm-4 px-0">-->
                <!--        <div class="course-icon">-->
                <!--            <img src="https://ims.gehlotclasses.com/public/frontend/images/icon-1.png">-->
                <!--        </div>-->
                <!--        <div class="course-text text-center">-->
                <!--            <h3>Nurture + Pre-Foundation</h3>-->
                <!--            <h5>Class 6th, 7th, 8th,  9th & 10th</h5>-->
                <!--            <p>Focused for Cracking IIT-JEE & NEET Exam</p>-->
                <!--            <p class="mb-0"><a class="btn btn-dark" herf="javascript:void(0)">Apply Now</a></p>-->
                <!--        </div>-->
                <!--    </div>-->
                <!--</div>-->
            </div>
        </div>
    </section>
    <!--================End Course =================-->
    <!--================start Result =================-->
        <section class="px-md-5 px-0 section-gap bg-primary result-section">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 col-12">
                    <div class="result-card d-flex align-items-center p-sm-4 ">
                        <div class="result-number">
                            <h2 class="text-white text-center">10</h2>
                        </div>
                        <div class="result-text">
                            <h5 class="text-white">SELECTION PER YEAR</h5>
                        <p><a href="">View Result <i class="fa fa-chevron-circle-right" aria-hidden="true"></i></a></p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 col-12">
                    <div class="result-card d-flex align-items-center p-sm-4">
                        <div class="result-number">
                            <h2 class="text-white text-center">14</h2>
                        </div>
                        <div class="result-text">
                            <h5 class="text-white">PROGRAMS & COURSES</h5>
                            <p><a href="">View Courses <i class="fa fa-chevron-circle-right" aria-hidden="true"></i></a></p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 col-12">
                    <div class="result-card d-flex align-items-center p-sm-4 ">
                        <div class="result-number">
                            <h2 class="text-white text-center">28</h2>
                        </div>
                        <div class="result-text">
                            <h5 class="text-white">YEARS OF EXPERIENCE</h5>
                            <p><a href="">Learn More <i class="fa fa-chevron-circle-right" aria-hidden="true"></i></a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--================End Result =================-->
    <!--================ News Area =================-->
    <section class="news-area section-gap px-md-5 px-0">
        <div class="container-fluid">
            <div class="row align-items-stretch">
                <?php if(isset($per["Event List"])): ?>
                <div class="col-xl-6 col-lg-6 col-md-6 col-12">
                    <div class="news-list pr-md-4 pr-0 py-3 mb-3">
                        <div class="border-bottom mb-4 pb-2">
                            <div class="row align-items-center">
                                <div class="col-xl-6 col-lg-6 col-md-7 col-12">
                                    <h3 class="title mb-0">Latest Events</h3>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-5 col-12 text-md-right text-left mb-30-lg">
                                    <a href="" class="primary-btn small fix-gr-bg">Browse All</a>
                                </div>
                            </div>
                        </div>
   
                    
                        <?php $__currentLoopData = $events; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $event): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="news-item">
                                    <!--<img class="card-img-top" class="img-fluid" src="<?php echo e(asset($event->uplad_image_file)); ?>" alt="">-->
                                    <div class="news-text">
                                        <!--<p class="card-text">
                                            <?php echo e($event->event_location); ?>

                                        </p>-->
                                        <p class="date"><i class="fa fa-calendar" aria-hidden="true"></i> <?php echo e($event->from_date != ""? App\SmGeneralSettings::DateConvater($event->from_date):''); ?> </p>
                                        <h4>
                                            <?php echo e($event->event_title); ?>

                                        </h4>
                                    </div>
                            </div>
                         <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                    </div>
                    </div>
                
    <?php endif; ?>
                <?php if(isset($per["Notice Board"])): ?>
                <div class="col-xl-6 col-lg-6 col-md-6 col-12 notice-board-area">
                    <div class="news-list pl-md-4 pl-0 py-3 mb-3">
                        <div class="border-bottom mb-4 pb-2">
                            <div class="row">
                                <div class="col-lg-12">
                                    <h3 class="title mb-0">Notice Board</h3>
                                </div>
                            </div>
                        </div>
                        <div class="notice-board">
                                <?php $__currentLoopData = $notice_board; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $notice): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="notice-item">
                                    <p class="date">
                                       
                                    <?php echo e($notice->publish_on != ""? App\SmGeneralSettings::DateConvater($notice->publish_on):''); ?>


                                    </p>
                                    <a href="#" data-toggle="modal" data-target="#NoticeDetails<?php echo e($notice->id); ?>" ><h4><?php echo e($notice->notice_title); ?></h4></a> 
                                 
                                    <div class="modal fade admin-query" id="NoticeDetails<?php echo e($notice->id); ?>" >
                                    <div class="modal-dialog modal-dialog-centered  modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title text-white "><?php echo e($notice->notice_title); ?></h4>
                                                
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            </div> 
                                            <div class="modal-body">
                                                <div class="text-left">
                                                    <p class="text-left"><?php echo $notice->notice_message; ?></p>
                                                </div> 
                                               
                                            </div> 
                                        </div>
                                    </div>
                                </div>
                                </div>
                                 
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                <div class="news-item">
                            <div class="news-text">
                                <p class="date pb-0"><i class="fa fa-calendar" aria-hidden="true"></i> 2nd Jun, 2019</p>
                                <h4>
                                    <a href="https://ims.gehlotclasses.com/news-details/11">
                                        Est sed dolorem perspiciatis ea dolor.
                                    </a>
                                </h4>
                            </div>
                        </div>
                            </div>
                      
                </div>   
                </div>
                <?php endif; ?>
                
                
    <!--================ End Academics Area =================-->

   
            </div>
        </div>
    </section>

 

    <!--================End News Area =================-->
   <!--================ start resgister form =================-->
   <section class="register-section section-gap px-md-5 px-0">
       <div class="container-fluid">
           <div class="row align-items-center">
               <div class="col-xl-7 col-lg-7 col-md-6 col-12">
                   <div class="">
                        <h1>NEW STUDENTS</h1>
                        <h3>JOIN EVERY WEEK</h3>
                        <h6>Seats are limited and filling very fast . Register now</h6>
                   </div>
               </div>
               <div class="col-xl-5 col-lg-5 col-md-6 col-12">
                   <form class="form-register">
                       <div class="form-group">
                            <input type="name" class="form-control" placeholder="Name">
                        </div>			
                        <div class="form-group">
                            <input type="phone" class="form-control" placeholder="Phone">
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" placeholder="Email">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="City">
                        </div>
                        <div class="text-center mt-3">												
                            <button class="btn btn-primary" type="button">Register Now</button>
                        </div>
                    </form>
               </div>
           </div>
       </div>
   </section>
<!--================ end resgister form =================-->
    <!--================ Events Area =================-->
     
    
    
    
   <?php if(isset($per["Latest News"])): ?>
    
    <section class="events-area section-gap bg-light px-md-5 px-0">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row mb-40">
                        <div class="col-lg-6 col-md-7">
                            <h3 class="title">Event List</h3>
                        </div>
                        <div class="col-lg-6 col-md-5 text-md-right text-left mb-30-lg">
                            <a href="<?php echo e(url('news-page')); ?>" class="primary-btn small fix-gr-bg">Browse All</a>
                        </div>
                    </div>
                    <div class="row">
                        <?php $__currentLoopData = $news; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="col-lg-4 col-md-6">
                            <div class="events-item">
                                <div class="card">
                                    <div class="event-img" style="background-image:url(https://ims.gehlotclasses.com/public/uploads/news/news1.jpg)"></div>
                                    <!--<img class="img-fluid card-img-top" src="<?php echo e(asset($value->image)); ?>" alt="">-->
                                
                                    <div class="card-body">
                                        <h5 class="card-title">
                                            <a href="<?php echo e(url('news-details/'.$value->id)); ?>">
                                                <?php echo e($event->event_title); ?>

                                            </a>
                                        </h5>
                                         <p class="date mb-0"><i class="fa fa-map-marker" aria-hidden="true"></i> <?php echo e($event->event_location); ?> &nbsp;|&nbsp; <i class="fa fa-calendar" aria-hidden="true"></i> <?php echo e($event->from_date != ""? App\SmGeneralSettings::DateConvater($event->from_date):''); ?>

    
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                       

                    </div>
                </div>
            </div>
        </div>
    </section>
    <?php endif; ?>
    <!--================start Video =================-->
    <section class="px-md-4 px-0 section-gap">
        <div class="container-fluid">
            <div class="row align-items-center">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                    <div class="video-content">
                        <h3>Motivational speech by achievers of</h3>
                        <h2>GEHLOT CLASSES </h2>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                    <iframe width="100%" height="315" src="https://www.youtube.com/embed/8Em8BWuP1SA?rel=0&start&end&controls=1&mute=0&modestbranding=1&autoplay=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </section>
    <!--================End Video =================-->
    
    
    
   <!--================ <?php if(isset($per["Academics"])): ?>
    Academics Area 
    <section class="academics-area px-md-4 px-0 section-gap-top">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-6 col-md-7">
                            <h3 class="title">Academics</h3>
                        </div>
                        <div class="col-lg-6 col-md-5 text-md-right text-left mb-30-lg">
                            <a href="<?php echo e(url('course')); ?>" class="primary-btn small fix-gr-bg">Browse All</a>
                        </div>
                    </div>
                    <div class="row">
                        <?php $__currentLoopData = $academics; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $academic): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="col-lg-4 col-md-6">
                            <div class="academic-item">
                                <div class="academic-img">
                                    <img class="img-fluid" src="<?php echo e(asset($academic->image)); ?>" alt="">
                                </div>
                                <div class="academic-text">
                                    <h4>
                                        <a href="<?php echo e(url('course-Details/'.$academic->id)); ?>"><?php echo e($academic->title); ?></a>
                                    </h4>
                                    <p>
                                        <?php echo substr($academic->overview, 0, 50); ?>

                                    </p>
                                    <div>
                                        <a href="<?php echo e(url('course-Details/'.$academic->id)); ?>" class="client-btn">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
<?php endif; ?>

  
  <?php if(isset($per["Testimonial"])): ?>

End Events Area =================-->

    <!--================ Start Testimonial Area =================-->
    <section class="testimonial-area relative section-gap bg-light">
        <div class="container">
            <div class="pb-3">
                <h3 class="main-title">TESTIMONIALS</h3>
            </div>
            <div class="owl-carousel" id="active-testimonial">
                     <?php $__currentLoopData = $testimonial; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        
                        <div class="single-testimonial">
                            <div class="testimonial-img">
                                <img src="https://ims.gehlotclasses.com/public/frontend/images/testimonial-image.jpg">
                            </div>
                            <div class="testimonial-text">
                                <p class="desc">
                                <?php echo e($value->description); ?>

                            </p>
                            <div class="d-flex">
                                <div class="thumb">
                                    <?php if(!empty($value->image)): ?>
                                    <img class="img-fluid rounded-circle testimonial-image" src="<?php echo e(asset($value->image)); ?>" alt="">
                                        <?php else: ?>
                                        <img class="img-fluid rounded-circle" src="<?php echo e(asset('public/uploads/sample.jpg')); ?>" alt="">
                                        <?php endif; ?>
                                </div>
                                <div class="meta text-left">
                                    <h4><?php echo e($value->name); ?></h4>
                                    <p><?php echo e($value->designation); ?>, <?php echo e($value->institution_name); ?></p>
                                </div>
                            </div>
                            </div>
                        </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
        </div>
    </section>

    <?php endif; ?> 

    <!--================ End Testimonial Area =================-->
    <!--================ Start Advantages Area =================-->
    <section class="advantage-area section-gap ">
        <div class="container">
            <div class="pb-3">
                <h3 class="main-title">Gehlot Advantages</h3>
            </div>
            <div class="row">
                <div class="col-xl-6 col-lg-6 col-md-6 col-12">
                    <div class="adv-list mb-4">
                        <div class="adv-icon"></div>
                        <div class="adv-text">
                            <h4 class=" font-weight-bold">Highly Qualified & Experienced Faculty</h4>
                            <p class="mb-0">With a large pool of dedicated, highly qualified and experienced faculty members, we maintain an optimal student-faculty ratio to attend every student with extra care. Our faculty walks an extra mile to ensure that you do not miss getting the highest benchmark in school, entrance and other competitive exams.</p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-12">
                    <div class="adv-list mb-4">
                        <div class="adv-icon"></div>
                        <div class="adv-text">
                            <h4 class="font-weight-bold">Excellent Track Record</h4>
                            <p class="mb-0">We have maintained an excellent track record for over three decades in delivering outstanding results in various medical and engineering entrance exams, and competitive and scholarship exams such as NTSE, KVPY, and Olympiads every year.</p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-12">
                    <div class="adv-list mb-4">
                        <div class="adv-icon"></div>
                        <div class="adv-text">
                            <h4 class="font-weight-bold">Comprehensive Study Material</h4>
                            <p class="mb-0">Our most comprehensive study material is curated by subject matter experts that empowers you with an in-depth understanding of all crucial topics from various subjects to help you stay ahead of the curve.</p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-12">
                    <div class="adv-list mb-4">
                        <div class="adv-icon"></div>
                        <div class="adv-text">
                            <h4 class="font-weight-bold">Integrated Teaching</h4>
                            <p class="mb-0">Our integrated teaching approach not only makes you shine in your school/ board exams but also ensures that you are listed as a top achiever in competitive exams like JEE, NEET, Olympiads, NTSE, KVPY etc.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================ End Advantages Area =================-->
    
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontEnd.home.front_master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/gehlotclasses/public_html/ims.gehlotclasses.com/resources/views/frontEnd/home/light_home.blade.php ENDPATH**/ ?>