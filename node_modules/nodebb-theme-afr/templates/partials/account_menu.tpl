<div class="account-username-box pull-right" data-userslug="{userslug}" data-uid="{uid}">
	<div class="dropdown account-sub-links">
	<button class="btn btn-lg btn-link text-white text-pb share" data-toggle="dropdown" href="#">
		<i class="fa fa-cog hover-rotate"></i>
	</button>
	<ul class="dropdown-menu post-dropdown text-center pull-right account-sub-links">
		<div class="popover-arrow"></div>
		<li id="profile"><a href="{config.relative_path}/user/{userslug}">[[user:profile]]</a></li>
		<li id="editLink" class="hide"><a href="{config.relative_path}/user/{userslug}/edit">[[user:edit]]</a></li>
		<li id="settingsLink" class="hide"><a href="{config.relative_path}/user/{userslug}/settings">[[user:settings]]</a></li>
		<li id="favouritesLink" class="hide"><a href="{config.relative_path}/user/{userslug}/favourites">[[user:favourites]]</a></li>
		<li><a href="{config.relative_path}/user/{userslug}/posts">[[global:posts]]</a></li>
		<li><a href="{config.relative_path}/user/{userslug}/topics">[[global:topics]]</a></li>
		<!-- IF !isSelf -->
		<li><a id="chat-btn" href="#">Message</a></li>
		<li><a id="follow-btn" title="[[user:follow]]" href="#">Follow</a></li>
		<li><a id="unfollow-btn" title="[[user:unfollow]]" href="#">Unfollow</a></li>
		<!-- ENDIF !isSelf -->
	</ul>
	</div>
</div>

<!-- <li><a href="{config.relative_path}/user/{userslug}/followers">[[user:followers]]</a></li> -->
		<!-- <li><a href="{config.relative_path}/user/{userslug}/following">[[user:following]]</a></li> -->