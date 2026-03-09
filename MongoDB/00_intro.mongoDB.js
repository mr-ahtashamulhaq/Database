// Why No SQL:
//     1. Rigid Structure in SQL
//     2. No Horizontal scaling in SQL
//     3. Real Time Application needs speed becuase of millions of user SQL cannot handle it


// Data Modeling in NoSQL
//     1. Embedded Data Model --> Direct values together
//     2. Reference Data Model --> Address of values


// ACID vs BASE
//     ACID --> Atomicity, Consistency, Isolation, Durability
//     BASE --> Basically Available, Soft state, Eventual consistency
//     Basically Available --> System always responds (even if data is not perfect)
//     Soft state --> State of system may change over time (even without input)
//     Eventual consistency --> System will eventually become consistent (after some time)


// Data Partitioning and Sharding
//     Data Partitioning --> Dividing data into smaller parts
//     Sharding --> Distributing data across multiple servers (shards) for scalability and performance

//     Example : You have 1 million users -> Instead of --> storing in one server
//     You split:
//     Server 1 → users A–F
//     Server 2 → G–M
//     Server 3 → N–Z

//     This is sharding


// CAP Theorem
//     Consistency --> Every read receives the most recent write or an error
//     Availability --> Every request receives a response, without guarantee that it contains the most recent write
//     Partition Tolerance --> The system continues to operate despite arbitrary partitioning due to network failures
//     In distributed systems, you can only have 2 out of 3 guarantees (Consistency, Availability, Partition Tolerance) at the same time. 
// You have to choose which two to prioritize based on your application's requirements.