<div class="bc-bg row">
<div class="container">
	<ol class="breadcrumb">
		<li><a href="{relative_path}/">[[global:home]]</a></li>
		<li class="active">[[unread:title]]</li>
	</ol>
</div>
</div>

<div class="row wrapper-md hero-page unread">

<div class="hero-wrapper hero-cover">
<div class="hero-banner unread-banner">

<div class="hero-container container m-t-lg clearfix">

<header id="hero-v" class="hero-header header col-md-8 col-md-offset-2 text-left panel-body b-b no-borders no-p-lr">

          <div class="markread {show_markread_button}">
            <button type="button" class="m-t btn btn-white btn-rounded pull-right center dropdown-toggle" data-toggle="dropdown">
             <i class="fa fa-check"></i> [[unread:mark_as_read]]
            </button>
            <ul class="dropdown-menu dropdown-category animated fadeInRight" role="menu">
              <div class="popover-arrow"></div>
              <div class="dropdown-category-context">
                <div class="dropdown-category-blurb">
                  Select to be marked as unread
                </div>
                <li class="dropdown-category-l" role="presentation">
                  <a id="markSelectedRead" class="dropdown-category-selection" role="menuitem" tabindex="-1" href="#">
                    Selected topics only
                  </a>
                </li>
                or
                <li class="dropdown-category-r" role="presentation">
                  <a id="markAllRead" class="dropdown-category-selection" role="menuitem" tabindex="-1" href="#">
                    everything
                  </a>
                </li>
                <li class="divider"></li>
              </div>
            </ul>
          </div>


<p class="h1 strong no-borders">Unread</p>
<br/>
<p class="h3 text-lte">Topics you haven't read yet</p>
</header>

</div>
</div>
</div>
</div>

<div class="container no-p-lr">
<section class="panel no-borders no-b-s">
<div class="panel-body"> 
<div class="col-md-8 col-md-offset-2">

		<div class="a-h hide" id="new-topics-alert">
			<a href="{relative_path}/unread">
				<p class="ah-w">There is a new post. Click here to reload.</p>
			</a>
		</div>

	<div class="category row">
			<ul id="topics-container" class="category-container clearfix" data-nextstart="{nextStart}">
			<header class="text-label-header strong text-label-header text-muted text-left panel-heading no-borders">Unread Topics</header>
						
			<div id="category-no-topics" class="panel animated fadeInDown text-center no-borders no-b-s {no_topics_message}">
			<section class="text-center">
				<div class="panel-body nothing m-t no-borders text-muted">
					[[unread:no_unread_topics]]
				</div>
			</section>
			</div>
	
			<!-- BEGIN topics -->
			<!-- IMPORT partials/topics_list.tpl -->
			<!-- END topics -->
			
			</ul>
			<button id="load-more-btn" class="btn btn-primary hide">[[unread:load_more]]</button>
	</div>

</div>
</section>
</div>
</div>

</div>