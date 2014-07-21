<div id="change-picture-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="Change Picture" aria-hidden="true">
<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header no-borders">
				
				<h2 id="__upload-picture" class="modal-title m-b clearfix">Change Picture<small class="block m-t-xs m-b">You can use a gravatar or upload your own avatar!</small></h2>
			</div>
			<div class="modal-body clearfix m-b text-center col-md-12 no-p-lr">
				<div id="gravatar-box" class="col-md-6 pull-left m-t">
					<div class="thumb-md">
					<img id="user-gravatar-picture" src="" class="img-circle pull-left user-profile-picture">
					</div>
					
					<div class="inline-block"> 
						<div class="h3 m-t-xs m-b-xs">
							<div class="inline-block clearfix m-t">
								<span class="user-picture-label">Gravatar</span>
									<i class='fa fa-check'></i>
								</div>
							</div>
						</div>
					</div>
				
				<div id="uploaded-box" class="col-md-6 pull-right m-t">
					<div class="thumb-md">
					<img id="user-uploaded-picture" src="" class="img-circle pull-right user-profile-picture">
					</div>					
					
					<div class="inline-block"> 
						<div class="h3 m-t-xs m-b-xs">
							<div class="inline-block clearfix m-t">
								<span class="user-picture-label">Uploaded Picture</span>
									<i class='fa fa-check'></i>
								</div>
							</div>
						</div>
					</div>
			</div>
			<br/>
			<div class="modal-footer clearfix center text-center">
				<a id="uploadPictureBtn" class="btn btn-rounded btn-white m-r-lg" href="#">Upload Picture</a>

				<button class="btn btn-rounded btn-white" data-dismiss="modal" aria-hidden="true">Close</button>
				<button id="savePictureChangesBtn" class="btn btn-rounded btn-done"><i class="fa fa-check"></i></button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->