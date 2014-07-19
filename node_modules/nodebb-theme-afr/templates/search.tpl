<div class="bc-bg row">
<div class="container">
<ol class="breadcrumb">
	<li><a href="{relative_path}/">[[global:home]]</a></li>
	<li class="active">[[global:header.search]]</li>
</ol>
</div>
</div>


<div class="row m-t-lg wrapper-md hero-page search">

<div class="hero-wrapper hero-cover">
<div class="hero-banner search-banner">

<div class="hero-container container m-t-lg clearfix">

<header id="hero-v" class="hero-header header col-md-8 col-md-offset-2 text-left panel-body b-b no-borders no-p-lr">
	

<form id="mobile-search-form" class="" role="search" method="GET" action="">
	<div class="" id="search-fields">
		
			<input type="text" class="form-search form-control" autocomplete="off" placeholder="Type and press enter to search" name="query" value="">

		<button type="submit" class="btn btn-default hide">Search</button>
	</div>
</form>

<br/>
<p class="h3 text-lte">Search for interesting topics and posts</p>
</header>

</div>
</div>
</div>
</div>


<div class="container no-p-lr">
<section class="panel no-borders no-b-s">
<div class="panel-body">

<div class="category row favourites search">
	<div>
		<ul id="topic-results" data-search-query="{search_query}">
		<!-- IF topic_matches -->		
		<div class="col-md-8 col-md-offset-2 m-b-xl">
		<header class="text-label-header strong text-label-header text-muted text-left panel-heading no-borders">Topics <span class="strong">{topic_matches}</span> result(s) matching <span class="search-match strong">"{search_query}"</span></header>
		<!-- ELSE -->
		<!-- NOTE:
		
			 We are not going to show if anything matched
			 any topics because of UX constraints. Meh,
			 the reason is clear though.
		<div class="text-center text-muted nothing">
			We could not find any topics matching <span class="strong">{search_query}</span>
		</div>
		-->
		<!-- ENDIF topic_matches -->

		<ul class="list-group category-item no-radius no-borders">
		<!-- BEGIN topics -->
		<li class="list-group category-item<!-- IF topics.locked --> locked<!-- ENDIF topics.locked --><!-- IF topics.pinned --> pinned<!-- ENDIF topics.pinned --><!-- IF topics.deleted --> deleted<!-- ENDIF topics.deleted --><!-- IF topics.unread --> unread<!-- ENDIF topics.unread --> border-bottom" data-tid="{topics.tid}" data-cid="{topics.cid}" data-index="{topics.index}">
			<div class="clearfix list-group-item border-bottom">
			<article class="media">
			
				<!-- IF topics.unreplied -->
				<!-- ELSE -->
				<div class="block pull-right media-xs text-right text-muted m-t-xs">
				<a href="{relative_path}/topic/{topics.slug}#{topics.teaser.pid}">replied</a>
				<span class="timeago" title="{topics.teaser.timestamp}"></span>
				<a href="<!-- IF topics.teaser.user.userslug -->../../user/{topics.teaser.user.userslug}<!-- ELSE -->#<!-- ENDIF topics.teaser.user.userslug -->">
					<img class="thumb-xs img-circle teaser-pic" src="{topics.teaser.user.picture}" title="{topics.teaser.user.username}"/>
				</a>
				</div>
				<!-- ENDIF topics.unreplied -->
			
				<div class="media-body o-v">
				
				<!-- IF privileges.editable -->
		 		<i class="fa fa-fw fa-square-o pull-left select pointer"></i>
		 		<!-- ENDIF privileges.editable -->
		 
				<a href="{relative_path}/topic/{topics.slug}">
					<span class="h3 topic-title search-result-text">{topics.title}</span>
						<i class="fa fa-thumb-tack<!-- IF !topics.pinned --> hide<!-- ENDIF !topics.pinned -->"></i> 
						<i class="fa fa-lock<!-- IF !topics.locked --> hide<!-- ENDIF !topics.locked -->"></i>
				</a>
				
				<div class="block text-muted">
				<span class="topic-stats">
					<strong class="human-readable-number" title="{topics.postcount}">{topics.postcount}</strong>
					posts and
				</span>
				<span class="topic-stats">
					<strong class="human-readable-number" title="{topics.viewcount}">{topics.viewcount}</strong>
					views
				</span>
				</div>
		
				</div>
				
				<div class="block text-muted text-meta m-t">
				
				<a class="pull-left" href="{relative_path}/user/{topics.user.userslug}">
					<img class="img-circle" src="{topics.user.picture}" title="{topics.user.username}"/>
				</a>
		
				<a href="{relative_path}/user/{topics.user.userslug}">{topics.user.username}</a>
				<a href="{relative_path}/category/{topics.category.slug}">posted in <span>{topics.category.name}</span></a> 
				
				<div class="m-l-xs inline-block media-xs text-s text-muted topic-timeago">
				<i class="fa fa-clock-o"></i> 
				<a href="{relative_path}/topic/{topics.slug}">
					<span class="timeago" title="{topics.relativeTime}"></span>
				</a>
				</div>
				
				</div>
				
			</article>
			</div>
			</li>
		<!-- END topics -->
		</ul>
		
		</div>
				
		<div class="col-md-8 col-md-offset-2">
		
		<!-- IF post_matches -->
		<header class="text-label-header strong text-label-header text-muted text-left panel-heading no-borders">
		Posts <span class="strong">{post_matches}</span> result(s) matching <span class="search-match strong">"{search_query}"</span>
		</header>
		<!-- ELSE -->
		<!-- NOTE:
		
			 Same as the note above for the
			 topics. Not going to use this.
		<div class="text-center text-muted nothing">
			We could not find any posts matching <strong class="strong">{search_query}</strong>
		</div>
		-->
		<!-- ENDIF post_matches -->

		<ul class="list-group category-item no-radius no-borders m-t-sm">
		<!-- BEGIN posts -->		
			<li class="list-group category-item<!-- IF topics.locked --> locked<!-- ENDIF topics.locked --><!-- IF topics.pinned --> pinned<!-- ENDIF topics.pinned --><!-- IF topics.deleted --> deleted<!-- ENDIF topics.deleted --><!-- IF topics.unread --> unread<!-- ENDIF topics.unread --> m-t m-b border-bottom">
			<div class="clearfix list-group-item" topic-url="topic/{posts.topic.slug}/#{posts.pid}">
			<article class="media">
				
				<div class="media-body">
				<div class="text-favourites text-expand">
					<div class="m-t-sm text-preview">
					<a class="block m-t-sm text-preview search-result-text" href="../../topic/{posts.topic.slug}/#{posts.pid}">{posts.content}</a>
					</div>
				</div>
				</div>
				
				<div class="block text-muted text-meta m-t">
				
				<a class="pull-left" href="../../user/{posts.user.userslug}">
					<img class="img-circle" title="{posts.user.username}" src="{posts.user.picture}" >
				</a>
				
				<a href="../../user/{posts.user.userslug}">{posts.user.username}</a>
				<a href="../../category/{posts.category.slug}"> posted in <span>{posts.category.name}</span></a> 
			
				<div class="m-l-xs inline-block media-xs text-s text-muted topic-timeago">
				<i class="fa fa-clock-o"></i> 
				<span class="timeago" title="{posts.relativeTime}"></span>
				</div>
				
				</div>
				
				
			</article>
			</div>
			</li>
		<!-- END posts -->
		</ul>
		</div>
		
		</ul>
	</div>
</div>


</div>
</section>
</div>

</div>
