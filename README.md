# Database Theory and MS SQL Server

The repository contains the result of my examination work in two subjects: "Database Theory" and "Programming and Administration of the MS SQL Server DBMS".

The examination work consisted of two parts, plus, I was given an additional assignment from the teacher.

**For the first part of the work, I got 12/12, for the second - 11/12. Teacher: Vasilenko Igor Grigorevich**

## First part

The first part of the examination task was to write a script that would create a database with the correct architecture. The task was to describe the database of the online equipment store in which goods of completely different categories can be stored, and these goods, in turn, are characterized by completely different parameters.

The result of the execution is the [following](https://github.com/liannoi/exam-database/blob/master/scr/main-task/database.sql) file.

## Second part

The second part was the writing of SQL - instructions, to a completely abstract database from the first (described by us).

The result of the execution is the [following](https://github.com/liannoi/exam-database/blob/master/scr/main-task/queries.sql) file.

## Additional task

An additional task from the teacher was to write a trigger for the relationship (completely abstracted from the first two databases), which, when adding / changing / deleting records from the first relationship, would recount the amount of goods in the second relation.

I implemented it through the cursor, since this solution seemed to me the most simple.

The result of the execution is the [following](https://github.com/liannoi/exam-database/blob/master/scr/additional-task/trigger.sql) file.

## License

The repository is licensed by [Apache-2.0](https://github.com/liannoi/exam-database/blob/master/LICENSE).
