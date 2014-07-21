<input type="hidden" template-variable="tag" value="{tag}" />

<div class="bc-bg row">
<div class="container">
<ol class="breadcrumb">
		<li><a href="{relative_path}/">[[global:home]]</a></li>
		<li><a href="{relative_path}/tags">[[tags:tags]]</a></li>
		<li class="active"><strong>{tag}</strong></li>
</ol>
</div>
</div>

<div class="row wrapper-md hero-page tag">

<div class="hero-wrapper hero-cover">
<div class="hero-banner recent-banner">

<div class="hero-container container m-t-lg clearfix">

<header id="hero-v" class="hero-header header col-md-8 col-md-offset-2 text-left panel-body b-b no-borders no-p-lr">
<p class="h1 strong text-left no-borders"><a href="{relative_path}/tags" title="See all tags">Tags</a></p>
<br/>
<p class="h3 text-lte subheader-text">Topics that are tagged with:</p>
<br/>
<a href="{relative_path}/tags" class="_tag">{tag}</a>
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
	<ul id="topics-container" class="category-container clearfix" data-nextstart="{nextStart}">
	
	<header class="text-label-header strong text-label-header text-muted text-left panel-heading no-borders">Tagged Topics</header>
				
		<!-- IF !topics.length -->
		<div id="category-no-topics" class="panel animated fadeInDown text-center no-borders no-b-s">
		<section class="text-center">
			<div class="panel-body nothing m-t no-borders text-muted">
				There are currently no topics with this tag.
			</div>
		</section>
		</div>
		<!-- ENDIF !topics.length -->
		
		<!-- BEGIN topics -->
		<!-- IMPORT partials/topics_list.tpl -->
		<!-- END topics -->
		
	</ul>
		<button id="load-more-btn" class="btn btn-white btn-roudned hide">[[unread:load_more]]</button>
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
