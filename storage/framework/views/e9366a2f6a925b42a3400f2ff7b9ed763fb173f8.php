<script type="text/javascript" src="<?php echo e(asset('public/backEnd/js/main.js')); ?>"></script>
<div class="container-fluid">

    <div class="row">
        <div class="col-md-12">
            <h1><?php echo e(@$course->title); ?></h1>
            <img src="<?php echo e(asset($course->image)); ?>" class="mt-3 mr-3" style="float: left">
            <h3 class="mt-3"><?php echo app('translator')->getFromJson('lang.overview'); ?>: </h3>
            <p><?php echo e(@$course->overview); ?></p>
            <h3 class="mt-3"><?php echo app('translator')->getFromJson('lang.outline'); ?>: </h3>
            <p><?php echo e(@$course->outline); ?></p>
            <h3 class="mt-3"><?php echo app('translator')->getFromJson('lang.prerequisites'); ?>: </h3>
            <p><?php echo e(@$course->prerequisites); ?></p>
            <h3 class="mt-3"><?php echo app('translator')->getFromJson('lang.resources'); ?>: </h3>
            <p><?php echo e(@$course->resources); ?></p>
            <h3 class="mt-3"><?php echo app('translator')->getFromJson('lang.stats'); ?>: </h3>
            <p><?php echo e(@$course->stats); ?></p>
        </div>
    </div>

<?php /**PATH /home/gehlotclasses/public_html/ims.gehlotclasses.com/resources/views/backEnd/course/course_details.blade.php ENDPATH**/ ?>