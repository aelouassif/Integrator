$(".button-collapse").sideNav();

var profileopen = false;
$('html').click(function() {
	if(profileopen) {
		document.getElementById('profile-bloc').style.transform = 'translate(0,-100%)';
		profileopen = false;
	}
});
$('html #profile-bloc-trigger').click(function(e) {
	if(profileopen) {
		document.getElementById('profile-bloc').style.transform = 'translate(0,-100%)';
		profileopen = false;
	} else {
		document.getElementById('profile-bloc').style.transform = 'translate(0,0)';
		profileopen = true;
	}
	e.stopPropagation();
});