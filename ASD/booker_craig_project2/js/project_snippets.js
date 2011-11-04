// -------   Start of: Parse Data-------------------------
// STATUS :  
// LAST UPDATED: 2011-10-30
// PURPOSE: Load the data from the json file
// TODO: None
// QUESTIONS: 
//----------------------------------------------------------
	function parseData(fileType){
		    switch (n) {
	    	case "json":
	    		var serializedItem = JSON.stringify(item);
				console.log(serializedItem);
	    	case "xml" :
	   		 // assume that the XML above is in a string named "xml"
				var data = $.parseXML(xml);
				// wrap the XML in a jQuery object to make it easier to work with
				var items = $( data );
				items.find("item").each(function(){
				    var item = $(this);
				    console.log("Context: ", item.find("context"));
				    console.log("Name: ", item.find("name"));
				    console.log("Priority: ", item.find("priority"));
				    console.log("Favorite: ", item.find("favorite"));
				    console.log("Start Date: ", item.find("sDate"));
				    console.log("End Date: ", item.find("eDate"));
				    console.log("Due Date: ", item.find("dDate"));
				    console.log("Notes: ", item.find("notes"));
				});
			break;
		    case "yml" :
	            var test1 = YAML.eval("---\n- one\n- two");
	            var test2 = YAML.eval("---\none: two");
	        
	            YAML.fromURL("xhr/data.yml", function(data) {
		                var errors = YAML.getErrors();
		                if(errors.length == 0) {
		                  //  document.getElementById("out").innerHTML = "Done! Took " + YAML.getProcessingTime() + " miliseconds.";
		                    $('#output').html("Done! Took " + YAML.getProcessingTime() + " miliseconds."));
		                else {
		                    //document.getElementById("out").innerHTML = errors.join("<br>");
		                    $('#output').html(errors.join("br>"));
		                }
			    });
			break;
	    default:
	        return false;
	    }
	}
// -------    End of: Parse Data --------------------------	
// -------   Start of: Load Data-------------------------
// STATUS :  
// LAST UPDATED: 2011-10-30
// PURPOSE: Load the data from the json file
// TODO: None
// QUESTIONS: 
//----------------------------------------------------------
	function loadData(fileType){
		    switch (n) {
	    	case "json":
	    	break;
	    	case "xml" :
	    	break;
		    case "yml" :	
	    	break;

// -------    End of: Load Data --------------------------	



// -------   Start of: JSON AJAX Call--------------------------
// STATUS : Not fully working 
// LAST UPDATED: 2011-10-29
// PURPOSE: Load the data from the json file
// TODO: None
// QUESTIONS: 
//----------------------------------------------------------
		function loadData2() {
		$.ajax({
			url: 'data.json',
			type: 'GET',
			dataType: 'json',
			success: function(data, status){
				console.log(status, data);
			}			
		});
		}
// -------    End of: JSON AJAX Call --------------------------	
// -------   Start of: XML AJAX Call--------------------------
// STATUS : Not fully working 
// LAST UPDATED: 2011-10-29
// PURPOSE: Load the data from the json file
// TODO: None
// QUESTIONS: 
//----------------------------------------------------------

// assume that the XML above is in a string named "xml"
var data = $.parseXML(xml);
// wrap the XML in a jQuery object to make it easier to work with
var items = $( data );
items.find("item").each(function(){
    var item = $(this);
    console.log("Context: ", item.find("context"));
    console.log("Name: ", item.find("name"));
    console.log("Priority: ", item.find("priority"));
    console.log("Favorite: ", item.find("favorite"));
    console.log("Start Date: ", item.find("sDate"));
    console.log("End Date: ", item.find("eDate"));
    console.log("Due Date: ", item.find("dDate"));
    console.log("Notes: ", item.find("notes"));

});

// -------    End of:  XML AJAX Call --------------------------	
// -------   Start of: YAML AJAX Call--------------------------
// STATUS : Not fully working 
// LAST UPDATED: 2011-10-29
// PURPOSE: Load the data from the json file
// TODO: None
// QUESTIONS: 
//----------------------------------------------------------
        window.onload = function() {
            var test1 = YAML.eval("---\n- one\n- two");
            var test2 = YAML.eval("---\none: two");
        
            YAML.fromURL("xhr/data.yml", function(data) {
                var errors = YAML.getErrors();
                if(errors.length == 0) {
                  //  document.getElementById("out").innerHTML = "Done! Took " + YAML.getProcessingTime() + " miliseconds.";
                  console.log(status, data);
                    //$('#out').html("Done! Took " + YAML.getProcessingTime() + " miliseconds."));
               } else {
                    //document.getElementById("out").innerHTML = errors.join("<br>");
                    //$('#out').html(errors.join("br>"));
                    console.log(errors);
                }
            });
        };
// -------    End of:  YAML AJAX Call --------------------------	
// -------   Start of: Make Item Links --------------------------
// STATUS : 
// LAST UPDATED: 2011-10-28
// PURPOSE: 
// NOTES :  
// TODO: 
// QUESTIONS: 
//----------------------------------------------------------
	    function makeItemLinks(key, linksLi) {
		    var editLink    =    document.createElement('a');
		    editLink.href    =    "#";
		    editLink.key    =    key;
		    var editText    =    "Edit Task";
		    editLink.addEventListener("click", editItem);
		    editLink.innerHTML    =    editText;   /*  NEEDS CHANGED */
		    linksLi.appendChild(editLink);
		
		    // Add Line Break
		    var breakTag = document.createElement('br'); 
		    linksLi.appendChild(breakTag);
		
		    var deleteLink    =    document.createElement('a');
		    deleteLink.href = "#";
		    deleteLink.key    =    key;
		    var deleteText = "Delete Task";
		    deleteLink.addEventListener("click", deleteTask);
		    deleteLink.innerHTML = deleteText; /*  NEEDS CHANGED */
		    linksLi.appendChild(deleteLink);
	    }
// -------   End of: Make Item Links --------------------------


// ------------- OLD CODE SNIPPETS --------------------------------------------
// -- NOT SURE IF THESE NEED TO BE USED JUST YET
// -------   Start of: Get Img NEW --------------------------
// STATUS : 
// PURPOSE: 
// NOTES :  
// TODO: 
// QUESTIONS: 
//----------------------------------------------------------
	/*
    function getImage(catName, makeSubList) {
        var imageLi    =    document.createElement('li');

        makeSubList.appendChild('imageLi');
        var newImage    =    document.createElement('img');
        var setSrc    =    newImage.setAttribute("src", "images/"+ catName + ".png");
        imageLi.appendChild(newImage);
    }
    */
// -------   End of: Get Img NEW --------------------------
// -- NOT SURE IF THESE NEED TO BE USED JUST YET


	/*
			$.mobile.bind.pageInit("pagebeforechange", function (e, data) {	
		//$(document).bind("pagebeforechange", function (e, data) {
        if (typeof data.toPage === "string") {
            var u = $.mobile.path.parseUrl(data.toPage),
                re = /^#category-item/;
            if (u.hash.search(re) !== -1) {
                showCategory(u, data.options);
                e.preventDefault();
            }
        }
		});
		*/	
// -------   Start of : Show Category List -------------------------- 
/*
function showCategory(urlObj, options) {
	var categoryName = urlObj.hash.replace(/.*category=/, ""),
		//actionName = urlObj.hash.replace(/.*show=/, ""),
		category = json.categoryName,
		pageSelector = urlObj.hash.replace(/\?.*$/, ""),
		i;
		//alert(pageSelector);
		//buildCatPage(category);
	if (category) {
	
		var $page = $(pageSelector),
			$header = $page.children(":jqmData(role=header)"),
			$content = $page.children(":jqmData(role=content)"),
			markup = "<p><img src=\"img" + category  + "/></p><ul data-role='listview' data-inset='true'>",
			cItems = category.tasks,
			numItems = cItems.length;
// Make a list item for each item in the category and add to markup
		for (i = 0; i < numItems; i++) {
			markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
		}
		markup += "</ul>";
		$header.find("h1").html(category.name);
		$content.html(markup);
		$page.page();
		$content.find(":jqmData(role=listview)").listview();
		options.dataUrl = urlObj.href;
		$.mobile.changePage($page, options);
	}
}

*/
// -------   End of : Show Category List -------------------------- 
// -------   Start of: binding function for main page ------------
// STATUS : SEMI WORKING ----- 2011.10.28
// LAST UPDATED: 2011-10-28
// PURPOSE: Listen for any attempts to call changePage().
// NOTES : Bind needs to be fixed 
// TODO:
// QUESTIONS: 1. Is this the correct way to bind this function to the document?
//----------------------------------------------------------

/*
$(document).bind( "pagebeforechange", function( e, data ) {
	console.log('In bind');
	// We only want to handle changePage() calls where the caller is
	// asking us to load a page by URL.
	if ( typeof data.toPage === "string" ) {
		// We are being asked to load a page by URL, but we only
		// want to handle URLs that request the data for a specific
		// category.
		var u = $.mobile.path.parseUrl( data.toPage ),
			re = /^#category-item/;
		if ( u.hash.search(re) !== -1 ) {
			// We're being asked to display the items for a specific category.
			// Call our internal method that builds the content for the category
			// on the fly based on our in-memory category data structure.
			showCategory( u, data.options );

			// Make sure to tell changePage() we've handled this call so it doesn't
			// have to do anything.
			e.preventDefault();
		}
	}
}); */
// -------   Start of: showCategories function ------------
// STATUS : Not fully working ----- 2011.10.28
// LAST UPDATED: 2011-10-28
// PURPOSE: Load the data for a specific category, based on
// the URL passed in. Generate markup for the items in the
// category, inject it into an embedded page, and then make
// that page the current active page.
// TODO: None
// QUESTIONS: 
//----------------------------------------------------------
/*
function showCategory(urlObj, options)
{
	var categoryName = urlObj.hash.replace( /.*category=/, "" ),

		// Get the object that represents the category we
		// are interested in. Note, that at this point we could
		// instead fire off an ajax request to fetch the data, but
		// for the purposes of this sample, it's already in memory.
		category = json[ categoryName ],

		// The pages we use to display our content are already in
		// the DOM. The id of the page we are going to write our
		// content into is specified in the hash before the '?'.
		pageSelector = urlObj.hash.replace( /\?.*$/, "" );

	if ( category ) {
		// Get the page we are going to dump our content into.
		var $page = $(pageSelector),
			// Get the header for the page.
			$header = $page.children( ":jqmData(role=header)" ),
			// Get the content area element for the page.
			$content = $page.children( ":jqmData(role=content)" ),
			// The markup we are going to inject into the content
			// area of the page.
			markup = "<p>" + category.description + "</p><ul data-role='listview' data-inset='true'>",
			// The array of items for this category.
			cItems = category.items,
			// The number of items in the category.
			numItems = cItems.length;
		// Generate a list item for each item in the category
		// and add it to our markup.
		for ( var i = 0; i < numItems; i++ ) {
			markup += "<li>" + cItems[i].name + "</li>";
		}
		markup += "</ul>";

		// Find the h1 element in our header and inject the name of
		// the category into it.
		$header.find( "h1" ).html( category.name );

		// Inject the category items markup into the content element.
		$content.html( markup );

		// Pages are lazily enhanced. We call page() on the page
		// element to make sure it is always enhanced before we
		// attempt to enhance the listview markup we just injected.
		// Subsequent calls to page() are ignored since a page/widget
		// can only be enhanced once.
		$page.page();

		// Enhance the listview we just injected.
		$content.find( ":jqmData(role=listview)" ).listview();

		// We don't want the data-url of the page we just modified
		// to be the url that shows up in the browser's location field,
		// so set the dataUrl option to the URL for the category
		// we just loaded.
		options.dataUrl = urlObj.href;

		// Now call changePage() and tell it to switch to
		// the page we just modified.
		$.mobile.changePage( $page, options );
	}
} */
	//$.ajax({
      window.onload = (function() {
            //var test1 = YAML.eval("---\n- one\n- two");
            //var test2 = YAML.eval("---\none: two");
        
            YAML.fromURL("xhr/data.yml", function(data, status) {
                var errors = YAML.getErrors();
                if(errors.length == 0) {
                  console.log(status, data);
                    //$('#out').html("Done! Took " + YAML.getProcessingTime() + " miliseconds."));
               } else {
                    //$('#out').html(errors.join("br>"));
                    console.log(errors);
         			}
         
         });
	});
	<!-- START OF PAGE: categories:errands   ++++++++++++++++++++++++++++++++++++++++++   -->
<div id="errands_static" data-role="page">
 	<div data-role="header" data-position="fixed" data-theme="a" align="center">
	 	<img src="img/taskmgr_logo1_wht.png" alt="taskmgr_logo1" width="221" height="44" align="center" />
			     <!--h1>Task Manager</h1><!-- header -->
	    </div><!-- /header -->
		<div data-role="list-divider" class="ui-bar-d">
			<ul data-role="listview">
				<li data-role="list-divider" class="ui-bar ui-bar-d">Errands</li>
			</ul>
	</div>	
  <div data-role="content">
	  <div data-role="collapsible-set">
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name: Get Vacuum Bags</h3>
						<div data-role="fieldcontain">
							<ul data-role="listview">
							<li>Priority: 5</li>
							<li>Favorite: checked</li>
							<li>Start Date: 2011-05-11</li>
							<li>End Date: 2011-05-12</li>
							<li>Due Date: 2011-05-12</li>
							<li>Notes:Don't forget to get the model fj2 bags.</li>
							</ul>
					
						</div> 	<!-- Clear Local Storage -->
				</div>
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name: Buy Broom</h3>
					<div data-role="fieldcontain">
						<ul data-role="listview">
							<li>Priority: 5</li>
							<li>Favorite: unchecked</li>
							<li>Start Date: 2011-05-11</li>
							<li>End Date: 2011-05-12</li>
							<li>Due Date: 2011-05-12</li>
							<li>Notes:Large broom for garage.</li>
						</ul>
					</div> 	<!-- task 2 -->
				</div>
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name: Buy blades for mower</h3>
					<div data-role="fieldcontain">
						<ul data-role="listview">
							<li>Priority: 5</li>
							<li>Favorite: checked</li>
							<li>Start Date: 2011-05-11</li>
							<li>End Date: 2011-05-12</li>
							<li>Due Date: 2011-05-12</li>
							<li>Notes:Honda SRT Model 5</li>
						</ul>
					</div> 	<!-- task 3 -->
				</div>
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name: Buy pansies</h3>
					<div data-role="fieldcontain">
						<ul data-role="listview">
							<li>Priority: 5</li>
							<li>Favorite: checked</li>
							<li>Start Date: 2011-05-11</li>
							<li>End Date: 2011-05-12</li>
							<li>Due Date: 2011-05-12</li>
							<li>Notes:Purple and yellow would be nice.</li>
						</ul>
					</div> 	<!-- Task 4 -->
				</div>
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name: Buy Grass Seed</h3>
					<div data-role="fieldcontain">
						<ul data-role="listview">
							<li>Priority: 5</li>
							<li>Favorite: checked</li>
							<li>Start Date: 2011-05-11</li>
							<li>End Date: 2011-05-12</li>
							<li>Due Date: 2011-05-12</li>
							<li>Notes:Get fescue for backyard.</li>
						</ul>
				</div> 	<!-- Task 5 -->
				</div>
			</div>	
	  <div data-role="collapsible-set">
		
			</div>							
	</div>

	<div data-role="footer" data-position="fixed" data-id="myfooter" data-theme="a">
		<div data-role="navbar">
			<ul>
				<li><a href="#home" data-icon="home">Home</a></li>
				<li><a href="#add_item" data-icon="plus">Add Task</a></li>
				<li><a href="#settings" data-icon="gear">Settings</a></li>
				<li><a href="#about_app" data-icon="info">About</a></li>
			</ul>
		</div><!-- / footer navbar -->
	</div><!-- /footer -->
</div>
<!-- END OF PAGE: categories:errands   ++++++++++++++++++++++++++++++++++++++++++   -->
<!-- START OF PAGE: categories:errands   ++++++++++++++++++++++++++++++++++++++++++   -->
<div id="home_list_static" data-role="page">
 	<div data-role="header" data-position="fixed" data-theme="a" align="center">
	 	<img src="img/taskmgr_logo1_wht.png" alt="taskmgr_logo1" width="221" height="44" align="center" />
			     <!--h1>Task Manager</h1><!-- header -->
	    </div><!-- /header -->
		<div data-role="list-divider" class="ui-bar-d">
			<ul data-role="listview">
				<li data-role="list-divider" class="ui-bar ui-bar-d">Home</li>
			</ul>
	</div>	
  <div data-role="content">
	  <div data-role="collapsible-set">
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name: Sweep Garage</h3>
					<div data-role="fieldcontain">
						<ul data-role="listview">
						<li>Priority: 3</li>
						<li>Favorite: checked</li>
						<li>Start Date: 2011-05-11</li>
						<li>End Date: 2011-05-12</li>
						<li>Due Date: 2011-05-12</li>
						<li>Notes:Move back those shelves</li>
						</ul>
					</p>
				</div> 	<!-- Task -->
				</div>
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name: Mow Lawn</h3>
					<div data-role="fieldcontain">
						<ul data-role="listview">
							<li>Priority: 7</li>
							<li>Favorite: checked</li>
							<li>Start Date: 2011-05-11</li>
							<li>End Date: 2011-05-12</li>
							<li>Due Date: 2011-05-12</li>
							<li>Notes:Getting really tall in backyard.</li>
						</ul>
					</p>
				</div> 	<!-- Task -->
				</div>
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name: Plant Flowers</h3>
					<div data-role="fieldcontain">
						<ul data-role="listview">
							<li>Priority: 5</li>
							<li>Favorite: checked</li>
							<li>Start Date: 2011-05-11</li>
							<li>End Date: 2011-05-12</li>
							<li>Due Date: 2011-05-12</li>
							<li>Notes:Plant pansies in front flowerbed.</li>
						</ul>
				</div> 	<!-- Clear Local Storage -->
				</div>
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name: Plant Grass Seed</h3>
					<div data-role="fieldcontain">
						<ul data-role="listview">
						<li>Priority: 5</li>
						<li>Favorite: checked</li>
						<li>Start Date: 2011-05-11</li>
						<li>End Date: 2011-05-12</li>
						<li>Due Date: 2011-05-12</li>
						<li>Notes: Plant fescue in backyard, better hurry!</li>
						</ul>
				</div> 	<!-- Clear Local Storage -->
				</div>
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name: Vacuum House</h3>
					<div data-role="fieldcontain">
						<ul data-role="listview">
							<li>Priority: 5</li>
							<li>Favorite: checked</li>
							<li>Start Date: 2011-05-11</li>
							<li>End Date: 2011-05-12</li>
							<li>Due Date: 2011-05-12</li>
							<li>Notes:Don't forget to get the laundry room.</li>
						</ul>
				</div> 	<!-- Clear Local Storage -->
				</div>
			</div>							
	</div>

	<div data-role="footer" data-position="fixed" data-id="myfooter" data-theme="a">
		<div data-role="navbar">
			<ul>
				<li><a href="#home" data-icon="home">Home</a></li>
				<li><a href="#add_item" data-icon="plus">Add Task</a></li>
				<li><a href="#settings" data-icon="gear">Settings</a></li>
				<li><a href="#about_app" data-icon="info">About</a></li>
			</ul>
		</div><!-- / footer navbar -->
	</div><!-- /footer -->
</div>
<!-- END OF PAGE: categories:home   ++++++++++++++++++++++++++++++++++++++++++   -->
<!-- START OF PAGE: categories:office   ++++++++++++++++++++++++++++++++++++++++++   -->
<div id="office_static" data-role="page">
 	<div data-role="header" data-position="fixed" data-theme="a" align="center">
	 	<img src="img/taskmgr_logo1_wht.png" alt="taskmgr_logo1" width="221" height="44" align="center" />
			     <!--h1>Task Manager</h1><!-- header -->
	    </div><!-- /header -->
		<div data-role="list-divider" class="ui-bar-d">
			<ul data-role="listview">
				<li data-role="list-divider" class="ui-bar ui-bar-d"><h2><img src="img/Office_med.png" /> Office Tasks</h2></li>
			</ul>
	</div>	
  <div data-role="content">
	  <div data-role="collapsible-set">
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name: Order Office Supplies</h3>
					<div data-role="fieldcontain">
						<ul data-role="listview">
							<li>Priority: 5</li>
							<li>Favorite: checked</li>
							<li>Start Date: 2011-05-11</li>
							<li>End Date: 2011-05-12</li>
							<li>Due Date: 2011-05-12</li>
							<li>Notes:Don't forget to get the model fj2 bags.</li>
						</ul>
				</div> 	<!-- Clear Local Storage -->
				</div>
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name: Clean Desk</h3>
						<div data-role="fieldcontain">
						<ul data-role="listview">
							<li>Priority: 5</li>
							<li>Favorite: checked</li>
							<li>Start Date: 2011-05-11</li>
							<li>End Date: 2011-05-12</li>
							<li>Due Date: 2011-05-12</li>
							<li>Notes:Don't forget to get the model fj2 bags.</li>
						</ul>
				</div> 	<!-- Task -->
				</div>
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name: Reorganize Filecabinet</h3>
					<div data-role="fieldcontain">
						<ul data-role="listview">
							<li>Priority: 5</li>
							<li>Favorite: checked</li>
							<li>Start Date: 2011-05-11</li>
							<li>End Date: 2011-05-12</li>
							<li>Due Date: 2011-05-12</li>
							<li>Notes:Don't forget to get the model fj2 bags.</li>
						</ul>
				</div> 	<!-- Task -->
				</div>
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name: Meeting with Mike</h3>
					<div data-role="fieldcontain">
						<ul data-role="listview">
							<li>Priority: 5</li>
							<li>Favorite: checked</li>
							<li>Start Date: 2011-05-11</li>
							<li>End Date: 2011-05-12</li>
							<li>Due Date: 2011-05-12</li>
							<li>Notes:Don't forget to get the model fj2 bags.</li>
						</ul>
				</div> 	<!-- Task -->
				</div>
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name: Prepare Sales Presentation</h3>
					<div data-role="fieldcontain">
						<ul data-role="listview">						
							<li>Priority: 5</li>
							<li>Favorite: checked</li>
							<li>Start Date: 2011-05-11</li>
							<li>End Date: 2011-05-12</li>
							<li>Due Date: 2011-05-12</li>
							<li>Notes:Don't forget to get the model fj2 bags.</li>
						</ul>
				</div> 	<!-- Clear Local Storage -->
				</div>
			</div>							
	</div>

	<div data-role="footer" data-position="fixed" data-id="myfooter" data-theme="a">
		<div data-role="navbar">
			<ul>
				<li><a href="#home" data-icon="home">Home</a></li>
				<li><a href="#add_item" data-icon="plus">Add Task</a></li>
				<li><a href="#settings" data-icon="gear">Settings</a></li>
				<li><a href="#about_app" data-icon="info">About</a></li>
			</ul>
		</div><!-- / footer navbar -->
	</div><!-- /footer -->
</div>
<!-- END OF PAGE: categories:office   ++++++++++++++++++++++++++++++++++++++++++   -->
<!-- START OF PAGE: categories:calls   ++++++++++++++++++++++++++++++++++++++++++   -->
<div id="calls_static" data-role="page">
 	<div data-role="header" data-position="fixed" data-theme="a" align="center">
	 	<img src="img/taskmgr_logo1_wht.png" alt="taskmgr_logo1" width="221" height="44" align="center" />
			     <!--h1>Task Manager</h1><!-- header -->
	    </div><!-- /header -->
		<div data-role="list-divider" class="ui-bar-d">
			<ul data-role="listview">
				<li data-role="list-divider" class="ui-bar ui-bar-d">Calls</li>
			</ul>
	</div>	
  <div data-role="content">
	  <div data-role="collapsible-set">
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name:", "Get Vacuum Bags</h3>
					<p><div data-role="fieldcontain">
					<p>
						<ul data-role="listview">
						<li>Priority: 5</li>
						<li>Favorite: checked</li>
						<li>Start Date: 2011-05-11</li>
						<li>End Date: 2011-05-12</li>
						<li>Due Date: 2011-05-12</li>
						<li>Notes:Don't forget to get the model fj2 bags.</li>
						</ul>
					</p>
				</div> 	<!-- Clear Local Storage -->
				</div>
			</div>
	  <div data-role="collapsible-set">
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name:", "Get Vacuum Bags</h3>
					<p><div data-role="fieldcontain">
					<p>
						<ul data-role="listview">
						<li>Priority: 5</li>
						<li>Favorite: checked</li>
						<li>Start Date: 2011-05-11</li>
						<li>End Date: 2011-05-12</li>
						<li>Due Date: 2011-05-12</li>
						<li>Notes:Don't forget to get the model fj2 bags.</li>
						</ul>
					</p>
				</div> 	<!-- Clear Local Storage -->
				</div>
			</div>
	  <div data-role="collapsible-set">
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name:", "Get Vacuum Bags</h3>
					<p><div data-role="fieldcontain">
					<p>
						<ul>
						<li>Priority: 5</li>
						<li>Favorite: checked</li>
						<li>Start Date: 2011-05-11</li>
						<li>End Date: 2011-05-12</li>
						<li>Due Date: 2011-05-12</li>
						<li>Notes:Don't forget to get the model fj2 bags.</li>
						</ul>
					</p>
				</div> 	<!-- Clear Local Storage -->
				</div>
			</div>
	  <div data-role="collapsible-set">
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name:", "Get Vacuum Bags</h3>
					<p><div data-role="fieldcontain">
					<p>
						<ul>
						<li>Priority: 5</li>
						<li>Favorite: checked</li>
						<li>Start Date: 2011-05-11</li>
						<li>End Date: 2011-05-12</li>
						<li>Due Date: 2011-05-12</li>
						<li>Notes:Don't forget to get the model fj2 bags.</li>
						</ul>
					</p>
				</div> 	<!-- Clear Local Storage -->
				</div>
			</div>	
	  <div data-role="collapsible-set">
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name:", "Get Vacuum Bags</h3>
					<p><div data-role="fieldcontain">
					<p>
						<ul>
						<li>Priority: 5</li>
						<li>Favorite: checked</li>
						<li>Start Date: 2011-05-11</li>
						<li>End Date: 2011-05-12</li>
						<li>Due Date: 2011-05-12</li>
						<li>Notes:Don't forget to get the model fj2 bags.</li>
						</ul>
					</p>
				</div> 	<!-- Clear Local Storage -->
				</div>
			</div>							
	</div>

	<div data-role="footer" data-position="fixed" data-id="myfooter" data-theme="a">
		<div data-role="navbar">
			<ul>
				<li><a href="#home" data-icon="home">Home</a></li>
				<li><a href="#add_item" data-icon="plus">Add Task</a></li>
				<li><a href="#settings" data-icon="gear">Settings</a></li>
				<li><a href="#about_app" data-icon="info">About</a></li>
			</ul>
		</div><!-- / footer navbar -->
	</div><!-- /footer -->
</div>
<!-- END OF PAGE: categories:calls   ++++++++++++++++++++++++++++++++++++++++++   -->
<!-- START OF PAGE: categories:people   ++++++++++++++++++++++++++++++++++++++++++   -->
<div id="people_static" data-role="page">
 	<div data-role="header" data-position="fixed" data-theme="a" align="center">
	 	<img src="img/taskmgr_logo1_wht.png" alt="taskmgr_logo1" width="221" height="44" align="center" />
			     <!--h1>Task Manager</h1><!-- header -->
	    </div><!-- /header -->
		<div data-role="list-divider" class="ui-bar-d">
			<ul data-role="listview">
				<li data-role="list-divider" class="ui-bar ui-bar-d">People</li>
			</ul>
	</div>	
  <div data-role="content">
	  <div data-role="collapsible-set">
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name:", "Get Vacuum Bags</h3>
					<p><div data-role="fieldcontain">
					<p>
						<ul>
						<li>Priority: 5</li>
						<li>Favorite: checked</li>
						<li>Start Date: 2011-05-11</li>
						<li>End Date: 2011-05-12</li>
						<li>Due Date: 2011-05-12</li>
						<li>Notes:Don't forget to get the model fj2 bags.</li>
						</ul>
					</p>
				</div> 	<!-- Clear Local Storage -->
				</div>
			</div>
	  <div data-role="collapsible-set">
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name:", "Get Vacuum Bags</h3>
					<p><div data-role="fieldcontain">
					<p>
						<ul>
						<li>Priority: 5</li>
						<li>Favorite: checked</li>
						<li>Start Date: 2011-05-11</li>
						<li>End Date: 2011-05-12</li>
						<li>Due Date: 2011-05-12</li>
						<li>Notes:Don't forget to get the model fj2 bags.</li>
						</ul>
					</p>
				</div> 	<!-- Clear Local Storage -->
				</div>
			</div>
	  <div data-role="collapsible-set">
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name:", "Get Vacuum Bags</h3>
					<p><div data-role="fieldcontain">
					<p>
						<ul>
						<li>Priority: 5</li>
						<li>Favorite: checked</li>
						<li>Start Date: 2011-05-11</li>
						<li>End Date: 2011-05-12</li>
						<li>Due Date: 2011-05-12</li>
						<li>Notes:Don't forget to get the model fj2 bags.</li>
						</ul>
					</p>
				</div> 	<!-- Clear Local Storage -->
				</div>
			</div>
	  <div data-role="collapsible-set">
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name:", "Get Vacuum Bags</h3>
					<p><div data-role="fieldcontain">
					<p>
						<ul>
						<li>Priority: 5</li>
						<li>Favorite: checked</li>
						<li>Start Date: 2011-05-11</li>
						<li>End Date: 2011-05-12</li>
						<li>Due Date: 2011-05-12</li>
						<li>Notes:Don't forget to get the model fj2 bags.</li>
						</ul>
					</p>
				</div> 	<!-- Clear Local Storage -->
				</div>
			</div>	
	  <div data-role="collapsible-set">
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name:", "Get Vacuum Bags</h3>
					<p><div data-role="fieldcontain">
					<p>
						<ul>
						<li>Priority: 5</li>
						<li>Favorite: checked</li>
						<li>Start Date: 2011-05-11</li>
						<li>End Date: 2011-05-12</li>
						<li>Due Date: 2011-05-12</li>
						<li>Notes:Don't forget to get the model fj2 bags.</li>
						</ul>
					</p>
				</div> 	<!-- Clear Local Storage -->
				</div>
			</div>							
	</div>

	<div data-role="footer" data-position="fixed" data-id="myfooter" data-theme="a">
		<div data-role="navbar">
			<ul>
				<li><a href="#home" data-icon="home">Home</a></li>
				<li><a href="#add_item" data-icon="plus">Add Task</a></li>
				<li><a href="#settings" data-icon="gear">Settings</a></li>
				<li><a href="#about_app" data-icon="info">About</a></li>
			</ul>
		</div><!-- / footer navbar -->
	</div><!-- /footer -->
</div>
<!-- END OF PAGE: categories:people   ++++++++++++++++++++++++++++++++++++++++++   -->
<!-- START OF PAGE: categories:waiting  ++++++++++++++++++++++++++++++++++++++++++   -->
<div id="waiting_static" data-role="page">
 	<div data-role="header" data-position="fixed" data-theme="a" align="center">
	 	<img src="img/taskmgr_logo1_wht.png" alt="taskmgr_logo1" width="221" height="44" align="center" />
			     <!--h1>Task Manager</h1><!-- header -->
	    </div><!-- /header -->
		<div data-role="list-divider" class="ui-bar-d">
			<ul data-role="listview">
				<li data-role="list-divider" class="ui-bar ui-bar-d">Waiting</li>
			</ul>
	</div>	
  <div data-role="content">
	  <div data-role="collapsible-set">
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name:", "Get Vacuum Bags</h3>
					<p><div data-role="fieldcontain">
					<p>
						<ul>
						<li>Priority: 5</li>
						<li>Favorite: checked</li>
						<li>Start Date: 2011-05-11</li>
						<li>End Date: 2011-05-12</li>
						<li>Due Date: 2011-05-12</li>
						<li>Notes:Don't forget to get the model fj2 bags.</li>
						</ul>
					</p>
				</div> 	<!-- Clear Local Storage -->
				</div>
			</div>
	  <div data-role="collapsible-set">
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name:", "Get Vacuum Bags</h3>
					<p><div data-role="fieldcontain">
					<p>
						<ul>
						<li>Priority: 5</li>
						<li>Favorite: checked</li>
						<li>Start Date: 2011-05-11</li>
						<li>End Date: 2011-05-12</li>
						<li>Due Date: 2011-05-12</li>
						<li>Notes:Don't forget to get the model fj2 bags.</li>
						</ul>
					</p>
				</div> 	<!-- Clear Local Storage -->
				</div>
			</div>
	  <div data-role="collapsible-set">
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name:", "Get Vacuum Bags</h3>
					<p><div data-role="fieldcontain">
					<p>
						<ul>
						<li>Priority: 5</li>
						<li>Favorite: checked</li>
						<li>Start Date: 2011-05-11</li>
						<li>End Date: 2011-05-12</li>
						<li>Due Date: 2011-05-12</li>
						<li>Notes:Don't forget to get the model fj2 bags.</li>
						</ul>
					</p>
				</div> 	<!-- Clear Local Storage -->
				</div>
			</div>
	  <div data-role="collapsible-set">
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name:", "Get Vacuum Bags</h3>
					<p><div data-role="fieldcontain">
					<p>
						<ul>
						<li>Priority: 5</li>
						<li>Favorite: checked</li>
						<li>Start Date: 2011-05-11</li>
						<li>End Date: 2011-05-12</li>
						<li>Due Date: 2011-05-12</li>
						<li>Notes:Don't forget to get the model fj2 bags.</li>
						</ul>
					</p>
				</div> 	<!-- Clear Local Storage -->
				</div>
			</div>	
	  <div data-role="collapsible-set">
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name:", "Get Vacuum Bags</h3>
					<p><div data-role="fieldcontain">
					<p>
						<ul>
						<li>Priority: 5</li>
						<li>Favorite: checked</li>
						<li>Start Date: 2011-05-11</li>
						<li>End Date: 2011-05-12</li>
						<li>Due Date: 2011-05-12</li>
						<li>Notes:Don't forget to get the model fj2 bags.</li>
						</ul>
					</p>
				</div> 	<!-- Clear Local Storage -->
				</div>
			</div>							
	</div>

	<div data-role="footer" data-position="fixed" data-id="myfooter" data-theme="a">
		<div data-role="navbar">
			<ul>
				<li><a href="#home" data-icon="home">Home</a></li>
				<li><a href="#add_item" data-icon="plus">Add Task</a></li>
				<li><a href="#settings" data-icon="gear">Settings</a></li>
				<li><a href="#about_app" data-icon="info">About</a></li>
			</ul>
		</div><!-- / footer navbar -->
	</div><!-- /footer -->
</div>
<!-- END OF PAGE: categories:errands   ++++++++++++++++++++++++++++++++++++++++++   -->
// -------   Start of: Get Data NEW --------------------------
// STATUS : Not being used ----- 2011.10.27
// LAST UPDATED: 2011-10-28
// NOTES :  Still working on this.  NOT DONE    ****** STOPPED HERE 1am 2011/10/28
// PURPOSE: To retrieve data from localStorage
// QUESTIONS: None
// TODO: 1. Need to finish replacing references with jquery references
//----------------------------------------------------------
    function getData(data) {
	    //toggleControls("on");
	    
	   //var key		=	localStorage.key(i);
		//var isNumber = /^\d+$/.test(key);
		//if (isNumber === true) {
	    var keyCheck = localStorage.key(0);
		console.log(keyCheck);
		var checkLoc = /^\d+$/.test(keyCheck);
		if((keyCheck === "") || (keyCheck === "undefined") || (checkLoc === false )) {	    
			//console.log("I'm in the gate!");
	        autoFillData(data);
	        alert("There is no data in local Storage so default was added.");
	    }
	    // Write data from local storage to the browser
	    var makeDiv = $('div');
	    makeDiv.attr("id", "items");
	    //var makeList = document.createElement('ul');
		var makeList = $('ul');
		makeList.attr("id", "makeList");
	    //makeDiv.appendChild(makeList);
	    $('#items').append('#makeList');
	   // document.body.appendChild(makeDiv);
	    //document.body.append('#items');
	    $('#items').css("display", "display");
	    for (var i = 0, len = localStorage.length; i < len; i++) {
	        //var makeLi    = document.createElement("li");
	        //console.log(localStorage);
	        var makeLi    = $("li");
	        makeLi.attr("id", "makeLi"); 
	       // var linksLi        =    document.createElement("li");
	        var linksLi        =   $("li");
	        makeList.append('#makeLi');
	        var key        = localStorage.key[i];
	       console.log(key);
	        var value     = localStorage.getItem[key];
	        console.log(value);
	        // Convert the string from local storage value back to an object by using JSON.parse
	        var objHolder = JSON.parse(value);
	        //var obj
	        //var makeSubList    =    document.createElement('ul');
	        var makeSubList    =    $('ul');
			makeSubList.attr("id", "makeSubList");
	        //makeLi.appendChild(makeSubList);
	        makeLi.append('#makeSubList');

	        getImage(obj.context[1], makeSubList);
	        for(var n in obj) {
	            //var makeSubLi    =    document.createElement('li');
	            var makeSubLi    =    $('li');
	            makeSubLi.attr("id", "makeSubLi");
	            //makeSubList.appendChild(makeSubLi);
	            makeSubList.append('#makeSubLi');
	            var optSubText    =    obj[n][0]+" "+obj[n][1];
	            makeSubLi.html(optSubText); 
	            //makeSubList.append(linksLi);
	            makeSubList.append("#linksLi");

	        }
	       // makeItemLinks(localStorage.key(i), linksLi);
	    }
	}
// -------   End of: Get Data NEW --------------------------
// -------   Start of: Autofill Data  --------------------------
// STATUS : NOT WORKING ----- 2011.10.28
// LAST UPDATED: 2011-10-28
// PURPOSE: grab JSON data and put in local storage
// NOTES : Not sure what is causing this not to work. I think it has to do with other areas of my app. 
// TODO: None
// QUESTIONS: 1. Do you see anything wrong with this?
//----------------------------------------------------------
	function autoFillData() {
		for(var n in items) {	
			var id =	Math.floor(Math.random()*100000000001);
			localStorage.setItem(id, JSON.stringify(items[n]));
			}
	}
// -------   End of: autoFillData --------------------------------------
$(data).find('items').each(function()
	var id = "xml" + xmlCounter;
					$(this).attr('id', id);
					var context = $(this).find('context').text();
							$('<div class="xml_item'+id+'"" id="xml_item_'+id+'"></div>').html('Context: ' + context).appendTo('.data_load');
									$(this).find('details').each(function(){
												//var context = $(this).find('context').text();
												var name = $(this).find("name").text();
												var priority = $(this).find("priority").text();  
												var favorite = $(this).find("favorite").text();  
												var sDate = $(this).find("sDate").text();  
												var eDate = $(this).find("eDate").text();  
												var dDate = $(this).find("dDate").text();  
												var ntoes = $(this).find("Notes").text();
												//$('<div class="context"></div>').html(context).appendTo('#item_'+id);
												$('<div class=".xml_item_name'+id+'"></div>').html("Name: " + name).appendTo('.data_load');
												$('<div class=".xml_item_priority'+id+'"></div>').html("Priority: " + priority).appendTo('.data_load');
												$('<div class=".xml_item_favorite'+id+'"></div>').html("Favorite: " + favorite).appendTo('.data_load');
												$('<div class=".xml_item_sdate'+id+'"></div>').html("Start Date: " + sDate).appendTo('.data_load');
												$('<div class=".xml_item_edate'+id+'"></div>').html("End Date: " + eDate).appendTo('.data_load');
												$('<div class=".xml_item_ddate'+id+'"></div>').html("Due Date: " + dDate).appendTo('.data_load');
												$('<div class=".xml_item_notes'+id+'"></div>').html("Notes : " + notes).appendTo('.data_load');				
									}); //Third Function
		//$("#loadingXml").hide();  
		}); // Second Function
		
		
		// -------   Start of: Make Item Links --------------------------
// STATUS : 
// LAST UPDATED: 2011-11-01
// PURPOSE: 
// NOTES :  
// TODO: 
// QUESTIONS: 
//----------------------------------------------------------
	    function makeItemLinks(key, linksLi) {
		    var editLink    =    $("a");
			$(editLink).attr("id", "editLink");
		    $("#editLink").attr("href",  "#");
		    editLink.key    =    key;
		    var editText    =    "Edit Task";
		    $("#editLink").bind("click", editItem);
		    $("#editLink").html(editText);
		    $("#linksLi").append("#editLink");
		
		    // Add Line Break
		    var breakTag = $('br'); 
		    $("#linksLi").append(breakTag);
		
		    //var deleteLink    =    document.createElement('a');
		    var deleteLink = $('a');
		    $(deleteLink).attr("href", "#");
		    $(deleteLink).attr("id", "deleteLink");
		    deleteLink.key    =    key;
		    var deleteText = "Delete Task";
		    //deleteLink.addEventListener("click", deleteTask);
		    $("#deleteLink").bind("click", deleteTask);
		    $("#deleteLink").html(deleteText);		    
		   // deleteLink.innerHTML = deleteText; /*  NEEDS CHANGED */
		    $(linksLi).append("#deleteLink");
	    }
// -------   End of: Make Item Links --------------------------

<!-- START OF PAGE: categories:template   ++++++++++++++++++++++++++++++++++++++++++   -->
<div id="template" data-role="page">
 	<div data-role="header" data-position="fixed" data-theme="a" align="center">
	 	<img src="img/taskmgr_logo1_wht.png" alt="taskmgr_logo1" width="221" height="44" align="center" />
			     <!--h1>Task Manager</h1><!-- header -->
	    </div><!-- /header -->
		<div data-role="list-divider" class="ui-bar-d">
			<ul data-role="listview">
				<li data-role="list-divider" class="ui-bar ui-bar-d">Errands</li>
			</ul>
	</div>	
  <div data-role="content">
	  <div data-role="collapsible-set">
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name: Get Vacuum Bags</h3>
						<div data-role="fieldcontain">
							<ul data-role="listview">
							<li>Priority: 5</li>
							<li>Favorite: checked</li>
							<li>Start Date: 2011-05-11</li>
							<li>End Date: 2011-05-12</li>
							<li>Due Date: 2011-05-12</li>
							<li>Notes:Don't forget to get the model fj2 bags.</li>
							</ul>
					
						</div> 	<!-- Clear Local Storage -->
				</div>
				<div data-role="collapsible" data-collapsed="true">
					<h3>Task Name: Buy Broom</h3>
					<div data-role="fieldcontain">
						<ul data-role="listview">
							<li>Priority: 5</li>
							<li>Favorite: unchecked</li>
							<li>Start Date: 2011-05-11</li>
							<li>End Date: 2011-05-12</li>
							<li>Due Date: 2011-05-12</li>
							<li>Notes:Large broom for garage.</li>
						</ul>
					</div> 	<!-- task 2 -->
				</div>
			</div>							
	</div>

	<div data-role="footer" data-position="fixed" data-id="myfooter" data-theme="a">
		<div data-role="navbar">
			<ul>
				<li><a href="#home" data-icon="home">Home</a></li>
				<li><a href="#add_item" data-icon="plus">Add Task</a></li>
				<li><a href="#settings" data-icon="gear">Settings</a></li>
				<li><a href="#about_app" data-icon="info">About</a></li>
			</ul>
		</div><!-- / footer navbar -->
	</div><!-- /footer -->
</div>
<!-- END OF PAGE: categories:template   ++++++++++++++++++++++++++++++++++++++++++   -->
$(xml).find("item").each(function() { 
			//var xmlCounter = 1;
 			//find each instance of loc in xml file and wrap it in a link  
			$("div#data_load").append('<div class="" >Context' + $(this).find("context").text() + '"</div>');  
			//$("#loading").hide();  
			 });  
	}  
