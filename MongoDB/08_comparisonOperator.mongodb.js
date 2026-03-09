// SYNTAX --> db.collection.find( { field: { operator: value } } )

// $gt --> Returns documents where value is greater than the given value.
// $gte --> Returns documents where value is greater than or equal to the given value.
// $lt --> Returns documents where value is less than the given value.
// $lte --> Returns documents where value is less than or equal to the given value.
// $ne --> Returns documents where value is not equal to the given value.
// $in --> Returns documents where value is in the specified array.
// $nin --> Returns documents where value is not in the specified array.



// Find students with CGPA greater than 3.5
db.test.find({CGPA:{$gt:3.5}})

// Find students with CGPA greater than or equal to 3
db.test.find({CGPA:{$lte:3}})

// Increase CGPA for students with CGPA below 3.
db.test.updateMany({CGPA:{$lt:3}}, {$inc:{CGPA:0.3}})

// Find Students whose name in this list ["Noman", "Hamza", "Sikander", "AbuBakar"]
db.test.find({name:{$in:["Noman", "Hamza", "Sikander", "AbuBakar"]}})

// Find Students with CGPA Between 3 and 4
db.test.find({CGPA:{$gt:3, $lte:4 }})