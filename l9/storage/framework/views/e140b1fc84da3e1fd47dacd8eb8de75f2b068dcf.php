<!DOCTYPE html>
<html lang="<?php echo e(str_replace('_', '-', app()->getLocale())); ?>">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><?php echo $__env->yieldContent('title'); ?></title>

    <link href="/css/app.css" rel="stylesheet">
</head>
<body>
    <div class="m-auto">
        <?php echo $__env->yieldContent('content'); ?>
    </div>

    <script src="/js/app.js"></script>
</body>
</html>
<?php /**PATH C:\Users\Acer ПК\Desktop\Laravel\l9\resources\views/layout/app.blade.php ENDPATH**/ ?>