// SYNTAX --> .updateOne(filter, Update)

// .updateOne() --> Only update first instance of that filter
// .updateMany() --> Update all the documents which satisfy filter condition
// .replaceOne() --> Replace Entire Document -- Everything except '_id' gets replaced.


// $set --> If a field exists update it - if field not exists than create it.
// $unset --> Removes a field.
// $inc --> increase number value by given times
// $rename --> Rename a field.
// $exists --> Check if that field exists or not



//Update CGPA of student with name "Hamza" to 3.8
db.test.updateOne({name:"Hamza"}, {$set:{CGPA:3.8}})


// Increase age of all users.
db.test.updateMany({},{$inc:{age:1}})

// Replace entire document of student with name "Osama"
db.test.replaceOne({name:"Osama"}, {name:"Osama", age:25, CGPA:3.77})

// Remove CGPA field of student with name "Noman"
db.test.updateOne({name:"Noman"}, {$unset: {CGPA:""}})      // Empty String shows to remove it

// Rename "age" field to "Age" for all documents
db.test.updateMany({}, {$rename: {age:"Age"}})

// Add "Graduated" field to all students and set it to false
db.test.updateMany({}, {$set: {Graduated:false}})

// Set "Graduated" field to true for all students who have "Graduated" field
db.test.updateMany({Graduated:{$exists:true}}, {$set: {Graduated:true}})