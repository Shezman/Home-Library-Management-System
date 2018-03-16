USE HomeLibaryMS
SELECT * FROM dbo.BOOK
SELECT * FROM dbo.PUBLISHER
SELECT * FROM BORROWER
SELECT * FROM BOOK_AUTHORS
SELECT * FROM BOOK_LOANS

/*--Inputing Publisher then book info then author (publisher FIRST! AUthor last!)--*/
INSERT INTO dbo.PUBLISHER (name, address, phone)
VALUES ('Crown Business', '222 Rosewood Drive, Danvers MA 01923', '978-750-8400'),
	   ('Harper Collins', '195 Broadway, New York NY 10007', '212-207-7000'),
	   ('Penguin Group', '375 Hudson St, New York NY 10014', '800-733-3000'),
	   ('Picador', '16365 James Madison Highway Gordonsville VA 22942', '888-330-8477'),
	   ('Hachette Book Group', '1290 6th Ave, New York NY 10104', '800-759-0190'),
	   ('Da Capo Press', '53 State St, Boston MA 02109', '6172525200'),
	   ('John Wiley and Sons', '111 River St, Hoboken NJ 07030', '201-748-6000'),
	   ('Oxford University Press', '198 Madison Avenue, New York NY 10016', '800445-9714'),
	   ('Gallery Books', '1230 Avenue of the Americas, New York NY 10020', '212-698-2807'),
	   ('Random House', '230 W 56th St, New York NY 10019', '212-397-4133'),
	   ('Scholastic', '557 Broadway, New York NY 10012', '800-724-6527'),
	   ('Napoleon Hill Foundation', '1 College Avenue, Wise VA 24293', '276-328-6700'),
	   ('Profile Books', '3 Holford Yard Bevin Way, London UK', '020-7841-6300'),
	   ('Firefly Books', '#1 50 Staples Ave, Richmond Hill, ON Canada', '800-387-6192'),
	   ('McGraw Hill Education', '83 S King St, Seattle WA 98104', '206-926-6800')

INSERT INTO dbo.BOOK (title, publisherName)
VALUES ('The Lean Startup', 'Crown Business'),
       ('The Intelligent Investor', 'Harper Collins'),
	   ('It', 'Penguin Group'),
	   ('Misery', 'Penguin Group'),
	   ('The Lost Tribe', 'Picador'),
	   ('To Kill a Mockingbird', 'Hachette Book Group'),
	   ('Freakonomics', 'Penguin Group'),
	   ('The Compound Effect', 'Da Capo Press'),
	   ('The Little Book of Valuation', 'John Wiley and Sons'),
	   ('Dictionary of Economics', 'Oxford University Press'),
	   ('The Economic Naturalist', 'Hachette Book Group'),
	   ('The Perks of Being a Wallflower', 'Gallery Books'),
	   ('Chronicle of a Blood Merchant', 'Random House'),
	   ('The Hunger Games', 'Scholastic'),
	   ('Wisdom For Winners', 'Napoleon Hill Foundation'),
	   ('Economics', 'Profile Books'),
	   ('The Ultimate Student Cookbook', 'Firefly Books'),
	   ('Coding For Dummies', 'John Wiley and Sons'),
	   ('Street Smart Guide to Short Selling', 'McGraw Hill Education'),
	   ('Agricola and Germany', 'Oxford University Press'),
	   ('Stock Investing For Dummies', 'John Wiley and Sons')
INSERT INTO dbo.BOOK_AUTHORS (bookid, authorName)
VALUES ('3','Eric Reis'),
	   ('4', 'Benjamin Graham'),
	   ('5', 'Stephen King'),
	   ('6', 'Stephen King'),
	   ('7', 'Mark Lee'),
	   ('8', 'Harper Lee'),
	   ('9', 'Steven Levitt'),
	   ('10', 'Darren Hardy'),
	   ('11', 'Aswath Damodaran'),
	   ('12', 'John Black'),
	   ('13', 'Robert Frank'),
	   ('14', 'Stephen Chbosky'),
	   ('15', 'Yu Hua'),
	   ('16', 'Suzanne Collins'),
	   ('17', 'Jim Stovall'),
	   ('18', 'Saugato Datta'),
	   ('19', 'Tiffany Goodall'),
	   ('20', 'Nikhil Abraham'),
	   ('21', 'Tom Taulli'),
	   ('22', 'Tacitus'),
	   ('23', 'Paul Mladjenovic')
/*--Inputing Borrower info into borrower table--*/

INSERT INTO dbo.BORROWER (name, address, phone)
VALUES ('Quynh Nguyen', '631 E 15th Ave, Eugene OR 97401', '541-326-2869'),
	   ('Amit Toor', '16092 SE Eider Ct Damascus OR 97089', '971-832-1224'),
	   ('Melanie Logue', '631 E 15th Ave, Eugene OR 97401', '360-292-9841'),
	   ('Karn Banwait', '2625 Alder St, Eugene OR 97405', '503-819-2096'),
	   ('Wes Franco', '1370 E 19th Ave, Eugene OR 97403', '541-633-0229'),
	   ('Eddie Salma', '745 E 15th Ave, Eugene OR 97401', '541-953-7559'),
	   ('Gunnar Holwerda', '12344 SE 20th Ave Milwaukie OR 97222', '503-539-8750'),
	   ('Reed Jarvis', '14557 ME Larson Rd, Portland OR 97231', '503-200-7834'),
	   ('Steve Cook', '11325 N 106th St, Scottsdale OR 85259', '602-207-8398')

/*Delete Snippets*/
DELETE FROM dbo.PUBLISHER
WHERE name = 'Crown Business'

DELETE FROM dbo.BOOK
WHERE title = 'The Lean Startup'

/*Insert Data into Library Branch (4 Branches)*/

INSERT INTO dbo.LIBRARY_BRANCH (branchName, address)
VALUES ('Sharptown', '1400 NW Marshall St, Portland OR 97209'),
	   ('Central', '1364 Patterson St, Eugene OR 97401'),
	   ('Powell', '1005 Burnside St, Portland OR 97209'),
	   ('Academy', '310 SW 4th St, Portland OR 97204')

/*Insert into data Book Copies*/

INSERT INTO dbo.BOOK_COPIES (bookid, branchid, no_of_copies)
VALUES ('3', '1', '10'),
	   ('4', '1', '10'),
	   ('5', '1', '10'),
	   ('6', '1', '10'),
	   ('7', '1', '10'),
	   ('8', '1', '10'),
	   ('9', '1', '10'),
	   ('10', '1', '10'),
	   ('11', '1', '10'),
	   ('12', '1', '10'),
	   ('13', '1', '10'),
	   ('14', '1', '10'),
	   ('15', '1', '10'),
	   ('16', '1', '10'),
	   ('17', '1', '10'),
	   ('18', '1', '10'),
	   ('19', '1', '10'),
	   ('20', '1', '10'),
	   ('21', '1', '10'),
	   ('22', '1', '10'),
	   ('23', '1', '10'),
	   ('3', '2', '10'),
	   ('4', '2', '10'),
	   ('5', '2', '10'),
	   ('6', '2', '10'),
	   ('7', '2', '10'),
	   ('8', '2', '10'),
	   ('9', '2', '10'),
	   ('10', '2', '10'),
	   ('11', '2', '10'),
	   ('12', '2', '10'),
	   ('13', '2', '10'),
	   ('14', '2', '10'),
	   ('15', '2', '10'),
	   ('16', '2', '10'),
	   ('17', '2', '10'),
	   ('18', '2', '10'),
	   ('19', '2', '10'),
	   ('20', '2', '10'),
	   ('21', '2', '10'),
	   ('22', '2', '10'),
	   ('23', '2', '10'),
	   ('3', '3', '10'),
	   ('4', '3', '10'),
	   ('5', '3', '10'),
	   ('6', '3', '10'),
	   ('7', '3', '10'),
	   ('8', '3', '10'),
	   ('9', '3', '10'),
	   ('10', '3', '10'),
	   ('11', '3', '10'),
	   ('12', '3', '10'),
	   ('13', '3', '10'),
	   ('14', '3', '10'),
	   ('15', '3', '10'),
	   ('16', '3', '10'),
	   ('17', '3', '10'),
	   ('18', '3', '10'),
	   ('19', '3', '10'),
	   ('20', '3', '10'),
	   ('21', '3', '10'),
	   ('22', '3', '10'),
	   ('23', '3', '10'),
	   ('3', '4', '10'),
	   ('4', '4', '10'),
	   ('5', '4', '10'),
	   ('6', '4', '10'),
	   ('7', '4', '10'),
	   ('8', '4', '10'),
	   ('9', '4', '10'),
	   ('10', '4', '10'),
	   ('11', '4', '10'),
	   ('12', '4', '10'),
	   ('13', '4', '10'),
	   ('14', '4', '10'),
	   ('15', '4', '10'),
	   ('16', '4', '10'),
	   ('17', '4', '10'),
	   ('18', '4', '10'),
	   ('19', '4', '10'),
	   ('20', '4', '10'),
	   ('21', '4', '10'),
	   ('22', '4', '10'),
	   ('23', '4', '10')

/*Insert into Book Loans*/

insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (21, 1, 4, '3/30/2018', '4/12/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (20, 4, 3, '3/30/2018', '4/6/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (22, 2, 2, '3/19/2018', '4/22/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (6, 3, 3, '3/30/2018', '4/25/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (15, 3, 9, '3/17/2018', '4/24/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (10, 2, 7, '3/11/2018', '4/15/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (16, 2, 5, '3/12/2018', '4/17/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (23, 4, 8, '3/13/2018', '4/10/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (14, 4, 4, '3/25/2018', '4/21/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (9, 2, 7, '3/19/2018', '4/16/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (5, 4, 7, '3/19/2018', '4/11/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (4, 4, 7, '3/16/2018', '4/18/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (17, 1, 3, '3/21/2018', '4/5/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (14, 2, 7, '3/9/2018', '4/1/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (23, 1, 2, '3/10/2018', '4/15/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (12, 1, 9, '3/9/2018', '4/25/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (22, 4, 6, '3/6/2018', '4/12/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (21, 2, 3, '3/22/2018', '4/15/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (10, 1, 8, '3/9/2018', '4/11/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (8, 3, 2, '3/2/2018', '4/21/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (14, 4, 9, '3/4/2018', '4/14/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (6, 1, 5, '3/15/2018', '4/2/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (22, 1, 9, '3/27/2018', '4/5/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (6, 1, 6, '3/14/2018', '4/6/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (16, 2, 3, '3/23/2018', '4/13/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (6, 4, 3, '3/19/2018', '4/26/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (13, 4, 3, '3/30/2018', '4/12/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (9, 4, 6, '3/4/2018', '4/25/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (23, 4, 7, '3/9/2018', '4/14/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (13, 1, 5, '3/11/2018', '4/3/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (19, 1, 7, '3/8/2018', '4/28/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (20, 2, 2, '3/7/2018', '4/11/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (10, 1, 2, '3/3/2018', '4/5/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (17, 4, 6, '3/7/2018', '4/22/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (17, 3, 9, '3/12/2018', '4/4/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (3, 4, 2, '3/24/2018', '4/21/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (21, 2, 4, '3/22/2018', '3/31/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (17, 4, 5, '3/8/2018', '4/19/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (8, 1, 2, '3/11/2018', '4/25/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (18, 2, 2, '3/3/2018', '4/19/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (6, 4, 8, '3/7/2018', '4/27/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (19, 1, 5, '3/17/2018', '4/24/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (23, 1, 7, '3/12/2018', '4/29/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (12, 2, 9, '3/18/2018', '4/8/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (3, 2, 9, '3/7/2018', '4/8/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (22, 1, 5, '3/26/2018', '3/31/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (11, 1, 4, '3/27/2018', '4/24/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (10, 1, 4, '3/4/2018', '4/19/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (5, 3, 3, '3/5/2018', '4/20/2018');
insert into BOOK_LOANS (bookid, branchid, cardNo, dateOut, dueDate) values (4, 2, 3, '3/11/2018', '4/14/2018');

