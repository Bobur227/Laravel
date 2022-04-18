<nav class="font-sans flex flex-col text-center content-center sm:flex-row sm:text-left sm:justify-between py-2 px-6 bg-white shadow sm:items-baseline w-full">
    <div class="mb-2 sm:mb-0 inner m-auto">
        <a href="<?php echo e(route("home")); ?>" class="text-2xl no-underline text-grey-darkest hover:text-blue-dark font-sans font-bold">SBproduct</a>

    </div>

    <div class="sm:mb-0 self-center">
        <?php if(auth()->guard("web")->check()): ?>
            <a href="<?php echo e(route("logout")); ?>" class="text-md no-underline text-grey-darker hover:text-blue-dark ml-2 px-1">Выйти</a>
        <?php endif; ?>

        <?php if(auth()->guard("web")->guest()): ?>
            <a href="<?php echo e(route("login")); ?>" class="text-md no-underline text-grey-darker hover:text-blue-dark ml-2 px-1">Войти</a>
        <?php endif; ?>
    </div>
</nav><?php /**PATH C:\Users\Acer ПК\Desktop\Laravel\l9\resources\views/partials/header.blade.php ENDPATH**/ ?>