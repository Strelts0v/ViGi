<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
<head>
  <meta charset="utf-8" />
  <title>VG social network</title>
  <meta name="description" content="Responsive, Bootstrap, BS4" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimal-ui" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <!-- for ios 7 style, multi-resolution icon of 152x152 -->
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-barstyle" content="black-translucent">
  <link rel="apple-touch-icon" href="/resources/images/logo.png">
  <meta name="apple-mobile-web-app-title" content="Flatkit">
  <!-- for Chrome on Android, multi-resolution icon of 196x196 -->
  <meta name="mobile-web-app-capable" content="yes">
  <link rel="shortcut icon" sizes="196x196" href="/resources/images/logo.png">
  
  <!-- style -->
  <link rel="stylesheet" href="/resources/css/animate.css/animate.min.css" type="text/css" />
  <link rel="stylesheet" href="/resources/css/glyphicons/glyphicons.css" type="text/css" />
  <link rel="stylesheet" href="/resources/css/font-awesome/css/font-awesome.min.css" type="text/css" />
  <link rel="stylesheet" href="/resources/css/material-design-icons/material-design-icons.css" type="text/css" />
  <link rel="stylesheet" href="/resources/css/ionicons/css/ionicons.min.css" type="text/css" />
  <link rel="stylesheet" href="/resources/css/simple-line-icons/css/simple-line-icons.css" type="text/css" />
  <link rel="stylesheet" href="/resources/css/bootstrap/dist/css/bootstrap.min.css" type="text/css" />

  <!-- build:css css/styles/app.min.css -->
  <link rel="stylesheet" href="/resources/css/styles/app.css" type="text/css" />
  <link rel="stylesheet" href="/resources/css/styles/style.css" type="text/css" />
  <!-- endbuild -->
  <link rel="stylesheet" href="/resources/css/styles/font.css" type="text/css" />
</head>
<body>
  <div class="app" id="app">

<!-- ############ LAYOUT START-->

  <div class="padding">
    <div class="navbar">
      <div class="pull-center">
        <!-- brand -->
        <a href="index.html" class="navbar-brand">
        	<div data-ui-include="'/resources/images/logo.svg'"></div>
        	<img src="/resources/images/logo.png" alt="." class="hide">
        	<span class="hidden-folded inline">VG</span>
        </a>
        <!-- / brand -->
      </div>
    </div>
  </div>
  <div class="b-t">
    <div class="center-block w-xxl w-auto-xs p-y-md text-center">
      <div class="p-a-md">
        <div>
          <a href="#" class="btn btn-block indigo text-white m-b-sm">
            <i class="fa fa-facebook pull-left"></i>
            Sign up with Facebook
          </a>
          <a href="#" class="btn btn-block red text-white">
            <i class="fa fa-google-plus pull-left"></i>
            Sign up with Google+
          </a>
        </div>
        <div class="m-y text-sm">
          OR
        </div>
        <c:url value="/index" var="index" />
        <form name="form" action="${index}">
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Username" required>
          </div>
          <div class="form-group">
            <input type="email" class="form-control" placeholder="Email" required>
          </div>
          <div class="form-group">
            <input type="password" class="form-control" placeholder="Password" required>
          </div>
          <div class="m-b-md text-sm">
            <span class="text-muted">By clicking Sign Up, I agree to the</span> 
            <a href="#">Terms of service</a> 
            <span class="text-muted">and</span> 
            <a href="#">Policy Privacy.</a>
          </div>
          <button type="submit" class="btn btn-lg black p-x-lg">Sign Up</button>
        </form>
        <div class="p-y-lg text-center">
          <c:url value="/signin" var="signin" />
          <div>Already have an account? <a href="${signin}" class="text-primary _600">Sign in</a></div>
        </div>
      </div>
    </div>
  </div>

<!-- ############ LAYOUT END-->
  </div>

<!-- build:js scripts/app.min.js -->
<!-- jQuery -->
  <script src="/resources/libs/jquery/dist/jquery.js"></script>
<!-- Bootstrap -->
  <script src="/resources/libs/tether/dist/js/tether.min.js"></script>
  <script src="/resources/libs/bootstrap/dist/js/bootstrap.js"></script>
<!-- core -->
  <script src="/resources/libs/jQuery-Storage-API/jquery.storageapi.min.js"></script>
  <script src="/resources/libs/PACE/pace.min.js"></script>
  <script src="/resources/libs/jquery-pjax/jquery.pjax.js"></script>
  <script src="/resources/libs/blockUI/jquery.blockUI.js"></script>
  <script src="/resources/libs/jscroll/jquery.jscroll.min.js"></script>

  <script src="/resources/scripts/config.lazyload.js"></script>
  <script src="/resources/scripts/ui-load.js"></script>
  <script src="/resources/scripts/ui-jp.js"></script>
  <script src="/resources/scripts/ui-include.js"></script>
  <script src="/resources/scripts/ui-device.js"></script>
  <script src="/resources/scripts/ui-form.js"></script>
  <script src="/resources/scripts/ui-modal.js"></script>
  <script src="/resources/scripts/ui-nav.js"></script>
  <script src="/resources/scripts/ui-list.js"></script>
  <script src="/resources/scripts/ui-screenfull.js"></script>
  <script src="/resources/scripts/ui-scroll-to.js"></script>
  <script src="/resources/scripts/ui-toggle-class.js"></script>
  <script src="/resources/scripts/ui-taburl.js"></script>
  <script src="/resources/scripts/app.js"></script>
  <script src="/resources/scripts/ajax.js"></script>
<!-- endbuild -->
</body>
</html>
