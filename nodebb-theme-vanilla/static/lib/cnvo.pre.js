$('document').ready(function() {
	requirejs([
		'/plugins/nodebb-theme-vanilla/vendor/_cnvo.navigator.js',
		//'/plugins/nodebb-theme-vanilla/vendor/_cnvo.preloader.js',
		//'/plugins/nodebb-theme-vanilla/vendor/_cnvo.collection.js',
		//'/plugins/nodebb-theme-vanilla/vendor/_cnvo.mouse.js',
	]);
});

/* 	The other libraries have been moved to the
	staging for testing purposes. They will not
	be used until fully tested cross-platform. 
	
	The following has been sent back to the 
	staging:
	
	_x.js - Used in the category template in
			.h1 to show the network popup 
			listings.

	_z.js
	_n.js
	
	_a.js
		_b.js
		_e.js
			_c.js - Used for the smooth 
					scrolling of the site. 
					Not used due to user 
					complaints on the Linux 
					platform.
			
*/