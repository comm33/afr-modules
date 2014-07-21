<div class="bc-bg row">
<div class="container">
<ol class="breadcrumb">
	<li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
		<a href="{relative_path}/" itemprop="url"><span itemprop="title">[[global:home]]</span></a>
	</li>
	<li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
		<a href="{relative_path}/reset" itemprop="url"><span itemprop="title">[[reset_password:reset_password]]</span></a>
	</li>
	<li class="active" itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
		<span itemprop="title">[[reset_password:update_password]]</span>
	</li>
</ol>
</div>
</div>	


<div class="alert alert-dismissable alert-success text-center" id="success" style="display:none">
	<button type="button" class="close" data-dismiss="alert">&times;</button>
	<strong class="hide">[[reset_password:password_changed.title]]</strong>
	<p>[[reset_password:password_changed.message]]</p>
</div>

<div class="alert alert-dismissable alert-warning text-center" id="notice" style="display:none">
	<button type="button" class="close" data-dismiss="alert">&times;</button>
	<strong class="hide"></strong>
	<p></p>
</div>
	
<div class="alert alert-dismissable alert-danger text-center" id="error" style="display:none">
	<button type="button" class="close" data-dismiss="alert">&times;</button>
	<strong class="hide">[[reset_password:wrong_reset_code.title]]</strong>
	<p>[[reset_password:wrong_reset_code.message]]</p>
</div>

<div class="row m-t-lg wrapper-md animated fadeInUp">
<div class="container">
	<div class="col-md-4 col-md-offset-4 col-sm-8 col-sm-offset-2 m-t-lg">
	<section class="panel no-border no-b-s"> 
	
		<header class="h4 header bg-white b-b no-borders text-center">
		<p class="h2 strong text-heading text-center panel-heading no-borders">Password Reset</p>
		</header>
	
		<form class="panel-body" onsubmit="return false;" id="reset-form">
		
			<div class="form-group">
				<label for="password" class="h4 strong control-label">Password</label>
				<input type="password" class="form-control account-form no-radius input-block" placeholder="********" id="password" />
				<span class="help-block">Make sure your password is secure by using a combination of alphanumeric characters and symbols.
				</span>
			</div>
		
			<br />
			<div class="form-group">
				<label for="repeat" class="h4 strong control-label">Confirm Password</label>
				<input type="password" class="form-control account-form no-radius input-block" placeholder="********" id="repeat" />
			</div>
			
			<br />
			<button class="btn btn-primary btn-rounded" id="reset" type="submit">Reset Password</button>
		</form>
	
	</section>
	</div>
</div>
</div>
<input type="hidden" template-variable="reset_code" value="{reset_code}" />