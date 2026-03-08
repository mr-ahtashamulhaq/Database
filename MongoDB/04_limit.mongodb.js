//We Use limit to tell how many document it should return

// Display 3 documents only
db.test.find().limit(3)     //-> By default it will sort on object ID and return top 3 documents

//Student with lowest CGPA
db.test.find().sort({CGPA:1}).limit(1)

//Student with the highest CGPA
db.test.find().sort({CGPA:-1}).limit(1)