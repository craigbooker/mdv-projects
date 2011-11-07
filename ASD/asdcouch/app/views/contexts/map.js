function (doc) {
    if (doc._id.substr(0,5) === "task:") {
    emit(doc._id.substr(5, 9), {
    	"contexts": doc.context,
    	"name": doc.name,
    	"priority": doc.priority
    });
  }
};