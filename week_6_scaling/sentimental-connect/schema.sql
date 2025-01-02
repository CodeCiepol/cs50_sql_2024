CREATE TABLE `users` (
    `id` INT UNSIGNED AUTO_INCREMENT,
    `username` VARCHAR(32) NOT NULL UNIQUE,
    `first_name` VARCHAR(255) NOT NULL,
    `last_name` VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    PRIMARY KEY(`id`)
);


CREATE TABLE `schools_and_unis` (
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `type` ENUM('Primary','Secondary', 'Higher Education') NOT NULL,
    `location` VARCHAR(255) NOT NULL,
    `year` SMALLINT UNSIGNED,
    PRIMARY KEY (`id`)
);

CREATE TABLE `companies` (
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `industry` ENUM('Technology', 'Education', 'Business') NOT NULL,
    `location` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `users_conn` (
    `id` INT UNSIGNED AUTO_INCREMENT,
    `user_id` INT UNSIGNED,
    `friend_id` INT UNSIGNED,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY (`friend_id`) REFERENCES `users`(`id`),
    CONSTRAINT UC_users UNIQUE (`user_id`, `friend_id`)
);

CREATE TABLE `users_schools_conn` (
    `id` INT UNSIGNED AUTO_INCREMENT,
    `user_id` INT UNSIGNED NOT NULL,
    `school_id` INT UNSIGNED NOT NULL,
    `start_affiliation` DATE,
    `end_affiliation` DATE,
    `degree` VARCHAR(32) NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY (`school_id`) REFERENCES `schools_and_unis`(`id`)
);

CREATE TABLE `users_companies_conn` (
    `id` INT UNSIGNED AUTO_INCREMENT,
    `user_id` INT UNSIGNED NOT NULL,
    `title` VARCHAR(32),
    `company_id` INT UNSIGNED NOT NULL,
    `start_affiliation` DATE,
    `end_affiliation` DATE,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY (`company_id`) REFERENCES `companies`(`id`)
);

delimiter //
CREATE PROCEDURE `add_users_conn` (
	IN user_id INT,
    IN friend_id INT
)
BEGIN
    INSERT INTO `users_conn` (`user_id`, `friend_id`)
    VALUES
    (user_id, friend_id),
    (friend_id, user_id);
END//
delimiter ;

delimiter //
CREATE PROCEDURE `delete_users_conn` (
    IN user_id INT,
    IN friend_id INT
)
BEGIN
    DELETE FROM `users_conn`
    WHERE (`user_id` = user_id AND `friend_id` = friend_id)
       OR (`user_id` = friend_id AND `friend_id` = user_id);
END//
delimiter ;


