<div class="row m-t-lg wrapper-md hero-page account">

<div class="hero-wrapper hero-cover">
<div class="hero-banner account-banner">
<div class="hero-container container m-t-lg clearfix">
	<!-- IF banned -->
	<!-- ELSE -->
	<header class="hero-header header col-md-8 col-md-offset-2 text-left panel-body b-b no-borders no-p-lr">
	<!-- IMPORT partials/account_menu.tpl -->
	<div class="pull-left text-left">
	<!-- 
		 NOTE:
		 We will not be using this
		 right now as this doesn't
		 really matter at the moment.
		 
	<p class="h3 text-lte text-white block hide">Joined <span class="timeago" title="{joindate}"></span></p> 
	-->
	<div class="account-stats account-stats-h text-lte">
	<!-- IF ips.length -->
	<!-- BEGIN ips -->
	<p class="inline hide">{ips.ip}</p>
	<!-- END ips -->
	<!-- ENDIF ips.length -->
	</div>
	</div>

	<!-- ENDIF banned -->
	
	</header>

</div>
</div>
</div>	

<div class="container m-t-lg no-p-lr">
<section class="panel no-borders no-b-s">	
	
	<!-- IF banned -->
	<div class="panel animated fadeInDown hide text-center no-borders no-b-s show">
		<section class="text-center">
			<div class="panel-body nothing m-t no-borders account-banned-text">
			<header class="h1 strong">Deactivated</header>
				<p>We're sorry, but this account has been deactivated.</p>
			</div>
		</section>
	</div>
	<div class="panel-body account-banned">
	<!-- ELSE -->
	<div class="panel-body">
	<!-- ENDIF banned -->
		<div class="col-md-10 col-md-offset-1 text-center no-p-lr">
			<div class="clearfix m-b-lg no-p-lr">
				<div class="thumb-l animated fadeInDown m-b-lg hero-avatar">
				<a href="{relative_path}/user/{userslug}">
					<img src="{picture}" class="user-profile-picture img-circle"/>
				</a>
					<div class="account-online-status fa fa-circle status offline" title="[[global:{status}]]">
					</div>
				</div>
		
				<div class="clearfix account-bio-block m-b">
					<div class="h3 m-t-xs m-b-xs">
						<!-- IF fullname -->
						<p class="h2 strong fullname inline-block m-t">{fullname}</p>
						<!-- ELSE -->
						<p class="h2 strong fullname inline-block m-t account-username text-lc">{username}</p>
						<!-- ENDIF fullname -->
						 
						<!-- IF !disableSignatures -->
						<!-- IF signature -->
						<div id="signature" class="text-center signature m-t">{signature}</div>
						<!-- ENDIF signature -->
						<!-- ENDIF !disableSignatures -->
					</div>
					
					<span class="text-muted inline-block account-info lastonline"><i class="fa fa-clock-o"></i> Last seen <span class="timeago" title="{lastonline}"></span></span>

					<!-- IF location -->
					<span class="text-muted inline-block account-info location">
						<i class="fa fa-map-marker"></i> {location}
					</span>
					<!-- ENDIF location -->
					
					<!-- IF age -->
					<!-- TODO - Users should be able to turn this on or off in the settings
					<span class="text-muted inline-block account-info location">{age}</span> -->
					<!-- ENDIF age -->
					
					<!-- IF email -->
					<span class="text-muted inline-block account-info email"><i class="fa fa-envelope"></i> {email}</span>
					<!-- ENDIF email -->
					 
					<!-- IF website -->
					<span class="text-muted inline-block account-info website">
						 <a href="{website}"><i class="fa fa-globe"></i> {websiteName}</a>
					</span>
					<!-- ENDIF website -->
					
				</div>			
				
				<div class="m-t-lg clearfix account-stats">
					
					<div class="col-xs-4 no-p-lr">
						<span class="m-b-xs h2 block strong">{postcount}<!-- {followerCount} --></span> <small class="text-muted text-uc text-xs">Posts<!-- Followers --></small>
					</div>
		
					<div class="col-xs-4 no-p-lr">
						<span class="m-b-xs h2 block strong">{profileviews}<!-- {followingCount} --></span> <small class="text-muted text-uc text-xs">Views<!-- Following --></small>
					</div>
		
					<div class="col-xs-4 no-p-lr">
						<span class="m-b-xs h2 block strong">{reputation}</span> <small class="text-muted text-uc text-xs">Reputation</small>
					</div>
					
				</div>
				
			</div>
			
			<!-- IF banned -->
			<!-- ELSE -->
			<div class="m-t-lg no-p-lr">
			<section class="panel no-borders no-b-s">	
			
			
			<div class="panel-body">

			<div class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 m-t-lg">
			
			<ul class="user-posts user-favourite-posts text-left" data-nextstart="{nextStart}">
			
			<header class="text-label-header strong text-label-header text-muted text-left panel-heading no-borders">{username}'s Latest Posts
			</header>
			<!-- IF !posts.length -->
			<div class="panel animated fadeInDown text-center no-borders no-b-s">
				<section class="text-center">
					<div class="panel-body nothing m-t no-borders text-muted">
						You currently do not have any posts.
					</div>
				</section>
			</div>
			<!-- ENDIF !posts.length -->
				
			
			<!-- BEGIN posts -->
				<!-- IMPORT partials/posts_list.tpl -->
			<!-- END posts -->
			</ul>

						
						
			</div>
			
			
			</div>
			
			</section>

			</div>
			<!-- ENDIF banned -->
			
		</div>
		
	</div>
	
	<!-- IF banned -->
	</div>
	<!-- ENDIF banned -->
	
	<br/>
	<div id="user-action-alert" class="alert alert-success hide"></div>

</section>
</div>
</div>

<input type="hidden" template-variable="yourid" value="{yourid}" />
<input type="hidden" template-variable="theirid" value="{theirid}" />
<input type="hidden" template-type="boolean" template-variable="isFollowing" value="{isFollowing}" />