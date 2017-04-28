<!DOCTYPE html>
<html lang="en">
<head itemscope>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{!! PageBuilder::block('meta_title', ['meta' => true]) !!}</title>
    <meta name="description" content="{!! PageBuilder::block('meta_description', ['meta' => true]) !!}">
    <meta name="keywords" content="{!! PageBuilder::block('meta_keywords', ['meta' => true]) !!}">

    <meta name="revisit-after" content="7 days">

    

    <link href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet" type="text/css">
    <link href="{!! PageBuilder::css('akslider') !!}" rel="stylesheet">
    <link href="{!! PageBuilder::css('donate') !!}" rel="stylesheet">
    <link href="{!! PageBuilder::css('theme') !!}" rel="stylesheet">

    <link href="{!! PageBuilder::css('editor') !!}" rel="stylesheet">
    <script type='text/javascript' src='../../ajax.googleapis.com/ajax/libs/mootools/1.3.1/mootools-yui-compressed.js'></script>

    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>

    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    {!! PageBuilder::block('header_html', ['source' => true]) !!}

</head>

<body class="tm-isblog">
    <div class="preloader">
        <div class="loader"></div>
    </div>

    <div class="over-wrap">

        {!! PageBuilder::menu('main_menu') !!}
