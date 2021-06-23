<?php //include("config/config.php"); ?>
<title>Zombie Nation</title>
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
<link rel="stylesheet" href="dist/css/skins/skin-purple.min.css">
<link rel="shortcut icon" href="dist/img/icon.png" type="image/png">

<?php
	if(isset($_GET['page'])) {
		$page = $_GET['page'];
	} else {
		$page = "content";
	}
?>

<body class="hold-transition skin-purple sidebar-mini sidebar-collapse">
    <div class="wrapper">
		<header class="main-header">
			<?php include("includes/header.php") ?>
		</header>
			
		<aside class="main-sidebar">
			<?php include("includes/menu.php") ?>
		</aside>	
			
		<div class="content-wrapper">
			<?php
				$file = "includes/".$page.".php";
				if (file_exists($file)){
					include("includes/$page.php");
				}
				else {
					include("includes/404.php");
				}
			?>
		</div>

		<footer class="main-footer" id="footer" style="background-color: white; color: black">
			<?php include("includes/footer.php") ?>
		</footer>
    </div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="dist/js/app.min.js"></script>
    <script src="plugins/fastclick/fastclick.min.js"></script>
    <script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <script src="plugins/chartjs/Chart.min.js"></script>
    <script src="dist/js/pages/dashboard.js"></script>
    <script src="dist/js/demo.js"></script>
</body>