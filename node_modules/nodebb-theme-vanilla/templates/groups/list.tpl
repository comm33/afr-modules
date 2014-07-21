<div class="row wrapper-md hero-page groups">
<div class="hero-wrapper hero-cover">
<div class="hero-banner recent-banner">
<div class="hero-container container m-t-lg clearfix">

<header id="hero-v" class="hero-header header container col-md-8 col-md-offset-2 text-left panel-body b-b no-borders no-p-lr">
<p class="h1 strong text-left no-borders">Groups</p>
<br/>
<p class="h3 text-lte subheader-text">Explore all groups on Convoe</p>
</header>
	
</div>
</div>
</div>
</div>


<div class="container no-p-lr">
<section class="panel no-borders no-b-s">
<div class="panel-body">

<div class="col-md-8 col-md-offset-2">

	<div class="row">
	<ul id="topics-container" class="_tags">
	
	<header class="text-label-header strong text-label-header text-muted text-left panel-heading no-borders">All Groups</header>
		
	<!-- BEGIN groups -->
	<div class="col-lg-4 col-md-6 col-sm-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">{groups.name} <small>{groups.memberCount}</small></h3>
			</div>
			<div class="panel-body">
				<a href="{relative_path}/groups/{groups.name}" class="pull-right btn btn-default">[[groups:view_group]]</a>
				<ul class="members">
					<!-- BEGIN members -->
					<li>
						<a href="{relative_path}/user/{groups.members.userslug}">
							<img src="{groups.members.picture}" title="{groups.members.userslug}" />
						</a>
					</li>
					<!-- END members -->
					<!-- IF groups.truncated -->
					<li class="truncated"><i class="fa fa-ellipsis-h"></i></li>
					<!-- ENDIF groups.truncated -->
				</ul>
			</div>
		</div>
	</div>
	<!-- END groups -->
		
	</ul>
	</div>

</div>

</div>
</section>
<div class="col-md-8 col-md-offset-2">
	<div class="panel no-border no-b-s">
		<div class="panel-body no-p-lr">
			<div class="footer-c">
				<a class="btn btn-link" title="Read convoe's Policies" href="//convoe.com/topic/91/terms-of-service">Policies</a>
				<a class="btn btn-link" title="Help Center" href="//convoe.com/category/19/help">Help</a>
				<a class="btn btn-link" title="Read conve's Guidlines" href="//convoe.com/topic/130/rules-guidelines">Guidelines</a>
			</div>
		</div>
	</div>
</div>
</div>
</div>