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

  <div class="p-a black">
        <div class="navbar" data-pjax>
              <a data-toggle="collapse" data-target="#navbar" class="navbar-item pull-right hidden-md-up m-a-0 m-l">
                <i class="ion-android-menu"></i>
              </a>
              <!-- brand -->
			  <c:url value="/index" var="index" />
              <a href="${index}" class="navbar-brand">
              	<div data-ui-include="'/resources/images/logo.svg'"></div>
                  <h2 class="hidden-folded inline">VG</h2>
              </a>
              <!-- / brand -->
      
              <!-- navbar collapse -->
              <div class="collapse navbar-toggleable-sm pull-right pull-none-xs" id="navbar">
                <!-- link and dropdown -->
                <ul class="nav navbar-nav text-info-hover" data-ui-nav>
                  <li class="nav-item">
                    <a href="#features" data-ui-scroll-to class="nav-link">
                      <span class="nav-text">Features</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="#demos" data-ui-scroll-to class="nav-link">
                      <span class="nav-text">Demos</span>
                    </a>
                  </li>
                  <li class="nav-item">
					<c:url value="/signup" var="signup" />
                    <a href="${signup}" class="nav-link">
                      <span class="nav-text text-info">
                        Sign Up
                      </span>
                    </a>
                  </li>
                  <li class="nav-item">
					  <c:url value="/signin" var="signin" />
                      <a href="${signin}" class="nav-link">
                      <span class="btn btn-md rounded info">
                        Log in
                      </span>
                    </a>
                  </li>
                </ul>
                <!-- / link and dropdown -->
              </div>
              <!-- / navbar collapse -->
        </div>
  </div>

  <!-- content -->
  <div id="content" class="app-content" role="main">
    <div class="app-body">

<!-- ############ PAGE START-->

<div class="row-col black">
	<div class="col-sm-3"></div>
	<div class="col-sm-6 text-center">
		<div class="p-t-lg">
			<h2 class="m-y-md text-white">VG is social network for developers, engineers and all
				people who's passion bellogs to IT industry</h2>
			<a href="dashboard.html" class="btn btn-lg rounded success p-x-md m-x">Live Demo</a>
		</div><br><br><br><br>
	</div>
	<div class="col-sm-3"></div>
</div>

</div>
  	<div class="container">
  		<div class="row p-y-lg">
  			<div class="col-md-5">
  				<h6 class="text-sm text-u-c m-b text-muted">I'm</h6>
  				<p>Modern, clean &amp; Flat User Interface Kit, <br>Made with LOVE &amp; PASSION</p>
  				<div class="text-muted m-y-lg">
  					<h2 class="text-muted _600">
  						<span class="text-muted">VG</span>
  					</h2>
  				</div>
  			</div>
  			<div class="col-sm-2 col-xs-6">
  				<h6 class="text-sm text-u-c m-b text-muted">Company</h6>
  				<div class="m-b-md">
  					<ul class="nav l-h-2x">
  						<li class="nav-item">
  							<a class="nav-link" href="#">About us</a>
  						</li>
  						<li class="nav-item">
  							<a class="nav-link" href="#">Mobile apps</a>
  						</li>
  						<li class="nav-item">
  							<a class="nav-link" href="#">Blog news</a>
  						</li>
  						<li class="nav-item">
  							<a class="nav-link" href="#">Jobs</a>
  						</li>
  						<li class="nav-item">
  							<a class="nav-link" href="#">Help center</a>
  						</li>
  						<li class="nav-item">
  							<a class="nav-link" href="#">FAQ</a>
  						</li>
  						<li class="nav-item">
  							<a class="nav-link" href="#">Terms &amp; Policy</a>
  						</li>
  						<li class="nav-item">
  							<a class="nav-link" href="#">Cookies</a>
  						</li>
  					</ul>
  				</div>
  			</div>
  			<div class="col-sm-2 col-xs-6">
  				<h6 class="text-sm text-u-c m-b text-muted">App</h6>
  				<div class="m-b-md">
  					<ul class="nav l-h-2x">
  						<li class="nav-item">
  							<a class="nav-link" href="app.project.html">Projects</a>
  						</li>
  						<li class="nav-item">
  							<a class="nav-link" href="app.inbox.html">Inbox</a>
  						</li>
  						<li class="nav-item">
  							<a class="nav-link" href="app.message.html">Message</a>
  						</li>
  						<li class="nav-item">
  							<a class="nav-link" href="app.contact.html">Contacts</a>
  						</li>
  					</ul>
  				</div>
  			</div>
  
  			<div class="col-sm-3 col-xs-6">
  				<h6 class="text-sm text-u-c m-b text-muted">Connect</h6>
  				<div class="m-b-md">
  					<ul class="nav l-h-2x">
  						<li class="nav-item">
  							<a class="nav-link" href="#">Contact</a>
  						</li>
  						<li class="nav-item">
  							<a class="nav-link" href="#">Support</a>
  						</li>
  					</ul>
  				</div>
  			</div>
  		</div>
  		<div class="p-y-lg">
  			<div class="m-b-lg text-sm">
  				
  				<div class="text-muted pull-right pull-none-xs m-b">
  					<span class="text-muted">&copy; Copyright. All rights reserved.</span>
  				</div>
  				<div>
  					<a href="#" class="btn btn-sm btn-icon btn-social rounded lt" title="Facebook">
  				        <i class="fa fa-facebook"></i>
  				        <i class="fa fa-facebook indigo"></i>
  				    </a>
  				    <a href="#" class="btn btn-sm btn-icon btn-social rounded lt" title="Twitter">
  				        <i class="fa fa-twitter"></i>
  				        <i class="fa fa-twitter light-blue"></i>
  				    </a>
  				    <a href="#" class="btn btn-sm btn-icon btn-social rounded lt" title="Google+">
  				        <i class="fa fa-google-plus"></i>
  				        <i class="fa fa-google-plus red-600"></i>
  				    </a>
  				</div>
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
  <script src="/resourcesscripts/ui-jp.js"></script>
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
 </div>
</body>
</html>
