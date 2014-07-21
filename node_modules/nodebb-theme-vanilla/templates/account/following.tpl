<div class="row m-t-lg wrapper-md hero-page following">


<div class="hero-wrapper hero-cover">
<div class="hero-banner account-banner">
<div class="container center clearfix m-b-lg">
	
	<header class="header no-border panel-body m-b-xs b-b account-header strong no-p-lr">
	<!-- IMPORT partials/account_menu.tpl -->
	<div class="pull-left text-left">
	<p class="h1 strong no-borders text-white account-username" data-userslug="{userslug}">
	<a class="bold" href="../../user/{userslug}">{username}</a>
	</p>
	<a href="../../user/{userslug}/following" class="h3 text-lte text-white block">{username} is following {followingCount} people.</a>
	</div>
	
	</header>
</div>
</div>
</div>	


<div class="container m-t-lg no-p-lr">
<section class="panel no-borders no-b-s">	


	<div class="panel-body">
	<header class="h4 header bg-white b-b no-borders text-center">
	<p class="h2 strong text-heading text-center panel-heading no-borders">Following</p>
	</header>
	
		
		<div class="center">
		<!-- BEGIN following -->
		<section class="user-card inline text-center"> 
			<a href="../../user/{following.userslug}" title="{following.fullname}" class="user-thumb-sm">
				<img src="{following.picture}" class="avatar user-avatar"/>
			</a>
		</section>
		<!-- END following -->
		</div>
	
	<div id="no-following-notice" class="panel animated fadeInDown hide text-center no-borders no-b-s">
		<section class="text-center">
			<div class="panel-body nothing m-t no-borders text-muted">
				This user isn't following anyone.
			</div>
		</section>
	</div>
	
	
	
	</section>
	</div>
</div>
</div>

<input type="hidden" template-variable="yourid" value="{yourid}" />
<input type="hidden" template-variable="theirid" value="{theirid}" />
<input type="hidden" template-variable="followingCount" value="{followingCount}" />
