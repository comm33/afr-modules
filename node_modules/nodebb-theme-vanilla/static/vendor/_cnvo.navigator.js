(function() {
	var	init = function() {
		attachEvents();
		getCategories();
	};

	var attachEvents = function() {
		var	contentEl = $('#content'),
			wrapperEl = $('html'),
			htmlEl = $('body'),
			bodyEl = $('.nav-cover'),
			sidebarEl = $('.nav-sidebar'),
			categoryContainer = sidebarEl.find('.categories'),
			countContainer = sidebarEl.find('.categories'),
			topicContainer = sidebarEl.find('.topics'),
			toggleEl = $('.forum-beta, .converse'),
			closeEl = sidebarEl.find('li, .sidebar-close'),
			overlayEl = $('.nav-overlay'),
			closeNav = $('.subnav-links'),
			backEl = sidebarEl.find('h2');

		toggleEl.on('click', function() {
			toggleSidebar();
		});
		

		categoryContainer.on('click', 'a[data-cid]', function() {
			var	cid = this.getAttribute('data-cid');
			
			ajaxify.go('category/' + cid);
			topicContainer.find('li').removeClass('active');
			topicContainer.find('li[data-cid="' + cid + '"]').addClass('active');
			toggleSidebar();
		});
		
		countContainer.on('click', 'div[data-cid]', function() {
			enterCategory(this.getAttribute('data-cid'));
		});

		topicContainer.on('click', 'li[data-tid]', function() {
			var	tid = this.getAttribute('data-tid');

			ajaxify.go('topic/' + tid);
			topicContainer.find('li').removeClass('active');
			topicContainer.find('li[data-tid="' + tid + '"]').addClass('active');
			toggleSidebar();
		}).on('click', '.more', function() {
			var	cid = this.parentNode.getAttribute('data-cid'),
				numTids = topicContainer.find('[data-tid]').length;

			loadMoreTopics(cid, numTids);
		});
		
		closeNav.on('click', function() {
			toggleSidebar(false);
			if (sidebarEl.hasClass('active'),
				wrapperEl.hasClass('active'),
				htmlEl.hasClass('active'),
				bodyEl.hasClass('active')) {
				sidebarEl.removeClass('active'),
				wrapperEl.removeClass('active'),
				htmlEl.removeClass('active'),
				bodyEl.removeClass('active');
			}  else if (sidebarEl.hasClass('active'),
						wrapperEl.hasClass('active'),
						htmlEl.hasClass('active'),
						bodyEl.hasClass('active')) {
			toggleSidebar();
			};
		});

		closeEl.on('click', function() {
			toggleSidebar(false);
		});

		overlayEl.on('click', function() {
			toggleSidebar(false);
		});

		backEl.on('click', goBack);

		$(window).one('action:ajaxify.end', function(data) {
			var	cid = ajaxify.variables.get('category_id');
			if (cid) {
				enterCategory(cid);
			}
		});

		$(window).on('resize', resizeSidebar);
		resizeSidebar();
	};

	var	toggleSidebar = function(state) {
		var	sidebarEl = $('.nav-sidebar'),
			wrapperEl = $('html'),
			htmlEl = $('body'),
			bodyEl = $('.nav-cover');
		sidebarEl.toggleClass('active', state),
		wrapperEl.toggleClass('active', state),
		htmlEl.toggleClass('active', state),
		bodyEl.toggleClass('active', state);
	};

	var resizeSidebar = function() {
		var	sidebarEl = $('.nav-sidebar'),
			categoryContainer = sidebarEl.find('.categories'),
			topicContainer = sidebarEl.find('.topics');

		categoryContainer.css('height', $(window).height() - 54);
		topicContainer.css('height', $(window).height() - 54);
	};

	var	getCategories = function() {
		var	categoryContainer = $('.nav-sidebar .categories'),
			titleEl = $('.nav-sidebar h2');

		titleEl.text('Categories');

		$.get(RELATIVE_PATH + '/api/home').success(function(returnData) {
			templates.parse('sidebar-home', returnData, function(html) {
				categoryContainer.append(html);
			});
		});
	};

	var enterCategory = function(cid) {
		var	categoryContainer = $('.nav-sidebar .categories'),
			categoryEl = categoryContainer.find('[data-cid="' + cid + '"]'),
			topicContainer = $('.nav-sidebar .topics'),
			titleEl = $('.nav-sidebar h2'),
			iconClass = categoryEl.attr('class');

		categoryContainer.find('li').removeClass('active');
		categoryEl.addClass('active');

		categoryContainer.removeClass('active');
		topicContainer.addClass('active');
		topicContainer.empty().html('<li class="loading">Loading Topics <i class="fa-spin i i-spinner"></i></li>');

		$.get(RELATIVE_PATH + '/api/category/' + cid).success(function(returnData) {
			titleEl.html('<i class="fa fa fa-chevron-circle-left fa-fw"></i> ' + returnData.name).find('i').removeClass('fa-2x');
			if (returnData.topics.length) {
				topicContainer.find('.loading').remove();
				populateTopicList(returnData);
			} else {
				translator.translate('<li class="empty">[[topic:no_topics_found]]</li>', function(translated) {
					topicContainer.empty().html(translated);
				});
			}
		});
	};

	var	loadMoreTopics = function(cid, after) {
		var	topicContainer = $('.nav-sidebar .topics'),
			moreEl = topicContainer.find('.more');

		moreEl.html('<p>Loading <i class="<i class="fa-spin i i-spinner"></i>').addClass('active');

		socket.emit('categories.loadMore', {
			cid: parseInt(cid, 10),
			after: parseInt(after, 10)
		}, function (err, data) {
			if (!err) {
				topicContainer.find('.more').remove();
				populateTopicList(data);
			}
		});
	};

	var populateTopicList = function(data) {
		var	topicContainer = $('.nav-sidebar .topics');

		templates.parse('sidebar-category', data, function(html) {
			topicContainer.append(html).attr('data-cid', data.cid);
			topicContainer.find('.timeago').timeago();

			var	tid = ajaxify.variables.get('topic_id'),
				topicEl = topicContainer.find('[data-tid="' + tid + '"]');
			if (tid && topicEl) {
				topicEl.addClass('active');
			}
		});
	}

	var	goBack = function() {
		var	categoryContainer = $('.nav-sidebar .categories'),
			topicContainer = $('.nav-sidebar .topics'),
			titleEl = $('.nav-sidebar h2');

		if (topicContainer.hasClass('active')) {
			titleEl.text('categories');
			topicContainer.removeClass('active');
			categoryContainer.addClass('active');
		} else if (categoryContainer.hasClass('active')) {
			toggleSidebar();
		}
	};

	$(document).ready(init);
})();