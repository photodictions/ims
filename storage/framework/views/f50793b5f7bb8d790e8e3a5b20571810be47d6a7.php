<?php $__env->startSection('mainContent'); ?>
<section class="sms-breadcrumb mb-40 white-box">
    <div class="container-fluid">
        <div class="row justify-content-between">
            <h1><?php echo app('translator')->getFromJson('lang.leave_type'); ?></h1>
            <div class="bc-pages">
                <a href="<?php echo e(url('dashboard')); ?>"><?php echo app('translator')->getFromJson('lang.dashboard'); ?></a>
                <a href="#"><?php echo app('translator')->getFromJson('lang.human_resource'); ?></a>
                <a href="#"><?php echo app('translator')->getFromJson('lang.leave_type'); ?></a>
            </div>
        </div>
    </div>
</section>
<section class="admin-visitor-area up_st_admin_visitor">
    <div class="container-fluid p-0">
        <?php if(isset($leave_type)): ?>
        <?php if(in_array(204, App\GlobalVariable::GlobarModuleLinks()) || Auth::user()->role_id == 1 ): ?>
                
        <div class="row">
            <div class="offset-lg-10 col-lg-2 text-right col-md-12 mb-20">
                <a href="<?php echo e(url('leave-type')); ?>" class="primary-btn small fix-gr-bg">
                    <span class="ti-plus pr-2"></span>
                    <?php echo app('translator')->getFromJson('lang.add'); ?>
                </a>
            </div>
        </div>
        <?php endif; ?>
        <?php endif; ?>
        <div class="row">
            <div class="col-lg-3">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="main-title">
                            <h3 class="mb-30"><?php if(isset($leave_type)): ?>
                                    <?php echo app('translator')->getFromJson('lang.edit'); ?>
                                <?php else: ?>
                                    <?php echo app('translator')->getFromJson('lang.add'); ?>
                                <?php endif; ?> 
                                <?php echo app('translator')->getFromJson('lang.leave_type'); ?>
                            </h3>
                        </div>
                <?php if(isset($leave_type)): ?>
                <?php echo e(Form::open(['class' => 'form-horizontal', 'files' => true, 'url' => 'leave-type/'.$leave_type->id, 'method' => 'PUT', 'enctype' => 'multipart/form-data'])); ?>

                <?php else: ?>
                 <?php if(in_array(204, App\GlobalVariable::GlobarModuleLinks()) || Auth::user()->role_id == 1 ): ?>
                <?php echo e(Form::open(['class' => 'form-horizontal', 'files' => true, 'url' => 'leave-type',
                'method' => 'POST', 'enctype' => 'multipart/form-data'])); ?>

                <?php endif; ?>
                <?php endif; ?>
                <div class="white-box">
                    <div class="add-visitor">
                        <div class="row">
                            <div class="col-lg-12">
                                <?php if(session()->has('message-success')): ?>
                                <div class="alert alert-success">
                                    <?php echo e(session()->get('message-success')); ?>

                                </div>
                                <?php elseif(session()->has('message-danger')): ?>
                                <div class="alert alert-danger">
                                    <?php echo e(session()->get('message-danger')); ?>

                                </div>
                                <?php endif; ?>
                                <div class="input-effect">
                                    <input class="primary-input form-control<?php echo e($errors->has('type') ? ' is-invalid' : ''); ?>"
                                    type="text" name="type" autocomplete="off" value="<?php echo e(isset($leave_type)? $leave_type->type:Request::old('type')); ?>">
                                    <label><?php echo app('translator')->getFromJson('lang.type_name'); ?> <span>*</span> </label>
                                    <input type="hidden" name="id" value="<?php echo e(isset($leave_type)? $leave_type->id: ''); ?>">

                                    <span class="focus-border"></span>
                                    <?php if($errors->has('type')): ?>
                                    <span class="invalid-feedback" role="alert">
                                        <strong><?php echo e($errors->first('type')); ?></strong>
                                    </span>
                                    <?php endif; ?>
                                </div>
                                <div class="input-effect mt-25">
                                    <input class="primary-input form-control<?php echo e($errors->has('total_days') ? ' is-invalid' : ''); ?>"
                                    type="text" onkeypress="return isNumberKey(event)" name="total_days" autocomplete="off" value="<?php echo e(isset($leave_type)? $leave_type->total_days:Request::old('total_days')); ?>" min="0">
                                    <label><?php echo app('translator')->getFromJson('lang.total_days'); ?> <span>*</span> </label>
                                   <span class="focus-border"></span>
                                    <?php if($errors->has('total_days')): ?>
                                    <span class="invalid-feedback" role="alert">
                                        <strong><?php echo e($errors->first('total_days')); ?></strong>
                                    </span>
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                          <?php 
                              $tooltip = "";
                              if(in_array(204, App\GlobalVariable::GlobarModuleLinks()) || Auth::user()->role_id == 1 ){
                                    $tooltip = "";
                                }else{
                                    $tooltip = "You have no permission to add";
                                }
                            ?>
                        <div class="row mt-40">
                            <div class="col-lg-12 text-center">
                                <button class="primary-btn fix-gr-bg" data-toggle="tooltip" title="<?php echo e($tooltip); ?>">
                                    <span class="ti-check"></span>

                                    <?php if(isset($leave_type)): ?>
                                        <?php echo app('translator')->getFromJson('lang.update'); ?>
                                    <?php else: ?>
                                        <?php echo app('translator')->getFromJson('lang.save'); ?>
                                    <?php endif; ?>
                                    <?php echo app('translator')->getFromJson('lang.type'); ?>
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
                    <div class="col-lg-4 no-gutters">
                        <div class="main-title">
                            <h3 class="mb-0"><?php echo app('translator')->getFromJson('lang.leave_type_list'); ?></h3>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">

                    <table id="table_id" class="display school-table" cellspacing="0" width="100%">

                        <thead>
                            <?php if(session()->has('message-success-delete') != "" ||
                            session()->get('message-danger-delete') != ""): ?>
                            <tr>
                                <td colspan="4">
                                    <?php if(session()->has('message-success-delete')): ?>
                                    <div class="alert alert-success">
                                        <?php echo e(session()->get('message-success-delete')); ?>

                                    </div>
                                    <?php elseif(session()->has('message-danger-delete')): ?>
                                    <div class="alert alert-danger">
                                        <?php echo e(session()->get('message-danger-delete')); ?>

                                    </div>
                                    <?php endif; ?>
                                </td>
                            </tr>
                            <?php endif; ?>
                            <tr>
                                <th><?php echo app('translator')->getFromJson('lang.type'); ?></th>
                                <th><?php echo app('translator')->getFromJson('lang.total_days'); ?></th>
                                <th><?php echo app('translator')->getFromJson('lang.action'); ?></th>
                            </tr>
                        </thead>

                        <tbody>
                            <?php $__currentLoopData = $leave_types; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $leave_type): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr>
                                <td><?php echo e($leave_type->type); ?></td>
                                <td><?php echo e($leave_type->total_days); ?></td>
                                <td>
                                    <div class="dropdown">
                                        <button type="button" class="btn dropdown-toggle" data-toggle="dropdown">
                                            <?php echo app('translator')->getFromJson('lang.select'); ?>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <?php if(in_array(205, App\GlobalVariable::GlobarModuleLinks()) || Auth::user()->role_id == 1 ): ?>

                                            <a class="dropdown-item" href="<?php echo e(url('leave-type', [$leave_type->id
                                                ])); ?>"><?php echo app('translator')->getFromJson('lang.edit'); ?></a>
                                               <?php endif; ?>
                                               <?php if(in_array(206, App\GlobalVariable::GlobarModuleLinks()) || Auth::user()->role_id == 1 ): ?>

                                               <a class="dropdown-item" data-toggle="modal" data-target="#deleteLeaveTypeModal<?php echo e($leave_type->id); ?>"
                                                    href="#"><?php echo app('translator')->getFromJson('lang.delete'); ?></a>
                                               <?php endif; ?>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <div class="modal fade admin-query" id="deleteLeaveTypeModal<?php echo e($leave_type->id); ?>" >
                                        <div class="modal-dialog modal-dialog-centered">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h4 class="modal-title"><?php echo app('translator')->getFromJson('lang.delete'); ?> <?php echo app('translator')->getFromJson('lang.leave_type'); ?></h4>
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                </div>

                                                <div class="modal-body">
                                                    <div class="text-center">
                                                        <h4><?php echo app('translator')->getFromJson('lang.are_you_sure_to_delete'); ?></h4>
                                                    </div>

                                                    <div class="mt-40 d-flex justify-content-between">
                                                        <button type="button" class="primary-btn tr-bg" data-dismiss="modal"><?php echo app('translator')->getFromJson('lang.cancel'); ?></button>
                                                        <?php echo e(Form::open(['url' => 'leave-type/'.$leave_type->id, 'method' => 'DELETE', 'enctype' => 'multipart/form-data'])); ?>

                                                        <button class="primary-btn fix-gr-bg" type="submit"><?php echo app('translator')->getFromJson('lang.delete'); ?></button>
                                                        <?php echo e(Form::close()); ?>

                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</section>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backEnd.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/gehlotclasses/public_html/ims.gehlotclasses.com/resources/views/backEnd/humanResource/leave_type.blade.php ENDPATH**/ ?>