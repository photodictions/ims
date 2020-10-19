<?php
    $links = App\SmCustomLink::find(1);

    $social_icons = App\SmSocialMediaIcon::where('status', 1)->get();

    $setting = App\SmGeneralSettings::find(1);
    if (isset($setting->copyright_text)) {
        $copyright_text = $setting->copyright_text;
    } else {
        $copyright_text = 'Copyright © 2019 All rights reserved | This template is made with by Codethemes';
    }
    if (isset($setting->logo)) {
        $logo = $setting->logo;
    } else {
        $logo = 'public/uploads/settings/logo.png';
    }
    if (isset($setting->site_title) && !empty($setting->site_title)) {
        $site_title = $setting->site_title;
    } else {
        $site_title = 'gehlotclasses Edu ERP';
    }

    if (isset($setting->favicon)) {
        $favicon = $setting->favicon;
    } else {
        $favicon = 'public/backEnd/img/favicon.png';
    }


    $permisions = App\SmFrontendPersmission::where([['parent_id', 1], ['is_published', 1]])->get();
    $per = [];
    foreach ($permisions as $permision) {
        $per[$permision->name] = 1;
    }

    $ttl_rtl = $setting->ttl_rtl;
    $active_style = App\SmStyle::where('is_active', 1)->first();
?>

        <!DOCTYPE html>
<html lang="<?php echo e(app()->getLocale()); ?>" <?php if(isset ($ttl_rtl ) && $ttl_rtl ==1): ?> dir="rtl" class="rtl" <?php endif; ?> >

<head>
    <meta charset="utf-8"/>
    <meta name="viewport"
          content="gehlotclasses is 100+ unique feature enable school management software system. It can manage all type of school, academy and any educational institution"/>
    <link rel="icon" href="<?php echo e(asset($favicon)); ?>" type="image/png"/>
    <title><?php echo e(isset($page_title)? $page_title:$site_title); ?></title>
    <meta name="_token" content="<?php echo csrf_token(); ?>"/>
    <!-- Bootstrap CSS -->
    <?php if(isset ($ttl_rtl ) && $ttl_rtl ==1): ?>
        <link rel="stylesheet" href="<?php echo e(asset('public/backEnd/')); ?>/css/rtl/bootstrap.min.css"/>
    <?php else: ?>
        <link rel="stylesheet" href="<?php echo e(asset('public/backEnd/')); ?>/vendors/css/bootstrap.css"/>
    <?php endif; ?>


    <link rel="stylesheet" href="<?php echo e(asset('public/backEnd/')); ?>/vendors/css/jquery-ui.css"/>


    <link rel="stylesheet" href="<?php echo e(asset('public/backEnd/')); ?>/vendors/css/bootstrap-datepicker.min.css"/>
    <link rel="stylesheet" href="<?php echo e(asset('public/backEnd/')); ?>/vendors/css/bootstrap-datetimepicker.min.css"/>
    <link rel="stylesheet" href="<?php echo e(asset('public/backEnd/')); ?>/vendors/css/themify-icons.css"/>
    <link rel="stylesheet" href="<?php echo e(asset('public/backEnd/')); ?>/vendors/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="<?php echo e(asset('public/backEnd/')); ?>/vendors/css/nice-select.css"/>
    <link rel="stylesheet" href="<?php echo e(asset('public/backEnd/')); ?>/vendors/css/magnific-popup.css"/>
    <link rel="stylesheet" href="<?php echo e(asset('public/backEnd/')); ?>/vendors/css/fastselect.min.css"/>
    <link rel="stylesheet" href="<?php echo e(asset('public/backEnd/')); ?>/vendors/css/owl.carousel.min.css"/>
    <!-- main css -->


    <?php if(isset ($ttl_rtl ) && $ttl_rtl ==1): ?>
        <link rel="stylesheet" href="<?php echo e(asset('public/backEnd/')); ?>/css/rtl/style.css"/>
    <?php else: ?>
        <link rel="stylesheet" href="<?php echo e(asset('public/backEnd/')); ?>/css/<?php echo e(@$active_style->path_main_style); ?>"/>
    <?php endif; ?>

    
    <link rel="stylesheet" href="<?php echo e(asset('public/backEnd/')); ?>/vendors/css/fullcalendar.min.css">
    <link rel="stylesheet" href="<?php echo e(asset('public/backEnd/')); ?>/vendors/css/fullcalendar.print.css">


    <link rel="stylesheet" href="<?php echo e(asset('public/')); ?>/frontend/css/infix.css"/>
    <?php echo $__env->yieldPushContent('css'); ?>
</head>

<body class="client light">

<!--================ Start Header Menu Area =================-->
<header class="header-area">
<div class="container">
    <div class="main_menu">
        <nav class="navbar navbar-expand-lg navbar-light px-md-4 px-0">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <a class="navbar-brand" href="<?php echo e(url('/')); ?>/home">
                    <!--<img class="w-75" src="<?php echo e(asset($logo)); ?>" alt="gehlotclasses Logo" style="max-width: 150px;">-->
                    <img  src="https://ims.gehlotclasses.com/public/frontend/images/logo-beyond-learning-inverted.png" alt="gehlotclasses Logo" style="max-width: 200px;">
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu"></span>
                </button>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                    <ul class="nav navbar-nav menu_nav ml-auto">
                        <!--<li class="nav-item  <?php echo e(Request::path() == '/' ||  Request::path() == 'home'? 'active':''); ?> "><a
                                    class="nav-link" href="<?php echo e(url('/')); ?>/home">Home</a></li>-->
                        <li class="nav-item active <?php echo e(Request::path() == 'about'? 'active':''); ?>">
                            <a class="nav-link" href="<?php echo e(url('/')); ?>/about">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="javascript:void(0)">Result</a>
                        </li>
						
						
                        <li class="nav-item">
                            <a class="nav-link" href="javascript:void(0)">Scholarship</a>
                        </li>
                        <li class="nav-item <?php echo e(Request::path() == 'course'? 'active':''); ?>">
						<a class="nav-link" href="<?php echo e(url('/')); ?>/course">Course</a>
                        </li>
                        <!--<li class="nav-item <?php echo e(Request::path() == 'news-page'? 'active':''); ?>">
						<a class="nav-link" href="<?php echo e(url('/')); ?>/news-page">News</a>
                        </li>-->
                        <li class="nav-item">
                            <a class="nav-link" href="javascript:void(0)">Gallery</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<?php echo e(url('/')); ?>/blog">Blog</a>
                        </li>
                        <li class="nav-item <?php echo e(Request::path() == 'contact'? 'active':''); ?>">
                            <a class="nav-link" href="<?php echo e(url('/')); ?>/contact">Contact</a>
                        </li>
                        
                        <!--<li class="nav-item">-->
                        <!--    <a class="nav-link" href="<?php echo e(url('/parentregistration/registration')); ?>">Student Registration</a>-->
                        <!--</li>-->
                        <!--<?php if(App\SmGeneralSettings::isModule('ParentRegistration')== TRUE): ?>
                            <li class="nav-item"><a class="nav-link"
                                href="<?php echo e(url('/parentregistration/registration')); ?>">Student Registration</a>
                        </li>
                        <?php endif; ?>-->
                        
                    </ul>
                    <!--<ul class="nav navbar-nav navbar-right">
                        <ul class="nav navbar-nav mr-auto search-bar">
                            <li class="">
                               
                            </li>
                        </ul>
                    </ul>-->
                </div>
            </div>
        </nav>
    </div>
	</div>
</header>
<!--================ End Header Menu Area =================-->
<?php echo $__env->yieldContent('main_content'); ?>

<!--================Footer Area =================-->
<footer class="footer_area bg-dark px-md-4 px-0 pt-5">
    <div class="container">
        <div class="row footer_inner">
            <!--<?php if(isset($per["Custom Links"])): ?>
                <?php
                    $url[1]=[1,2,3,4];
                    $url[2]=[5,6,7,8];
                    $url[3]=[9,10,11,12];
                    $url[4]=[13,14,15,16];
                    for($i=1; $i<=4; $i++){
                     $title ='title'.$i ;
                ?>
                <div class="col-lg-3 col-sm-6">
                    <aside class="f_widget ab_widget">
                        <div class="f_title">
                            <h4><?php echo e($links!=""?$links->$title:''); ?></h4>
                        </div>
                        <ul>
                            <?php
                                foreach($url[$i] as $j){
                                    $link_label ='link_label'.$j ;
                                    $link_href ='link_href'.$j ;
                            ?>
                            <li>
                                <a href="<?php echo e($links !="" ? $links->$link_href:''); ?>"
                                   style="color: #828bb2"> <?php echo e($links !="" ? $links->$link_label:''); ?> </a>
                            </li>
                            <?php } ?>
                        </ul>
                    </aside>
                </div>
                <?php } ?>
            <?php endif; ?>-->
            <div class="col-lg-4 col-sm-6 col-12">
                <div class="footer-content">
                   <div class="footer-logo mb-3">
                       <img src="https://ims.gehlotclasses.com/public/frontend/images/logo-beyond-learning.png">
                   </div>
                    <p class="mb-2"><i class="fa fa-phone" aria-hidden="true"></i> <a href="tel:(+91) 98294 19970">(+91) 98294 19970</a></p>
                    <p class="mb-2"><i class="fa fa-envelope" aria-hidden="true"></i> <a href="mailto:info@gehlotclasses.com">info@gehlotclasses.com</a></p>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 col-12">
                <div class="footer-content">
                    <h2 class="text-white">USEFUL LINKS</h2>
                    <ul class="listunstyled">
                        <li><a href="javascript:void(0)">About</a></li>
                        <li><a href="javascript:void(0)">Blog</a></li>
                        <li><a href="javascript:void(0)">Contact</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 col-12">
                <div class="footer-content">
                    <h2 class="text-white">QUICK LINKS</h2>
                    <ul class="listunstyled">
                        <li><a href="javascript:void(0)">Gallery</a></li>
                        <li><a href="javascript:void(0)">Payment Method</a></li>
                        <li><a href="javascript:void(0)">Admission Form</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-2 col-sm-6 col-12">
                <div class="footer-content">
                    <h2 class="text-white">Courses</h2>
                    <ul class="listunstyled">
                        <li><a href="javascript:void(0)">Pre Foundation Course</a></li>
                        <li><a href="javascript:void(0)">Foundation Course</a></li>
                        <li><a href="javascript:void(0)">Target Courses</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row single-footer-widget">
            <div class="col-lg-8 col-md-9">
                <div class="copy_right_text">
                    <p><?php echo $copyright_text; ?> </p>
                </div>
            </div>

            <?php if(isset($per["Social Icons"])): ?>
                <div class="col-lg-4 col-md-3">
                    <div class="social_widget">

                        <?php if($social_icons->count() != 0): ?>
                        <?php $__currentLoopData = $social_icons; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $social_icon): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <a href="<?php echo e(@$social_icon->url); ?>"><i class="<?php echo e($social_icon->icon); ?>"></i></a>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php else: ?>
                        <a href="<?php echo e(@$links->facebook_url); ?>"><i class="fa fa-facebook"></i></a>
                        <a href="<?php echo e(@$links->twitter_url); ?>"><i class="fa fa-twitter"></i></a>
                        <a href="<?php echo e(@$links->dribble_url); ?>"><i class="fa fa-dribbble"></i></a>
                        <a href="<?php echo e(@$links->linkedin_url); ?>"><i class="fa fa-linkedin"></i></a>
                        <?php endif; ?>

                        
                    </div>
                </div>
            <?php endif; ?>
        </div>
    </div>
</footer>
<!--================End Footer Area =================-->

<script src="<?php echo e(asset('public/backEnd/')); ?>/vendors/js/jquery-3.2.1.min.js">
</script>
<script src="<?php echo e(asset('public/backEnd/')); ?>/vendors/js/jquery-ui.js">
</script>
<script src="<?php echo e(asset('public/backEnd/')); ?>/vendors/js/popper.js">
</script>
<script src="<?php echo e(asset('public/backEnd/')); ?>/vendors/js/bootstrap.min.js">
</script>
<script src="<?php echo e(asset('public/backEnd/')); ?>/vendors/js/nice-select.min.js">
</script>
<script src="<?php echo e(asset('public/backEnd/')); ?>/vendors/js/jquery.magnific-popup.min.js">
</script>
<script src="<?php echo e(asset('public/backEnd/')); ?>/vendors/js/raphael-min.js">
</script>
<script src="<?php echo e(asset('public/backEnd/')); ?>/vendors/js/morris.min.js">
</script>
<script src="<?php echo e(asset('public/backEnd/')); ?>/vendors/js/owl.carousel.min.js"></script>
<script>
     $(document).ready(function() {
       

        var review = $("#active-testimonial");
        if (review.length) {
            review.owlCarousel({
                items: 2,
                loop: false,
                margin: 40,
                autoplay: true,
                smartSpeed: 500,
            });
        }
    });
</script>

<script src="<?php echo e(asset('public/backEnd/')); ?>/vendors/js/moment.min.js"></script>
<script src="<?php echo e(asset('public/backEnd/')); ?>/vendors/js/print/bootstrap-datetimepicker.min.js"></script>
<script src="<?php echo e(asset('public/backEnd/')); ?>/vendors/js/bootstrap-datepicker.min.js"></script>
<!-- <script src="<?php echo e(asset('public/backEnd/')); ?>/js/gmap3.min.js"></script> -->
<!-- <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCwzmSafhk_bBIdIy7MjwVIAVU1MgUmXY4"></script> -->

<script src="https://maps.googleapis.com/maps/api/js?libraries=places&key=AIzaSyDs3mrTgrYd6_hJS50x4Sha1lPtS2T-_JA"></script>
<script src="<?php echo e(asset('public/backEnd/')); ?>/js/main.js"></script>
<script src="<?php echo e(asset('public/backEnd/')); ?>/js/custom.js"></script>
<script src="<?php echo e(asset('public/backEnd/')); ?>/js/developer.js"></script>

<?php echo $__env->yieldContent('script'); ?>

<link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200&display=swap" rel="stylesheet">
<style type="text/css">
body.client{font-family:"Nunito", sans-serif; font-size:16px;}
body{font-family:"Nunito", sans-serif}
.client .header-area .navbar .nav .nav-item {margin-right:25px;}
.client .header-area .navbar .nav .nav-item .nav-link{ font-weight:normal;}
.main-title{ margin-bottom:0px; letter-spacing:0.5px; font-size:25px;}
.course-card h3{font-size:22px;}
.course-card h5{ font-size:14px; line-height:1; margin-bottom:0px;}
.result-card .result-number h2{background:rgba(35,39,43,0.6)}
.result-card .result-text h5{font-size:16px; color:#23272b !important; margin-bottom:0px;}
.result-card .result-number{width:88px;}
.result-card .result-text p a{color:#23272b;}
.news-list{  border: 1px solid #c8ccce;  border-radius: 25px; }
.client .news-item .news-text h4{ font-size:16px; font-weight:700;}
.client .news-item .news-text .date{ padding:0 10px 3px 0px; color:#2896d4; border:#195ec8; font-size:13px; font-weight:700; }
.client .title{ font-size:30px; font-weight:700; text-transform:capitalize;}
.client .news-item:not(:last-child){ padding-bottom:0px; margin-bottom:0px;}
.bro-btn{ font-size:13px;}
section.register-section h3{font-size:35px; text-align:right; text-shadow: 0px 0px 8px rgba(150, 150, 150, 1); color:#ffffff;}
section.register-section p{ font-size:17px; text-align:right;}
.register-section form.form-register{ padding:20px 25px 20px 25px;}
.client .events-item{ margin-bottom:0px;}
.back-v{background: #e2e2e2 url("https://ims.gehlotclasses.com/public/frontend/images/back1.png") no-repeat fixed center; }
.video-content h3{ font-size:43px;}
.video-content p{ font-size:25px;}
.class-back{background: #fcb514 url("https://ims.gehlotclasses.com/public/frontend/images/class1.png") no-repeat fixed center; }
.btn-primary{ background:#fcb514; border-color:#fcb514; color:#000; }
.client .single-testimonial .testimonial-text{ padding:10px 20px; text-align:center; text-transform:lowercase;}
.client .single-testimonial .testimonial-text p{ margin-bottom:0px;}
.client .single-testimonial .thumb{ margin-right:10px;}
.client .single-testimonial h4{ margin-bottom:0px; font-size:22px; font-weight:700; color:#000;}
.form-control{ border:1px solid #d6d6d6;}
.wt{ width:100%;}
.client .events-item .card .card-body{ padding:1.25rem 0rem 1.25rem 0rem; text-align:center;}
.client .events-item .card .card-title{ margin-bottom:0px; font-weight:bold;}
.col-12:nth-child(1) .adv-list, 
.col-12:nth-child(2) .adv-list, 
.col-12:nth-child(3) .adv-list, 
.col-12:nth-child(4) .adv-list{ border:1px solid #c8ccce;}

.client .events-item .card{-webkit-box-shadow: 0px 0px 5px 0px rgba(196,193,187,1);
-moz-box-shadow: 0px 0px 5px 0px rgba(196,193,187,1);
box-shadow: 0px 0px 5px 0px rgba(196,193,187,1);}

.client .single-testimonial{ -webkit-box-shadow: 0px 0px 5px 0px rgba(196,193,187,1);
-moz-box-shadow: 0px 0px 5px 0px rgba(196,193,187,1);
box-shadow: 0px 0px 5px 0px rgba(196,193,187,1);}
.client .testimonial-area .owl-nav{left:49.3%; bottom:-24px;}
.course-card{ -webkit-box-shadow: 0px 0px 5px 0px rgba(196,193,187,1);
-moz-box-shadow: 0px 0px 5px 0px rgba(196,193,187,1);
box-shadow: 0px 0px 5px 0px rgba(196,193,187,1);}
.adv-text{ text-align:center;}
.container-fluid{ padding:0px;}
.client .mapBox{ height:570px;}
.client .banner-inner .banner-content p{ font-size:21px; line-height:30px; margin-bottom:16px;}
.client .banner-area .banner-inner .banner-content h2{ color:#000;}
.client .news-item .news-img img{ width:100%; }
.client .news-item .news-img{width:100%; height:100%;}
.client .academic-item .academic-text{ margin-top:10px; margin-bottom:0px;}
.client .academics-area{margin-bottom:0px;}
.client .academic-item .academic-text h4{ margin-bottom:0px;}
.client .academic-item .academic-text h4 a{ font-weight:bold; color:#323232 !important;}
.client.light .fact-area .white-box.single-summery, .client.color .fact-area .white-box.single-summery{ border:1px solid #c8ccce;}
.title2{margin-bottom: 20px; letter-spacing: 0.5px; font-size: 25px; text-align: center; font-weight: 600; 
text-transform: uppercase; color: #323232;}
.client .info-area .info-content{ padding:20px;}
.client .info-area .info-content h2{ color:#323232 !important; margin-bottom:10px;}
.client .academic-item{ margin-bottom:0px;}
.news-text{ text-align:center;}
.news-text p{ margin-top:10px;}
.client.light .header-area .navbar .nav .nav-item .nav-link, .client.color .header-area .navbar .nav .nav-item .nav-link{ font-weight:700; font-size:13px;} 
.client .news-item .news-text{ padding:8px 0;}
.client .events-item .card .card-body .date{ font-size:13px;}

.adv-list{position:relative; overflow:hidden;}
.adv-list:after{ position:absolute; width:200px; height:200px; content: " "; left:0px; top:0px; background:url("https://ims.gehlotclasses.com/public/frontend/images/after.png")no-repeat;}
.adv-list:before{ position:absolute; width:78px; height:70px; content: " "; bottom:0px; right:0px; background:url("https://ims.gehlotclasses.com/public/frontend/images/before.png")no-repeat;}
.advantage-area{position:relative;}
.advantage-area:before{ position:absolute; width:358px; height:346px; content: " "; bottom:0px; right:0px; background:url("https://ims.gehlotclasses.com/public/frontend/images/education.png")no-repeat;}

</style>
</body>
</html>

<?php /**PATH /home/gehlotclasses/public_html/ims.gehlotclasses.com/resources/views/frontEnd/home/front_master.blade.php ENDPATH**/ ?>