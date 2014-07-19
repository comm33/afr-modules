<div class="row m-t-lg wrapper-md hero-page account">

<div class="hero-wrapper hero-cover">
<div class="hero-banner account-banner">
<div class="hero-container container m-t-lg clearfix">
	
	<header class="hero-header header col-md-8 col-md-offset-2 text-left panel-body b-b no-borders no-p-lr">
	<!-- IMPORT partials/account_menu.tpl -->
	<div class="pull-left text-left">
	<p class="h1 strong no-borders account-username" data-userslug="{userslug}">
	<a class="bold" href="{relative_path}/user/{userslug}">{username}</a>
	</p>
	<a href="{relative_path}/user/{userslug}/edit" class="h3 text-lte block">Account Editing</a>
	</div>
	</header>
</div>
</div>
</div>	

	
<div class="container no-p-lr">
<section class="panel no-borders no-b-s">	
	
	<div class="panel-body">
		<div class="col-md-8 col-md-offset-2">
		
		<div class="clearfix m-b-lg text-center">
			<div class="account-picture-block text-center thumb-lg m-b-lg">
				<a id="changePictureBtn" class="change-picture" href="#">
				<img id="user-current-picture" class="user-profile-picture img-circle" src="{picture}" />
				<div class="overlay center"></div>
				</a>
			</div>
		</div>
		<div class="clearfix">
		
			<div class="panel no-borders no-b-s">
			<header class="text-label-header strong text-label-header text-muted text-left panel-heading no-borders">Profile Information
			</header>
			<div class="text-preferences">
				<form class="_account-form-container form-horizontal panel-body no-p-lr">
				
					<label class="_account-label control-label" for="inputFullname">Hello, my name is</label>
							<input class="form-inline _account-form no-radius" type="text" id="inputFullname" placeholder="John Doe" value="{fullname}" data-autosize-input='{"space":0}'>
					<br/>		
					<label class="_account-label control-label" for="inputUsername" data-autosize-input='{"space":0}'>You can call me</label> <input class="form-inline _account-form no-radius" type="text" id="inputUsername" placeholder="John" value="{username}" data-autosize-input='{"space":0}'>
					<div class="form-desc clearfix">
						You can always change your username.<br>Please sure it complies with our <a href="/topic/306/" title="Username Policy">username policy</a>.
					</div>
								
					<label class="_account-label control-label hide" for="inputBirthday">I was born on</label> <input class="form-inline _account-form no-radius hide" type="date" id="inputBirthday" value="{birthday}" data-autosize-input='{"space":0}'>
				 	
					<label class="_account-label control-label" for="inputLocation">I currently live in</label> <input class="form-inline _account-form no-radius" type="text" id="inputLocation" placeholder="Anytown, USA" value="{location}" data-autosize-input='{"space":0}'>
					
										<div class="clearfix m-t line line-dashed"></div>

					<label class="_account-label control-label" for="inputEmail">Contact me via email at</label> <input class="form-inline _account-form no-radius" type="text" id="inputEmail" placeholder="you@example.com" value="{email}" data-autosize-input='{"space":1}'>
					<div class="form-desc clearfix">You can choose who sees your email address in your <a href="{relative_path}/user/{userslug}/settings" title="Account Settings">account settings</a>.</div>
					<label class="_account-label control-label" for="inputWebsite">Check out my website or blog</label> <input class="form-inline _account-form no-radius" type="text" id="inputWebsite" placeholder="http://example.com/" value="{website}" data-autosize-input='{"space":0}'>

					
					<div class="clearfix m-t line line-dashed"></div>

					<div class="control-group m-t">
						<label class="_account-label control-label" for="inputSignature">A little bit more about myself below</label>
						<div class="controls">
							<textarea class="form-inline _account-form-textarea no-radius" id="inputSignature" placeholder="Tell everyone a little bit about who you are." rows="3">{signature}</textarea>
							<span class="form-char"><label id="signatureCharCountLeft"></label></span>
						</div>
					</div>

					<input type="hidden" id="inputUID" value="{uid}">

					<div class="form-actions">
						<a id="submitBtn" href="#" class="btn btn-white btn-rounded m-b-lg">Save your information</a>
					</div>
				</form>
			</div>
			</div>

			<div class="panel no-borders no-b-s">
			<header class="text-label-header strong text-label-header text-muted text-left panel-heading no-borders">Change Password</header>
			<div class="text-preferences">
			  <form class="form-horizontal panel-body no-p-lr">
			  
			  
			  
			  <label class="_account-label control-label" for="inputCurrentPassword">My current password is</label> <input class="form-inline _account-form no-radius" type="password" id="inputCurrentPassword" placeholder="current password" value="" data-autosize-input='{"space":0}' <!-- IF !hasPassword --> disabled<!-- ENDIF !hasPassword-->>
			  
			  <div class="form-desc clearfix">You will need to type your current password before you can change it.</div>
			  <br/>
			  <label class="_account-label control-label" for="inputNewPassword">I would like to change my password to</label> 
			  <div class="_input-group input-group">
			  <input class="form-inline _account-form no-radius" type="password" id="inputNewPassword" placeholder="new password" value="" data-autosize-input='{"space":0}'>
			  <span class="_input-group-addon input-group-addon"><span id="password-notify"></span></span>
			  </div>
			  
			  <br/>
			  <label class="_account-label control-label" for="inputNewPasswordAgain">Again, I want to change it to</label> 
			  <div class="_input-group input-group">
			  <input class="form-inline _account-form no-radius" type="password" id="inputNewPasswordAgain" placeholder="repeat password" value="" data-autosize-input='{"space":0}'>
			  <span class="_input-group-addon input-group-addon"><span id="password-confirm-notify"></span></span>
			  </div>
			  
					<div class="form-actions m-t">
						<a id="changePasswordBtn" href="#" class="btn btn-white btn-rounded">Change your password</a>
					</div>

				</form>
			  </div>
			</div>

		</div>
		
		</div>
	</div>
		
</section>

<!-- IMPORT partials/modals/change_picture_modal.tpl -->
</div>

<input type="hidden" template-variable="yourid" value="{yourid}" />
<input type="hidden" template-variable="theirid" value="{theirid}" />
<input type="hidden" template-variable="gravatarpicture" value="{gravatarpicture}" />
<input type="hidden" template-variable="uploadedpicture" value="{uploadedpicture}" />
