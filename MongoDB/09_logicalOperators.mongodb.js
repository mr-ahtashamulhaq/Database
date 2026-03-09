// SYNTAX -->

// db.collection.find({
//  $OPERATOR:[
//    {condition1},
//    {condition2}
//  ]
// })


// $and --> Returns documents that satisfy all the specified conditions.
// $or --> Returns documents that satisfy at least one of the specified conditions.



// Students whose CGPA is greater than 3.5 AND age less than 23
db.test.find({
 $and:[
   {CGPA:{$gt:3.5}},
   {Age:{$lt:23}}
 ]
})

// Students whose age is greater than 24 OR CGPA greater than 3.7
db.test.find({
 $or:[
   {Age:{$gt:24}},
   {CGPA:{$gt:3.7}}
 ]
})

// Students whose age is NOT greater than 22
db.test.find({
 Age:{
   $not:{ $gt:22 }
 }
})

// Students whose CGPA is NOT less than 3
db.test.find({
 CGPA:{
   $not:{ $lt:3 }
 }
})

// Students who are graduated AND age greater than 21
db.test.find({
 $and:[
   {Graduated:true},
   {Age:{$gt:21}}
 ]
})

// Students whose name is Hamza OR Ahtasham
db.test.find({
 $or:[
   {name:"Hamza"},
   {name:"Ahtasham"}
 ]
})

// Students whose CGPA > 3.5 AND Age > 20
db.test.find({
 $and:[
   {CGPA:{$gt:3.5}},
   {Age:{$gt:20}}
 ]
})

// Students who are NOT graduated
db.test.find({
 Graduated:{
   $not:{ $eq:true }
 }
})

// Students whose Age is NOT less than 20
db.test.find({
 Age:{
   $not:{ $lt:20 }
 }
})

// Students whose name is neither Hamza nor Faizan
db.test.find({
 $nor:[
   {name:"Hamza"},
   {name:"Faizan"}
 ]
})