/*
  Warnings:

  - You are about to drop the column `idade` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `nome` on the `users` table. All the data in the column will be lost.
  - Added the required column `age` to the `users` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name` to the `users` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "Available" AS ENUM ('Yes', 'No');

-- AlterTable
ALTER TABLE "users" DROP COLUMN "idade",
DROP COLUMN "nome",
ADD COLUMN     "age" INTEGER NOT NULL,
ADD COLUMN     "name" VARCHAR(50) NOT NULL;

-- CreateTable
CREATE TABLE "products" (
    "uid" UUID NOT NULL,
    "nome" VARCHAR(50) NOT NULL,
    "description" VARCHAR(100) NOT NULL,
    "price" MONEY NOT NULL,
    "quantity" INTEGER NOT NULL,
    "type_product" VARCHAR(50) NOT NULL,
    "create_at" DATE NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" DATE NOT NULL,
    "available" "Available" NOT NULL,

    CONSTRAINT "products_pkey" PRIMARY KEY ("uid")
);

-- CreateTable
CREATE TABLE "stores" (
    "cnpj" CHAR(14) NOT NULL,
    "name" VARCHAR(50) NOT NULL,
    "segment" TEXT DEFAULT 'food',
    "address" TEXT NOT NULL,
    "phone" TEXT,
    "quantityBranches" INTEGER NOT NULL,
    "dateOpen" TIMESTAMP NOT NULL,
    "create_at" DATE NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" DATE NOT NULL,

    CONSTRAINT "stores_pkey" PRIMARY KEY ("cnpj")
);

-- CreateTable
CREATE TABLE "Supplier" (
    "uid" UUID NOT NULL,
    "name" VARCHAR(50) NOT NULL,
    "email" VARCHAR(100) NOT NULL,
    "rating" DECIMAL NOT NULL,
    "create_at" DATE NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Supplier_pkey" PRIMARY KEY ("uid")
);
