<?php $__env->startSection('mainContent'); ?>


    <section class="sms-breadcrumb mb-40 white-box">
        <div class="container-fluid">
            <div class="row justify-content-between">
                <h1><?php echo app('translator')->getFromJson('lang.update'); ?>  <?php echo app('translator')->getFromJson('lang.system'); ?> </h1>
                <div class="bc-pages">
                    <a href="<?php echo e(url('dashboard')); ?>"><?php echo app('translator')->getFromJson('lang.dashboard'); ?></a>
                    <a href="#"><?php echo app('translator')->getFromJson('lang.system_settings'); ?></a>
                    <a href="#"><?php echo app('translator')->getFromJson('lang.update'); ?>  <?php echo app('translator')->getFromJson('lang.system'); ?> </a>
                </div>
            </div>
        </div>
    </section>   

    <section class="admin-visitor-area up_admin_visitor empty_table_tab">
        <div class="container-fluid p-0">

        

            <div class="row">
                <div class="col-lg-3">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="main-title">
                                <h3 class="mb-30"><?php echo app('translator')->getFromJson('lang.upload_from_local_directory'); ?></h3>
                            </div>
                            <?php if(in_array(479, App\GlobalVariable::GlobarModuleLinks()) || Auth::user()->role_id == 1 ): ?>
                            <?php echo e(Form::open(['class' => 'form-horizontal', 'files' => true, 'url' => 'admin/update-system', 'method' => 'POST', 'enctype' => 'multipart/form-data'])); ?>

                            <?php endif; ?>   
                            <div class="white-box sm_mb_20 sm2_mb_20 md_mb_20 ">
                                    <div class="add-visitor">

                                        <div class="row no-gutters input-right-icon mb-20">
                                            <div class="col">
                                                <div class="input-effect">
                                                    <input class="primary-input form-control <?php echo e($errors->has('content_file') ? ' is-invalid' : ''); ?>" readonly="true" type="text"
                                                    placeholder="<?php echo e(isset($editData->file) && @$editData->file != ""? showPicName(@$editData->file):'Upload File'); ?> "  id="placeholderUploadContent" name="content_file">
                                                    <span class="focus-border"></span>
                                                    <?php if($errors->has('content_file')): ?>
                                                <span class="invalid-feedback" role="alert">
                                                    <strong><?php echo e($errors->first('content_file')); ?></strong>
                                                </span>
                                                    <?php endif; ?>
                                                </div>
                                            </div>
                                            <div class="col-auto">
                                                <button class="primary-btn-small-input" type="button">
                                                    <label class="primary-btn small fix-gr-bg" for="upload_content_file"><?php echo app('translator')->getFromJson('lang.browse'); ?></label>
                                                    <input type="file" class="d-none form-control" name="content_file" id="upload_content_file">
                                                </button>

                                            </div>
                                        </div>
                                        <?php 
                                            $tooltip = "";
                                            if(in_array(479, App\GlobalVariable::GlobarModuleLinks()) || Auth::user()->role_id == 1 ){
                                                    $tooltip = "";
                                                }else{
                                                    $tooltip = "You have no permission to add";
                                                }
                                        ?>
                                        <div class="row mt-40">
                                            <div class="col-lg-12 text-center"> 
                                                <button class="primary-btn fix-gr-bg"  data-toggle="tooltip" title="<?php echo e(@$tooltip); ?>">
                                                    <span class="ti-check"></span>
                                                    <?php if(isset($session)): ?>
                                                        <?php echo app('translator')->getFromJson('lang.update'); ?>
                                                    <?php else: ?>
                                                        <?php echo app('translator')->getFromJson('lang.save'); ?>
                                                    <?php endif; ?>
                                                    <?php echo app('translator')->getFromJson('lang.file'); ?>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <?php echo e(Form::close()); ?>

                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="main-title">
                                <h3 class="mb-30"><?php echo app('translator')->getFromJson('lang.update'); ?> <?php echo app('translator')->getFromJson('lang.details'); ?></h3>
                            </div>
                            <div class="white-box">
                                <h1> <?php echo app('translator')->getFromJson('lang.system'); ?> <?php echo app('translator')->getFromJson('lang.info'); ?> </h1>
                                <div class="add-visitor">
                                    <table style="width:100%; box-shadow: none;" class="display school-table school-table-style">
                                        <?php 
                                            @$data = DB::table('sm_general_settings')->first();
                                        ?>
                                        <tr>
                                            <td>Software Version</td>
                                            <td><?php echo e(@$data->software_version); ?></td>
                                        </tr>
                                        <tr>
                                            <td>Check update</td>
                                            <td><a href="https://codecanyon.net/user/codethemes/portfolio" target="_blank"> <i class="ti-new-window"> </i> Update </a> </td>
                                        </tr> 
                                        <tr>
                                            <td> PHP Version</td>
                                            <td><?php echo e(phpversion()); ?></td>
                                        </tr>
                                        <tr>
                                            <td> Curl enable</td>
                                            <td><?php
                                            if  (in_array  ('curl', get_loaded_extensions())) {
                                                echo 'enable';
                                            }
                                            else {
                                                echo 'disable';
                                            }
                                            ?></td>
                                        </tr>
                            
                                        
                                        <tr>
                                            <td> Purchase code</td>
                                            <td><?php echo e(__('Verified')); ?></td>
                                        </tr>
                            

                                        <tr>
                                            <td> Install Domain</td>
                                            <td><?php echo e(@$data->system_domain); ?></td>
                                        </tr>

                                        <tr>
                                            <td> System Activated Date</td>
                                            <td><?php echo e(@$data->system_activated_date); ?></td>
                                        </tr>

                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <script language="JavaScript">

        $('#selectAll').click(function () {
            $('input:checkbox').prop('checked', this.checked);

        });


    </script>
<?php $__env->stopSection(); ?>



<?php echo $__env->make('backEnd.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/gehlotclasses/public_html/ims.gehlotclasses.com/resources/views/backEnd/systemSettings/updateSettings.blade.php ENDPATH**/ ?>