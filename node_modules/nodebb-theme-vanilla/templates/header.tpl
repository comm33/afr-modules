<!DOCTYPE html>
<html>
<head>
	<title>{browserTitle}</title>
	<!-- BEGIN metaTags -->
	{function.buildMetaTag}
	<!-- END metaTags -->
	<link rel="stylesheet" href="{relative_path}/stylesheet.css?{cache-buster}" />
	<!-- BEGIN linkTags -->
	<link<!-- IF linkTags.link --> link="{linkTags.link}"<!-- ENDIF linkTags.link --><!-- IF linkTags.rel --> rel="{linkTags.rel}"<!-- ENDIF linkTags.rel --><!-- IF linkTags.type --> type="{linkTags.type}"<!-- ENDIF linkTags.type --><!-- IF linkTags.href --> href="{linkTags.href}"<!-- ENDIF linkTags.href --> />
	<!-- END linkTags -->
	<!-- IF useCustomCSS -->
	<style type="text/css">{customCSS}</style>
	<!-- ENDIF useCustomCSS -->
	<script>
		var RELATIVE_PATH = "{relative_path}";
	</script>
	<script src="{relative_path}/socket.io/socket.io.js"></script>
	<script src="{relative_path}/nodebb.min.js?{cache-buster}"></script>
	<script>
		require.config({
			baseUrl: "{relative_path}/src/modules",
			waitSeconds: 3,
			urlArgs: "{cache-buster}",
			paths: {
				'forum': '../forum',
				'vendor': '../../vendor',
				'buzz': '../../vendor/buzz/buzz.min'
			}
		});
	</script>
	<!-- IF useCustomJS -->
 	{customJS}
 	<!-- ENDIF useCustomJS -->
</head>

<body>

	<div class="nav-cover">
	<div class="nav-sidebar">
	<div class="sidebar-gutter">
		<div id="main-nav" class="sidebar-subnav">
			<a class="sidebar-homepage" href="{relative_path}/">
				<li class="sidebar-logo pointer"></li>
			</a>
			<!-- IF isLoggedIn -->
			<li class="notifications text-center">
					<a class="subnav-links" href="{relative_path}/notifications" id="notif_dropdown">
						<i class="fa fa-fw fa-bell-o" data-content="0" title="[[global:header.notifications]]"></i>
						<span> Alerts</span>
					</a>
			</li>
			<li>
			<a class="subnav-links" href="{relative_path}/unread">
				<i id="unread-count" class="fa fa-fw fa-inbox" data-content="0" title="[[global:header.unread]]"></i>
				<span> Unread</span>
			</a>
			</li>
			<!-- ENDIF isLoggedIn -->
			<li>
			<a class="subnav-links" href="{relative_path}/recent">
				<i class="fa fa-fw fa-clock-o" title="[[global:header.recent]]"></i><span> Recent</span></a>
			</li>
			<li>
				<a class="subnav-links" href="{relative_path}/popular"><i class="fa fa-fw fa-fire" title="[[global:header.popular]]"></i><span> Popular</span></a>
			</li>
			<li>
				<a class="subnav-links" href="{relative_path}/tags"><i class="fa fa-fw fa-tags" title="[[global:header.tags]]"></i><span> Tags</span></a>
			</li>
			<!-- IF isAdmin -->
			<li>
				<a class="subnav-links" href="{relative_path}/admin" target="_top"><i class="fa fa-fw fa-cogs" title="[[global:header.admin]]"></i><span> Ops</span></a>
			</li>
			<!-- ENDIF isAdmin -->
		</div>
	</div>
	<div class="sidebar-main">
		<div class="sidebar-header">
			<!-- IF searchEnabled -->
			<div class="sidebar-close pull-right">
				<div><a href="{relative_path}/search" class="fa fa-search"></a></div>
			</div>
			<!-- ENDIF searchEnabled -->
			<h2></h2>
		</div>
		<div class="sidebar-body">
			<ul class="categories active"></ul>
			<ul class="topics"></ul>
		</div>
	</div>
	</div>
	<div class="nav-overlay"></div>
	</div>
	
	<div class="_ob">
	
	<header class="navbar navbar-static-top header" role="navigation" id="header-menu">
		<!-- IMPORT partials/menu.tpl -->
	</header>
	<input id="csrf_token" type="hidden" template-variable="csrf" value="{csrf}" />	
	
	<div class="container" id="content">
	<!-- IMPORT partials/noscript/warning.tpl -->