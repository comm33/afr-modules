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
	<a href="{relative_path}/user/{userslug}/topics" class="h3 text-lte block">{username}'s topics on Convoe</a>
	</div>
	</header>
</div>
</div>
</div>	

<div class="container m-t-lg no-p-lr">
<section class="panel no-borders no-b-s">	

	<div class="col-md-8 col-md-offset-2 m-t-lg">
	<ul class="category-container clearfix user-topics" data-nextstart="{nextStart}">
		<header class="text-label-header strong text-label-header text-muted text-left panel-heading no-borders">{username}'s Topics</header>
			<!-- IF !topics.length -->
			<div class="panel animated fadeInDown text-center no-borders no-b-s">
				<section class="text-center">
					<div class="panel-body nothing m-t no-borders text-muted">
						You currently do not have any topics.
					</div>
				</section>
			</div>
			<!-- ENDIF !topics.length -->
		
			
			<!-- BEGIN topics -->
			<!-- IMPORT partials/topics_list.tpl -->
			<!-- END topics -->
			</ul>
	</div>	
	
</section>
</div>
</div>

<input type="hidden" template-variable="yourid" value="{yourid}" />
<input type="hidden" template-variable="theirid" value="{theirid}" />