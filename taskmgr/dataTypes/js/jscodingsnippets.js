/*
	switch (n) {
		case "Errand":
				var $page = $(pageSelector),
				$header = $page.children(":jqmData(role=header)"),
				$content = $page.children(":jqmData(role=content)"),
				markup = "<p><img src=\"img" + category  + "/></p><ul data-role='listview' data-inset='true'>",	
				markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
				markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
				markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
				markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
				markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
				markup += "</ul>";
				$header.find("h1").html(category.name);
				$content.html(markup);
				$page.page();
				$content.find(":jqmData(role=listview)").listview();
				options.dataUrl = urlObj.href;
				$.mobile.changePage($page, options);
			"task1":{
							"context": ["Context:", "Errand" ],
							"name": ["Task Name:", "Get Vacuum Bags" ],
							"priority": ["Priority:", "5" ],
							"favorite": ["Favorite:",  "checked" ],
							"sDate": ["Start Date", "2011-05-11" ],
							"eDate": ["End Date:", "2011-05-12" ],
							"dDate": ["Due Date:", "2011-05-12" ],
							"notes": ["Notes:", "Don't forget to get the model fj2 bags." ]
						},
			"task2":{
							"context": ["Context:", "Errand" ],
							"name": ["Task Name:","Buy Broom"],
							"priority": ["Priority:","5"],
							"favorite": ["Favorite:", "unchecked"],
							"sDate": ["Start Date", "2011-05-11"],
							"eDate": ["End Date:", "2011-05-11"],
							"dDate": ["Due Date:", "2011-05-11"],
							"notes": ["Notes:", "Large broom for garage."]
						},		
		"task3": {
							"context": ["Context:", "Errand" ],
							"name": ["Task Name:", "Buy blades for mower"],
							"priority": ["Priority:","5"],
							"favorite": ["Favorite:",  "checked"],
							"sDate": ["Start Date", "2011-05-11"],
							"eDate": ["End Date:", "2011-05-14"],
							"dDate": ["Due Date:", "2011-05-16"],
							"notes": ["Notes:", "Honda SRT Model 5"]
						},		
		"task4": {
							"context": ["Context:", "Errand" ],
							"name": ["Task Name:", "Buy pansies"],
							"priority": ["Priority:","5"],
							"favorite": ["Favorite:", "unchecked"],
							"sDate": ["Start Date", "2011-05-11"],
							"eDate": ["End Date:", "2011-05-14"],
							"dDate": ["Due Date:", "2011-05-16"],
							"notes": ["Notes:", "For front flowerbed, purple and red."]
						},
		"task5": {
							"context": ["Context:", "Errand" ],
							"name": ["Task Name:","Buy Grass Seed"],
							"priority": ["Priority:","3"],
							"favorite": ["Favorite:", "checked"],
							"sDate": ["Start Date", "2011-05-11"],
							"eDate": ["End Date:", "2011-05-14"],
							"dDate": ["Due Date:", "2011-05-16"],
							"notes": ["Notes:", "Get fescue for backyard."]
						},
	
	
	
			
			break;
		case "Home":
				var $page = $(pageSelector),
				$header = $page.children(":jqmData(role=header)"),
				$content = $page.children(":jqmData(role=content)"),
				markup = "<p><img src=\"img" + category  + "/></p><ul data-role='listview' data-inset='true'>",		
				markup = "<p><img src=\"img" + category  + "/></p><ul data-role='listview' data-inset='true'>",	
				markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
				markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
				markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
				markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
				markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
				markup += "</ul>";
				$header.find("h1").html(category.name);
				$content.html(markup);
				$page.page();
				$content.find(":jqmData(role=listview)").listview();
				options.dataUrl = urlObj.href;
				$.mobile.changePage($page, options);	
		
		"task6": {
							"context": ["Context:", "Home" ],
							"name": ["Task Name:", "Vacuum House"],
							"priority": ["Priority:","5"],
							"favorite": ["Favorite:", "checked"],
							"sDate": ["Start Date", "2011-05-11"],
							"eDate": ["End Date:", "2011-05-14"],
							"dDate": ["Due Date:", "2011-05-16"],
							"notes": ["Notes:", ""]
						},
		"task7": {
							"context": ["Context:", "Home" ],
							"name": ["Task Name:","Sweep Garage"],
							"priority": ["Priority:","5"],
							"favorite": ["Favorite:", "checked"],
							"sDate": ["Start Date", "2011-05-11"],
							"eDate": ["End Date:", "2011-05-14"],
							"dDate": ["Due Date:", "2011-05-16"],
							"notes": ["Notes:", ""]
						},		
		"task8": {
							"context": ["Context:", "Home" ],
							"name": ["Task Name:", "Mow Lawn"],
							"priority": ["Priority:", "5"],
							"favorite": ["Favorite:", "checked"],
							"sDate": ["Start Date", "2011-05-11"],
							"eDate": ["End Date:", "2011-05-14"],
							"dDate": ["Due Date:", "2011-05-16"],
							"notes": ["Notes:", ""]
						},		
		"task9": {
							"context": ["Context:", "Home" ],
							"name": ["Task Name:", "Plant Flowers"],
							"priority": ["Priority:", "5"],
							"favorite": ["Favorite:", "checked"],
							"sDate": ["Start Date", "2011-05-11"],
							"eDate": ["End Date:", "2011-05-14"],
							"dDate": ["Due Date:", "2011-05-16"],
							"notes": ["Notes:", ""]
						},
		"task10": {
							"context": ["Context:", "Home" ],
							"name": ["Task Name:", "Plant Grass Seed"],
							"priority": ["Priority:", "5"],
							"favorite": ["Favorite:", "checked"],
							"sDate": ["Start Date", "2011-05-11"],
							"eDate": ["End Date:", "2011-05-14"],
							"dDate": ["Due Date:", "2011-05-16"],
							"notes": ["Notes:", ""]
						},
			
			break;
		case "Office":
				var $page = $(pageSelector),
				$header = $page.children(":jqmData(role=header)"),
				$content = $page.children(":jqmData(role=content)"),
				markup = "<p><img src=\"img" + category  + "/></p><ul data-role='listview' data-inset='true'>",	
				markup = "<p><img src=\"img" + category  + "/></p><ul data-role='listview' data-inset='true'>",	
				markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
				markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
				markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
				markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
				markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
				markup += "</ul>";
				$header.find("h1").html(category.name);
				$content.html(markup);
				$page.page();
				$content.find(":jqmData(role=listview)").listview();
				options.dataUrl = urlObj.href;
				$.mobile.changePage($page, options);	
		
		"task11": {
							"context": ["Context:", "Office" ],
							"name": ["Task Name:", "Order Office Supplies"],
							"priority": ["Priority:", "5"],
							"favorite": ["Favorite:",  "checked"],
							"sDate": ["Start Date", "2011-05-11"],
							"eDate": ["End Date:", "2011-05-14"],
							"dDate": ["Due Date:", "2011-05-16"],
							"notes": ["Notes:", ""]
						},
		"task12": {
							"context": ["Context:", "Office" ],
							"name": ["Task Name:", "Clean Desk"],
							"priority": ["Priority:", "5"],
							"favorite": ["Favorite:", "checked"],
							"sDate": ["Start Date", "2011-05-11"],
							"eDate": ["End Date:", "2011-05-14"],
							"dDate": ["Due Date:", "2011-05-16"],
							"notes": ["Notes:", ""]
						},		
		"task13": {
							"context": ["Context:", "Office" ],
							"name": ["Task Name:", "Reorganize Filecabinet"],
							"priority": ["Priority:", "5"],
							"favorite": ["Favorite:", "checked"],
							"sDate": ["Start Date", "2011-05-11"],
							"eDate": ["End Date:", "2011-05-14"],
							"dDate": ["Due Date:", "2011-05-16"],
							"notes": ["Notes:", ""]
						},		
		"task14": {
							"context": ["Context:", "Office" ],
							"name": ["Task Name:", "Meeting with Mike"],
							"priority": ["Priority:", "5"],
							"favorite": ["Favorite:", "checked"],
							"sDate": ["Start Date", "2011-05-11"],
							"eDate": ["End Date:", "2011-05-14"],
							"dDate": ["Due Date:", "2011-05-16"],
							"notes": ["Notes:", ""]
						},
		"task15": {
							"context": ["Context:", "Office" ],
							"name": ["Task Name:", "Prepare Sales Presentation"],
							"priority": ["Priority:", "5"],
							"favorite": ["Favorite:", "checked"],
							"sDate": ["Start Date", "2011-05-11"],
							"eDate": ["End Date:", "2011-05-14"],
							"dDate": ["Due Date:", "2011-05-16"],
							"notes": ["Notes:", ""]
						},		
			break;
		case "Calls":
				var $page = $(pageSelector),
				$header = $page.children(":jqmData(role=header)"),
				$content = $page.children(":jqmData(role=content)"),
				markup = "<p><img src=\"img" + category  + "/></p><ul data-role='listview' data-inset='true'>",	
				markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
				markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
				markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
				markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
				markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
				markup += "</ul>";
				$header.find("h1").html(category.name);
				$content.html(markup);
				$page.page();
				$content.find(":jqmData(role=listview)").listview();
				options.dataUrl = urlObj.href;
				$.mobile.changePage($page, options);
		"task16": {
							"context": ["Context:", "Calls" ],
							"name": ["Task Name:","Call Joe from Shipping"],
							"priority": ["Priority:","5"],
							"favorite": ["Favorite:", "checked"],
							"sDate": ["Start Date", "2011-05-11"],
							"eDate": ["End Date:", "2011-05-14"],
							"dDate": ["Due Date:", "2011-05-16"],
							"notes": ["Notes:", ""]
						},
		"task17": {
							"context": ["Context:", "Calls" ],
							"name": ["Task Name:", "Call Car Dealer About Repair Status"],
							"priority": ["Priority:","5"],
							"favorite": ["Favorite:", "checked"],
							"sDate": ["Start Date", "2011-05-11"],
							"eDate": ["End Date:", "2011-05-14"],
							"dDate": ["Due Date:", "2011-05-16"],
							"notes": ["Notes:", ""]
						},		
		"task18": {
							"context": ["Context:", "Calls" ],
							"name": ["Task Name:", "Call AT&T About Texting Plan"],
							"priority": ["Priority:", "5"],
							"favorite": ["Favorite:", "checked"],
							"sDate": ["Start Date", "2011-05-11"],
							"eDate": ["End Date:", "2011-05-14"],
							"dDate": ["Due Date:", "2011-05-16"],
							"notes": ["Notes:", ""]
						},		
		"task19": {
							"context": ["Context:", "Calls" ],
							"name": ["Task Name:", "Call Client to Setup Meeting"],
							"priority": ["Priority:", "5"],
							"favorite": ["Favorite:", "checked"],
							"sDate": ["Start Date", "2011-05-11"],
							"eDate": ["End Date:", "2011-05-14"],
							"dDate": ["Due Date:", "2011-05-16"],
							"notes": ["Notes:", ""]
						},
		"task20": {
							"context": ["Context:", "Calls" ],
							"name": ["Task Name:", "Call City About Utility Bill"],
							"priority": ["Priority:", "5"],
							"favorite": ["Favorite:", "checked"],
							"sDate": ["Start Date", "2011-05-11"],
							"eDate": ["End Date:", "2011-05-14"],
							"dDate": ["Due Date:", "2011-05-16"],
							"notes": ["Notes:", ""]
						},		
			break;
		case "People":
				var $page = $(pageSelector),
				$header = $page.children(":jqmData(role=header)"),
				$content = $page.children(":jqmData(role=content)"),
				markup = "<p><img src=\"img" + category  + "/></p><ul data-role='listview' data-inset='true'>",
				markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
				markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
				markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
				markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
				markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
				markup += "</ul>";
				$header.find("h1").html(category.name);
				$content.html(markup);
				$page.page();
				$content.find(":jqmData(role=listview)").listview();
				options.dataUrl = urlObj.href;
				$.mobile.changePage($page, options);
	
		"task21": {
							"context": ["Context:", "People" ],
							"name": ["Task Name:", "Mike is preparing operations presentation"],
							"priority": ["Priority:", "5"],
							"favorite": ["Favorite:", "checked"],
							"sDate": ["Start Date", "2011-05-11"],
							"eDate": ["End Date:", "2011-05-14"],
							"dDate": ["Due Date:", "2011-05-16"],
							"notes": ["Notes:", ""]
						},
		"task22": {
							"context": ["Context:", "People" ],
							"name": ["Task Name:", "Jane is organizing lunch party"],
							"priority": ["Priority:", "5"],
							"favorite": ["Favorite:", "checked"],
							"sDate": ["Start Date", "2011-05-11"],
							"eDate": ["End Date:", "2011-05-14"],
							"dDate": ["Due Date:", "2011-05-16"],
							"notes": ["Notes:", ""]
						},
		"task23": {
							"context": ["Context:", "People" ],
							"name": ["Task Name:", "Joanne is creating spreadsheet for monthly budget"],
							"priority": ["Priority:", "5"],
							"favorite": ["Favorite:", "checked"],
							"sDate": ["Start Date", "2011-05-11"],
							"eDate": ["End Date:", "2011-05-14"],
							"dDate": ["Due Date:", "2011-05-16"],
							"notes": ["Notes:", ""]
						},
		"task24": {
							"context": ["Context:", "People" ],
							"name": ["Task Name:", "Joe is revising business plan"],
							"priority": ["Priority:", "5"],
							"favorite": ["Favorite:", "checked"],
							"sDate": ["Start Date", "2011-05-11"],
							"eDate": ["End Date:", "2011-05-14"],
							"dDate": ["Due Date:", "2011-05-16"],
							"notes": ["Notes:", ""]
						},
		"task25": {
							"context": ["Context:", "People" ],
							"name": ["Task Name:", "Judy is revisiting our marketing plan"],
							"priority": ["Priority:", "5"],
							"favorite": ["Favorite:", "checked"],
							"sDate": ["Start Date", "2011-05-11"],
							"eDate": ["End Date:", "2011-05-14"],
							"dDate": ["Due Date:", "2011-05-16"],
							"notes": ["Notes:", ""]
						},		
			break;
		case "Waiting":
				markup = "<p><img src=\"img" + category  + "/></p><ul data-role='listview' data-inset='true'>",	
				markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
				markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
				markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
				markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
				markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
				markup += "</ul>";
				$header.find("h1").html(category.name);
				$content.html(markup);
				$page.page();
				$content.find(":jqmData(role=listview)").listview();
				options.dataUrl = urlObj.href;
				$.mobile.changePage($page, options);
	
		"task26": {
							"context": ["Context:", "Waiting" ],
							"name": ["Task Name:", "Research into new product line"],
							"priority": ["Priority:", "5"],
							"favorite": ["Favorite:", "checked"],
							"sDate": ["Start Date", "2011-05-11"],
							"eDate": ["End Date:", "2011-05-14"],
							"dDate": ["Due Date:", "2011-05-16"],
							"notes": ["Notes:", ""]
						},
		"task27": {
							"context": ["Context:", "Waiting" ],
							"name": ["Task Name:", "Remodel Kitchen"],
							"priority": ["Priority:", "5"],
							"favorite": ["Favorite:", "checked"],
							"sDate": ["Start Date", "2011-05-11"],
							"eDate": ["End Date:", "2011-05-14"],
							"dDate": ["Due Date:", "2011-05-16"],
							"notes": ["Notes:", ""]
						},
		"task28": {
							"context": ["Context:", "Waiting" ],
							"name": ["Task Name:", "Buy new car"],
							"priority": ["Priority:", "5"],
							"favorite": ["Favorite:", "checked"],
							"sDate": ["Start Date", "2011-05-11"],
							"eDate": ["End Date:", "2011-05-14"],
							"dDate": ["Due Date:", "2011-05-16"],
							"notes": ["Notes:", ""]
						},
		"task29": {
							"context": ["Context:", "Waiting" ],
							"name": ["Task Name:", "Rewire Cat 6 cabling throughout house"],
							"priority": ["Priority:", "5"],
							"favorite": ["Favorite:", "checked"],
							"sDate": ["Start Date", "2011-05-11"],
							"eDate": ["End Date:", "2011-05-14"],
							"dDate": ["Due Date:", "2011-05-16"],
							"notes": ["Notes:", ""]
						},
		"task30": {
							"context": ["Context:", "Waiting" ],
							"name": ["Task Name:", "Revamp company web site"],
							"priority": ["Priority:", "5"],
							"favorite": ["Favorite:", "checked"],
							"sDate": ["Start Date", "2011-05-11"],
							"eDate": ["End Date:", "2011-05-14"],
							"dDate": ["Due Date:", "2011-05-16"],
							"notes": ["Notes:", ""]
						}		
			break;
		default:
			return false;
	}
}
*/
		/*
		switch (n) {
	case "errand":
		
		$.mobile.changePage(p, n);
		break;
	case "home":
		$('addTaskForm').style.display = "block";
		$('clear').style.display = "inline";
		$('displayLink').style.display = "inline";
		$('addNew').style.display = "none";
		$('items').style.display = "none";
		break;
	case "office":	
		break;
	case "calls":	
		break;
	case "people":	
		break;
	case "waiting":	
	window.
		break;
	default:
		return false;
	}



		//var makeDiv = document.createElement("div");
		//makeDiv.setAttribute("data-role", "fieldcontain");
		//makeSelect.setAttribute("name", "context");
		//makeSelect.setAttribute("data-native-menu", "false");