<div class="bc-bg row">
<div class="container">
<ol class="breadcrumb">
	<li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
		<a href="{relative_path}/" itemprop="url"><span itemprop="title">Home</span></a>
	</li>
	<li class="active" itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
		<span itemprop="title">Reset Password</span>
	</li>
</ol>
</div>
</div>	

<div id="alert_window">
<div class="alert alert-dismissable alert-success text-center" id="success" style="display:none!important">
	<button type="button" class="close" data-dismiss="alert">&times;</button>
	<strong>We have sent a reset code to your email.</strong>
</div>
<div class="alert alert-dismissable alert-danger text-center" id="error" style="display:none!important">
	<button type="button" class="close" data-dismiss="alert">&times;</button>
	<strong>We can't seem to find that email in our system.</strong>
</div>
</div>

<div class="row m-t-lg wrapper-md animated fadeInUp">
<div class="container">
	<div class="col-md-10 col-md-offset-1 col-sm-8 col-sm-offset-2 m-t-lg">
	<section class="panel no-border no-b-s">
	
		<header class="h4 header bg-white b-b no-borders text-center">
		<p class="h2 strong text-heading text-center panel-heading no-borders">Password Reset</p>
		</header>
	
		<form class="panel-body" onsubmit="return false;">
			<input type="text" class="form-control account-form no-radius input-block" placeholder="What's your email address?" id="email" />
			<span class="help-block">Please enter your email address above and we will send you an email with instructions on how to reset your account.
			</span>
			<br />
			<button class="btn btn-white btn-rounded" id="reset" type="submit">Reset Password</button>
		</form>
	
	</section>
	</div>
</div>
</div>
