function (doc) {
    if (doc._id.substr(0,5) === "task:") {
    emit(doc._id);
    }
};