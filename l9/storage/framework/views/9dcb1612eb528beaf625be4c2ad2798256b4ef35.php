<?php $__env->startSection('title', $post->title); ?>

<?php $__env->startSection('content'); ?>
    <?php echo $__env->make('partials.header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <div>
        <div class="m-auto px-4 py-8 max-w-xl">
            <div class="bg-white shadow-2xl" >
                <div>
                    <img src="<?php echo e($post->thumbnail); ?>">
                </div>
                <div class="px-4 py-2 mt-2 bg-gray-900">
                    <h2 class="font-bold text-2xl text-white"><?php echo e($post->title); ?></h2>
                    <p class="sm:text-sm text-xs text-white px-2 mr-1 my-3">
                        <?php echo $post->description; ?>

                    </p>
                </div>
            </div>


            <div>
                <section class="rounded-b-lg mt-4">
                    <form method="POST" action="<?php echo e(route("comment", $post->id)); ?>">
                        <?php echo csrf_field(); ?>

                        <textarea name="text" class="w-full shadow-inner p-4 border-0 mb-4 rounded-lg focus:shadow-outline text-2xl <?php $__errorArgs = ['text'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> border-red-500 <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" placeholder="Ваш комментарий..." spellcheck="false"></textarea>

                        <?php $__errorArgs = ['text'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                            <p class="text-red-500"><?php echo e($message); ?></p>
                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>

                        <button type="submit" class="font-bold py-2 px-4 w-full bg-purple-400 text-lg text-white shadow-md rounded-lg ">Написать</button>
                    </form>

                    <div id="task-comments" class="pt-4">
                        <?php $__currentLoopData = $post->comments; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $comment): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class=" rounded-lg p-3  flex flex-col justify-center items-center md:items-start shadow-lg mb-4">
                                <div class="flex flex-row justify-center mr-2">
                                    <h3 class="text-white font-semibold text-lg text-center md:text-left "><?php echo e($comment->user->name); ?></h3>
                                </div>

                                <p style="width: 90%" class="text-white text-lg text-center md:text-left "><?php echo e($comment->text); ?></p>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </div>
                </section>

            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layout.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\Acer ПК\Desktop\Laravel\l9\resources\views/posts/show.blade.php ENDPATH**/ ?>