<!-- 
	home.js - Networks
 
	This needs to be moved somewhere externally
	instead of loading inline with this file.
	For performance issues and speed testing,
	for now we will place here, but later on
	this will need to be removed and replaced.
	
-->
<div id="home-cover" class="home-overlay">
	<div class="home-background" style="background-image:url('../images/hpbg/l/_v.jpg');"></div>
	<div class="home-background-overlay hide"></div>
<div class="home-inner">

<div class="motd">
<div class="motd-cover">
	<div class="motd-blurb">
		<span class="motd-name"></span>
		<h3>A better discussion community for any and everyone.</h3>
		<!-- IF !loggedIn -->
		<span class="motd-revision"><a class="btn btn-rounded btn-motd" href="{relative_path}/register">Start conversing</a></span>
		<!-- ELSE -->
		<span class="motd-revision"><a class="btn btn-rounded btn-motd" href="{relative_path}/recent">Start exploring</a></span>
		<!-- ENDIF !loggedIn -->
	</div>
</div>
</div>

<!-- NOTE:
	 We don't need to implement this 
	 here and will be removing this 
	 soon. REF#3920
<div class="explore" class="hide">
<span id="explore" title="Jump to Collection" class="maytag-a maytag-c4940dv rev-c4940dv m-b text-xs block text-center m-t"><i class="i i-arrow-down4"></i></span>
</div>
-->

</div>

<div class="home-footer-wrapper container">
<div class="home-footer-blurb">

<div class="home-footer-stats">
	<div class="col-md-4 col-xs-4">
		<div class="stats-card">
			<h2><span class="stats-online"></span><br /><small>[[global:online]]</small></h2>
		</div>
	</div>
	<div class="col-md-4 col-xs-4 hide">
		<div class="stats-card">
			<h2><span class="stats-users"></span><br /><small>[[global:users]]</small></h2>
		</div>
	</div>
	<div class="col-md-4 col-xs-4">
		<div class="stats-card">
			<h2><span class="stats-topics"></span><br /><small>[[global:topics]]</small></h2>
		</div>
	</div>
	<div class="col-md-4 col-xs-4">
		<div class="stats-card">
			<h2><span class="stats-posts"></span><br /><small>[[global:posts]]</small></h2>
		</div>
	</div>
</div>

</div>
<div class="home-footer-legal clearfix">
	<a href="//convoe.com/register" class="btn btn-link first">Register</a>
	<a href="//help.convoe.com/" class="btn btn-link middle m-r-none">About Convoe</a>
	<a href="//help.convoe.com/policy/terms" class="btn btn-link middle">Terms</a>
	<a href="//help.convoe.com/policy/community-guidelines" class="btn btn-link last">Guidelines</a>
</div>
</div>
</div>

<script src="//convoe.com/vendor/convoe/_cnvo.home.js"></script>
<script src="//convoe.com/vendor/convoe/_cnvo.stats.js"></script>
<!-- NOTE: We don't need this.
<script src="//convoe.com/vendor/convoe/_cnvo.collection.js"></script>
<script src="//convoe.com/vendor/convoe/_cnvo.init.js"></script>
-->