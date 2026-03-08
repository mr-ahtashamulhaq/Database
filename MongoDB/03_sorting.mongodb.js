//Sort by name in ascending Order
db.test.find().sort({name:1})

//Sort by name in descending Order -> Put '-1' in field name.
db.test.find().sort({name:-1})

// In Sorting if we have key field missing in some documents it will treat them missing and display them first
// This is the order of sorting
//  - Documents where key is null (if any)
//  - Documents with valid key values (sorted ascending)
//  - Documents where key is missing

// Also it is Case Sensitive -> CGPA != cgpa


//Sort By CGPA in ascending order
db.test.find().sort({CGPA:1})


//Sort By CGPA in descending order
db.test.find().sort({CGPA:-1})