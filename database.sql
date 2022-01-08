-- CREATE DATABASE IF NOT EXISTS library;
-- USE library;

-- CREATE TABLE books(
--     bid INT PRIMARY KEY AUTO_INCREMENT,
--     title VARCHAR(150),
--     categories VARCHAR(150),
--     available VARCHAR(1),
--     authors VARCHAR(200)
-- );

-- CREATE TABLE publishers(
--     pid INT PRIMARY KEY AUTO_INCREMENT,
--     address VARCHAR(200),
--     mobile VARCHAR(15),
--     name VARCHAR(100) 
-- );

-- CREATE TABLE suppliers(
--     sid INT PRIMARY KEY AUTO_INCREMENT,
--     address VARCHAR(200),
--     mobile VARCHAR(15),
--     name VARCHAR(100) 
-- );

-- CREATE TABLE members(
--     mid INT PRIMARY KEY AUTO_INCREMENT,
--     address VARCHAR(200),
--     mobile VARCHAR(15),
--     fName VARCHAR(100),
--     lName VARCHAR(100),
--     membershipDOI DATE,
--     membershipExpiry DATE,
--     isAdmin VARCHAR(1) 
-- );

-- CREATE TABLE borrowers(
--     member_id INT, 
--     book_id INT,
--     FOREIGN KEY(member_id) REFERENCES members(mid), 
--     FOREIGN KEY(book_id) REFERENCES books(bid),
--     DOI DATE,
--     ExpectedDOR DATE 
-- );

-- CREATE TABLE returns(
--     member_id INT, 
--     book_id INT,
--     FOREIGN KEY(member_id) REFERENCES members(mid), 
--     FOREIGN KEY(book_id) REFERENCES books(bid),
--     isReturned VARCHAR(1),
--     DaysOverdue INT 
-- );

-- CREATE TABLE suppliedBy(
--     supplier_id INT, 
--     book_id INT,
--     FOREIGN KEY(supplier_id) REFERENCES suppliers(sid), 
--     FOREIGN KEY(book_id) REFERENCES books(bid)
-- );

-- CREATE TABLE publishedBy(
--     publisher_id INT, 
--     book_id INT,
--     FOREIGN KEY(publisher_id) REFERENCES publishers(pid), 
--     FOREIGN KEY(book_id) REFERENCES books(bid)
-- );

-- INSERT INTO members(address, mobile, fName, lName, membershipDOI, membershipExpiry, isAdmin)
-- VALUES("Oriental Arcade, Lalbaugh", "+918850068773", "Yug", "Jain", "2020-01-10", "2021-01-10", "Y");

-- INSERT INTO 
--     members(address, mobile, fName, lName, membershipDOI, membershipExpiry, isAdmin)
-- VALUES
--     ("Kalpita Enclave, Andheri East", "+919757025987", "Amogh", "Godbole", "2020-01-10", "2021-01-10", "Y"),
--     ("SnehaKunj, Santacruz East", "+917506750562", "Vishal", "Gondke", "2020-01-10", "2021-01-10", "Y"),
--     ("Sheraton Classics, Chakala, Andheri East", "+919619629732", "Damodar", "Shanbhag", "2020-01-24", "2021-01-24", "N"),
--     ("Jumbodarshan D1, Andheri East", "+918850484306", "Ishan", "Upadhyay", "2020-01-10", "2021-01-10", "N"),
--     ("Parmar Society, Vile Parle East", "+919920070929", "Eesha", "Phatak", "2020-07-04", "2021-07-04", "N"),
--     ("Ojas Nivas, Andheri East", "+919920974268", "Mohit", "Palnitkar", "2020-02-23", "2021-02-23", "N"),
--     ("Bhagyashree Building, Andheri East", "+918169226569", "Arnav", "Bhave", "2020-05-01", "2021-05-01", "N"),
--     ("Jai Hanuman Society, Vile Parle East", "+917977914744", "Soham", "Belurgikar", "2019-09-10", "2020-09-10", "N"),
--     ("Hanuman Road, Vile Parle East", "+919702735002", "Sanjeevan", "Bapat", "2020-01-13", "2021-01-13", "N"),
--     ("Datta Mandir, Vile Parle East", "+919594317138", "Ishan", "Gokhale", "2020-08-10", "2021-08-10", "N"),
--     ("Mangalmurti, Andheri East", "+919819099211", "Rucha", "Barve", "2019-07-14", "2020-07-14", "N"),
--     ("Tirupati Plaza, Bhayander West", "+918451089805", "Khushi", "Patni", "2020-08-04", "2021-08-04", "N"),
--     ("Arco Society, Tejpal Scheme, Vile Parle East", "+919930001945", "Gauri", "Indulkar", "2020-05-27", "2021-05-27", "N");


-- INSERT INTO 
--     books(title, categories, available, authors, total)
-- VALUES 
--     ("Probabilty & Statistics For Engineers & Scientists", "Mathematics, Data Science", "Y", "Walpole, Myers", 12),
--     ("Inside Apple", "Business, Economics", "Y", "Adam Lashinsky", 17),
--     ("Head First Java", "Programming, Computer Science", "Y", "Bert Bates, Kathy Sierra", 28),
--     ("The Odyssey", "Literature", "N", "Homer", 0),
--     ("To Kill A Mockingbird", "Fiction", "Y", "Harper Lee", 13),
--     ("Neuromancer", "Science Fiction", "Y", "William Gibson", 20),
--     ("Prime Obsession", "Mathematics", "Y", "John Derbyshire", 4),
--     ("An Imaginary Tale", "Mathematics", "Y", "Paul Nahin", 11),
--     ("Python For Data Analysis", "Mathematics, Data Science", "Y", "Daniel White", 7),
--     ("Fooled By Randomness", "Philosophy, Finance", "N", "Nassim Taleb", 0),
--     ("The Story Of My Life", "Autobiography", "Y", "Hellen Keller", 10),
--     ("Nausea", "Philosophy", "Y", "Jean-Paul Sartre", 5),
--     ("Optimism", "Philosophy, Literature", "Y", "Hellen Keller", 15),
--     ("Clean Code", "Programming", "N", "Robert Martin", 0),
--     ("Dune", "Science Fiction", "Y", "Frank Herbert", 10),
--     ("The Art Of Data Science", "Data Science, Mathematics", "Y", "Elizabeth Matsui, Roger Peng", 11),
--     ("The Great Gatsby", "Fiction", "Y", "F. Scott Fitzgerald", 21),
--     ("The Silent Patient", "Thriller", "N", "Alex Michaelides", 0),
--     ("Verity", "Thriller, Fiction", "Y", "Collean Hover", 11),
--     ("A Life In Parts", "Autobiography", "Y", "Bryan Cranston", 22),
--     ("Gone Girl", "Thriller", "Y", "Gillian Flynn", 18),
--     ("Leaves Of Grass", "Science", "Y", "Gale Boetticher", 9),
--     ("Divergent", "Fiction", "Y", "Veronica Roth", 19);

-- INSERT INTO 
--     books(title, categories, available, authors, total)
-- VALUES 
--     ("Introduction To C Programming", "Programming", "Y", "Yashwant Kher", 23),
--     ("Concepts Of Physics", "Science", "Y", "H.C.Verma", 27),
--     ("Concise Inorganic Chemistry", "Science", "Y", "J.D.Lee", 4),
--     ("Engineering Drawing", "Graphics", "Y", "Basant Agrawal", 1),
--     ("Thinking Fast And Slow", "Psychology", "N", "Daniel Kahneman", 0),
--     ("Communist Manifesto", "Communism", "Y", "Karl Marx", 17),
--     ("The Innovators Dilemma", "Business Management", "Y", "Clayton Christensen", 19),
--     ("The Diary Of A Young Girl", "Biography", "Y", "Anne Frank", 23);

-- INSERT INTO
--     books(title, categories, available, authors, total)
-- VALUES 
--     ("An Introduction to Statistical Learning: With Applications in R", "Data Science", "Y", "Gareth M. James, Daniela Witten, Trevor Hastie, Robert Tibshirani", 11),
--     ("Data Science from Scratch", "Data Science", "Y", "Joel Grus", 38),
--     ("Deep Learning", "Deep Learning, Machine Learning", "N", "Aaron Courville, Ian Goodfellow, and Yoshua Bengio", 0),
--     ("Digital Electronics", "Electronics", "Y", "Anil Kumar Maini", 20),
--     ("Principles And Practice Of Management", "Company Secretary", "Y", "L.M.Prasad", 19);

-- INSERT INTO 
--     suppliers(address, mobile, name)
-- VALUES 
--     ("Lokmanya Tilak Road, Borivali West", "02228907690", "Books Plaza"),
--     ("Suresh Colony, Vile Parle West, Mumbai", "+919820745901", "PBC Distributors"),
--     ("Sindhi Society, Chembur, Mumbai", "02225226257", "Jagasia Distributors Pvt Ltd"),
--     ("195, NCPA Marg, Nariman Point, Mumbai", "02240769200", "India Book Distributors Bombay Limited"),
--     ("192 Dr. Dadabhai Naoroji Road, Kitab Mahal, Mumbai", "02222054044", "Mehul Book Sales");

-- INSERT INTO 
--     publishers(address, mobile, name)
-- VALUES
--     ("Prime Mall, Irla Road, Vile Parle West", "+919819602301", "The Open Book - Book Publishers In India"),
--     ("Sargam Building, Swastik Society, Juhu, Mumbai", "+919819664831", "Buzzingstock Publishing House"),
--     ("60, Juhu Supreme Shopping Center, JVPD Scheme, Juhu, Mumbai", "+919022208074", "Zen Publications"),
--     ("Bafna Motors Private Limited, 404, Marol, Andheri East", "02242152803", "Macmillan Publishers India Ltd"),
--     ("202, 2nd Floor, Shilpa Estate, Oshiwara, Jogeshwari", "+918108023682", "Scripto Book Editors & Publishers");

-- SELECT bid, title, total, categories FROM books;
-- SELECT * FROM members
-- WHERE isAdmin = "Y";

-- INSERT INTO 
--     borrowers(member_id, book_id, DOI, ExpectedDOR)
-- VALUES
--     (4, 21, "2020-04-11", "2020-04-25"),
--     (5, 29, "2020-08-20", "2020-08-27"),
--     (4, 12, "2020-05-13", "2020-05-28"),
--     (7, 9, "2020-06-02", "2020-06-16"),
--     (11, 2, "2020-02-10", "2020-02-24"),
--     (8, 20, "2019-11-01", "2019-11-15"),
--     (9, 14, "2020-04-19", "2020-04-28"),
--     (9, 13, "2020-04-19", "2020-04-28");


-- INSERT INTO 
--     returns(member_id, book_id, isReturned, DaysOverdue)
-- VALUES
--     (8, 20,"Y", 0),     -- DaysOverdue will be set when isReturned is set to "Y"
--     (9, 18,"Y", 2),     -- A fine will be calculated by our software because DaysOverdue > 0
--     (6, 2,"Y", -3),     -- Here, the book was returned 3 days earlier, so DaysOverdue is <0 = -3
--     (4, 21,"N", 0),
--     (5, 29,"N", 0),
--     (4, 12,"N", 0),
--     (7, 9, "N", 0) ,
--     (11, 2, "N", 0),
--     (8, 20, "N", 0),
--     (9, 14, "N", 0),
--     (9, 13, "N", 0);

-- INSERT INTO 
--     publishedBy(publisher_id, book_id)
-- VALUES
--     (1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7),
--     (2, 8), (2, 9), (2, 10), (2, 11), (2, 12), (2, 13), (2, 14), (2, 15), (2, 16),
--     (3, 17), (3, 18), (3, 19), (3, 20), (3, 21), (3, 22), (3, 23), (3, 24), (3, 25), (3, 26), (3, 27),
--     (4, 28), (4, 29), (4, 30), (4, 31), (4, 32),
--     (5, 33), (5, 34), (5, 36), (5,35), (5, 37);

-- INSERT INTO 
--     suppliedBy(supplier_id, book_id)
-- VALUES
--     (1, 1), (1, 2), (1, 3), (1, 4), (1, 5),
--     (2, 6), (2, 7),(2, 8), (2, 9), (2, 10), (2, 11), (2, 12), (2, 13), 
--     (3, 14), (3, 15), (3, 16), (3, 17), (3, 18), (3, 19), (3, 20), (3, 21), (3, 22), (3, 23), 
--     (4, 24), (4, 25), (4, 26), (4, 27),(4, 28), (4, 29), 
--     (5, 30), (5, 31), (5, 32), (5, 33), (5, 34), (5, 36), (5,35), (5, 37);


-- Example Question: 
-- Find the number of books supplied by supplier number 4

-- SELECT 
--     supplier_id AS "Supplier ID",
--     book_id AS "Book ID",
--     COUNT(*) AS "Number Of Books Supplied"
-- FROM suppliedBy
-- WHERE supplier_id = 4
-- GROUP BY supplier_id;
