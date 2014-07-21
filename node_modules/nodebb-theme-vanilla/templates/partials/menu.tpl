<div class="navbar-header">
				<div>
					<span class="forum-beta forum-logo pointer"></span>
					<span class="forum-beta-title pointer">
						<h1 class="navbar-brand forum-title text-white">{title}</h1>
					</span>
				</div>
			</div>

			
				<ul id="main-nav" class="nav navbar-nav pull-left">
					<!-- BEGIN navigation -->
					<li class="{navigation.class}">
						<a href="{relative_path}{navigation.route}" title="{navigation.title}">
							<!-- IF navigation.iconClass -->
							<i class="fa fa-fw {navigation.iconClass}"></i>
							<!-- ENDIF navigation.iconClass -->

							<!-- IF navigation.text -->
							<span class="{navigation.textClass}">{navigation.text}</span>
							<!-- ENDIF navigation.text -->
						</a>
					</li>
					<!-- END navigation -->
				</ul>
				
				<!-- IF isLoggedIn -->
				<ul id="logged-in-menu" class="nav navbar-nav navbar-right pull-right">

					<li class="chats dropdown hide">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#" id="chat_dropdown"><i class="fa fa-comment-o fa-fw" title="[[global:header.chats]]"></i> <span class="visible-xs-inline">[[global:header.chats]]</span></a>
						<ul id="chat-list" class="dropdown-menu" aria-labelledby="chat_dropdown">
						<div class="popover-arrow"></div>
							<li>
								<a href="#"><i class="fa fa-refresh fa-spin"></i> [[global:chats.loading]]</a>
							</li>
						</ul>
					</li>

					<li id="user_label" class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#" id="user_dropdown" title="[[global:header.profile]]">
							<img id="user-header-picture" src="{user.picture}"/>
						</a>
						<ul id="user-control-list" class="dropdown-menu _profile-dropdown" aria-labelledby="user_dropdown">
						<div class="_profile-popover-arrow"></div>
							<li>
								<a id="user-profile-link" href="{relative_path}/user/{user.userslug}"><small>You are signed in as:</small><br/><i class="fa fa-circle status {user.status}"></i> <span id="user-header-name" class="strong text-white">{user.username}</span></a>
								
								<a class="_ps user-status" href="#" data-status="online"><small><i class="fa fa-circle status online"></i> I am online</small></a>
								<a class="_ps user-status" href="#" data-status="away"><small><i class="fa fa-circle status away"></i> I am away</small></a>
								<a class="_ps user-status" href="#" data-status="dnd"><small><i class="fa fa-circle status dnd"></i> I am busy</small></a>
								<a class="_ps user-status" href="#" data-status="offline"><small><i class="fa fa-circle status offline"></i> I am offline <small class="strong">(you'll be invisible)</small></small></a>
							</li>
							<li role="presentation" class="divider"></li>
							<li>
								<a href="{relative_path}/notifications">Notifications<br/><small>See your latest notifications</small></a>
							</li>
							<li>
								<a href="{relative_path}/user/{user.userslug}/favourites">Favourites</a>
							</li>
							<li role="presentation" class="divider"></li>
							<li>
								<a href="{relative_path}/user/{user.userslug}/settings">Settings</a>
							</li>
							<li id="logout-link">
								<a href="#">[[global:logout]]</a>
							</li>
							<li role="presentation" class="divider"></li>
							<li>
								<a href="//help.convoe.com/">Help <br/><small>Need help using Convoe?</small></a>
							</li>
							<li>
								<a href="{relative_path}/category/1/meta">Report a problem</a>
							</li>
						</ul>
					</li>
				</ul>
				<!-- ELSE -->
				<ul id="logged-out-menu" class="nav navbar-nav navbar-right pull-right">
					<!-- IF allowRegistration -->
					<li  class="hide">
						<a class="btn btn-rounded btn-register" href="{relative_path}/register">
							<span>[[global:register]]</span>
						</a>
					</li>
					<!-- ENDIF allowRegistration -->
					<li>
						<a class="btn btn-rounded btn-register" href="{relative_path}/login">
							<span>Log in</span>
						</a>
					</li>
				</ul>
				<!-- ENDIF isLoggedIn -->

				<ul class="nav navbar-nav navbar-right pull-right">
					<li>
						<a href="#" id="reconnect" class="hide" title="Connection to {title} has been lost, attempting to reconnect..."><i class="fa fa-check"></i></a>
					</li>
				</ul>

				<ul class="nav navbar-nav navbar-right pagination-block hidden visible-lg visible-md hidden">
					<li class="hide">
						<a href="#">
							<i class="fa fa-chevron-up pointer"></i>
							<span id="pagination"></span>
							<i class="fa fa-chevron-down pointer"></i>
							<div class="progress-container">
								<div class="progress-bar"></div>
							</div>
						</a>
					</li>
				</ul>

				<div class="header-topic-title hidden-xs hidden">
					<span></span>
				</div>
			