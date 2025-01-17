<?php if($_GET['minimal']) {
	echo '<script>PAGE = "' . $page . '";';
	echo 'PATHS = ' . json_encode($paths) . ';</script>';

	return include 'pages/'.$name_page.'.php';
} ?>

<html lang="en">
	<head>
		<!--  META  -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title><?php echo $name;?> | <?php echo $site['name'];?></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=1">
		<meta name="keywords" content="<?php echo $site['keywords'];?>">
		<meta name="description" content="<?php echo $site['description'];?>">
		<meta name="author" content="<?php echo $site['author'];?>">
		<meta property="og:url" content="<?php echo $site['url'];?>">
		<meta property="og:site_name" content="<?php echo $site['name'];?>">
		<meta property="og:title" content="<?php echo $site['name'];?>" />
		<meta property="og:type" content="website" />
		<meta property="og:url" content="http://localhost" />
		<meta property="og:image" content="<?php echo $site['root'];?>favicon-96x96.png?v=<?php echo time();?>" />
		<meta property="og:description" content="The best gamecurrency gambling platform" />
		<meta name="theme-color" content="#3CA1D7">
		
		<link rel="icon" type="image/png" href="<?php echo $site['root'];?>favicon-16x16.png?v=<?php echo time();?>" sizes="16x16">
		<link rel="icon" type="image/png" href="<?php echo $site['root'];?>favicon-32x32.png?v=<?php echo time();?>" sizes="32x32">
		<link rel="icon" type="image/png" href="<?php echo $site['root'];?>favicon-96x96.png?v=<?php echo time();?>" sizes="96x96">
		
		<!--  CSS  -->
		<!-- <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"> -->
		<!-- <link href="https://fonts.googleapis.com/css?family=Roboto:400,300,500,400italic,500italic,700,700italic" rel="stylesheet"> -->
		<link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet">
		
		<link href="<?php echo $site['root'];?>template/css/style.css?v=<?php echo time();?>" rel="stylesheet">
		<link href="<?php echo $site['root'];?>template/css/others.css?v=<?php echo time();?>" rel="stylesheet">
		<link href="<?php echo $site['root'];?>template/css/bouncer.css" rel="stylesheet">
		
		<!--  JAVASCRIPT  -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/socket.io/4.3.2/socket.io.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/tinysort/2.3.6/tinysort.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
		<!-- <script src="https://cdn.rawgit.com/davidshimjs/qrcodejs/gh-pages/qrcode.min.js"></script> -->
		
		<script src='https://www.google.com/recaptcha/api.js'></script>
		<script src="https://www.google-analytics.com/analytics.js"></script>
		
		<script>
			const WELCOME = `

				==========================================

				discord: ZeroByte#1337)

				==========================================

			`;


			<?php echo 'var PAGE = "' . $page . '";'; ?>
			<?php echo 'var ROOT = "' . $site['root'] . '";'; ?>
			<?php echo 'var PATHS = ' . json_encode($paths) . ';'; ?>
			<?php echo 'var PORT = "' . $site['port'] . '";'; ?>
			<?php echo 'var RECAPTCHA_SITEKEY = "' . $site['recaptcha']['sitekey'] . '";'; ?>
			<?php if($user['name']) { echo 'var USER = "'.$user['name'].'";'; } else { echo 'var USER = "";'; } ?>
		</script>
		
		<script type="text/javascript" src="<?php echo $site['root'];?>template/js/settings.js?v=<?php echo time();?>"></script>
		<script type="text/javascript" src="<?php echo $site['root'];?>template/js/app.js?v=<?php echo time();?>"></script>
	</head>
	
	<body>
		<?php include 'tools/first.php';?>
		
		<?php include 'tools/modals.php';?>
		
		<div class="flex column height-full width-full">
			<?php include 'tools/header.php'; ?>
			<div class="wrapper-page flex row">
				<div class="main-panel text-center" id="page_loader">
					<div id="page_content" style="min-height:calc(100vh - 120px);min-width:1px">
						<div id="page_content2">
							<?php include 'pages/'.$name_page.'.php'; ?>
						</div>
					</div>
					
					<!-- <div class="alerts-panel transition-5 flex items-center justify-center p-2" style="display: none;">
						<span class="text-alert"></span>
						<i class="fa fa-times hide_chat demiss-alert" aria-hidden="true"></i>
					</div>
				</div> -->

					<?php include 'tools/footer.php'; ?>
				</div>
				
				<?php include 'tools/chat.php'; ?>
			</div>
		</div>

		<div id="bb_info_container">

			<div class="bb_info hidden">
				<div class="left">
					<h3>Bonus battle starting!</h3>
					<p>Your battle <span id="bb_info_id">#21</span> for <span id="bb_info_val">20.00</span> <i class="coins mr-1"></i> has started. Click the button on the right to start playing.</p>
				</div>

				<a href="" id="bb_info_link">Open battle</a>
			</div>

		</div>

		<script src="https://kit.fontawesome.com/8275d40f21.js" crossorigin="anonymous"></script>
	</body>
</html>