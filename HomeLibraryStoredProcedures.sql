/*Stored Procedure 1 */

CREATE PROC dbo.NoBooksOwnedbyBranch @librarybranch NVARCHAR(30), @title NVARCHAR(60)
AS
SELECT LIBRARY_BRANCH.branchName, BOOK.title, BOOK_COPIES.no_of_copies
FROM BOOK_COPIES
INNER JOIN LIBRARY_BRANCH ON BOOK_COPIES.branchid = LIBRARY_BRANCH.branchid
INNER JOIN BOOK ON BOOK.bookid = BOOK_COPIES.bookid
WHERE branchName = @librarybranch AND title = @title

EXEC dbo.NoBooksOwnedbyBranch 'Sharptown', 'The Lost Tribe'
GO
/*Stored Procedure 2*/

CREATE PROC dbo.SearchBooksOwneBbyEachBranch @title NVARCHAR(60)
AS
SELECT LIBRARY_BRANCH.branchName, BOOK.title, BOOK_COPIES.no_of_copies
FROM BOOK_COPIES
INNER JOIN LIBRARY_BRANCH ON BOOK_COPIES.branchid = LIBRARY_BRANCH.branchid
INNER JOIN BOOK ON BOOK.bookid = BOOK_COPIES.bookid
WHERE title = @title

EXEC dbo.SearchBooksOwneBbyEachBranch 'The Lost Tribe'
GO
/*Stored Procedure 3*/

CREATE PROC dbo.FindBorrowersWithNoLoans
AS
SELECT BORROWER.name, BOOK_LOANS.dueDate
FROM BORROWER
LEFT OUTER JOIN BOOK_LOANS ON BOOK_LOANS.CardNo = BORROWER.cardNo
WHERE dueDate IS NULL

/*Stored Procedure 4*/

SELECT * FROM BORROWER
SELECT * FROM BOOK_LOANS
SELECT * FROM BOOK
SELECT * FROM LIBRARY_BRANCH
GO
CREATE PROC dbo.SearchBranchBooksDueCurrentDate @branchName NVARCHAR(30) 
AS
SELECT BORROWER.name, BOOK.title, BORROWER.address
FROM BOOK_LOANS
INNER JOIN BOOK ON BOOK_LOANS.bookid = BOOK.bookid
INNER JOIN BORROWER ON BOOK_LOANS.CardNo = BORROWER.cardNo
INNER JOIN LIBRARY_BRANCH ON BOOK_LOANS.branchid = LIBRARY_BRANCH.branchid
WHERE branchName = @branchName AND dueDate = CAST(GETDATE()as date)

EXEC dbo.SearchBranchBooksDueCurrentDate 'Sharptown'

/*Stored Procedure 5*/

SELECT * FROM LIBRARY_BRANCH
SELECT * FROM BOOK_LOANS
GO

CREATE PROC dbo.BooksLoanInEachBranch
AS
SELECT LIBRARY_BRANCH.branchName, Count(*)
FROM LIBRARY_BRANCH
INNER JOIN BOOK_LOANS ON LIBRARY_BRANCH.branchid = BOOK_LOANS.branchid
GROUP BY LIBRARY_BRANCH.branchName

EXEC dbo.BooksLoanInEachBranch

/*Stored Procedure 6*/
SELECT * FROM BORROWER
SELECT * FROM BOOK_LOANS
GO

CREATE PROC dbo.BorrowersWithMore5Loans
AS
SELECT BORROWER.name
FROM BORROWER
INNER JOIN BOOK_LOANS ON BORROWER.cardNo = BOOK_LOANS.cardNo
GROUP BY BORROWER.name
HAVING COUNT(*) > 5

/*Stored Procedure 7*/

SELECT * FROM BOOK_COPIES
SELECT * FROM BOOK
SELECT * FROM LIBRARY_BRANCH
SELECT * FROM BOOK_AUTHORS
GO

CREATE PROC dbo.Searchbyauthor @authorname NVARCHAR(60)
AS
SELECT LIBRARY_BRANCH.branchName, BOOK.title, BOOK_COPIES.no_of_copies
FROM BOOK_COPIES
INNER JOIN LIBRARY_BRANCH ON BOOK_COPIES.branchid = LIBRARY_BRANCH.branchid
INNER JOIN BOOK ON BOOK.bookid = BOOK_COPIES.bookid
INNER JOIN BOOK_AUTHORS ON BOOK.bookid = BOOK_AUTHORS.bookid
WHERE authorName = @authorname

EXEC dbo.Searchbyauthor 'Stephen King'