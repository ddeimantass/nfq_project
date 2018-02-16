<?php echo doctype('html5'); ?>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>D. A. Knyga</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet"  href="<?php echo base_url();?>bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="<?php echo base_url();?>dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="<?php echo base_url();?>plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="<?php echo base_url();?>dist/css/skins/skin-blue.min.css">
    <link rel="stylesheet" href="<?php echo base_url();?>css/styles.css">
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="<?php echo base_url();?>plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script src="<?php echo base_url();?>bootstrap/js/bootstrap.min.js"></script>
    <script src="<?php echo base_url();?>js/functions.js"></script>
    <script>
        $(document).ready(function(){
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>
</head>
<body class="hold-transition skin-blue fixed sidebar-collapse sidebar-mini">
<div class="wrapper">
    <header class="main-header">
        <a href="<?php echo base_url();?>" class="logo">
            <span class="logo-mini">D.A.</span>
            <span class="logo-lg"><b>D.A.</b></span>
        </a>
        <nav class="navbar navbar-static-top" role="navigation">
            <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>
        </nav>
    </header>