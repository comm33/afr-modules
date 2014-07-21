<div class="bc-bg row">
<div class="container">
<ol class="breadcrumb">
	<li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
		<a href="{relative_path}/" itemprop="url"><span itemprop="title">[[global:home]]</span></a>
	</li>
	<li class="active" itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
		<span itemprop="title">[[register:register]]</span>
	</li>
</ol>
</div>
</div>

<div class="row m-t-lg wrapper-md animated fadeInUp">
<div class="container">
	<div class="col-md-10 col-md-offset-1 col-sm-8 col-sm-offset-2 m-t-lg">
	<section class="panel no-border no-b-s">
		
		<header class="h4 header bg-white b-b no-borders text-center">
		<div class="hero-title h2 strong text-heading text-center panel-heading no-borders">Registration
			<h3 class="m-t block text-lte">It's free and takes less than <strong>21 seconds</strong>.</h3>
		</div>
		</header>
		
			<form class="col-md-6 col-sm-12 col-xs-12 panel-body" role="form" action="{relative_path}/register" method="post">
			
				<div class="visible-sm visible-xs">
				<!-- IF alternate_logins -->
				<div class="btn-group m-t-lg">
				<!-- BEGIN authentication -->
				<a rel="nofollow" href="{authentication.url}" class="btn btn-text m-b-sm btn-{authentication.name} btn-group-justified"><i class="fa fa-{authentication.name} pull-left"></i>Sign up with <span class="t-c">{authentication.name}</span></span></a>
				<!-- END authentication -->
				</div>
				
				<div class="_or">
	            <span>OR</span>
		        </div>
				<!-- ENDIF alternate_logins -->
				</div>
			
				
				<div class="form-group form-registration">
					<label for="email" class="control-label h4 strong">[[register:email_address]]</label>
						<div class="input-group">
							<input autocomplete="off" class="form-control account-form no-radius" type="text" placeholder="Your email" name="email" id="email" />
					        <span class="input-group-addon">
					        	<span id="email-notify"></span>
					        </span>
						</div>
						<span class="help-block">[[register:help.email]]</span>
				</div>
				<div class="form-group form-registration">
					<label for="username" class="control-label h4 strong">[[register:username]]</label>
						<div class="input-group">
							<input autocomplete="off" class="form-control account-form no-radius" type="text" placeholder="Choose a username" name="username" id="username" />
					        <span class="input-group-addon">
					        	<span id="username-notify"></span>
					        </span>
						</div>
						<span class="help-block">[[register:help.username_restrictions, {minimumUsernameLength}, {maximumUsernameLength}]]</span>
				</div>
				<div class="form-group form-registration">
					<label for="password" class="control-label h4 strong">[[register:password]]</label>
						<div class="input-group">
							<input autocomplete="off" class="form-control account-form no-radius" type="password" placeholder="Create a password" name="password" id="password" />
					        <span class="input-group-addon">
					        	<span id="password-notify"></span>
					        </span>
						</div>
						<span class="help-block">[[register:help.minimum_password_length, {minimumPasswordLength}]]</span>
				</div>
				<div class="form-group form-registration">
					<label for="password-confirm" class="control-label h4 strong">[[register:confirm_password]]</label>
						<div class="input-group">
							<input autocomplete="off" class="form-control account-form no-radius" type="password" placeholder="Confirm your password" name="password-confirm" id="password-confirm" />
					        <span class="input-group-addon">
					        	<span id="password-confirm-notify"></span>
					        </span>
						</div>
				</div>
				
				<!-- IF termsOfUse -->
				<div class="form-group">
					<div class="m-t-lg">
						<div class="line m-t-lg m-b-lg"></div>
						<span class="h4 strong">[[register:terms_of_use]]</span>
						<div class="help-block">
						<div class="checkbox no-padder m-n">
						<label class="switch">
						<div class="pull-left">I agree to the <a class="strong" href="/topic/91/terms-of-service" target="_blank">Terms of Use</a> and <a class="strong" href="/topic/130/rules-guidelines" target="_blank">Guidelines</a>.
						</div>
							<input type="checkbox" name="agree-terms" id="agree-terms" />
							<span class="pull-right"></span> 
						</label>
						</div>

						<div class="form-group clearfix pull-right">
						</div>						
						</div>				
						
					</div>
				</div>
				<!-- ENDIF termsOfUse -->
				
				
				<div class="form-group">
				<button class="btn btn-rounded btn-white btn-block" id="register" type="submit">[[register:register_now_button]]</button>
				</div>
				<input type="hidden" name="_csrf" value="{token}" />
				<input id="referrer" type="hidden" name="referrer" value="" />
		
			
			<div class="text-muted m-t _su">
				<small><a href="/login">Already have an account? Login</a></small>
			</div>
			
			</form>
			
			<div class="col-md-6 hidden-sm hidden-xs">
			<div class="panel-body pos-rlt registration-blurb-container">
  				
  			<!-- IF alternate_logins -->
			<div class="btn-group">
			<!-- BEGIN authentication -->
			<a rel="nofollow" href="{authentication.url}" class="btn btn-text m-b-sm btn-{authentication.name} btn-group-justified"><i class="fa fa-{authentication.name} pull-left"></i><span>Sign in with <span class="t-c">{authentication.name}</span></span></a>
			<!-- END authentication -->
			</div>
			<div class="m-b-lg"></div>
			<!-- ENDIF alternate_logins -->
  
				<h3 class="strong m-t">Join the conversation</h3>
					<div class="registration-blurb">
						<div class="registration-text">Convoe is the world’s most advanced discussion community where anybody can create a discussion about anything.</div>
						<div class="registration-text">Choose one of the channels dedicated to a particular topic; from politics or to complete randomness.</div>
						<div class="registration-text">Everything is in realtime, so users are able to see the conversation as it unfolds.</div>
					</div>
			</div>
			</div>
			
		
	</div>
	
	</section>
	</div>

</div>
</div>
