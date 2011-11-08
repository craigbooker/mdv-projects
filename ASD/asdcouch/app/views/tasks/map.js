function (doc) {
    if (doc._id.substr(0,5) === "task:") {
    emit(doc._id.substr(5), {
    	"Context": doc.context,
    	"Name": doc.name
    });
  }
};