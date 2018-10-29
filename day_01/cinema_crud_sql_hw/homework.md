# SQL Homework

The local cinema are having a Marvel Movie Marathon! They have asked you to help maintain their database of movies with times and attendees.

## To access the database:

First, create a database called 'marvel'

```
# terminal
createdb marvel
```

Next, run the provided SQL script to populate your database:

```
# terminal
psql -d marvel -f marvel.sql
```

Use the supplied data as the source of data to answer the questions. Copy the SQL command you have used to get the answer, and paste it below the question, along with the result they gave.

## Questions

1.  Return ALL the data in the 'movies' table.

```
  select * from movies;
```

2.  Return ONLY the name column from the 'people' table

```
  select name from people;
```

3.  Oops! Someone at CodeClan spelled Rob's name wrong! Change it to reflect the proper spelling ('Robin Willson' should be 'Rob Wilson').

```
  update people set name = 'Rob Wilson' where id=21;
```

4.  Return ONLY your name from the 'people' table.

```
  select name from people where name = 'Steven Kay';
```

5.  The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.

```
  delete from movies where id=9;
```

6.  Create a new entry in the 'people' table with the name of one of the instructors.

```
  insert into people("name") values ('Pavel Orzechowski');
```

7.  Nick Fury has decided to hijack our movie evening, Remove him from the table of people.

```
  delete from people where name = 'Nick Fury';
```

8.  The cinema has just heard that they will be holding an exclusive midnight showing of 'Avengers: Infinity War'!! Create a new entry in the 'movies' table to reflect this.

```
  insert into movies(title, year, show_time) values ('Avengers: Infinity War',2018,'00:00');
```

9.  The cinema would 'also' like to make the Guardians movies a back to back feature. Find out the show time of "Guardians of the Galaxy" and set the show time of "Guardians of the Galaxy 2" to start two hours later.

```
  update movies set "show_time" = '14:30' where title = 'Guardians of the Galaxy 2';
```

## Extension

1.  Research how to delete multiple entries from your table in a single command.

For a sequential series of IDs

```
  delete from people where "id" between 10 and 20;
```

For one or more records matching a criteria (e.g. this deletes 3)

```
  delete from movies where year = 2017
```
