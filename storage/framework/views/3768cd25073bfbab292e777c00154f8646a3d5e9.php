<?php $__env->startSection('mainContent'); ?>
<section class="sms-breadcrumb mb-40 white-box">
    <div class="container-fluid">
        <div class="row justify-content-between">
            <h1><?php echo app('translator')->getFromJson('lang.evaluation_report'); ?></h1>
            <div class="bc-pages">
                <a href="<?php echo e(url('dashboard')); ?>"><?php echo app('translator')->getFromJson('lang.dashboard'); ?></a>
                <a href="#"><?php echo app('translator')->getFromJson('lang.home_work'); ?></a>
                <a href="#"><?php echo app('translator')->getFromJson('lang.evaluation_report'); ?></a>
            </div>
        </div>
    </div>
</section>
<section class="admin-visitor-area">
    <div class="container-fluid p-0">
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="main-title">
                    <h3 class="mb-30"><?php echo app('translator')->getFromJson('lang.select_criteria'); ?> </h3>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="white-box">
                    <?php echo e(Form::open(['class' => 'form-horizontal', 'files' => true, 'route' => 'search-evaluation', 'method' => 'POST', 'enctype' => 'multipart/form-data'])); ?>

                    <div class="row">
                       <input type="hidden" name="url" id="url" value="<?php echo e(URL::to('/')); ?>"> 
                       <div class="col-lg-4">
                        <div class="input-effect">
                            <select class="niceSelect w-100 bb form-control<?php echo e($errors->has('class_id') ? ' is-invalid' : ''); ?>" name="class_id" id="classSelectStudent">
                                <option data-display="<?php echo app('translator')->getFromJson('lang.select_class'); ?> *" value=""><?php echo app('translator')->getFromJson('lang.select'); ?></option>
                                <?php $__currentLoopData = $classes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <option value="<?php echo e($value->id); ?>"><?php echo e($value->class_name); ?></option>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </select>
                            <span class="focus-border"></span>
                            <?php if($errors->has('class_id')): ?>
                            <span class="invalid-feedback invalid-select" role="alert">
                                <strong><?php echo e($errors->first('class_id')); ?></strong>
                            </span>
                            <?php endif; ?>
                        </div>
                    </div>

                    <div class="col-lg-4">
                       <div class="input-effect" id="sectionStudentDiv">
                        <select class="niceSelect w-100 bb form-control<?php echo e($errors->has('section_id') ? ' is-invalid' : ''); ?>" name="section_id" id="sectionSelectStudent">
                         <option data-display="<?php echo app('translator')->getFromJson('lang.select_section'); ?> *" value=""><?php echo app('translator')->getFromJson('lang.select'); ?> *</option>
                     </select>
                     <span class="focus-border"></span>
                     <?php if($errors->has('section_id')): ?>
                     <span class="invalid-feedback invalid-select" role="alert">
                        <strong><?php echo e($errors->first('section_id')); ?></strong>
                    </span>
                    <?php endif; ?>
                </div>
            </div>

            <div class="col-lg-4">
               <div class="input-effect" id="subjectSelecttDiv">
                <select class="niceSelect w-100 bb form-control<?php echo e($errors->has('subject_id') ? ' is-invalid' : ''); ?>" name="subject_id" id="subjectSelect">
                 <option data-display="<?php echo app('translator')->getFromJson('lang.select_subjects'); ?> *" value=""><?php echo app('translator')->getFromJson('lang.subject'); ?> *</option>
             </select>
             <span class="focus-border"></span>
             <?php if($errors->has('subject_id')): ?>
             <span class="invalid-feedback invalid-select" role="alert">
                <strong><?php echo e($errors->first('subject_id')); ?></strong>
            </span>
            <?php endif; ?>
        </div>
    </div>

    <div class="col-lg-12 mt-20 text-right">
        <button type="submit" class="primary-btn small fix-gr-bg">
            <span class="ti-search pr-2"></span>
            <?php echo app('translator')->getFromJson('lang.search'); ?>
        </button>
    </div>
</div>
<?php echo e(Form::close()); ?>

</div>
</div>
</div>
<?php if(@$homeworkLists): ?>
    
<div class="row mt-40">
    <div class="col-lg-12">
        <div class="row">
            <div class="col-lg-4 no-gutters">
                <div class="main-title">
                    <h3 class="mb-0"><?php echo app('translator')->getFromJson('lang.evaluation_report'); ?></h3>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <table id="table_id" class="display school-table" cellspacing="0" width="100%">
                    <thead>
                        <tr>

                            <th><?php echo app('translator')->getFromJson('lang.subject'); ?></th>
                            <th><?php echo app('translator')->getFromJson('lang.home_work'); ?> <?php echo app('translator')->getFromJson('lang.date'); ?></th>
                            <th><?php echo app('translator')->getFromJson('lang.submission'); ?> <?php echo app('translator')->getFromJson('lang.date'); ?></th>
                            <th><?php echo app('translator')->getFromJson('lang.complete'); ?>/<?php echo app('translator')->getFromJson('lang.pending'); ?></th>
                            <th><?php echo app('translator')->getFromJson('lang.complete'); ?>(%)</th>
                            <th><?php echo app('translator')->getFromJson('lang.action'); ?></th>
                        </tr>
                    </thead>

                    <tbody>
                        <?php $__currentLoopData = $homeworkLists; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <tr>
                            <td><?php echo e($value->subjects!=""?$value->subjects->subject_name:""); ?></td>
                            <td  data-sort="<?php echo e(strtotime($value->homework_date)); ?>" >
                                <?php echo e($value->homework_date != ""? App\SmGeneralSettings::DateConvater($value->homework_date):''); ?> 
                            </td>
                            <td  data-sort="<?php echo e(strtotime($value->submission_date)); ?>" >
                                <?php echo e($value->submission_date != ""? App\SmGeneralSettings::DateConvater($value->submission_date):''); ?> 
                            </td>

                            <?php
                            $homeworkPercentage = App\SmHomework::getHomeworkPercentage($value->class_id, $value->section_id, $value->id);
                            ?>

                            <td><?php
                                if (isset($homeworkPercentage)) {
                                    $incomplete = $homeworkPercentage['totalStudents'] - $homeworkPercentage['totalHomeworkCompleted'];

                                    echo $homeworkPercentage['totalHomeworkCompleted'] . '/' . $incomplete;
                                }
                                ?></td>

                            <td><?php
                                if (isset($homeworkPercentage)) {

                                    $x = $homeworkPercentage['totalHomeworkCompleted'] * 100; 
                                    if(empty($homeworkPercentage['totalStudents']) || $homeworkPercentage['totalStudents'] < 1){
                                        $y=0;
                                    }else{
                                        $y = $x / $homeworkPercentage['totalStudents'];
                                    } 
                                    echo $y;
                                }
                                ?></td>
                           <td>
                            <div class="dropdown">
                                <button type="button" class="btn dropdown-toggle" data-toggle="dropdown">
                                    <?php echo app('translator')->getFromJson('lang.select'); ?>
                                </button>
                                <div class="dropdown-menu dropdown-menu-right">

                                 <?php if(in_array(285, App\GlobalVariable::GlobarModuleLinks()) || Auth::user()->role_id == 1  ): ?>
                                  <a class="dropdown-item modalLink" title="View Evaluation Report" data-modal-size="full-width-modal" href="<?php echo e(url('view-evaluation-report/'.$value->id)); ?>"><?php echo app('translator')->getFromJson('lang.view'); ?></a>
                                    <?php endif; ?>
                             </div>
                         </div>
                     </td>
                 </tr>
                 <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
             </tbody>
         </table>
     </div>
 </div>
</div>
</div>
<?php endif; ?>

</div>
</section>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backEnd.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/gehlotclasses/public_html/ims.gehlotclasses.com/resources/views/backEnd/reports/evaluation.blade.php ENDPATH**/ ?>