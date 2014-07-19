<style>
.btn-upload-photo {
	position: relative;
	overflow: hidden;
	/* font-size: 12px; */
	/* padding: 2px 10px; */
	/* padding-bottom: 2px; */
}
.btn-upload-photo input[type=file] {
	position: absolute;
    top: 0;
    right: 0;
	min-width: 100%;
	min-height: 100%;
	font-size: 999px;
	text-align: right;
	filter: alpha(opacity=0);
	opacity: 0;
	background: #FFF;
	cursor: inherit;
	display: block;
}
input[readonly] {
  	background-color: white !important;
  	cursor: text !important;
}
</style>
<script>
$(document).on('change', '.btn-file :file', function() {
  var input = $(this),
      numFiles = input.get(0).files ? input.get(0).files.length : 1,
      label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
  input.trigger('fileselect', [numFiles, label]);
});

$(document).ready( function() {
    $('.btn-file :file').on('fileselect', function(event, numFiles, label) {
        var input = $(this).parents('.input-group').find(':text'),
            log = numFiles > 1 ? numFiles + ' files selected' : label;
        if( input.length ) {
            input.val(log);
        }
    });
});
</script>

<div id="upload-picture-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="Upload Picture" aria-hidden="true">
<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		<div class="modal-dialog">
			<div class="modal-content upload-picture-content">
				<div class="modal-header no-borders">
					<h2 id="__upload-picture">[[user:upload_picture]] <small class="block m-t-xs m-b">Go ahead and upload a nice picture that respresents you</small></h2>
				</div>
				<div class="modal-body">
					<form id="uploadForm" action="" method="post" enctype="multipart/form-data">
						<div class="form-group">
							<label for="userPhoto" class="block text-sm text-uc text-muted">[[user:image_spec]] <span id="file-size-block" class="hide"> ([[user:max]] <span id="upload-file-size"></span> kbs.)</span></label>
							<span class="file-input btn btn-white btn-rounded btn-upload-photo">Choose a picture to upload
								<input type="file" id="userPhotoInput"  name="userPhoto">
							</span>
						</div>
						<input id="imageUploadCsrf" type="hidden" name="_csrf" value="" />
						<input type="hidden" id="params" name="params">
					</form>

					<div id="upload-progress-box" class="progress progress-striped">
						<div id="upload-progress-bar" class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="0" aria-valuemin="0">
							<span class="sr-only"> [[footer:success]]</span>
						</div>
					</div>

					<div id="alert-status" class="alert alert-info hide"></div>
					<div id="alert-success" class="alert alert-success hide"></div>
					<div id="alert-error" class="alert alert-danger hide"></div>
				</div>
				<div class="modal-footer">
					<button class="btn btn-white btn-rounded" data-dismiss="modal" aria-hidden="true">Close</button>
					<button id="pictureUploadSubmitBtn" class="btn btn-done btn-rounded"><i class="fa fa-cloud-upload"></i></button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->