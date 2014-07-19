<div class="row m-t-lg wrapper-md hero-page favourites">

<div class="hero-wrapper hero-cover">
<div class="hero-banner account-banner">
<div class="hero-container container m-t-lg clearfix">
	
	<header class="hero-header header col-md-8 col-md-offset-2 text-left panel-body b-b no-borders no-p-lr">
	<!-- IMPORT partials/account_menu.tpl -->
	<div class="pull-left text-left">
	<p class="h1 strong no-borders">
		<a class="bold account-username" href="{relative_path}/user/{userslug}">{username}</a>
	</p>
	<a href="{relative_path}/user/{userslug}/posts" class="h3 text-lte block">{username}'s posts on Convoe</a>
	</div>
	</header>
</div>
</div>
</div>	

<div class="container m-t-lg no-p-lr">
<section class="panel no-borders no-b-s">	

	<div class="col-md-8 col-md-offset-2 m-t-lg">
	
		<ul class="user-posts user-favourite-posts" data-nextstart="{nextStart}">
			
			<header class="text-label-header strong text-label-header text-muted text-left panel-heading no-borders">{username}'s Posts
			</header>
			<!-- IF !posts.length -->
			<div class="panel animated fadeInDown text-center no-borders no-b-s">
				<section class="text-center">
					<div class="panel-body nothing m-t no-borders text-muted">
						You currently do not have any posts.
					</div>
				</section>
			</div>
			<!-- ENDIF !posts.length -->
				
			
			<!-- BEGIN posts -->
				<!-- IMPORT partials/posts_list.tpl -->
			<!-- END posts -->
			</ul>
	</div>	
	
</section>
</div>
</div>

<input type="hidden" template-variable="yourid" value="{yourid}" />
<input type="hidden" template-variable="theirid" value="{theirid}" />