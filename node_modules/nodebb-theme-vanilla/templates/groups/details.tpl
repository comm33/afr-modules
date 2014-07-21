<div class="row wrapper-md hero-page groups details">

<div class="hero-wrapper hero-cover">
<div class="hero-banner unread-banner">

<div class="hero-container container m-t-lg clearfix">

<header id="hero-v" class="hero-header header container col-md-8 col-md-offset-2 text-left panel-body b-b no-borders no-p-lr">

<p class="h1 group-title strong no-borders">{group.name}</p>
<br/>
<p class="h3 text-lte">{group.description}</p>

<div class="group-members">
<!-- BEGIN members -->
<a href="{relative_path}/user/{group.members.userslug}" data-slug="{group.members.userslug}">
	<span class="group-members-img">
		<img src="{group.members.picture}" title="{group.members.username}" />
	</span>
</a>
<!-- END members -->
</div>
</header>

</div>
</div>
</div>
</div>

<div class="container no-p-lr">
<section class="panel no-borders no-b-s">
<div class="panel-body"> 
<div class="col-md-8 col-md-offset-2">

	<div class="category row">
			<ul id="topics-container">
			<header class="text-label-header strong text-label-header text-muted text-left panel-heading no-borders">{group.name}'s Latest Posts</header>
						
			<!-- IF !posts.length -->
			<div class="panel animated fadeInDown text-center no-borders no-b-s">
			<section class="text-center">
				<div class="panel-body nothing m-t no-borders text-muted">
					This group does not have any posts.
				</div>
			</section>
			</div>
			<!-- ENDIF !posts.length -->
	
			<!-- BEGIN posts -->
				<!-- IMPORT partials/posts_list.tpl -->
			<!-- END posts -->
			</ul>
	</div>

</div>
</section>
</div>
</div>

</div>