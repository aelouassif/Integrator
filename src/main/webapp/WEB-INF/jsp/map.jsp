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
			<span class="navbar-bloc"><a href="map.html" class="orange-text">Navigation</a></span>
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
		
		<div id="navigation-bloc" class="navigation-bloc white-text valign-wrapper">
			<div class="center" style="width: 100%">
				<a href="#navigate" class="btn black modal-trigger">New destination</a>
				<a href="map.html?remove=1" class="btn black">Remove current destination</a>
			</div>
		</div>
		
		<div class="dashboard-base2">
			<div id="map" style="width:100%;height: 100%;"></div>
		</div>
		
		<div class="modal" id="navigate">
			<div class="modal-content">
				<h3>New destination</h3>
				<div class="row">
					<form class="col s12" action="map.html">
						<div class="row">
							<div class="input-field col s8">
								<i class="material-icons prefix">my_location</i>
								<input id="start" type="text" class="validate" required>
								<label for="start">Starting point</label>
							</div>
						</div>
						<div class="row">
							<div class="input-field col s8">
								<i class="material-icons prefix">location_on</i>
								<input id="destination" type="text" class="validate" required>
								<label for="destination">Destination</label>
							</div>
						</div>
						
						<div class="row">
							<div class="input-field col s8">
								<button type="submit" value="Submit" class="waves-effect waves-green btn-flat green lighten-4"><i class="material-icons left">check</i>Search</button>
								<a href="#!" class="modal-action modal-close waves-effect waves-red btn-flat red lighten-4"><i class="material-icons left">cancel</i>Cancel</a>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		
	</body>
	<footer>
		<script type="text/javascript" src="asset/js/navbar.js"></script>
		<script>
			$(document).ready(function(){
				$('.tooltipped').tooltip({delay: 20});
				$('.modal').modal();
				Materialize.updateTextFields();
			});
		
			function initMap() {
				var map = new google.maps.Map(document.getElementById('map'), {
				  center: {lat: 37.772, lng: -122.214},
				  zoom: 4
				});
				
				var route = [
					{lat: 37.772, lng: -122.214},
					{lat: 21.291, lng: -157.821},
					{lat: -18.142, lng: 178.431},
					{lat: -27.467, lng: 153.027}
				 ];
				 var routePath = new google.maps.Polyline({
					path: route,
					geodesic: false,
					strokeColor: '#38B1FF',
					strokeOpacity: 1.0,
					strokeWeight: 5
				  });
				routePath.setMap(map);
				
				
				var mark_weather_1 = new google.maps.Marker({
				  map: map,
				  position: {lat: 37.772, lng: -122.214},
				  title: 'Weather information',
				  icon: "http://openweathermap.org/img/w/10d.png",
				  animation: google.maps.Animation.DROP
				});
				
				var mark_weather_2 = new google.maps.Marker({
				  map: map,
				  position: {lat: 27.5, lng: -145},
				  title: 'Weather information',
				  icon: "http://openweathermap.org/img/w/04d.png",
				  animation: google.maps.Animation.DROP
				});
				
				var mark_weather_3 = new google.maps.Marker({
				  map: map,
				  position: {lat: 5, lng: 190},
				  title: 'Weather information',
				  icon: "http://openweathermap.org/img/w/10d.png",
				  animation: google.maps.Animation.DROP
				});
				
				var mark_weather_4 = new google.maps.Marker({
				  map: map,
				  position: {lat: -27.467, lng: 153.027},
				  title: 'Weather information',
				  icon: "http://openweathermap.org/img/w/01d.png",
				  animation: google.maps.Animation.DROP
				});

			  }
		</script>
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCUzpHw2gJPqlfwriWPjxbr8of1WGIfOrE&callback=initMap" async defer></script>
	</footer>
</html>
