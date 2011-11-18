$('#home').live("pageshow", function() {
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



}
function editCouchData(id) {
	$.couch.db('taskmgr').openDoc(id, {
			success: function(data) {
				$('#context').val(data.);
				$('#name').val(data.);
				$('#priority').val(data.);
				$('#favorite').val(data.);
				$('#sDate').val(data.);
				$('#eDate').val(data.);
				$('#dDate').val(data.);
				$('notes').val(data.);
			}
	});
	
};
function deleteCouchData(){
}
