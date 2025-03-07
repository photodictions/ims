@extends('frontEnd.home.front_master')
@push('css')
    <link rel="stylesheet" href="{{asset('public/')}}/frontend/css/new_style.css"/>
@endpush
@section('main_content')
    <!--================ Home Banner Area =================-->
    <section class="container-fluid">
        <div class="banner-area" style="background: linear-gradient(0deg, rgba(124, 50, 255, 0.6), rgba(199, 56, 216, 0.6)), url({{$coursePage->image != ""? $coursePage->image : '../img/client/common-banner1.jpg'}}) no-repeat center;">
            <div class="banner-inner">
                <div class="banner-content">
                    <h2>{{$coursePage->title}}</h2>
                    <p>{{$coursePage->description}}</p>
                    <a class="primary-btn fix-gr-bg semi-large" href="{{$coursePage->button_url}}">{{$coursePage->button_text}}</a>
                </div>
            </div>
        </div>
    </section>
    <!--================ End Home Banner Area =================-->

    <!--================ Course List Area =================-->
    <section class="academics-area section-gap-top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-12">
                            <h3 class="title2">Course List</h3>
                        </div>
                    </div>
                    <div class="row">
                        @foreach($course as $value)
                        <div class="col-lg-4 col-md-6">
                            <div class="academic-item">
                                <div class="academic-img">
                                    <img class="img-fluid" src="{{asset($value->image)}}" alt="">
                                </div>
                                <div class="academic-text text-center">
                                    <h4>
                                        <a href="{{url('course-Details/'.$value->id)}}">{{$value->title}}</a>
                                    </h4>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>

            <div class="row text-center mt-30">
                <div class="col-lg-12">
                    <a class="primary-btn fix-gr-bg semi-large" href="#">Load More Courses</a>
                </div>
            </div>
        </div>
    </section>
    <!--================ End Course List Area =================-->

    <!--================ News Area =================-->
    <section class="news-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-12">
                            <h3 class="title2 mt-20">Latest News</h3>
                        </div>
                    </div>
                    <div class="row">
                        @foreach($news as $value)
                        <div class="col-lg-3 col-md-6">
                            <div class="news-item">
                                <div class="news-img">
                                    <img src="{{asset($value->image)}}" alt="">
                                </div>
                                <div class="news-text">
                                    <p>                                                                            
                                        {{$value->publish_date != ""? App\SmGeneralSettings::DateConvater($value->publish_date):''}}
                                    </p>
                                    <h4>
                                        <a href="{{url('news-details/'.$value->id)}}">
                                            {{$value->news_title}}
                                        </a>
                                    </h4>
                                </div>
                            </div>
                        </div>
                        @endforeach

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End News Area =================-->
@endsection
