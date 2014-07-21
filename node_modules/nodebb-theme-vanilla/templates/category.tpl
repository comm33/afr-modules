<input type="hidden" template-variable="category_id" value="{cid}" />
<input type="hidden" template-variable="category_name" value="{name}" />
<input type="hidden" template-variable="topic_count" value="{topic_count}" />
<input type="hidden" template-variable="currentPage" value="{currentPage}" />
<input type="hidden" template-variable="pageCount" value="{pageCount}" />

<div class="bg-sh c-b">
  <div class="m-t-lg wrapper-md hero-page category">
  <div id="blurred-image-container" class="hero-wrapper ch-{cid}">
  
  <div id="hero-image-container">
	<div class="img-overlay"></div>
	<div class="img-src" style="background-image:url('//convoe.com/uploads/category-{cid}.jpg');"></div>
	<div class="img-src blurred-img" style="background-image:url('//convoe.com/uploads/category-{cid}-b.jpg');"></div>
  </div>


  <div id="hero-b-n" class="hero-banner">
  	<div class="header hero-m">
        <!-- IF topics.length -->
        <div class="hero-label inline-block">
        Moderated by
	        <div widget-area="drafts" class="moderators">
			<!-- BEGIN widgets -->
		    	{widgets.html}
		    <!-- END widgets -->
	        </div>
		</div>
		<!-- ENDIF topics.length -->
	</div>
  </div>
  
  <div class="hero-container container m-t-lg clearfix">
    
    <div id="hero-h-n" class="hero-header header col-md-8 col-md-offset-2 text-center panel-body b-b no-borders no-p-lr">
    
      <div class="h1 strong text-center no-borders">
        {name}
      </div>
      <!--
      <ul class="dropdown-menu dropdown-category animated flipInY" aria-labelledby="hero-h-n">
        <div class="dropdown-category-context">
          <div class="dropdown-category-blurb">
            What interests you?
          </div>
          <div class="dropdown-category-footer">
            Choose a specific network below
          </div>
        </div>
      </ul>
      <script>
        $.get(RELATIVE_PATH + '/api/home', {
        }, function(data) {
          var categories = data.categories
              for (var c in categories) {
                if (categories.hasOwnProperty(c)) {
                  var category = categories[c];
                  $('#hero-h-n .dropdown-menu').append('<li role="presentation"><a href="{relative_path}/category/' + category.slug + '" role="menuitem" tabindex="-1" class="" itemprop="url"><meta itemprop="name" content="' + category.name + '"><div id="ch-' + category.cid + '" class="category-header category-header-mini icon deferred category-header-image-' + category.imageClass + '" style=""><h4>' + category.name + ' <small>' + category.topic_count + '</small></h4></li>');
                }
              }
		  });
      </script>
      -->
      <p class="h3 col-md-10 col-md-offset-1" itemprop="description">
        {description}
      </p>
      <!-- IF privileges.topics:create -->
      <br/>
      <button id="new_post" class="m-t btn btn-hero btn-rounded h-b center z-o">
        <span class="btn-label topic-label">
          New conversation
        </span>
        
        <span class="btn-label btn-count human-readable-number">
          {topic_count} topics
        </span>
      </button>
      <span class="block hidden-xs m-t text-muted text-blurb text-lte">
	  	Want to talk about something else? Start your own discussion!
	    Ask a question, start a debate, or just say what's on your mind.
      </span>
      <!-- ENDIF privileges.topics:create -->
      
	  <!-- IF !config.disableSocialButtons -->
	  <div class="category-ss-container center m-t-lg">
	      <div class="category-ss">
		        <div class="inline-block">
		          <a href="#" class="facebook-share btn btn-rounded btn-text _hero-share">
		            <i class="fa fa-facebook">
		            </i>
		          </a>
		          &nbsp;
		          <a href="#" class="twitter-share btn btn-rounded btn-text _hero-share">
		            <i class="fa fa-twitter">
		            </i>
		          </a>
		          &nbsp;
		          <a href="#" class="google-share btn btn-rounded btn-text _hero-share">
		            <i class="fa fa-google-plus">
		            </i>
		          </a>
		          &nbsp;
		          <a href="{relative_path}/category/{cid}.rss" target="_blank" class="rss-share btn btn-rounded btn-text _hero-share">
		            <i class="fa fa-rss">
		            </i>
		          </a>
		        </div>
			</div>
	    </div>
	    <!-- ENDIF !config.disableSocialButtons -->
    </div>
    
  </div>
  
  </div>
  </div>

  <div class="everything _tp">
    <div class="container m-t-lg no-p-lr">
      <div class="panel no-borders no-b-s _tp">
            
            <div class="a-h hide" id="category-no-topics">
              [[category:no_topics]]
            </div>
            
            <div class="category">
              
              <div class="col-md-8 clearfix" no-widget-target="sidebar">
                <header class="text-label-header strong text-label-header text-muted text-left panel-heading no-borders m-n _tp">
                  <p>
                    There are {topic_count} Topics in {name}
                  </p>
                </header>
                
                <ul id="topics-container"  class="category-container clearfix" itemscope itemtype="http://www.schema.org/ItemList" data-nextstart="{nextStart}">
                  <meta itemprop="itemListOrder" content="descending">
                		<!-- BEGIN topics -->
						<!-- IMPORT partials/topics_list_cat.tpl -->
						<!-- END topics -->
          
      </ul>
      
      <!-- IF config.usePagination -->
      <div class="text-center">
        <ul class="pagination pagination-lg">
          <li class="previous pull-left strong">
            <a class="text-uc" href="#">
              <i class="fa fa-chevron-left visible-xs visible-sm fa-lg m-t-xs">
              </i>
              <span class="hidden-xs hidden-sm">
                Previous
              </span>
            </a>
          </li>
          <li class="next pull-right strong">
            <a class="text-uc" href="#">
              <i class="fa fa-chevron-right visible-xs visible-sm fa-lg m-t-xs">
              </i>
              <span class="hidden-xs hidden-sm">
                Next
              </span>
            </a>
          </li>
        </ul>
      </div>
      <!-- ENDIF config.usePagination -->
      
      		  <div class="clearfix">
					<div class="footer-c">
				
			        <a class="btn btn-link" title="Policies" href="//help.convoe.com/policy/terms">
			          Policies
			        </a>
			        <a class="btn btn-link" title="Privacy Policy" href="//help.convoe.com/policy/privacy">
			          Privacy
			        </a>
			        <a class="btn btn-link" title="Help Center" href="//help.convoe.com/">
			          Help
			        </a>
			        <a class="btn btn-link" title="Guidelines" href="//help.convoe.com/policy/community-guidelines">
			          Guidelines
			        </a>
			        
			        <ol class="breadcrumb v-h">
				      <li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
				        <a href="{relative_path}/" itemprop="url">
				          <span itemprop="title">
				            [[global:home]]
				          </span>
				        </a>
				      </li>
				      <li class="active" itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
				        <span itemprop="title">
				          {name} 
				          <a target="_blank" href="../{cid}.rss">
				            <i class="fa fa-rss-square">
				            </i>
				          </a>
				        </span>
				      </li>
				    </ol>
				    
			        </div>
					</div>
  </div>
	 
			  <div class="col-md-4 recent-replies hidden-sm hidden-xs clearfix">
			  	<header class="text-label-header strong text-label-header text-muted text-left panel-heading no-borders m-n _tp"><p>Latest Topics on Convoe</p></header>
					<ul id="recent_topics"></ul>
			  </div>
				
			  <script>
				(function() {
				
					var recentTopicsWidget = app.widgets.recentTopics;
				
					var numTopics = parseInt('{numTopics}', 15);
						numTopics = numTopics || 10;
				
				
					if (!recentTopicsWidget) {
						recentTopicsWidget = {};
						recentTopicsWidget.onNewTopic = function(topic) {
				
							var recentTopics = $('#recent_topics');
							if (!recentTopics.length) {
								return;
							}
				
							parseAndTranslate([topic], function(html) {
								html.hide()
									.prependTo(recentTopics)
									.fadeIn();
				
								app.createUserTooltips();
								if (recentTopics.children().length > numTopics) {
									recentTopics.children().last().remove();
								}
							});
						}
				
						app.widgets.recentTopics = recentTopicsWidget;
						socket.on('event:new_topic', app.widgets.recentTopics.onNewTopic);
					}
				
					socket.emit('topics.loadTopics', {start:0, end: numTopics - 1, set:'topics:tid'}, function(err, data) {
						if (err) {
							return app.alertError(err.message);
						}
				
						var recentTopics = $('#recent_topics');
				
						if(!data || !data.topics || !data.topics.length) {
							translator.translate('[[topic:no_topics_found]]', function(translated) {
								recentTopics.html(translated);
							});
							return;
						}
				
						parseAndTranslate(data.topics, function(html) {
							recentTopics.html(html);
				
							app.createUserTooltips();
						});
					});
				
					function parseAndTranslate(topics, callback) {
						for (var i = 0; i < topics.length; ++i) {
							topics[i].isoTimestamp = utils.toISOString(topics[i].timestamp);
						}
				
						ajaxify.loadTemplate('partials/topics', function(topicsTemplate) {
							var html = templates.parse(templates.getBlock(topicsTemplate, 'topics'), {
								topics: topics
							});
				
				
							translator.translate(html, function(translatedHtml) {
								translatedHtml = $(translatedHtml);
								translatedHtml.find('span.timeago').timeago();
								callback(translatedHtml);
							});
						});
					}
				
				}());
				</script>

  </div>
  </div>
  
  </div>
  </div>
  
  
</div>
</div>
</div>

<!-- IMPORT partials/move_thread_modal.tpl -->
<!-- IMPORT partials/noscript/paginator.tpl -->

<script src="//convoe.com/vendor/convoe/_cnvo.blurry.js"></script>