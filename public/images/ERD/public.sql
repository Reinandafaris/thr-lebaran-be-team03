/*
 Navicat Premium Data Transfer

 Source Server         : postgres_viery
 Source Server Type    : PostgreSQL
 Source Server Version : 160001 (160001)
 Source Host           : localhost:5432
 Source Catalog        : team3_be-final
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 160001 (160001)
 File Encoding         : 65001

 Date: 03/04/2024 12:26:23
*/


-- ----------------------------
-- Type structure for enum_Users_role
-- ----------------------------
DROP TYPE IF EXISTS "public"."enum_Users_role";
CREATE TYPE "public"."enum_Users_role" AS ENUM (
  'admin',
  'user'
);
ALTER TYPE "public"."enum_Users_role" OWNER TO "postgres";

-- ----------------------------
-- Table structure for Auths
-- ----------------------------
DROP TABLE IF EXISTS "public"."Auths";
CREATE TABLE "public"."Auths" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "userId" varchar(255) COLLATE "pg_catalog"."default",
  "email" varchar(255) COLLATE "pg_catalog"."default",
  "password" varchar(255) COLLATE "pg_catalog"."default",
  "confirmPassword" varchar(255) COLLATE "pg_catalog"."default",
  "createdAt" timestamptz(6) NOT NULL,
  "updatedAt" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Table structure for CategoryItems
-- ----------------------------
DROP TABLE IF EXISTS "public"."CategoryItems";
CREATE TABLE "public"."CategoryItems" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "createdAt" timestamptz(6) NOT NULL,
  "updatedAt" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Table structure for Companies
-- ----------------------------
DROP TABLE IF EXISTS "public"."Companies";
CREATE TABLE "public"."Companies" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "userId" varchar(255) COLLATE "pg_catalog"."default",
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "createdAt" timestamptz(6) NOT NULL,
  "updatedAt" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Table structure for Items
-- ----------------------------
DROP TABLE IF EXISTS "public"."Items";
CREATE TABLE "public"."Items" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "categoryId" varchar(255) COLLATE "pg_catalog"."default",
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "imageUrl" varchar(255) COLLATE "pg_catalog"."default",
  "imageId" varchar(255) COLLATE "pg_catalog"."default",
  "stock" int4,
  "price" float8,
  "createdAt" timestamptz(6) NOT NULL,
  "updatedAt" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Table structure for SequelizeMeta
-- ----------------------------
DROP TABLE IF EXISTS "public"."SequelizeMeta";
CREATE TABLE "public"."SequelizeMeta" (
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for Stocks
-- ----------------------------
DROP TABLE IF EXISTS "public"."Stocks";
CREATE TABLE "public"."Stocks" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "companyId" varchar(255) COLLATE "pg_catalog"."default",
  "itemId" varchar(255) COLLATE "pg_catalog"."default",
  "stock" int4,
  "createdAt" timestamptz(6) NOT NULL,
  "updatedAt" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Table structure for Users
-- ----------------------------
DROP TABLE IF EXISTS "public"."Users";
CREATE TABLE "public"."Users" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "companyId" varchar(255) COLLATE "pg_catalog"."default",
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "role" "public"."enum_Users_role",
  "imageUrl" varchar(255) COLLATE "pg_catalog"."default",
  "imageId" varchar(255) COLLATE "pg_catalog"."default",
  "createdAt" timestamptz(6) NOT NULL,
  "updatedAt" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Uniques structure for table Auths
-- ----------------------------
ALTER TABLE "public"."Auths" ADD CONSTRAINT "Auths_email_key" UNIQUE ("email");

-- ----------------------------
-- Primary Key structure for table Auths
-- ----------------------------
ALTER TABLE "public"."Auths" ADD CONSTRAINT "Auths_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table CategoryItems
-- ----------------------------
ALTER TABLE "public"."CategoryItems" ADD CONSTRAINT "CategoryItems_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table Companies
-- ----------------------------
ALTER TABLE "public"."Companies" ADD CONSTRAINT "Companies_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table Items
-- ----------------------------
ALTER TABLE "public"."Items" ADD CONSTRAINT "Items_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table SequelizeMeta
-- ----------------------------
ALTER TABLE "public"."SequelizeMeta" ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY ("name");

-- ----------------------------
-- Primary Key structure for table Stocks
-- ----------------------------
ALTER TABLE "public"."Stocks" ADD CONSTRAINT "Stocks_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table Users
-- ----------------------------
ALTER TABLE "public"."Users" ADD CONSTRAINT "Users_pkey" PRIMARY KEY ("id");
