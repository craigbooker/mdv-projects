function (doc) {
    if (doc._id.substr(0,5) === "task:") {
    emit(doc._id.substr(5), {
    	"Context": doc.context,
    	"Name": doc.name,
    	"Priority": doc.priority,
    	"Favorite": doc.favorite,
    	"Start_Date": doc.sDate,
    	"End_Date": doc.eDate,
    	"Due_Date": doc.dDate,
    	"Notes": doc.notes
    });
  }
};