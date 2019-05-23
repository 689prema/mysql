LOGICAL AND

SELECT title,author_lname,released_year FROM books WHERE author_lname ='Eggers';
SELECT title,author_lname,released_year FROM books WHERE released_year>2010 AND author_lname ='Eggers' ;
SELECT * FROM books WHERE author_lname = 'EGGERs' AND released_year >2010 AND title LIKE '%novel%';


OR
SELECT title,author_lname,released_year,stock_quantity FROM books WHERE author_lname = 'EGGERs' || released_year >2010 OR stock_quantity > 100;     


BETWEEN
SELECT title,released_year FROM books WHERE released_year BETWEEN 2004 AND 2017;


NOT BETWEEN
SELECT title,released_year FROM books WHERE released_year NOT BETWEEN 2004 AND 2015 ORDER BY released_year;

IN 

SELECT title,author_lname FROM books WHERE author_lname IN ('Carver','Lahiri','Smith');

NOT IN

SELECT title,released_year FROM books WHERE released_year NOT IN (2000,2002,2004,2006,2008,2010,2012,2014,2016);


CASE

SELECT title,released_year,
        CASE
           WHEN released_year >=2000 THEN 'Modern LIT'
           ELSE '20th Century Lit'
        END AS GENRE
FROM books;        


SELECT title,stock_quantity,
        CASE
           WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
           WHEN stock_quantity BETWEEN 51 AND  100 THEN '**'
           ELSE '***'
        END AS STOCK
FROM books;

SELECT title,stock_quantity,
        CASE
           WHEN stock_quantity <=50 THEN '*'
           WHEN stock_quantity <= 100 THEN '**'
           ELSE '***'
        END AS STOCK
FROM books;

SELECT title,author_lname,
        CASE
           WHEN title LIKE '%Stories%' THEN 'Short Stories'
           WHEN title ='Just Kids' OR title='A Heartbreaking Work of Staggering Genius' THEN 'Memoir'
           ELSE 'Novel'
        END AS TYPE
FROM books;

SELECT title,author_fname,author_lname,
    CASE
       WHEN COUNT(*) =1 THEN '1 book'
       ELSE CONCAT(COUNT(*),' books')
       END AS COUNT

FROM books   
GROUP BY author_lname,author_fname;