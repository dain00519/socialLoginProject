CREATE DATABASE USERDATABASE CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;


CREATE TABLE User(
   	userId VARCHAR(60),
    username VARCHAR(20) CHARACTER SET utf8mb4,
    profileImg VARCHAR(200),
    created DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    Updated DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
  	PRIMARY KEY(userId)
 );
 
INSERT INTO User (userId, username, profileImg)
VALUES ('asd', '이다인', 'img1'), ('sdf', '박근원', 'img2'), ('wer', '김기재', 'img3'),('ejr', '김재민', 'img4'), ('wje', '김태곤', 'img5');

-- ----------------

SELECT userId, username
FROM User
ORDER BY created DESC
LIMIT 1;

-- ----------------

SELECT username
FROM User
WHERE userId = 'asd';

-- -----------------

DELETE FROM User
WHERE username = '박근원';

-- ------------------

UPDATE User
SET userId = 'dsa'
WHERE username = '김기재';
