
    <div class="text-center">
        <h4><?php echo app('translator')->getFromJson('lang.are_you_sure_to_delete'); ?>?</h4>
          </div>
    <div class="mt-40 d-flex justify-content-between">
     <button type="button" class="primary-btn tr-bg" data-dismiss="modal"><?php echo app('translator')->getFromJson('lang.cancel'); ?></button>
         <a href="<?php echo e(url('delete-news/'.$id)); ?>" class="text-light">
           <button class="primary-btn fix-gr-bg" type="submit"><?php echo app('translator')->getFromJson('lang.delete'); ?></button>
         </a>
    </div>
    <?php /**PATH /home/gehlotclasses/public_html/ims.gehlotclasses.com/resources/views/backEnd/news/delete_modal.blade.php ENDPATH**/ ?>