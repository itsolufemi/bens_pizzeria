/*
 Navicat Premium Dump SQL

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80046 (8.0.46)
 Source Host           : localhost:3306
 Source Schema         : bens_pizzeria

 Target Server Type    : MySQL
 Target Server Version : 80046 (8.0.46)
 File Encoding         : 65001

 Date: 01/06/2026 23:57:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for addresses
-- ----------------------------
DROP TABLE IF EXISTS `addresses`;
CREATE TABLE `addresses`  (
  `add_id` int NOT NULL,
  `delivery_addr_line1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_addr_line2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `delivery_postcode` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_city` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`add_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of addresses
-- ----------------------------
INSERT INTO `addresses` VALUES (101, '123 Main Street', 'NULL', 'M1 1AA', 'Manchester');
INSERT INTO `addresses` VALUES (102, '456 Oak Avenue', 'Apt 4B', 'M2 2BB', 'Manchester');
INSERT INTO `addresses` VALUES (103, '789 Pine Road', 'NULL', 'M3 3CC', 'Manchester');
INSERT INTO `addresses` VALUES (104, '321 Elm Lane', 'Suite 200', 'M4 4DD', 'Manchester');
INSERT INTO `addresses` VALUES (105, '654 Maple Blvd', 'NULL', 'M5 5EE', 'Manchester');

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`  (
  `cust_id` int NOT NULL,
  `cust_fname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_lname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`cust_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES (1, 'Michael', 'Scott');
INSERT INTO `customers` VALUES (2, 'Emily', 'Watson');
INSERT INTO `customers` VALUES (3, 'David', 'Miller');
INSERT INTO `customers` VALUES (4, 'Jessica', 'Davis');
INSERT INTO `customers` VALUES (5, 'James', 'Wilson');

-- ----------------------------
-- Table structure for ingredients
-- ----------------------------
DROP TABLE IF EXISTS `ingredients`;
CREATE TABLE `ingredients`  (
  `ing_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ing_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ing_weight` int NOT NULL,
  `ing_mass` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ing_price` decimal(5, 2) NOT NULL,
  PRIMARY KEY (`ing_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ingredients
-- ----------------------------
INSERT INTO `ingredients` VALUES ('ING001', 'Pizza Dough', 5000, 'g', 10.00);
INSERT INTO `ingredients` VALUES ('ING002', 'Tomato Sauce', 3000, 'ml', 6.50);
INSERT INTO `ingredients` VALUES ('ING003', 'Vegan Cheese', 2000, 'g', 14.00);
INSERT INTO `ingredients` VALUES ('ING004', 'Mixed Vegetables', 1500, 'g', 7.00);
INSERT INTO `ingredients` VALUES ('ING005', 'Seafood Mix', 1000, 'g', 22.00);

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory`  (
  `inv_id` int NOT NULL,
  `item_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`inv_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inventory
-- ----------------------------
INSERT INTO `inventory` VALUES (1, 'ING001', 50);
INSERT INTO `inventory` VALUES (2, 'ING002', 30);
INSERT INTO `inventory` VALUES (3, 'ING003', 20);
INSERT INTO `inventory` VALUES (4, 'ING004', 15);
INSERT INTO `inventory` VALUES (5, 'ING005', 10);
INSERT INTO `inventory` VALUES (6, 'ING006', 25);

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `item_id` int NOT NULL,
  `sku` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_cat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_size` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_price` decimal(5, 2) NOT NULL,
  PRIMARY KEY (`item_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 'P1-S', 'Vegan Margherita Pizza', 'Pizza', 'Small', 9.50);
INSERT INTO `menu` VALUES (2, 'P1-M', 'Vegan Margherita Pizza', 'Pizza', 'Medium', 12.00);
INSERT INTO `menu` VALUES (3, 'P1-L', 'Vegan Margherita Pizza', 'Pizza', 'Large', 14.50);
INSERT INTO `menu` VALUES (4, 'P2-S', 'Vegetarian Pizza', 'Pizza', 'Small', 10.00);
INSERT INTO `menu` VALUES (5, 'P2-M', 'Vegetarian Pizza', 'Pizza', 'Medium', 13.00);
INSERT INTO `menu` VALUES (6, 'P2-L', 'Vegetarian Pizza', 'Pizza', 'Large', 15.50);
INSERT INTO `menu` VALUES (7, 'P3-S', 'Seafood Pizza', 'Pizza', 'Small', 12.50);
INSERT INTO `menu` VALUES (8, 'P3-M', 'Seafood Pizza', 'Pizza', 'Medium', 16.00);
INSERT INTO `menu` VALUES (9, 'P3-L', 'Seafood Pizza', 'Pizza', 'Large', 18.50);
INSERT INTO `menu` VALUES (10, 'S1', 'Garlic Bread', 'Sides', 'Regular', 4.50);
INSERT INTO `menu` VALUES (11, 'S2', 'Potato Wedges', 'Sides', 'Regular', 4.00);
INSERT INTO `menu` VALUES (12, 'D1', 'Chocolate Brownie', 'Desserts', 'Regular', 5.00);
INSERT INTO `menu` VALUES (13, 'B1', 'Coca Cola', 'Beverages', '330ml', 1.50);
INSERT INTO `menu` VALUES (14, 'B2', 'Diet Coke', 'Beverages', '330ml', 1.50);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `row_id` int NOT NULL,
  `order_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `item_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `cust_id` int NOT NULL,
  `delivery` tinyint(1) NOT NULL,
  `add_id` int NOT NULL,
  PRIMARY KEY (`row_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 'ORD1001', '2026-08-10 19:00:00', '13', 2, 3, 1, 102);
INSERT INTO `orders` VALUES (2, 'ORD1002', '2026-08-10 12:33:00', '10', 3, 4, 0, 101);
INSERT INTO `orders` VALUES (3, 'ORD1003', '2026-08-10 15:22:00', '8', 1, 3, 1, 104);
INSERT INTO `orders` VALUES (4, 'ORD1003', '2026-08-10 15:22:00', '3', 1, 3, 1, 104);
INSERT INTO `orders` VALUES (5, 'ORD1003', '2026-08-10 15:22:00', '5', 3, 3, 1, 104);
INSERT INTO `orders` VALUES (6, 'ORD1004', '2026-08-10 18:22:00', '7', 2, 5, 0, 101);
INSERT INTO `orders` VALUES (7, 'ORD1004', '2026-08-10 18:22:00', '10', 1, 5, 0, 101);
INSERT INTO `orders` VALUES (8, 'ORD1004', '2026-08-10 18:22:00', '14', 1, 5, 0, 101);
INSERT INTO `orders` VALUES (9, 'ORD1005', '2026-08-10 12:46:00', '14', 1, 5, 0, 101);
INSERT INTO `orders` VALUES (10, 'ORD1006', '2026-08-10 17:05:00', '7', 2, 2, 1, 104);
INSERT INTO `orders` VALUES (11, 'ORD1007', '2026-08-10 16:30:00', '9', 3, 5, 0, 101);
INSERT INTO `orders` VALUES (12, 'ORD1007', '2026-08-10 16:30:00', '1', 3, 5, 0, 101);
INSERT INTO `orders` VALUES (13, 'ORD1008', '2026-08-10 18:33:00', '6', 2, 1, 0, 101);
INSERT INTO `orders` VALUES (14, 'ORD1008', '2026-08-10 18:33:00', '2', 1, 1, 0, 101);
INSERT INTO `orders` VALUES (15, 'ORD1008', '2026-08-10 18:33:00', '5', 2, 1, 0, 101);
INSERT INTO `orders` VALUES (16, 'ORD1009', '2026-08-10 16:16:00', '9', 1, 1, 0, 101);
INSERT INTO `orders` VALUES (17, 'ORD1010', '2026-08-10 15:11:00', '9', 3, 3, 1, 102);
INSERT INTO `orders` VALUES (18, 'ORD1011', '2026-08-10 16:10:00', '2', 2, 1, 0, 101);
INSERT INTO `orders` VALUES (19, 'ORD1012', '2026-08-10 14:03:00', '2', 2, 3, 1, 101);
INSERT INTO `orders` VALUES (20, 'ORD1012', '2026-08-10 14:03:00', '14', 1, 3, 1, 101);

-- ----------------------------
-- Table structure for recipe
-- ----------------------------
DROP TABLE IF EXISTS `recipe`;
CREATE TABLE `recipe`  (
  `row_id` int NOT NULL,
  `recipe_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ing_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`row_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recipe
-- ----------------------------
INSERT INTO `recipe` VALUES (1, 'P1-S', 'ING001', 150);
INSERT INTO `recipe` VALUES (2, 'P1-S', 'ING002', 80);
INSERT INTO `recipe` VALUES (3, 'P1-S', 'ING003', 100);
INSERT INTO `recipe` VALUES (4, 'P1-M', 'ING001', 250);
INSERT INTO `recipe` VALUES (5, 'P1-M', 'ING002', 120);
INSERT INTO `recipe` VALUES (6, 'P1-M', 'ING003', 150);
INSERT INTO `recipe` VALUES (7, 'P1-L', 'ING001', 350);
INSERT INTO `recipe` VALUES (8, 'P1-L', 'ING002', 160);
INSERT INTO `recipe` VALUES (9, 'P1-L', 'ING003', 200);
INSERT INTO `recipe` VALUES (10, 'P3-L', 'ING001', 350);
INSERT INTO `recipe` VALUES (11, 'P3-L', 'ING002', 160);
INSERT INTO `recipe` VALUES (12, 'P3-L', 'ING005', 250);
INSERT INTO `recipe` VALUES (13, 'S1', 'ING006', 50);

-- ----------------------------
-- Table structure for rota
-- ----------------------------
DROP TABLE IF EXISTS `rota`;
CREATE TABLE `rota`  (
  `row_id` int NOT NULL,
  `rota_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `shift_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`row_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rota
-- ----------------------------
INSERT INTO `rota` VALUES (1, 'ROT-001', '2026-08-10 00:00:00', 'SH001', 'ST001');
INSERT INTO `rota` VALUES (2, 'ROT-002', '2026-08-10 00:00:00', 'SH002', 'ST002');
INSERT INTO `rota` VALUES (3, 'ROT-003', '2026-08-10 00:00:00', 'SH002', 'ST003');
INSERT INTO `rota` VALUES (4, 'ROT-004', '2026-08-10 00:00:00', 'SH002', 'ST004');

-- ----------------------------
-- Table structure for shift
-- ----------------------------
DROP TABLE IF EXISTS `shift`;
CREATE TABLE `shift`  (
  `shift_id` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_o_w` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` time NOT NULL,
  `end` time NOT NULL,
  PRIMARY KEY (`shift_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shift
-- ----------------------------
INSERT INTO `shift` VALUES ('SH001', 'Monday', '11:30:00', '16:00:00');
INSERT INTO `shift` VALUES ('SH002', 'Monday', '17:00:00', '23:00:00');
INSERT INTO `shift` VALUES ('SH003', 'Tuesday', '11:30:00', '16:00:00');
INSERT INTO `shift` VALUES ('SH004', 'Tuesday', '17:00:00', '23:00:00');

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff`  (
  `staff_id` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `f_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `l_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hourly_rate` decimal(5, 2) NOT NULL,
  PRIMARY KEY (`staff_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES ('ST001', 'John', 'Doe', 'Chef', 16.50);
INSERT INTO `staff` VALUES ('ST002', 'Jane', 'Smith', 'Chef', 16.50);
INSERT INTO `staff` VALUES ('ST003', 'Alan', 'Walker', 'Driver', 12.00);
INSERT INTO `staff` VALUES ('ST004', 'Sarah', 'Connor', 'Driver', 12.00);

-- ----------------------------
-- View structure for stock_one
-- ----------------------------
DROP VIEW IF EXISTS `stock_one`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `stock_one` AS select `s_one`.`item_name` AS `item_name`,`s_one`.`ing_id` AS `ing_id`,`s_one`.`ing_name` AS `ing_name`,`s_one`.`order_quantity` AS `order_quantity`,`s_one`.`recipe_quantity` AS `recipe_quantity`,(`s_one`.`order_quantity` * `s_one`.`recipe_quantity`) AS `ordered_weight`,(`s_one`.`ing_price` / `s_one`.`ing_weight`) AS `unit_cost`,((`s_one`.`order_quantity` * `s_one`.`recipe_quantity`) * (`s_one`.`ing_price` / `s_one`.`ing_weight`)) AS `ingredients_cost` from (select `o`.`item_id` AS `item_id`,`m`.`sku` AS `sku`,`m`.`item_name` AS `item_name`,`r`.`ing_id` AS `ing_id`,`ing`.`ing_name` AS `ing_name`,`r`.`quantity` AS `recipe_quantity`,sum(`o`.`quantity`) AS `order_quantity`,`ing`.`ing_weight` AS `ing_weight`,`ing`.`ing_price` AS `ing_price` from (((`orders` `o` left join `menu` `m` on((`o`.`item_id` = `m`.`item_id`))) left join `recipe` `r` on((`m`.`sku` = `r`.`recipe_id`))) left join `ingredients` `ing` on((`ing`.`ing_id` = `r`.`ing_id`))) group by `o`.`item_id`,`m`.`sku`,`m`.`item_name`,`r`.`ing_id`,`r`.`quantity`,`ing`.`ing_name`,`ing`.`ing_weight`,`ing`.`ing_price`) `s_one`;

SET FOREIGN_KEY_CHECKS = 1;
