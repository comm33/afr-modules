<div class="row m-t-lg wrapper-md hero-page account settings">

<div class="hero-wrapper hero-cover">
<div class="hero-banner account-banner">
<div class="hero-container container m-t-lg clearfix">

	<header class="hero-header header col-md-8 col-md-offset-2 text-left panel-body b-b no-borders no-p-lr">
	<!-- IMPORT partials/account_menu.tpl -->
	<div class="pull-left text-left">
	<p class="h1 strong no-borders account-username" data-userslug="{userslug}">
		<a class="bold" href="{relative_path}/user/{userslug}">{username}</a>
	</p>
	<a href="{relative_path}/user/{userslug}/settings" class="h3 text-lte block">Account Settings</a>
	</div>
	</header>
</div>
</div>
</div>	

<div class="container m-t-lg no-p-lr">
<section class="panel no-borders no-b-s">	

		<div class="col-md-8 col-md-offset-2 text-left no-p-lr">
			
			
			<!-- //settings.email.privacy -->
			<div class="clearfix m-b">
				<header class="h3 strong header b-b no-borders">
				<p>Email Settings</p>
				<p class="_switch">Off / On</p>
			</header>
				
				<div class="form-horizontal bg-white no-p-tb">
			    <div class="col-md-9 col-sm-9 col-xs-9">
					<p class="form-desc">Choose whether or not you want your email address shown publicly or hidden. By default your email address is automatically hidden from the public.</p>
				</div>
			    <div class="col-md-3 col-sm-3 col-xs-3">
				    <label class="switch pull-right"> 
				    	<input id="showemailCheckBox" type="checkbox" data-property="showemail" /> 
				    		<span></span> 
				    </label>	
				</div>
			</div>
			</div>
			
			<div class="clearfix m-b">
				<header for="dailyDigestFreq" class="h3 strong header bg-white b-b no-borders">
					<p>Email Subscriptions</p>
				</header>
			<div class="form-horizontal bg-white no-p-tb">
				<div class="col-md-8 col-sm-8 col-xs-8">
					<p class="form-desc">Subscribe to email updates for Convoe by receiving new notifications and topics according to a set schedule. You can also turn them off completely.</p>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-4">
					<div class="_dropdown">
					<select class="form-control" id="dailyDigestFreq" data-property="dailyDigestFreq">
						<option value="off">[[user:digest_off]]</option>
						<option value="daily">[[user:digest_daily]]</option>
						<option value="weekly" disabled="disabled">[[user:digest_weekly]]</option>
						<option value="monthly" disabled="disabled">[[user:digest_monthly]]</option>
					</select>
					</div>
				</div>
			</div>
			</div>
			
			<!-- //settings.sound.notifications -->
			<div class="clearfix m-b">
			<header class="h3 strong header bg-white b-b no-borders">
			<p>Notifications</p>
		</header>
			
			<div class="form-horizontal bg-white no-p-tb">
			    <div class="col-md-9 col-sm-9 col-xs-9">
					<p class="form-desc">You can choose whether or not you want to hear sounds for notifications as well as incoming and outgoing messages.</p>
				</div>
			    <div class="col-md-3 col-sm-3 col-xs-3">
				    <label class="switch pull-right _top"> 
				    	<input type="checkbox" data-property="notificationSounds" /> 
				    		<span></span> 
				    </label>	
				</div>
			</div>
		</div>
		    
			<!-- //settings.pagination -->
			<div class="clearfix m-b">
	    <header class="h3 strong header bg-white b-b no-borders">
			<p>[[global:pagination]]</p>
		</header>
		
			<div class="form-horizontal bg-white no-p-tb">
				<div class="col-md-9 col-sm-9 col-xs-9">
					<p class="form-desc">[[user:paginate_description]]</p>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-3">
				    <label class="switch pull-right"> 
				    	<input type="checkbox" data-property="usePagination" /> 
				    		<span></span> 
				    </label>	
				</div>
			
				<div class="hide">
				<strong>[[user:topics_per_page]]</strong>
				<input type="text" class="form-control" data-property="topicsPerPage"><br />
				<strong>[[user:posts_per_page]]</strong>
				<input type="text" class="form-control" data-property="postsPerPage"><br />
				</div>
				
			</div>
			
	    </div>

			<!-- //settings.browsing -->
			<div class="clearfix m-b">
	    <header class="h3 strong header bg-white b-b no-borders">
			<p>Browsing</p>
		</header>
		
			<div class="form-horizontal bg-white no-p-tb">
				<div class="col-md-9 col-sm-9 col-xs-9">
					<p class="form-desc">Would you like to open links in an new tab?</p>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-3">
				    <label class="switch pull-right _top"> 
				    	<input type="checkbox" data-property="openOutgoingLinksInNewTab" /> 
				    		<span></span> 
				    </label>	
				</div>
				
			</div>
			
	    </div>
		    
			<!-- BEGIN settings -->
			<h4>{settings.title}</h4>
			<div class="well">
				{settings.content}
			</div>
			<!-- END settings -->
		    
			<div class="form-actions clearfix m-t pull-left">
				<div class="form-horizontal no-p-tb">
					<div class="col-md-12">
					<a id="submitBtn" href="#" class="btn btn-white btn-rounded">Save your settings</a>
					</div>
				</div>
			</div>
			
			
		</div>

</section>
<div class="p-s-tb"></div>
</div>
</div>

<input type="hidden" template-variable="yourid" value="{yourid}" />
<input type="hidden" template-variable="theirid" value="{theirid}" />