-- CreateTable
CREATE TABLE `user` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(50) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `avatar` VARCHAR(255) NULL,
    `gender` ENUM('Male', 'FeMale', 'Others') NOT NULL DEFAULT 'Others',
    `role` ENUM('Admin', 'User') NOT NULL DEFAULT 'User',

    UNIQUE INDEX `user_id_key`(`id`),
    UNIQUE INDEX `user_username_key`(`username`),
    UNIQUE INDEX `user_email_key`(`email`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
