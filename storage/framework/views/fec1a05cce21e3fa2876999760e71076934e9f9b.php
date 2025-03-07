<?php $__env->startSection('mainContent'); ?>
    <section class="sms-breadcrumb mb-40 white-box">
        <div class="container-fluid">
            <div class="row justify-content-between">
                <h1><?php echo app('translator')->getFromJson('lang.custom'); ?> <?php echo app('translator')->getFromJson('lang.links'); ?> <?php echo app('translator')->getFromJson('lang.page'); ?></h1>
                <div class="bc-pages">
                    <a href="<?php echo e(url('dashboard')); ?>"><?php echo app('translator')->getFromJson('lang.dashboard'); ?></a>
                    <a href="#"><?php echo app('translator')->getFromJson('lang.front'); ?> <?php echo app('translator')->getFromJson('lang.settings'); ?></a>
                    <a href="#"><?php echo app('translator')->getFromJson('lang.custom'); ?> <?php echo app('translator')->getFromJson('lang.links'); ?></a>
                </div>
            </div>
        </div>
    </section>
    <section class="admin-visitor-area">
        <div class="container-fluid p-0">
            <div class="row">
                        <div class="col-lg-12">
                            <div class="main-title">
                                <h3 class="mb-30">  <?php echo app('translator')->getFromJson('lang.custom'); ?> <?php echo app('translator')->getFromJson('lang.links'); ?> <?php echo app('translator')->getFromJson('lang.list'); ?> </h3>
                            </div> 
                                <?php if(in_array(528, App\GlobalVariable::GlobarModuleLinks()) || Auth::user()->role_id == 1 ): ?>
                                    <?php echo e(Form::open(['class' => 'form-horizontal', 'files' => true, 'url' => 'custom-links-update', 'method' => 'POST', 'enctype' => 'multipart/form-data'])); ?> 
                                <?php endif; ?>
                                <div class="white-box">

                                <div class="row">
                                    <div class="col-lg-12">
                                        <?php if(session()->has('message-success')): ?>
                                            <div class="alert alert-success">
                                                <?php echo app('translator')->getFromJson('lang.operation_success_message'); ?>
                                            </div> 
                                        <?php endif; ?>
                                    </div>
                                </div>



                                 <div class="row">  
 
                                                <div class="col-lg-3 mt-40"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="title1" autocomplete="off" value="<?php echo e(isset($links)?@$links->title1:''); ?>">
                                                        <label><?php echo app('translator')->getFromJson('lang.title'); ?> 01 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div> 
                                                <div class="col-lg-3 mt-40"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="title2" autocomplete="off"  value="<?php echo e(isset($links)?@$links->title2:''); ?>" >
                                                        <label><?php echo app('translator')->getFromJson('lang.title'); ?> 02 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div> 
                                                <div class="col-lg-3 mt-40"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="title3" autocomplete="off"  value="<?php echo e(isset($links)?@$links->title3:''); ?>" >
                                                        <label><?php echo app('translator')->getFromJson('lang.title'); ?> 03 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div> 
                                                <div class="col-lg-3 mt-40"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="title4" autocomplete="off"  value="<?php echo e(isset($links)?@$links->title4:''); ?>" >
                                                        <label><?php echo app('translator')->getFromJson('lang.title'); ?> 04 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div> 


  
                                                <div class="col-lg-3 mt-60"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_label1" autocomplete="off"   value="<?php echo e(isset($links)?@$links->link_label1:''); ?>"  >
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.label '); ?> 01 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  
                                                <div class="col-lg-3 mt-60"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_label2" autocomplete="off"   value="<?php echo e(isset($links)?@$links->link_label2:''); ?>" >
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.label '); ?>  02 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  
                                                <div class="col-lg-3 mt-60"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_label3" autocomplete="off"   value="<?php echo e(isset($links)?@$links->link_label3:''); ?>"  >
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.label '); ?>  03 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  
                                                <div class="col-lg-3 mt-60"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_label4" autocomplete="off"   value="<?php echo e(isset($links)?@$links->link_label4:''); ?>"  >
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.label '); ?>  04 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  

 
                                                <div class="col-lg-3 mt-20"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_href1" autocomplete="off"   value="<?php echo e(isset($links)?@$links->link_href1:''); ?>"  >
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.url'); ?> 01 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  
 
                                                <div class="col-lg-3 mt-20"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_href2" autocomplete="off"   value="<?php echo e(isset($links)?@$links->link_href2:''); ?>"  >
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.url'); ?> 02 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  
                                                <div class="col-lg-3 mt-20"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_href3" autocomplete="off"   value="<?php echo e(isset($links)?@$links->link_href3:''); ?>"  >
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.url'); ?> 03 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  
                                                <div class="col-lg-3 mt-20"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_href4" autocomplete="off"   value="<?php echo e(isset($links)?@$links->link_href4:''); ?>"  >
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.url'); ?> 04 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  


                                                <!-- ****************** ****************** ****************** ****************** -->



 
                                                <div class="col-lg-3 mt-60"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_label5" autocomplete="off"    value="<?php echo e(isset($links)?@$links->link_label5:''); ?>"  >
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.label '); ?>  05 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  
                                                <div class="col-lg-3 mt-60"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_label6" autocomplete="off"    value="<?php echo e(isset($links)?@$links->link_label6:''); ?>"  >
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.label '); ?>  06 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  
                                                <div class="col-lg-3 mt-60"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_label7" autocomplete="off"    value="<?php echo e(isset($links)?@$links->link_label7:''); ?>"  >
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.label '); ?>  07 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  
                                                <div class="col-lg-3 mt-60"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_label8" autocomplete="off"   value="<?php echo e(isset($links)?@$links->link_label8:''); ?>"   >
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.label '); ?>  08 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  
 
                                                <div class="col-lg-3 mt-20"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_href5" autocomplete="off"   value="<?php echo e(isset($links)?@$links->link_href5:''); ?>"  >
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.url'); ?> 05 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  
 
                                                <div class="col-lg-3 mt-20"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_href6" autocomplete="off"   value="<?php echo e(isset($links)?@$links->link_href6:''); ?>"  >
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.url'); ?> 06 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  
                                                <div class="col-lg-3 mt-20"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_href7" autocomplete="off"   value="<?php echo e(isset($links)?@$links->link_href7:''); ?>"  >
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.url'); ?> 07 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  
                                                <div class="col-lg-3 mt-20"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_href8" autocomplete="off"  value="<?php echo e(isset($links)?@$links->link_href8:''); ?>"   >
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.url'); ?> 08 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  


                                                <!-- ****************** ****************** ****************** ****************** -->


 
                                                <div class="col-lg-3 mt-60"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_label9" autocomplete="off"  value="<?php echo e(isset($links)?@$links->link_label9:''); ?>" >
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.label '); ?> 09 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  
                                                <div class="col-lg-3 mt-60"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_label10" autocomplete="off"   value="<?php echo e(isset($links)?@$links->link_label10:''); ?>">
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.label '); ?> 10 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  
                                                <div class="col-lg-3 mt-60"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_label11" autocomplete="off"  value="<?php echo e(isset($links)?@$links->link_label11:''); ?>">
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.label '); ?> 11 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  
                                                <div class="col-lg-3 mt-60"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_label12" autocomplete="off"  value="<?php echo e(isset($links)?@$links->link_label12:''); ?>">
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.label '); ?> 12 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  


 
                                                <div class="col-lg-3 mt-20"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_href9" autocomplete="off"   value="<?php echo e(isset($links)?@$links->link_href9:''); ?>"  >
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.url'); ?> 09 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  
 
                                                <div class="col-lg-3 mt-20"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_href10" autocomplete="off"   value="<?php echo e(isset($links)?@$links->link_href10:''); ?>"  >
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.url'); ?> 10 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  
                                                <div class="col-lg-3 mt-20"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_href11" autocomplete="off"   value="<?php echo e(isset($links)?@$links->link_href11:''); ?>"  >
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.url'); ?> 11 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  
                                                <div class="col-lg-3 mt-20"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_href12" autocomplete="off"   value="<?php echo e(isset($links)?@$links->link_href12:''); ?>"  >
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.url'); ?> 12 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  


                                                <!-- ****************** ****************** ****************** ****************** -->













 
                                                <div class="col-lg-3 mt-60"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_label13" autocomplete="off"   value="<?php echo e(isset($links)?@$links->link_label13:''); ?>"  >
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.label '); ?> 13 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  
                                                <div class="col-lg-3 mt-60"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_label14" autocomplete="off"   value="<?php echo e(isset($links)?@$links->link_label14:''); ?>"  >
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.label '); ?> 14 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  
                                                <div class="col-lg-3 mt-60"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_label15" autocomplete="off"   value="<?php echo e(isset($links)?@$links->link_label15:''); ?>"  >
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.label '); ?> 15 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  
                                                <div class="col-lg-3 mt-60"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_label16" autocomplete="off"   value="<?php echo e(isset($links)?@$links->link_label16:''); ?>"  >
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.label '); ?> 16 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  

 
                                                <div class="col-lg-3 mt-20"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_href13" autocomplete="off"   value="<?php echo e(isset($links)?@$links->link_href13:''); ?>"  >
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.url'); ?> 13 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  
 
                                                <div class="col-lg-3 mt-20"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_href14" autocomplete="off"   value="<?php echo e(isset($links)?@$links->link_href14:''); ?>"  >
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.url'); ?> 14 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  
                                                <div class="col-lg-3 mt-20"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_href15" autocomplete="off"   value="<?php echo e(isset($links)?@$links->link_href15:''); ?>"  >
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.url'); ?> 15 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  
                                                <div class="col-lg-3 mt-20"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="link_href16" autocomplete="off"   value="<?php echo e(isset($links)?@$links->link_href16:''); ?>"  >
                                                        <label><?php echo app('translator')->getFromJson('lang.link'); ?> <?php echo app('translator')->getFromJson('lang.url'); ?> 16 </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  


                                                <!-- ****************** ****************** Social ****************** ****************** -->


                                                <div class="col-lg-3 mt-60"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="facebook_url" autocomplete="off"   value="<?php echo e(isset($links)?@$links->facebook_url:''); ?>"  >
                                                        <label><?php echo app('translator')->getFromJson('lang.facebook'); ?> <?php echo app('translator')->getFromJson('lang.url'); ?> </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  
 
                                                <div class="col-lg-3 mt-60"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="twitter_url" autocomplete="off"   value="<?php echo e(isset($links)?@$links->twitter_url:''); ?>"  >
                                                        <label><?php echo app('translator')->getFromJson('lang.twitter'); ?> <?php echo app('translator')->getFromJson('lang.url'); ?> </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  
                                                <div class="col-lg-3 mt-60"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="dribble_url" autocomplete="off"   value="<?php echo e(isset($links)?@$links->dribble_url:''); ?>"  >
                                                        <label><?php echo app('translator')->getFromJson('lang.dribbble'); ?> <?php echo app('translator')->getFromJson('lang.url'); ?> </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  
                                                <div class="col-lg-3 mt-60"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="behance_url" autocomplete="off"   value="<?php echo e(isset($links)?@$links->behance_url:''); ?>"  >
                                                        <label><?php echo app('translator')->getFromJson('lang.behance'); ?> <?php echo app('translator')->getFromJson('lang.url'); ?> </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  


                                                <!-- ****************** ****************** end social ****************** ****************** -->




 
                                    </div>
                                    <?php 
                                        $tooltip = "";
                                        if(in_array(528, App\GlobalVariable::GlobarModuleLinks()) || Auth::user()->role_id == 1 ){
                                                $tooltip = "";
                                            }else{
                                                $tooltip = "You have no permission to add";
                                            }
                                    ?>
                                    <div class="row mt-40">
                                        <div class="col-lg-12 text-center">
                                            <button class="primary-btn fix-gr-bg" data-toggle="tooltip" title="<?php echo e(@$tooltip); ?>">
                                                <span class="ti-check"></span>
                                                <?php if(isset($update)): ?>
                                                    <?php echo app('translator')->getFromJson('lang.update'); ?>
                                                <?php else: ?>
                                                    <?php echo app('translator')->getFromJson('lang.save'); ?>
                                                <?php endif; ?>
                                            </button>
                                        </div>
                                    </div>


                            </div>
                            <?php echo e(Form::close()); ?>

                        </div> 
                </div>
 
            </div>
        </div>
    </section>

 
<?php $__env->stopSection(); ?>


<?php echo $__env->make('backEnd.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/gehlotclasses/public_html/ims.gehlotclasses.com/resources/views/backEnd/systemSettings/customLinks.blade.php ENDPATH**/ ?>