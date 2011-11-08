function (doc) {
    if (doc._id.substr(0,8) === "context:") {
    emit(doc._id.substr(8), {
    	"Context": doc.title,
    	"Description": doc.desc
    });
  }
};