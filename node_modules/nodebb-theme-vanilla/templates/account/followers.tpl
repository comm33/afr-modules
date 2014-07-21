<div class="row m-t-lg wrapper-md hero-page followers">


<div class="hero-wrapper hero-cover">
<div class="hero-banner account-banner">
<div class="container center clearfix m-b-lg">
	
	<header class="header no-border panel-body m-b-xs b-b account-header strong no-p-lr">
	<!-- IMPORT partials/account_menu.tpl -->
	<div class="pull-left text-left">
	<p class="h1 strong no-borders text-white account-username" data-userslug="{userslug}">
	<a class="bold" href="../../user/{userslug}">{username}</a>
	</p>
	<a href="../../user/{userslug}/followers" class="h3 text-lte text-white block">{username} has {followersCount} followers.</a>
	</div>
	
	</header>
</div>
</div>
</div>	


<div class="container m-t-lg no-p-lr">
<section class="panel no-borders no-b-s">	

	<div class="panel-body">
	
	
	<header class="h4 header bg-white b-b no-borders text-center">
	<p class="h2 strong text-heading text-center panel-heading no-borders">Followers</p>
	</header>
		
		<div class="center">
		<!-- BEGIN followers -->
		<section class="user-card inline text-center"> 
			<a href="../../user/{followers.userslug}" title="{followers.fullname}" class="user-thumb-sm">
				<img src="{followers.picture}" class="avatar user-avatar"/>
			</a>
		</section>
		<!-- END followers -->
		</div>

	<div id="no-followers-notice" class="panel animated fadeInDown hide text-center no-borders no-b-s">
		<section class="text-center">
			<div class="panel-body nothing m-t no-borders text-muted">
				This user does not have any followers.
			</div>
		</section>
	</div>
	
	
	</section>
	</div>
</div>

<input type="hidden" template-variable="yourid" value="{yourid}" />
<input type="hidden" template-variable="theirid" value="{theirid}" />
<input type="hidden" template-variable="followersCount" value="{followersCount}" />
