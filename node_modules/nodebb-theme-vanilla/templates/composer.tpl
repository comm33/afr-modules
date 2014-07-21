<div class="composer">
	<div class="imagedrop"><div>Drag and Drop Images Here</div></div>
	
	<div class="container composer-container">
		<div class="resizer">
			<div class="trigger text-center">
				<i class="i i-move-vertical"></i>
			</div>
		</div>

		<input class="title form-control" type="text" tabIndex="1" placeholder="Title" />

        <style>
        .btn-file {
			position: relative;
			overflow: hidden;
			font-size: 12px;
			padding: 2px 10px;
			padding-bottom: 2px;
		}
		.btn-file input[type=file] {
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

		<!-- IF allowTopicsThumbnail -->
		<i class="topic-thumb-btn topic-thumb-toggle-btn toggle" title="[[topic:composer.thumb_title]]"><span class="iu fa fa-image"></span></i>
		<div class="topic-thumb-container center-block hide">
			<form id="thumbForm" method="post" class="topic-thumb-form form-inline" enctype="multipart/form-data">
				<div class="topic-thumb-preview-container">
				<img class="topic-thumb-preview"></img>
				</div>
				<div class="form-group hide">
					<label for="topic-thumb-url">[[topic:composer.thumb_url_label]]</label>
					<input type="text" id="topic-thumb-url" class="form-control topic-thumb-input" placeholder="[[topic:composer.thumb_url_placeholder]]" />
				</div>
				<div class="form-group m-l-xs">
					<label for="topic-thumb-file" class="topic-thumb-label block m-n">Click the image icon to close</label>
					<span class="file-input btn btn-white btn-rounded btn-file">Upload a cover
					<input type="file" id="topic-thumb-file" class="form-control topic-thumb-input" />
					</span>
				</div>
				<div class="form-group topic-thumb-ctrl">
					<i class="fa fa-spinner fa-spin hide topic-thumb-spinner" title="[[topic:composer.uploading]]"></i>
					<i class="fa fa-times topic-thumb-btn hide topic-thumb-clear-btn" title="[[topic:composer.thumb_remove]]"></i>
					<input id="thumbUploadCsrf" type="hidden" name="_csrf">
				</div>
			</form>
		</div>
        <!--  ENDIF allowTopicsThumbnail -->
       
        
		<!-- IF showTags -->
		<div class="tags-container">
			<input class="tags" type="text" class="form-control" placeholder="Tag this topic" tabIndex="2"/>
		</div>
		<!-- ENDIF showTags -->

        
		<div class="tab-content">
		
			<div class="btn-toolbar formatting-bar inline-block">
				<div class="btn-group formatting-group">
				
				<div class="composer-group">
					<button class="btn btn-link dropdown-toggle btn-sm" data-toggle="dropdown" type="button"> <i class="fa fa-plus-square text-muted"></i></button>
					<ul class="dropdown-menu composer-dropdown popover-d-r text-left pull-right">
						<div class="popover-arrow popover-arrow-d-r"></div>
						<span class="btn btn-link text-white" tabindex="-1"><i class="fa fa-bold"></i> <small class="text-uc block text-xs">Bold</small></span>
						<span class="btn btn-link text-white" tabindex="-1"><i class="fa fa-italic"></i> <small class="text-uc block text-xs">Italic</small></span>
						<span class="btn btn-link text-white" tabindex="-1"><i class="fa fa-list"></i> <small class="text-uc block text-xs">Lists</small></span>
						<span class="btn btn-link text-white" tabindex="-1"><i class="fa fa-link"></i> <small class="text-uc block text-xs">Links</small></span>
							
							
						<!--[if gte IE 9]><!-->
						<!--	
						<span class="btn btn-link img-upload-btn hide text-white hide" tabindex="-1"><i class="fa fa-picture-o"></i> <small class="text-uc block text-xs">Image</small></span>
						
						<span class="btn btn-link file-upload-btn hide text-white hide" tabindex="-1"><i class="fa fa-upload"></i> <small class="text-uc block text-xs">File</small></span> -->
						<!--<![endif]-->
					</ul>
				</div>
	
					<form id="fileForm" method="post" enctype="multipart/form-data">
						<input id="postUploadCsrf" type="hidden" name="_csrf">
						<!--[if gte IE 9]><!-->
					     <input type="file" id="files" name="files[]" multiple class="gte-ie9 hide"/>
	                    <!--<![endif]-->
						<!--[if lt IE 9]>
						<input type="file" id="files" name="files[]" class="lt-ie9 hide" value="Upload"/>
						<![endif]-->
					</form>
				</div>
			</div>
			
			<!-- Make sure to change the .nav-tabs > .composer-nav 
			located in the composer.js file so it can bind correctly. -->
			<div class="composer-switch composer-group">			
				<button class="btn btn-link dropdown-toggle btn-sm" data-toggle="dropdown" type="button"> <i class="fa fa-columns text-muted"></i></button>	
				<ul class="composer-nav dropdown-menu composer-dropdown popover-d-r text-left pull-right">
					<div class="popover-arrow popover-arrow-d-r"></div>
					<li class="btn btn-link text-white active">
						<a data-pane=".tab-write" data-toggle="tab">
						<i class="fa fa-pencil"></i> <small class="text-uc block text-xs">Write</small></a>
					</li>
					<li class="btn btn-link text-white">
						<a data-pane=".tab-preview" data-toggle="tab">
						<i class="fa fa-eye"></i> <small class="text-uc block text-xs">Pview</small></a>
						</a>
					</li>
				</ul>
			</div>

			<div class="tab-pane active tab-write">
				<textarea class="write" placeholder="Write your topic" tabIndex="3"></textarea>
			</div>
			<div class="tab-pane tab-preview">
				<div class="preview"></div>
			</div>
		</div>
		
		<ul class="m-n">
			<li class="btn-group pull-right action-bar">
					<button class="btn btn-rounded btn-white" data-action="discard" tabIndex="5"><i class="fa fa-times"></i> [[topic:composer.discard]]</button>
					<button data-action="post" class="btn btn-rounded btn-done" tabIndex="4"><i class="fa fa-check"></i> [[topic:composer.submit]]</button>
			</li>
		</ul>

		<div class="composer-helper m-t pull-left m-b text-xs text-uc visible-lg visible-md">
			<span class="text-muted">We use</span> 
			<a href="//help.convoe.com/getting-started/formatting" title="What is Markdown?">Markdown</a> 
			<span class="text-muted">for text formatting.</span><br/>
		    <span class="text-muted upload-instructions hide">You can upload images by dragging & dropping them.</span>
		</div>
	</div>
</div>