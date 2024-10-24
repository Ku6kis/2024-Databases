/*
Create a new database called Products. Create following tables to the database:

Product
- id: int
- name: varchar

Ingredient
- id: int,
- name: varchar
- calories: DECIMAL

Contains
- ingredient_id: INT
- product_id: INT
- amount: DECIMAL

Define the following foreign key restrictions to the Contains table:
When Ingredient's or Product's id is updated, the updated value is reflected to Contains table. 
When an ingredient is deleted, the delete operation is blocked if there are any products
which contains the ingredient. When a product is deleted, the product_id in the Contains 
table is set to NULL.
*/

CREATE DATABASE Products;

CREATE TABLE Product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE Ingredient (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    calories DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Contains (
    ingredient_id INT,
    product_id INT,
    amount DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (ingredient_id, product_id),
    CONSTRAINT fk_ingredient
        FOREIGN KEY (ingredient_id) REFERENCES Ingredient(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT fk_product
        FOREIGN KEY (product_id) REFERENCES Product(id)
        ON UPDATE CASCADE
        ON DELETE SET NULL
);
