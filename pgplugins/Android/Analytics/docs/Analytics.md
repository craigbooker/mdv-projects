Analytics
==========

Analytics is an object that allows you to track page views using Google Analytics framework.

Properties
----------

N/A

Methods
-------

- start: Initialize Google Analytics with the appropriate Google Analytics account.
- trackPageView: Track a page view on Google Analytics. 


Supported Platforms
-------------------

- Android

Quick Example
------------------------------
	
  	var onStartSuccess = function() {
  		alert("Google Analytics has started successfully");
	}
	
    var onStartFailure = function() {
        alert("Google Analytics failed to start");
    }
	
	var onTrackSuccess = function() {
  		alert("A page view has been successfully sent to Google Analytics.");
	}
	
    var onTrackFailure = function() {
        alert("A page view has failed to be submitted to Google Analytics");
    }
	
	var onEventSuccess = function() {
  		alert("An event has been successfully sent to Google Analytics.");
	}
	
    var onEventFailure = function() {
        alert("An event has failed to be submitted to Google Analytics");
    }

	var myGoogleAnalyticsAccountId = "Your-Account-ID-Here"; // Get your account id from http://www.google.com/analytics/
    window.plugins.analytics.start(myGoogleAnalyticsAccountId, onStartSuccess, onStartFailure);
	window.plugins.analytics.trackPageView("page1.html", onTrackSuccess, onTrackFailure);
	window.plugins.analytics.trackEvent("category", "action", "event", 1, onEventSuccess, onEventFailure);    
