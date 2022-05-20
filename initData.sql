
DROP TABLE post;
DROP TABLE category;
DROP TABLE comment;
DROP TABLE user;
DROP TABLE image;
DROP TABLE contact;


-- Table: Categorie
CREATE TABLE category (id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, name VARCHAR(100) UNIQUE NOT NULL);

-- Table: User
CREATE TABLE user (id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, username VARCHAR(100) NOT NULL UNIQUE, email VARCHAR(100) UNIQUE NOT NULL, password VARCHAR(100) NOT NULL, firstname VARCHAR(100) NOT NULL, lastname VARCHAR(100) NOT NULL, roles VARCHAR(100) NOT NULL, sessiontoken VARCHAR(100) NOT NULL, image_id INTEGER NOT NULL REFERENCES image (id) on DELETE CASCADE);

-- Table: Image
CREATE TABLE image (id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, src VARCHAR(100) NOT NULL);

-- Table: Post
CREATE TABLE post (id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, title VARCHAR(100) NOT NULL, createat DATETIME DEFAULT NULL, text LONGTEXT NOT NULL, user_id INTEGER NOT NULL REFERENCES user (id) on DELETE CASCADE, category_id INTEGER NOT NULL REFERENCES category (id) on DELETE CASCADE, image_id INTEGER NOT NULL REFERENCES image (id) on DELETE CASCADE);

-- Table: Comment
CREATE TABLE comment (id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, text VARCHAR(100) NOT NULL, createat DATETIME DEFAULT NULL, user_id INTEGER NOT NULL REFERENCES user (id) on DELETE CASCADE, post_id INTEGER NOT NULL REFERENCES post (id) on DELETE CASCADE);

-- Table: Contact
CREATE TABLE contact (id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, text VARCHAR(100) NOT NULL, email VARCHAR(100) NOT NULL, createat DATETIME DEFAULT NULL, token INTEGER NOT NULL, user_id INTEGER NOT NULL REFERENCES user (id)  on DELETE CASCADE);

INSERT INTO image (src) VALUES ('images/pasta.jpg');

INSERT INTO image (src)
VALUES
    (
        'images/aperitif-1.jpg'
    );

INSERT INTO image
    (src)
VALUES
    (
        'images/aperitif-2.jpg'
    );

INSERT INTO image
    (src)
VALUES
    (
        'images/bruschetta-b.jpg'
    );

INSERT INTO image
    (src)
VALUES
    (
        'images/bruschetta.jpg'
    );

INSERT INTO image
    (src)
VALUES
    (
        'images/burger.jpg'
    );

INSERT INTO image
    (src)
VALUES
    (
        'images/cake.jpg'
    );

INSERT INTO image
    (src)
VALUES
    (
        'images/cookies.jpg'
    );

INSERT INTO image
    (src)
VALUES
    (
        'images/cupcakes.jpg'
    );

INSERT INTO image
    (src)
VALUES
    (
        'images/gnocchis.jpg'
    );

INSERT INTO image
    (src)
VALUES
    (
        'images/pizza.jpg'
    );

INSERT INTO image
    (src)
VALUES
    (
        'images/profil.jpg'
    );

INSERT INTO image
    (src)
VALUES
    (
        'images/rice.jpg'
    );

INSERT INTO image
    (src)
VALUES
    (
        'images/salad.jpg'
    );

INSERT INTO image
    (src)
VALUES
    (
        'images/sushis.jpg'
    );


INSERT INTO post
    (title, createat, text, user_id, category_id, image_id)
VALUES
    (
        'Nulla gravida condimentum justo nec rhoncus',
        '05/29/2015',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consectetur dolor nibh, id congue eros pulvinar sit amet. Duis ac lorem metus. Aenean ut urna consectetur, convallis metus ut, hendrerit urna. ',
        1,
        1,
        1
    );

INSERT INTO post
    (title, createat, text, user_id, category_id, image_id)
VALUES
    (
        'Vestibulum ante ipsum primis in faucibus orci luctus',
        '05/29/2015',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consectetur dolor nibh, id congue eros pulvinar sit amet. Duis ac lorem metus. Aenean ut urna consectetur, convallis metus ut, hendrerit urna. ',
        1,
        1,
        2
    );

INSERT INTO post
    (title, createat, text, user_id, category_id, image_id)
VALUES
    (
        'Ut eget lectus eleifend nibh aliquam porta in quis risus',
        '05/29/2015',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consectetur dolor nibh, id congue eros pulvinar sit amet. Duis ac lorem metus. Aenean ut urna consectetur, convallis metus ut, hendrerit urna. ',
        1,
        1,
        3
    );

INSERT INTO post
    (title, createat, text, user_id, category_id, image_id)
VALUES
    (
        'Donec at rhoncus risus. Sed molestie elit id commodo sagittis',
        '05/29/2015',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consectetur dolor nibh, id congue eros pulvinar sit amet. Duis ac lorem metus. Aenean ut urna consectetur, convallis metus ut, hendrerit urna. ',
        1,
        1,
        4
    );

INSERT INTO post
    (title, createat, text, user_id, category_id, image_id)
VALUES
    (
        'Maecenas sit amet massa malesuada',
        '05/29/2015',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consectetur dolor nibh, id congue eros pulvinar sit amet. Duis ac lorem metus. Aenean ut urna consectetur, convallis metus ut, hendrerit urna. ',
        1,
        1,
        5
    );

INSERT INTO post
    (title, createat, text, user_id, category_id, image_id)
VALUES
    (
        'sollicitudin mauris eu, aliquam nibh',
        '05/29/2015',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consectetur dolor nibh, id congue eros pulvinar sit amet. Duis ac lorem metus. Aenean ut urna consectetur, convallis metus ut, hendrerit urna. ',
        1,
        1,
        6
    );

INSERT INTO post
    (title, createat, text, user_id, category_id, image_id)
VALUES
    (
        'Etiam interdum pretium sapien, eget mollis velit maximus non',
        '05/29/2015',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consectetur dolor nibh, id congue eros pulvinar sit amet. Duis ac lorem metus. Aenean ut urna consectetur, convallis metus ut, hendrerit urna. ',
        1,
        1,
        7
    );

INSERT INTO post
    (title, createat, text, user_id, category_id, image_id)
VALUES
    (
        'Etiam interdum pretium sapien, eget mollis velit maximus non',
        '05/29/2015',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consectetur dolor nibh, id congue eros pulvinar sit amet. Duis ac lorem metus. Aenean ut urna consectetur, convallis metus ut, hendrerit urna. ',
        1,
        1,
        8
    );

INSERT INTO user
    (username, email, firstname, lastname, roles, sessiontoken, image_id)
VALUES
    (
        'ikim',
        'ikim@gmail.com',
        'injin',
        'kim',
        'user',
        'token',
        9
    );
