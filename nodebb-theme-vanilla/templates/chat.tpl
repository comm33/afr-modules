
<div id="chat-modal" class="chat-modal hide" tabindex="-1" role="dialog" aria-labelledby="Chat" aria-hidden="true" data-backdrop="none">
	<div class="chat-dialog">
		<div class="chat-content">
			<div class="chat-header">

				<h4><i id="chat-user-status" class="fa fa-circle status offline" title="[[global:offline]]"></i> <span id="chat-with-name"></span></h4>

				<button id="chat-close-btn" class="btn chat-close" data-dismiss="modal" aria-hidden="true">&times;</button>

			</div>
			<div class="chat-body">
				<ul id="chat-content" class="chat-inner">

					<span class="user-typing hide"><span class="text"></span></span>
				</ul>

				<input id="chat-message-input" type="text" placeholder="Type message and press enter" name="chat-message" class="chat-message-type">
					
				<button id="chat-message-send-btn" class="hide" href="#" type="button">[[modules:chat.send]]</button>
					
			</div>
		</div>
	</div>
</div>