			<li class="list-group category-item<!-- IF topics.locked --> locked<!-- ENDIF topics.locked --><!-- IF topics.pinned --> pinned<!-- ENDIF topics.pinned --><!-- IF topics.deleted --> deleted<!-- ENDIF topics.deleted --><!-- IF topics.unread --> unread<!-- ENDIF topics.unread --> m-t m-b">
			<div class="clearfix list-group-item border-bottom" topic-url="topic/{posts.topic.slug}/{posts.index}">
			<article class="media">
				
				<div class="media-body">
				
				
				<a class="block" href="{relative_path}/topic/{posts.topic.slug}/{posts.index}">
				<span class="h3 topic-title">{posts.topic.title}</span>
								<!-- IF topics.pinned -->
								<i class="fa fa-thumb-tack"></i>
								<!-- ENDIF topics.pinned --> 
								
								<!-- IF topics.locked -->
								<i class="fa fa-lock"></i>
								<!-- ENDIF topics.locked -->
				</a>
				
				<div class="text-favourites text-expand">
					<a class="block" href="{relative_path}/topic/{posts.topic.slug}/{posts.index}">
						<small class="block m-t-sm text-preview">{posts.content}</small>
					</a>
				</div>
				
			
				</div>
				
				<span class="block text-muted text-meta m-t">
				
				<a class="pull-left" href="{relative_path}/user/{posts.user.userslug}">
					<img class="img-circle" title="{posts.user.username}" src="{posts.user.picture}" >
				</a>
				
				<a href="{relative_path}/user/{posts.user.userslug}">{posts.user.username}</a>
				<a href="{relative_path}/category/{posts.category.slug}"> posted in <span>{posts.category.name}</span></a> 
			
				<span class="m-l-xs inline-block media-xs text-s text-muted topic-timeago">
				<i class="fa fa-clock-o"></i> 
				<span class="timeago" title="{posts.relativeTime}"></span>
				</span>
				
				</span>
				
				
			</article>
			</div>
			</li>
