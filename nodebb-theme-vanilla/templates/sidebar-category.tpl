<!-- BEGIN topics -->
<li class="<!-- IF topics.locked --> locked<!-- ENDIF topics.locked --><!-- IF topics.pinned --> pinned<!-- ENDIF topics.pinned --><!-- IF topics.deleted --> deleted<!-- ENDIF topics.deleted --><!-- IF topics.unread --> unread<!-- ENDIF topics.unread -->" data-tid="{topics.tid}" data-cid="{topics.cid}">
	<img class="picture img-circle" src="{topics.user.picture}" title="{topics.user.username}" />
		<!-- 
		<!-- IF topics.unreplied -->
		<!-- ELSE -->
		<a class="replied" href="{relative_path}/topic/{topics.slug}#{topics.teaser.pid}" title="{topics.teaser.user.username} replied {topics.teaser.timestamp}">
		<img class="thumb-xs img-circle teaser-pic" src="{topics.teaser.user.picture}" title="{topics.teaser.user.username}"/>
		</a>
		<!-- ENDIF topics.unreplied -->
		-->
	<p class="sidebar-label">{topics.title} <i class="fa fa-thumb-tack<!-- IF !topics.pinned --> hide<!-- ENDIF !topics.pinned -->"></i> <i class="fa fa-lock<!-- IF !topics.locked --> hide<!-- ENDIF !topics.locked -->"></i>
		
		<span class="stats block text-muted">
		<span class="topic-stats">
			<strong class="human-readable-number" title="{topics.postcount}">{topics.postcount}</strong>
			posts and
		</span>
		<span class="topic-stats">
			<strong class="human-readable-number" title="{topics.viewcount}">{topics.viewcount}</strong>
			views
		</span>
		</span>
	</p>
	
	<span class="timeago" title="{topics.relativeTime}"></span>
	
	<p class="meta"></p>
	<div class="clearfix"></div>
</li>
<!-- END topics -->
<li class="more">
	<p>Load more topics</p>
</li>