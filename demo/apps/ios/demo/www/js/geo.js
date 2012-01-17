$(function() {

    // Wait for PhoneGap to load
    //
    function showAlert() {
        navigator.notification.alert(
            'Your report is due at 5:00 PM.',  	// message
			alertDismissed,						// callback
            'Reminder Dismissed',   			// title
            'Dismiss'                  			// buttonName
        );
    }

    function onDeviceReady() {
        // Empty
        $('#btnAlert').click(function () {
        	if(window.Notifications.checkPermission() == 0) {
        		showAlert();
        	} else {
        		window.Notifications.requestPermission();
        	}


        });

    document.addEventListener("deviceready", onDeviceReady, false);

    // PhoneGap is ready
    //

        $('#btnBeep').click(function () {
        	if(window.Notifications.checkPermission() == 0) {
        		playBeep();
        	} else {
        		window.Notifications.requestPermission();
        	}


        });
        $('#btnVibrate').click(function () {
        	if(window.Notifications.checkPermission() == 0) {
        		tripVibrate();
        	} else {
        		window.Notifications.requestPermission();
        	}


        });
        $('#btnGrantPermission').click(function () {
        	if(window.Notifications.checkPermission() == 0) {
        		showAlert();
        	} else {
        		window.Notifications.requestPermission();
        	}


        });
    }

    // Show a custom alert
    //
    function alertDismissed() {
    // Empty
    }


    // Beep three times
    //
    function playBeep() {
        navigator.notification.beep(3);
    }

    // Vibrate for 2 seconds
    //
    function tripVibrate() {
        navigator.notification.vibrate(2000);
    }
);
/*
 onclick="showAlert(); return false;"
  onclick="playBeep(); return false;"
   onclick="vibrate(); return false;"
		var notification = new Notification("img/mail.png", "Your report is due at 5:00 PM");
		notification.onshow = function() { setTimeout(notification.cancel(), 30000); }
		notification.show(); */