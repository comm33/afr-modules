<li class="col-md-4 col-sm-4 col-xs-6 list-group category-item<!-- IF topics.locked --> locked<!-- ENDIF topics.locked --><!-- IF topics.pinned --> pinned<!-- ENDIF topics.pinned --><!-- IF topics.deleted --> deleted<!-- ENDIF topics.deleted --><!-- IF topics.unread --> unread<!-- ENDIF topics.unread -->" data-tid="{topics.tid}" data-index="{topics.index}">
	<div class="popular-topics clearfix list-group-item no-borders _tp">
	<div class="category-state">
	<i class="fa fa-thumb-tack<!-- IF !topics.pinned --> hide<!-- ENDIF !topics.pinned -->"></i> 
	<i class="fa fa-lock<!-- IF !topics.locked --> hide<!-- ENDIF !topics.locked -->"></i>
	</div>
	
	<article class="media">
		<div class="topic-content-wrapper">
		<div class="topic-title-container">
			<div class="topic-image-overlay"></div>
			<div class="topic-image-bg hide" <!-- IF topics.thumb -->style="background-image: url('{topics.thumb}');"<!-- ENDIF topics.thumb -->></div>
			<a class="topic-title-wrap" href="{relative_path}/topic/{topics.slug}">
				<span class="h3 topic-title">{topics.title}</span>
			</a>
		
		<a class="topic-category-title" href="{relative_path}/category/{topics.category.slug}">{topics.category.name}</a>
			
		<!-- IF topics.unreplied -->
		<!-- ELSE -->
		<a class="topic-replied-time" href="{relative_path}/topic/{topics.slug}/{topics.teaser.index}">
			<span class="timeago" title="{topics.teaser.timestamp}"></span> <i class="fa fa-reply"></i>
		</a>
		<!-- ENDIF topics.unreplied -->
		</div>
		<div class="topic-content-container media-body">
		
		<!-- IF privileges.editable -->
 		<i class="fa fa-fw fa-square-o pull-left select pointer hide"></i>
 		<!-- ENDIF privileges.editable -->
 
		<div class="topic-content-tags">
			<!-- IF topics.tags.length -->
			<!-- BEGIN tags -->
			<a class="topic-content-tag" href="{relative_path}/tags/{topics.tags.name}">
				<span>{topics.tags.name}</span>
			</a>
			<!-- END tags -->
			<!-- ENDIF topics.tags.length -->
		</div>
		
		<div class="topic-content-meta block text-muted text-meta">
		
		<div class="topic-content-hidden hide">
		<a class="pull-left" href="{relative_path}/user/{topics.user.userslug}">
			<img class="img-circle" src="{topics.user.picture}" title="{topics.user.username}"/>
		</a>
		
		<!-- IF topics.unreplied -->
		<!-- ELSE -->
		<a class="teaser-pic" href="<!-- IF topics.teaser.user.userslug -->{relative_path}/user/{topics.teaser.user.userslug}<!-- ELSE -->#<!-- ENDIF topics.teaser.user.userslug -->">
			<img class="thumb-xs img-circle" src="{topics.teaser.user.picture}" title="{topics.teaser.user.username}"/>
		</a>
		<!-- ENDIF topics.unreplied -->
		</div>

		<a href="{relative_path}/user/{topics.user.userslug}">{topics.user.username}</a>
		
		<a href="{relative_path}/topic/{topics.slug}">posted 
		
		<span class="m-l-xs inline-block media-xs text-s text-muted topic-timeago">
		<i class="fa fa-clock-o"></i> 
		<span class="timeago" title="{topics.relativeTime}"></span>
		</span>
		</a>
		
		</div>

		</div>
		</div>
		
		<div class="topic-content-stats block text-muted">
		<span class="topic-stats">
			<strong class="human-readable-number" title="{topics.postcount}">{topics.postcount}</strong>
			posts and
		</span>
		<span class="topic-stats">
			<strong class="human-readable-number" title="{topics.viewcount}">{topics.viewcount}</strong>
			views
		</span>
		</div>
		
	</article>
	</div>
</li>