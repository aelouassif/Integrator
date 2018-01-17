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
		
		<div class="main_bloc">
			<div class="connect_bloc">
				<a class="btn-floating tooltipped modal-trigger btn-large" data-position="bottom" data-delay="50" data-tooltip="Login" href="#login"><i class="material-icons medium">account_circle</i></a>
				<span style="margin: 5px;"></span>
				<a class="btn-floating tooltipped modal-trigger btn-large" data-position="bottom" data-delay="50" data-tooltip="Sign-up" href="#signup"><i class="material-icons large">input</i></a>
			</div>
			
			<c:if test="error == 1">
				<div class="row">
					<div class="col s6">
						<div class="card-panel red lighten-2 white-text">
							Login or password don't match with our database
						</div>
					</div>
				</div>
			</c:if>
			
			<h1>Seafarer helper</h1>
			<p>
				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse in commodo mi. Morbi faucibus, ex ac porttitor vehicula, tellus leo aliquam lacus, sed pellentesque nisi sapien et augue. Morbi aliquet dictum nulla eu finibus. Morbi convallis eleifend nibh, porta dictum ipsum suscipit at. Aliquam dictum urna sit amet dapibus ultrices. Morbi a leo id dolor euismod sagittis vel at quam. Nulla vel velit blandit sapien maximus porttitor a ac mi. Curabitur mauris ligula, congue vel vulputate et, fermentum pretium neque. Etiam placerat vestibulum egestas. Sed aliquam justo luctus convallis dictum. 
			</p>
			<p>
				Login or Signup to use the platform.
			</p>
		</div>
		
		<div class="modal" id="login">
			<div class="modal-content">
				<h2>Login</h2>
				<p>
					Not registered yet? <a href="#signup" class="modal-action modal-close modal-trigger">Sign-up</a> now!
				</p>
				<div class="row">
					<form class="col s12" action="/login" method="POST">
						<div class="row">
							<div class="input-field col s8">
								<i class="material-icons prefix">account_circle</i>
								<input name="login" id="first_name" type="text" class="validate" required>
								<label for="first_name">Username</label>
							</div>
						</div>
						<div class="row">
							<div class="input-field col s8">
								<i class="material-icons prefix">lock</i>
								<input name="password" id="password2" type="password" class="validate" required>
								<label for="password2">Password</label>
							</div>
						</div>
						
						<div class="row">
							<div class="input-field col s8">
								<button type="submit" value="Submit" class="waves-effect waves-green btn-flat green lighten-4"><i class="material-icons left">check</i>Login</button>
								<a href="#!" class="modal-action modal-close waves-effect waves-red btn-flat red lighten-4"><i class="material-icons left">cancel</i>Cancel</a>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		
		<div class="modal" id="signup">
			<div class="modal-content">
				<h2>Sign-up</h2>
				<div class="row">
					<form class="col s12" action="/register" method="POST">
						<div class="row">
							<div class="input-field col s8">
								<i class="material-icons prefix">account_circle</i>
								<input name="login" id="login" type="text" class="validate" required>
								<label for="login">Username</label>
							</div>
						</div>
						<div class="row">
							<div class="input-field col s8">
								<i class="material-icons prefix">face</i>
								<input name="first_name" id="first_name" type="text" class="validate" required>
								<label for="first_name">Firstname</label>
							</div>
						</div>
						<div class="row">
							<div class="input-field col s8">
								<i class="material-icons prefix">face</i>
								<input name="last_name" id="last_name" type="text" class="validate" required>
								<label for="last_name">Lastname</label>
							</div>
						</div>
						<div class="row">
							<div class="input-field col s8">
								<i class="material-icons prefix">email</i>
								<input name="email" id="email" type="email" class=account"validate" required>
								<label for="email">Email address</label>
							</div>
						</div>
						<div class="row">
							<div class="input-field col s8">
								<i class="material-icons prefix">lock</i>
								<input name="password" id="password" type="password" class="validate" required>
								<label for="password">Password</label>
							</div>
						</div>
						<div class="row">
							<div class="input-field col s8">
								<i class="material-icons prefix">lock</i>
								<input name="confirm_password" id="confirm_password" type="password" class="validate" required>
								<label for="confirm_password">Confirm password</label>
							</div>
						</div>
						<div class="row">
							<div class="input-field col s8">
								<button type="submit" value="Submit" class="waves-effect waves-green btn-flat green lighten-4"><i class="material-icons left">check</i>Sign-up</button>
								<a href="#!" class="modal-action modal-close waves-effect waves-red btn-flat red lighten-4"><i class="material-icons left">cancel</i>Cancel</a>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		
	</body>
	<script>
		$(document).ready(function(){
			$('.modal').modal();
			Materialize.updateTextFields();
		});
		
		var password = document.getElementById("password");
		var confirm_password = document.getElementById("confirm_password");

		function validatePassword(){
			if(password.value != confirm_password.value) {
			confirm_password.setCustomValidity("Passwords Don't Match");
			} else {
			confirm_password.setCustomValidity('');
			}
		}

		password.onchange = validatePassword;
		confirm_password.onkeyup = validatePassword;
	</script>
</html>

