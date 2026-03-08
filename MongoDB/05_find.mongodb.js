//We Use find method to get stored documents

// SYNTAX --> .find({Query}, {Projection})

//Find all documents
db.test.find()


//Find documents with CGPA = 3.2
db.test.find({CGPA:3.2})


//Find documents with age 19
db.test.find({age:19})


//Only Names of all the students presented in Database
db.test.find({}, {name:true, _id:false}) // -> true mean include and false mean exclude


//Only names of students whose CGPA is 3.2
db.test.find({CGPA:3.2},{name:true, _id:false})
