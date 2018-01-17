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
			<span class="navbar-bloc"><a href="wave.html">Wave</a></span>
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
				<h3>John Doe</h3>
				<h4>jdandturk@gmail.com</h4>
				<br/><hr/><br/>	
				<h4>Edit your informations</h4>
				<form>
					<div class="row">
						<div class="input-field col s12 m8">
							<i class="material-icons prefix">account_circle</i>
							<input id="first_name" type="text" class="validate" required>
							<label for="first_name">Username</label>
						</div>
					</div>
					
					<div class="col s12 m2">
						<button type="submit" value="Submit" class="waves-effect waves-green btn-flat green lighten-4"><i class="material-icons left">done</i>Send</button>
					</div>
				</form>
				
				<form>
					<div class="row">
						<div class="input-field col s12 m8">
							<i class="material-icons prefix">email</i>
							<input id="email" type="email" class=account"validate" required>
							<label for="email">Email address</label>
						</div>
					</div>
					
					<div class="col s12 m2">
						<button type="submit" value="Submit" class="waves-effect waves-green btn-flat green lighten-4"><i class="material-icons left">done</i>Send</button>
					</div>
				</form>
				<br/><hr/><br/>
				<h4>Edit your password</h4>
				<form>
					<div class="row">
						<div class="input-field col s12 m8">
							<i class="material-icons prefix">lock</i>
							<input id="password" type="password" class="validate" required>
							<label for="password">Password</label>
						</div>
						
						<div class="input-field col s12 m8">
							<i class="material-icons prefix">lock</i>
							<input id="confirm_password" type="password" class="validate" required>
							<label for="confirm_password">Confirm password</label>
						</div>
					</div>
							
							
					<div class="col s12 m2">
						<button type="submit" value="Submit" class="waves-effect waves-green btn-flat green lighten-4"><i class="material-icons left">done</i>Send</button>
					</div>
				</form>
				<br/><br/><br/><br/>
			</div>
		</div>
		
	</body>
	<footer>
		<script type="text/javascript" src="asset/js/navbar.js"></script>
	</footer>
</html>
