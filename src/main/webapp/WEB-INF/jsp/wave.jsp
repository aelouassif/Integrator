<html>
	<head>
		<title>Data Analyse Platform</title>	
		<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">	
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
		<link rel="shortcut icon" href="./asset/images/favicon.ico">
		<link rel="stylesheet" type="text/css" href="asset/css/style.css"/>	
	</head>
	<body>
		<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>

		<ul id="slide-out" class="side-nav">
			<li><div class="user-view">
				<div class="background blue-grey darken-4">
				</div>
				<a href="#!name"><span class="white-text name">John Doe</span></a>
				<a href="#!email"><span class="white-text email">jdandturk@gmail.com</span></a>
			</div></li>
			<li><a href="dashboard.html"><i class="material-icons">dashboard</i>Dashboard</a></li>
			<li><div class="divider"></div></li>
			<li><a class="subheader">Wave</a></li>
			<li><a href="wave.html"><i class="material-icons">group</i>Access to Wave</a></li>
			<li><a class="subheader">Map</a></li>
			<li><a href="map.html"><i class="material-icons">navigation</i>Navigation</a></li>
			<li><div class="divider"></div></li>
			<li><a class="subheader">Account</a></li>
			<li><a href="account.html"><i class="material-icons">account_circle</i>Manage your account</a></li>
			<li><a href="login.html"><i class="material-icons">power_settings_new</i>Logout</a></li>
		</ul>
		
		<div class="navbar blue-grey darken-2 valign-wrapper">
			<a href="#" data-activates="slide-out" class="button-collapse white-text sidenav-btn"><i class="material-icons">menu</i></a>
			<span class="navbar-bloc"><a href="dashboard.html">Dashboard</a></span>
			<span class="navbar-bloc"><a href="wave.html" class="orange-text">Wave</a></span>
			<span class="navbar-bloc"><a href="map.html">Navigation</a></span>
			<div class="right-navbar">
				<span class="valign-wrapper"><a id="profile-bloc-trigger" href="#" class="white-text"><i class="material-icons small">account_circle</i></a></span>
			</div>
		</div>
		
		<div id="profile-bloc" class="profile-bloc blue-grey darken-4 white-text">
			<p>John Doe</p>
			<p>jdandturk@gmail.com</p>
			<a href="account.html" class="white-text left"><i class="material-icons">edit</i></a>
			<a href="login.html" class="white-text right"><i class="material-icons">power_settings_new</i></a>
		</div>
		
		<div class="dashboard-base blue-grey lighten-3">
			<div class="container">
				<div class="blue-grey lighten-4">
					<div class="write-wave blue-grey lighten-4 overrable">
						<h3>Send a new Wave!</h3>
						<form>
							<div class="input-field col s12">
		      					<i class="material-icons prefix">mode_edit</i>
							  	<textarea id="write-wave" class="materialize-textarea" data-length="300"></textarea>
							  	<label for="write-wave">Write your Wave</label>
							</div>
							<button class="btn waves-effect waves-light" type="submit" name="action">Submit
								<i class="material-icons right">rss_feed</i>
							</button>
						</form>
					</div>
					
					<div class="row">
						<div class="card blue-grey lighten-5" id="1245">
							<div class="card-content black-text">
								<p class="signature">Alex T. - Thu 17 Dec - <a href="">12423.2E 16543.41N</a></p>
								<p>Did you saw that tornado on <a href="">12023.546E 13497.546N</a>! Pay attention when comming near Australia! #Tornado #MyDogFlewAway</p>
							</div>
							<div class="card-action">
								<form>
									<div class="input-field col s12">
					  					<i class="material-icons prefix">mode_edit</i>
									  	<textarea id="write-wave" class="materialize-textarea" data-length="150"></textarea>
									  	<label for="write-wave">Write a comment</label>
									</div>
									<button class="btn waves-effect waves-light" type="submit" name="action">Comment
										<i class="material-icons right">rss_feed</i>
									</button>
								</form>
							
								<div class="row">
									<div class="card white">
										<div class="card-content black-text">
											<p class="signature">Felix Liu - Mon 10 Sept - <a href="">654321.1E 16547.354N</a></p>
											<p>Sick, man...</p>
										</div>
									</div>
								
									<div class="card white">
										<div class="card-content black-text">
											<p class="signature">P. Joe - Wed 10 Jan - <a href="">654321.1E 16547.354N</a></p>
											<p>Thank you for the advise!</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="card blue-grey lighten-5">
							<div class="card-content black-text">
								<p class="signature">Felix Liu - Mon 10 Sept - <a href="">654321.1E 16547.354N</a></p>
								<p>Ho man, the sun came back today! Hopping it will stay for some days.</p>
							</div>
							<div class="card-action">
								<form>
									<div class="input-field col s12">
					  					<i class="material-icons prefix">mode_edit</i>
									  	<textarea id="write-wave" class="materialize-textarea" data-length="150"></textarea>
									  	<label for="write-wave">Write a comment</label>
									</div>
									<button class="btn waves-effect waves-light" type="submit" name="action">Comment
										<i class="material-icons right">rss_feed</i>
									</button>
								</form>
							
								<div class="row">
									<div class="card white">
										<div class="card-content black-text">
											<p class="signature">Alex T. - Thu 17 Dec - <a href="">12423.2E 16543.41N</a></p>
											<p>Enjoy! It's raining here...</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		
	</body>
	<footer>
		
		<script type="text/javascript" src="asset/js/navbar.js"></script>
		<script>
			$(document).ready(function() {
				$('textarea#write-wave').characterCounter();
			});
		</script>
	</footer>
</html>
