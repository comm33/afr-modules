<div class="bc-bg row">
<div class="container">
<ol class="breadcrumb">
	<li><a href="{relative_path}/">Home</a></li>
	<li class="active">[[recent:title]]</li>
</ol>
</div>
</div>

<div class="row wrapper-md hero-page recent">

<div class="hero-wrapper hero-cover">
<div class="hero-banner recent-banner">

<div class="hero-container container m-t-lg clearfix">

<header id="hero-v" class="hero-header header col-md-8 col-md-offset-2 text-left panel-body b-b no-borders no-p-lr">
<p class="h1 strong text-left no-borders">Recent</p>
<br/>
<p class="h3 text-lte subheader-text">Recent topics sorted by date <a href="{relative_path}/recent.rss"><i class="fa fa-rss-square"></i></a></p>
</header>

<div class="col-md-8 col-md-offset-2 text-left panel-body b-b no-borders no-p-lr no-p-b">
<ul class="nav nav-pills nav-pills-tp panel-body text-uc bold no-p-lr">
	<li class=''><a href='{relative_path}/recent/day'>Today</a></li>
	<li class=''><a href='{relative_path}/recent/week'>Week</a></li>
	<li class=''><a href='{relative_path}/recent/month'>Month</a></li>
</ul>
</div>
	
</div>
</div>
</div>
</div>


<div class="container no-p-lr">
<section class="panel no-borders no-b-s">
<div class="panel-body">

<div class="col-md-8 col-md-offset-2">

	<div class="a-h hide" id="new-topics-alert">
		<a href="{relative_path}/recent">
			<p class="ah-w">There is a new post. Click here to reload.</p>
		</a>
	</div>


	<div class="category row">
	<ul id="topics-container" class="category-container clearfix" data-nextstart="{nextStart}">
	
	<header class="text-label-header strong text-label-header text-muted text-left panel-heading no-borders">Recent Topics</header>
				
		<!-- IF !topics.length -->
		<div id="category-no-topics" class="panel animated fadeInDown text-center no-borders no-b-s">
		<section class="text-center">
			<div class="panel-body nothing m-t no-borders text-muted">
				[[unread:no_unread_topics]]
			</div>
		</section>
		</div>
		<!-- ENDIF !topics.length -->
		
		<!-- BEGIN topics -->
		<!-- IMPORT partials/topics_list.tpl -->
		<!-- END topics -->
		
	</ul>
	</div>

</div>

</div>
</section>

<div class="col-md-8 col-md-offset-2">
	<div class="panel no-border no-b-s">
		<div class="panel-body no-p-lr">
			<div class="footer-c">
				<a class="btn btn-link" title="Policies" href="//help.convoe.com/policy/terms">
			      Policies
			    </a>
			    <a class="btn btn-link" title="Privacy Policy" href="//help.convoe.com/policy/privacy">
			      Privacy
			    </a>
			    <a class="btn btn-link" title="Help Center" href="//help.convoe.com/">
			      Help
			    </a>
			    <a class="btn btn-link" title="Guidelines" href="//help.convoe.com/policy/community-guidelines">
			      Guidelines
			    </a>
			</div>
		</div>
	</div>
</div>


</div>

</div>
