<div class="bc-bg row">
<div class="container">
<ol class="breadcrumb">
	<li><a href="{relative_path}/">Home</a></li>
	<li class="active">Users</li>
</ol>
</div>
</div>

<div class="row wrapper-md hero-page recent">

<div class="hero-wrapper hero-cover">
<div class="hero-banner recent-banner">

<div class="hero-container container m-t-lg clearfix">

<header id="hero-v" class="hero-header header col-md-8 col-md-offset-2 text-left panel-body b-b no-borders no-p-lr">
<p class="h1 strong text-left no-borders">Users</p>
<br/>
<p class="h3 text-lte subheader-text">Everyone on Convoe</p>
</header>

<div class="col-md-8 col-md-offset-2 text-left panel-body b-b no-borders no-p-lr no-p-b">
<ul class="nav nav-pills nav-pills-tp panel-body text-uc bold no-p-lr">
	<li class=''><a href='{relative_path}/users/latest'>[[users:latest_users]]</a></li>
	<li class='hidden-xs'><a href='{relative_path}/users/sort-posts'>[[users:top_posters]]</a></li>
	<li class='hidden-xs'><a href='{relative_path}/users/sort-reputation'>[[users:most_reputation]]</a></li>
	<li class=''><a href='{relative_path}/users/online'>[[users:online]]</a></li>
	<li class=''><a href='{relative_path}/users/search'>[[users:search]]</a></li>
</ul>
</div>
	
</div>
</div>
</div>
</div>
	
<div class="container no-p-lr">
<section class="panel no-borders no-b-s">
<div class="panel-body">
	
<div class="col-md-8 col-md-offset-2 no-p-lr">
		<!-- @TODO
		<div class="search {search_display} panel-body">
	
			<div class="input-group">
				<input class="form-control account-form no-radius" id="search-user" type="text" placeholder="[[users:enter_username]]"/>
		        <span class="input-group-addon">
		        	<span id="user-notfound-notify"></span>
		        </span>
			</div>
		</div>
	
		<div id="users-container" class="users-container"> -->
			
	<!-- NOPE: 
	<!-- BEGIN users -->
	<div class="col-md-2 col-sm-2 col-xs-3 _users-wrapper registered-user clearfix">
	<div class="_users-sh">
	<a href="{relative_path}/user/{users.userslug}" class="_users-img-overlay" style="background-image:url('{users.picture}');"></a>
	<div class="_users-img-cover"></div>
	<section class="_users-usercard"> 
	<div class="_users-usercard-container">
        <div class="_users-user-info no-border no-p-tb">
			<div class="h4 m-t-xs m-b-xs">
				<a href="{relative_path}/user/{users.userslug}">{users.username}</a>
			</div>			
			<div class="_users-user-footer pos-rlt">
			
			<div class="text-left">
			<div class="_users-stats reputation"> <span class="_h4 formatted-number">{users.reputation}</span> <small class="text-uc text-xs">Rep</small> </div>
			
			<div class="_users-stats postcount"> <span class="_h4 formatted-number">{users.postcount}</span> <small class="text-uc text-xs">Posts</small> </div>
			</div>
			
			</div>
			</div>
	</div>
	</section>
	</div>
	</div>
	<!-- END users -->
		
		
		
	<div class="col-md-3 hide users-box {show_anon} anon-user">
		<section class="panel user-card"> 
		<div class="panel-body">
			<a href="#" class="thumb-sm pull-left m-r">
				<img src="" class="avatar"/>
			</a>
			
			<div class="clear">
				<div class="h6">Anonymous</div>
				<div class="h5 m-t-xs m-b-xs">
					<a href="">Anonymous</a>
				</div>
			</div>
			
		</div>
			<footer class="hide panel-footer pos-rlt">
			
			<div class="row center">
			<div class="reputation col-xs-6"> <span class="m-b-xs h4 block formatted-number">?</span> <small class="text-uc text-xs text-muted">Reputation</small> </div>
			
			<div class="postcount col-xs-6"> <span class="m-b-xs h4 block formatted-number">{anonymousUserCount}</span> <small id="online_anon_count" class="text-uc text-xs text-muted">Posts</small> </div>
			</div>
			
			</footer>
		</section>
	</div>

	
	<div class="clearfix"></div>
	
	<div class="text-center panel-body {loadmore_display}">
		<button id="load-more-users-btn" class="btn btn-primary btn-rounded">[[users:load_more]]</button>
	</div>
	
	-->

</div>
</div>
</section>
</div>

</div>

