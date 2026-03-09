// SYNTAX
db.collection.aggregate([
 { /* stage1 */},
 { /* stage2 */},
 { /* stage3 */}
])

// $match --> Similar to Find
/*
    {
    $match: { condition }
    }
*/

// $project --> select fields only show
/*
    {
    $project:{
    field1:1,
    field2:1,
    _id:0
    }
    }
*/

// $group --> Similar to group-by in SQL 
/*
    {
    $group:{
    _id: group_key,
    field: { accumulator }
    }
    }
*/

// $sort
/*
    {
    $sort:{ field:1 }
    }
*/

// $limit
// $skip
// $count


// Find Students Having CGPA Greater than 3.5
db.test.aggregate(
  [
    {$match: {CGPA: {$gt:3.5}}}
  ]
)

// Find Students with CGPA Greater than 3.5 and Show only Name and CGPA
db.test.aggregate(
  [
    {$match: {CGPA: {$gt:3.5}}}, 
    {$project: {name: true, CGPA: true, _id: false}}
  ]
)


// Calculate Total Students
db.test.aggregate(
  [
    {$group : {_id:null , totalStudents:{$sum: 1}}}
  ]
)

// Find Average CGPA
db.test.aggregate(
  [
    {$group: {_id:null, AverageCGPA: {$avg: "$CGPA" }}}
  ]
)

// Find Highest CGPA
db.test.aggregate(
  [
    {$group: {_id:null, HighestGPA:{$max: "$CGPA"}}}
  ]
)

//Sort by CGPA highest to lowest
db.test.aggregate(
  [
    {$sort: {CGPA:-1}}
  ]
)

// Only Top 3 Students with highest CGPA
db.test.aggregate(
  [
    {$sort: {CGPA:-1}},
    {$limit: 3}
  ]
)

// From Top 5 Students Skip first 3 and tell next 2
db.test.aggregate(
  [
    {$sort: {CGPA:-1}}, 
    {$skip: 3},
    {$limit: 2}
  ]
)

// Count Total Students
db.test.aggregate([
 { $count:"total_students" }
])

// Find top 2 students with CGPA above 3.2
db.test.aggregate(
  [
    {$match: {CGPA: {$gt: 3.2}}},
    {$sort: {CGPA:-1}},
    {$limit: 2}, 
    {$project: {name:true, _id:false, CGPA:true}}
  ]
)