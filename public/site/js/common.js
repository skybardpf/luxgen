$(document).ready(function () {
	//Красивые Alert'ы
	window._alert = window.alert;
	window.alert = function(message) {
		$.pnotify({
			pnotify_title: 'Системное сообщение',
			pnotify_text: message,
			pnotify_delay: 5000
		});
	};
});