// Create index on name
db.test.createIndex({name:1})

// Find documents with name "Alice"
db.test.find({name:"Alice"})

//Names only of all documents
db.test.find({}, {name:true, _id:false})