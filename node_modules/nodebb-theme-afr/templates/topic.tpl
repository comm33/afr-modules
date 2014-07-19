<input type="hidden" template-variable="topic_id" value="{tid}" />
<input type="hidden" template-variable="topic_slug" value="{slug}" />
<input type="hidden" template-variable="category_id" value="{category.cid}" />
<input type="hidden" template-variable="currentPage" value="{currentPage}" />
<input type="hidden" template-variable="pageCount" value="{pageCount}" />
<input type="hidden" template-variable="locked" template-type="boolean" value="{locked}" />
<input type="hidden" template-variable="deleted" template-type="boolean" value="{deleted}" />
<input type="hidden" template-variable="pinned" template-type="boolean" value="{pinned}" />
<input type="hidden" template-variable="topic_name" value="{title}" />
<input type="hidden" template-variable="postcount" value="{postcount}" />
<input type="hidden" template-variable="viewcount" value="{viewcount}" />

<div class="bc-bg row">
<div class="container">
		<ol class="breadcrumb">
			<li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
				<a href="{relative_path}/" itemprop="url"><span itemprop="title">[[global:home]]</span></a>
			</li>
			<li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
				<a href="{relative_path}/category/{category.slug}" itemprop="url"><span itemprop="title">{category.name}</span></a>
			</li>
			<li class="active" itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
				<a target="_blank" href="../../{tid}.rss">
					<i class="fa fa-rss-square"></i>
				</a>
				<span itemprop="title">{title}</span>
			</li>
			
		</ol>
</div>
</div>

<div class="col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2 m-t-lg wrapper-md hero-page no-p-lr">

<div id="topic-blurred-image" class="hero-wrapper ch-{cid} topic">

<div id="hero-t" class="hero-banner">
<div class="hero-container m-t-lg clearfix">

<header class="hero-header header text-left panel-body b-b no-borders no-p-lr">

<div class="topic-r-container clearfix">
	
	<div class="topic-text block">
	<p class="h2 text-left" itemprop="name">
		{title} 
	</p>
	</div>
	
	<div class="topic-main-buttons block">
	<!-- IF privileges.topics:reply -->
	
	<button id="new_post" class="btn btn-link center post_reply no-p-lr">Reply to this topic</button>
	<!-- ENDIF privileges.topics:reply -->
	
	<!-- IF !loggedIn -->
	<a href="/login?next=topic/{slug}" class="btn btn-link center post_reply no-p-lr">Reply to this topic</a>
	<!-- ENDIF !loggedIn -->
	</div>
</div>

	<div class="topic-tags">
 	<!-- BEGIN tags -->
	<a class="_tag" href="{relative_path}/tags/{tags.name}">
		<span class="tagged">{tags.name}</span>
	</a>
	<!-- END tags -->
	<!-- IF tags.length -->
	<!-- ENDIF tags.length -->
	</div>

<div class="topic-footer-stats _topic-stats-{tid} block">
		<small class="topic-stats">
		There are
			<strong>
				<span id="topic-post-count" class="human-readable-number" title="{postcount}">{postcount}</span>
			</strong> 
			<span>comments</span> and
			<strong>
				<span class="human-readable-number" title="{viewcount}">{viewcount}</span>
			</strong>
			<span>views</span>
			<span class="_topic-footer-browsing">browsing</span>
		</small>

		<div class="_topic-footer-viewing thread_active_users active-users inline-block avatar-sm img-circle"></div>

	</div>
<br/>
</header>
</div>
</div>
</div>

<div class="m-t-lg no-p-lr">

<div class="topic-left-container col-md-12 str-w">

<div class="panel-body no-p-lr">

	<div class="topic">
		
		<ul id="post-container" class="posts _topic-{tid}" data-tid="{tid}">
				<!-- BEGIN posts -->
				<li class="col-md-12 post-row infiniteloaded m-l-none m-r-none clearfix <!-- IF posts.deleted -->deleted<!-- ENDIF posts.deleted --> <!-- IF posts.user.banned -->banned<!-- ENDIF posts.user.banned -->" data-pid="{posts.pid}" data-uid="{posts.uid}" data-username="{posts.user.username}" data-timestamp="{posts.timestamp}" data-votes="{posts.votes}" data-userslug="{posts.user.userslug}" data-index="{posts.index}" data-deleted="{posts.deleted}" itemscope itemtype="http://schema.org/Comment">
					<a id="post_anchor_{posts.index}" name="{posts.index}"></a>
					<meta itemprop="datePublished" content="{posts.relativeTime}">
					<meta itemprop="dateModified" content="{posts.relativeEditTime}">
					
					<div class="__post-contained">
					<div class="col-md-1 profile-image-block hidden-xs hidden-sm sub-post center">
						<a class="inline-block m-t" href="<!-- IF posts.user.userslug -->{relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
							<img src="{posts.user.picture}" class="thumb img-circle" itemprop="image" />
						</a>
					</div>
					<div class="col-md-11">
						<div class="_contained topic-item">
						<div class="post-block panel no-border no-b-s m-b-lg border-bottom">
							<div class="topic-buttons">
								<a href="<!-- IF posts.user.userslug -->{relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->" class="post-username">
								<i class="fa fa-circle status-offline"></i>
									<span class="username-field h4 strong" title="Posted by {posts.user.username}" href="<!-- IF posts.user.userslug -->{relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->" itemprop="author" data-username="{posts.user.username}">{posts.user.username}&nbsp;</span>
								</a>
							
							
								<span class="text-muted post-time">
									posted <span class="relativeTimeAgo timeago" title="{posts.relativeTime}"></span>
									<!-- IF posts.editor.username -->
									<!-- IF posts.user.banned -->
									<!-- ELSE -->
									<span class="topic-edited hidden-xs">
									<span>· edited by <strong><a href="{relative_path}/user/{posts.editor.userslug}">{posts.editor.username}</a></strong></span>
									<span class="timeago" title="{posts.relativeEditTime}"></span>
									</span>
									<!-- ENDIF posts.user.banned -->
									<!-- ENDIF posts.editor.username -->
								</span>
								
								
								<div class="btn-group post-tools">
									<div class="dropdown share-dropdown">
										<button title="More..." class="btn btn-sm btn-link text-pb share" data-toggle="dropdown" href="#">
										<i class="fa fa-ellipsis-h"></i>
										</button>
										<ul class="dropdown-menu post-dropdown text-center pull-right" role="menu" aria-labelledby="dLabel">
											<div class="popover-arrow">
											</div>
											<div class="btn-group post-tools">
												<!-- IF posts.display_moderator_tools -->
												<button class="btn btn-sm btn-link text-pb edit" type="button" title="[[topic:edit]]">
												<i class="fa fa-pencil"></i> Edit </button>
												<button class="btn btn-sm btn-link text-pb delete" type="button" title="[[topic:delete]]">
												<i class="fa fa-trash-o"></i> Delete </button>
												<button class="btn btn-sm btn-link text-pb purge <!-- if !posts.deleted -->none <!-- ENDIF !posts.deleted -->" type="button" title="[[topic:purge]]"> <i class="fa fa-eraser"></i> Purge </button>
												<!-- IF posts.display_move_tools -->
												<button class="btn btn-sm btn-link text-pb move" type="button" title="[[topic:move]]">
												<i class="fa fa-arrows"></i> Move </button>
												<!-- ENDIF posts.display_move_tools -->
												<!-- ENDIF posts.display_moderator_tools -->
												
												<!-- IF !posts.selfPost -->
												<button class="btn btn-sm btn-link text-pb flag" type="button" title="[[topic:flag_title]]">
												<i class="fa fa-flag"></i> Report as spam </button>
												<!-- ENDIF !posts.selfPost -->
											</div>
										</ul>
									</div>
								</div>

								
								<div class="post-controls">
								<div class="btn-group post-tools">
								<div class="dropdown share-dropdown">
									<button title="[[topic:share]]" class="btn btn-sm btn-link text-pb share" data-toggle="dropdown" href="#"><i class="fa fa-link"></i></button>
									
									<ul class="dropdown-menu post-dropdown text-center pull-right" role="menu" aria-labelledby="dLabel">
									<div class="popover-arrow"></div>
									<!-- IF !config.disableSocialButtons -->
									<button class="btn btn-sm btn-link text-pb facebook-share" type="button" title=""><i class="fa fa-facebook"></i></button>
									<button class="btn btn-sm btn-link text-pb twitter-share" type="button" title=""><i class="fa fa-twitter"></i></button>
									<button class="btn btn-sm btn-link text-pb google-share" type="button" title=""><i class="fa fa-google-plus"></i></button>
									<!-- ENDIF !config.disableSocialButtons -->
									<li>
										<input type="text" id="post_{posts.pid}_link" value="" class="form-control  post-link" style=""></input>
									</li>
										
									</ul>
								</div>
								</div>
								</div>
							
							
							<div id="content_{posts.pid}" class="post-content clearfix" itemprop="text">
								{posts.content}
								
							
							<div class="btn-group topic-tools _votes">
								<button class="votes" data-votes="{posts.votes}" disabled>{posts.votes}</button>Upvotes
							</div> 
								
							<div class="pull-right">
								<div class="btn-group topic-tools">
									<button class="btn btn-sm btn-link text-pb follow hide" type="button" title="[[topic:notify_me]]"><i class="fa fa-bookmark"></i></button>
									
									<button data-favourited="{posts.favourited}" class="favourite favourite-tooltip btn btn-sm btn-link text-pb <!-- if posts.favourited --><!-- ENDIF posts.favourited -->" type="button"> <span class="favourite-text hide">[[topic:favourite]]</span>
									<span class="favouriteCount" data-favourites="{posts.reputation}">{posts.reputation}</span>&nbsp; 
									<!-- IF posts.favourited -->
									<i class="fa fa-heart"></i>
									<!-- ELSE -->
									<i class="fa fa-heart"></i>
									<!-- ENDIF posts.favourited -->
									</button>
								</div>
								
								<!-- IF !posts.selfPost -->
								<div class="btn-group topic-tools">
									<button class="btn btn-sm btn-link text-pb upvote<!-- IF posts.upvoted --> upvoted text-primary <!-- ENDIF posts.upvoted -->">
									<i class="fa fa-arrow-up"></i>
									</button>
								</div>
								<!-- ENDIF !posts.selfPost -->
								
								<!-- IF privileges.topics:reply -->
								<div class="btn-group topic-tools">
									<button class="btn btn-sm btn-link text-pb quote" type="button" title="[[topic:quote]]"><i class="fa fa-quote-left"></i></button>
									<button class="btn btn-sm btn-link text-pb post_reply" type="button"><i class="fa fa-reply"></i></button>
								</div>
								<!-- ENDIF privileges.topics:reply -->
								
								<input id="post_{posts.pid}_link" value="" class="pull-right" style="display:none;"></input>
							</div>	
								
							</div>
							
							<!-- IF posts.user.signature -->
							<div class="post-signature hide"><div class="line"></div> {posts.user.signature}</div>
							<!-- ENDIF posts.user.signature -->	
									
							<div class="post-info text-muted text-meta no-p-lr hide">
							
								<div class="pull-left post-stats hide">
									Reputation: <span data-reputation="{posts.user.reputation}" data-uid="{posts.uid}" class='formatted-number'>{posts.user.reputation}</span>
									Posts: <span class='formatted-number user_postcount_{posts.uid}'>{posts.user.postcount}</span>
								<!-- IF custom_profile_info -->
								<!-- BEGIN custom_profile_info -->
								{posts.custom_profile_info.content}
								<!-- END custom_profile_info -->
								<!-- ENDIF custom_profile_info -->
								</div>
								<div style="clear:both;"></div>
							</div>
							
						</div>
						</div>
					</div>
				</li>

				<!-- IF !posts.index -->
				<div class="col-md-12 m-l-none m-r-none" data-index="{posts.index}">
				<div class="col-md-1 hidden-xs hidden-sm"></div>
				<div class="m-t m-b col-md-11 post-bar z-o clearfix">
					<!-- IMPORT partials/post_bar.tpl -->
				</div>
				</div>
				<!-- ENDIF !posts.index -->				
				
				<!-- END posts -->
		</ul>
		
		<div class="col-md-12 m-l-none m-r-none clearfix">
			<div class="col-md-1 hidden-xs hidden-sm"></div>
				<div class="m-t m-b col-md-11 post-bar z-o clearfix hide">
					<!-- IMPORT partials/post_bar.tpl -->
				</div>
		</div>
		
		<!-- IF config.usePagination -->
		<div class="text-center">
				<ul class="pagination pagination-lg">
						<li class="previous pull-left strong"><a class="text-uc" href="#">Previous</a></li>
						<li class="next pull-right strong"><a class="text-uc" href="#">Next</a></li>
				</ul>
		</div>
		<!-- ENDIF config.usePagination -->
		
	<!-- IMPORT partials/move_thread_modal.tpl -->
	<!-- IMPORT partials/fork_thread_modal.tpl -->
	<!-- IMPORT partials/move_post_modal.tpl -->

	</div>
					</div>
	
</div>
</div>

<div class="topic-right-container col-md-4 hidden-sm hidden-xs">
	<span class="text-muted hide">We're currently working on the sidebar. :)</span>
</div>

</div> 

<!-- IF !loggedIn -->
<div class="col-md-12 logged-out hidden-xs" style="background-image: url('//convoe.com/images/lgbg/_v.jpg');">
<div class="logged-out-wrapper container">
<div class="logged-out-blurb clearfix">
<span class="logged-out-welcome">Welcome to</span>
<span class="logged-out-name m-b-lg"></span>
		<div class="logged-out-card">
			<span class="logged-out-blurb hidden-xs">Join one of the world's most advanced discussion communities.</span>
		</div>
</div>
<div class="logged-out-bar col-md-12 center">
	<span class="logged-out-signup"><a href="/register" class="m-t btn btn-hero btn-rounded logged-out-btn center">Don't have an account?</a></span>
</div>
</div>
</div>
<!-- ENDIF !loggedIn --> 

</div>

<!-- IMPORT partials/noscript/paginator.tpl -->
