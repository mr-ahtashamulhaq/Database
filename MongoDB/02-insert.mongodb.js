//Insert One document
db.test.insertOne({name:"Ahtasham", age:19, CGPA:3.9})

//Insert Many documents
db.test.insertMany([
  {name:"Umer", age:19, CGPA:3.2},
  {name:"Faizan", Age:23, CGPA:2.5},
  {name:"Hamza", age:25, cgpa:3.5}
])

//Use Multiple Datatypes
db.test.insertOne(
  {
    name:"Arslan",
    age: 18,
    Enrolled:new Date(),
    Address:
    				{
              Country:"Pakistan",
              State:"Punjab",
              City:"Lahore",
              postalCode:702765  						
            },
    feedue:false,
    courses:["OOP", "Calculus", "DSA"]
  }
)
