<div class="bc-bg row">
<div class="container">
<ol class="breadcrumb">
	<li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
		<a href="{relative_path}/" itemprop="url"><span itemprop="title">[[global:home]]</span></a>
	</li>
	<li class="active" itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
		<span itemprop="title">Login</span>
	</li>
</ol>
</div>
</div>

<div class="alert-window alert-right-bottom alert-center">
	<div class="alert alert-danger alert-dismissable text-center" id="login-error-notify" style="display:none!important">
		<button type="button" class="close m-l-xs" data-dismiss="alert">×</button>
		<strong>[[login:failed_login_attempt]]</strong> 
		<p></p>
	</div>
</div>
			
<div class="row m-t-lg wrapper-md animated fadeInUp">
<div class="container">
	<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2 m-t-lg">
		<section class="panel no-border no-b-s"> 
		
			<header class="h4 header bg-white b-b no-borders text-center">
			<div class="hero-title h2 strong text-heading text-center panel-heading no-borders">Login</div>
			</header>

			<form class="panel-body" role="form">
			
				<!-- IF alternate_logins -->
				<div class="btn-group visible">
				<!-- BEGIN authentication -->
				<a href="{relative_path}{authentication.url}" rel="nofollow" class="btn btn-rounded btn-text m-b-sm btn-{authentication.name} btn-group-justified"><i class="fa fa-{authentication.icon} pull-left"></i><span>Log in with <span class="t-c">{authentication.name}</span></a>
				<!-- END authentication -->
				</div>
				<!-- ENDIF alternate_logins -->
			
			<div class="_or">
            <span>OR</span>
	          </div>
          
				<div class="form-group form-login">
					<label for="username" class="h4 strong control-label">Username</label>
						<input class="form-control account-form no-radius" type="text" placeholder="What's your username or email?" name="username" id="username" autocomplete="off" />
				</div>
				<div class="form-group form-login">
					<label for="password" class="h4 strong control-label">Password</label>
						<input class="form-control account-form no-radius" type="password" placeholder="What's your password?" name="password" id="password" autocomplete="off" />
				</div>
				<div class="form-group clearfix hide">
						<div class="checkbox no-padder">
						 <label class="switch">
						 <div class="pull-left">
						 	[[login:remember_me]]
						 </div>
							<input type="checkbox" name="remember" id="remember" checked />
							<span class="pull-right"></span> 
						</label>
						</div>
				</div>
				
				<div class="form-group">
						<button class="btn btn-rounded btn-white btn-block" id="login" type="submit">Login</button>
				</div>
				<input type="hidden" name="_csrf" value="{token}" id="csrf-token" />
				<!-- IF previousUrl -->
				<input type="hidden" name="previousUrl" value="{previousUrl}" />
				<!-- ENDIF previousUrl -->
				
				<div class="text-muted m-t _su">
					<small class="block">
						<a href="{relative_path}/reset">I have forgotten my password</a>
					</small>
					<small class="block">
						<a href="{relative_path}/register">Do not have an account? Create an account</a>
					</small>
				</div>
			</form>

		</section>
	</div>
	
</div>
</div>
