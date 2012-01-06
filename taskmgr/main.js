$('#home').live("pageshow", function() {
	$.couch.db("taskmgr").view("taskmgr/contexts", {
		success: function(data) {
			//console.log(data);
			$("#contextList").empty();
			$("#contextList").append(
			//<li data-role="list-divider" class="ui-bar ui-bar-d">Browse By Category</li>
			$.each(data.rows, function(index, value) {
				var item = (value.value || value.doc);
				$("#contextList").append(
					$('<li>').append(
						$('<a>')
							.attr("href", "context.html?ctxt=" + item.Abbreviation)
							.text(item.Context)
					)
				);
			});
			$('#contextList').listview('refresh');
		}
	});
});
$('#context').live("pageshow", function() {
	$.couch.db("taskmgr").view("taskmgr/contexts", {
		success: function(data) {
			//console.log(data);
			$("#contextList").empty();
			$.each(data.rows, function(index, value) {
				var item = (value.value || value.doc);
				$("#contextList").append(
					$('<li>').append(
						$('<a>')
							.attr("href", "context.html?ctxt=" + item.Abbreviation)
							.text(item.Context)
					)
				);
			});
			$('#contextList').listview('refresh');
		}
	});
});
$('#subCouchDB').live('click', function() {
	$(storeCouchData());
});
$('#subCouchDB').live('click', function() {
	$(storeCouchData());
});
$('#contextItemsPage').live("pageshow", function() {
	var urlData = $(this).data("url");
	//console.log(urlData)
	var urlParts = urlData.split('?');
	// foo?a=1b=2c=3
	var urlPairs = urlParts[1].split('&');
	var urlValues = {};
	for (var pair in urlPairs) {
		var keyValue = urlPairs[pair].split('=');
		var key = decodeURIComponent(keyValue[0]);
		var value = decodeURIComponent(keyValue[1]);
		urlValues[key] = value;
	}
	//console.log(urlValues);
	//if (ctxt === "cls") {
	var context = urlValues;
	switch (context) {
	case "ers":
		$("#contextItems").empty();
		$.each(data.rows, function(index, value) {
			var item = (value.value || value.doc);
			$("#contextItems").append(
				$('<li>').append(
					$('<a>')
						.attr("href", "context.html?ctxt=" + item.Abbreviation)
						.text(item.Context)
				)
			);
		});
		$('#contextItems').listview('refresh');
		break;
	case "ofe":
		break;
	case "cls":
		break;
	case "ppl":
		break;
	case "wtg":
	//window.
		break;
	default:
		return false;
	}
});
$('#task').live("pageshow", function() {
	var urlData = $(this).data("url");
	//console.log(urlData)
	var urlParts = urlData.split('?');
	// foo?a=1b=2c=3
	var urlPairs = urlParts[1].split('&');
	var urlValues = {};
	for (var pair in urlPairs) {
		var keyValue = urlPairs[pair].split('=');
		var key = decodeURIComponent(keyValue[0]);
		var value = decodeURIComponent(keyValue[1]);
		urlValues[key] = value;
	}
	console.log(urlValues);
});
// -------   Start of : Variable Defaults -------------------------------
   var contextNames = ["---Choose a Context---", "Errand", "Home", "Office", "Calls", "People", "Waiting"];
    var errMsg = $('#errors');
    var favoriteValue;
// -------   End of: Variable Defaults ----------------------------------
// -------   Start of: Make Categories --------------------------
// STATUS : WORKING ----- 2011.10.27
// LAST UPDATED: 2011-10-28
// PURPOSE: Create select field element and populate with options.
// NOTES : None at this time
// TODO: None
// QUESTIONS:
//----------------------------------------------------------
    function makeCats(contextNames) {
        //alert("Am I in?");
        var    i;
        var     j;
        var createSel = '<select id="">';
        	for(i = 0, j = contextNames.length; i < j; i++) {
	            var optText = contextNames[i];
        		createSel += '<option value="' + optText + '">' + optText + '</option>';
        	}
        	createSel += '</select>';
        	$('#context').append(createSel);
	}
    makeCats(contextNames);
// -------   End of:Make Categories --------------------------
function storeCouchData() {

	var contextVal = $('#context').val();
	var nameVal = $('#name').val();
	var priorityVal = $('#priority').val();
	var favoriteVal = $('#favorite').val();
	var sDateVal = $('#sDate').val();
	var eDateVal = $('#eDate').val();
	var dDateVal = $('#dDate').val();
	var notesVal = $('#notes').val();


	//Create CouchDB Document

	var doc = {
		context: contextVal,
		name: nameVal,
		priority: priorityVal,
		favorite: favoriteVal,
		sDate: sDateVal,
		eDate: eDateVal,
		dDate: dDateVal,
		notes: notesVal
	};
	$.couch.db('taskmgr').saveDoc(doc, {
		success: function(data) {
			console.log(data);
		}

	});


}
function editCouchData(id) {
	$.couch.db('taskmgr').openDoc(id, {
			success: function(data) {
				$('#context').val(data.context);
				$('#name').val(data.name);
				$('#priority').val(data.priority);
				$('#favorite').val(data.favorite);
				$('#sDate').val(data.sDate);
				$('#eDate').val(data.eDate);
				$('#dDate').val(data.dDate);
				$('notes').val(data.notes);
			}
	});

};
function deleteCouchData(){
}
function clearLocal() {

}