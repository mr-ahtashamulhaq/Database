// SYNTAX --> deleteOne({filter})
// SYNTAX --> deleteMany({filter})

// Delete first document with CGPA 3.2
db.test.deleteOne({CGPA:3.2})

// Delete All the documents where registrationDate field exits
db.test.deleteMany({registrationField:{$exists:true}})

// Delete the students with Age of 19
db.test.deleteMany({Age:19})

// Delete All the Students with CGPA of 3.2
db.test.find()

// Delete All the Students where Graduated Field is true
db.test.deleteMany({Graduated:true})