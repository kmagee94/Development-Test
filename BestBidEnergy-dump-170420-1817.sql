--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: AUCTIONS; Type: TABLE; Schema: public; Owner: BestBidEnergy-Admin
--

CREATE TABLE "AUCTIONS" (
    "AuctionID" integer NOT NULL,
    "AuctionTime" timestamp without time zone NOT NULL,
    "ContractID" integer NOT NULL
);


ALTER TABLE "AUCTIONS" OWNER TO "BestBidEnergy-Admin";

--
-- Name: AUCTIONS_AuctionID_seq; Type: SEQUENCE; Schema: public; Owner: BestBidEnergy-Admin
--

CREATE SEQUENCE "AUCTIONS_AuctionID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AUCTIONS_AuctionID_seq" OWNER TO "BestBidEnergy-Admin";

--
-- Name: AUCTIONS_AuctionID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: BestBidEnergy-Admin
--

ALTER SEQUENCE "AUCTIONS_AuctionID_seq" OWNED BY "AUCTIONS"."AuctionID";


--
-- Name: AspNetRoleClaims; Type: TABLE; Schema: public; Owner: BestBidEnergy-Admin
--

CREATE TABLE "AspNetRoleClaims" (
    "Id" integer NOT NULL,
    "ClaimType" text,
    "ClaimValue" text,
    "RoleId" text NOT NULL
);


ALTER TABLE "AspNetRoleClaims" OWNER TO "BestBidEnergy-Admin";

--
-- Name: AspNetRoleClaims_Id_seq; Type: SEQUENCE; Schema: public; Owner: BestBidEnergy-Admin
--

CREATE SEQUENCE "AspNetRoleClaims_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AspNetRoleClaims_Id_seq" OWNER TO "BestBidEnergy-Admin";

--
-- Name: AspNetRoleClaims_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: BestBidEnergy-Admin
--

ALTER SEQUENCE "AspNetRoleClaims_Id_seq" OWNED BY "AspNetRoleClaims"."Id";


--
-- Name: AspNetRoles; Type: TABLE; Schema: public; Owner: BestBidEnergy-Admin
--

CREATE TABLE "AspNetRoles" (
    "Id" text NOT NULL,
    "ConcurrencyStamp" text,
    "Name" character varying(256),
    "NormalizedName" character varying(256)
);


ALTER TABLE "AspNetRoles" OWNER TO "BestBidEnergy-Admin";

--
-- Name: AspNetUserClaims; Type: TABLE; Schema: public; Owner: BestBidEnergy-Admin
--

CREATE TABLE "AspNetUserClaims" (
    "Id" integer NOT NULL,
    "ClaimType" text,
    "ClaimValue" text,
    "UserId" text NOT NULL
);


ALTER TABLE "AspNetUserClaims" OWNER TO "BestBidEnergy-Admin";

--
-- Name: AspNetUserClaims_Id_seq; Type: SEQUENCE; Schema: public; Owner: BestBidEnergy-Admin
--

CREATE SEQUENCE "AspNetUserClaims_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AspNetUserClaims_Id_seq" OWNER TO "BestBidEnergy-Admin";

--
-- Name: AspNetUserClaims_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: BestBidEnergy-Admin
--

ALTER SEQUENCE "AspNetUserClaims_Id_seq" OWNED BY "AspNetUserClaims"."Id";


--
-- Name: AspNetUserLogins; Type: TABLE; Schema: public; Owner: BestBidEnergy-Admin
--

CREATE TABLE "AspNetUserLogins" (
    "LoginProvider" text NOT NULL,
    "ProviderKey" text NOT NULL,
    "ProviderDisplayName" text,
    "UserId" text NOT NULL
);


ALTER TABLE "AspNetUserLogins" OWNER TO "BestBidEnergy-Admin";

--
-- Name: AspNetUserRoles; Type: TABLE; Schema: public; Owner: BestBidEnergy-Admin
--

CREATE TABLE "AspNetUserRoles" (
    "UserId" text NOT NULL,
    "RoleId" text NOT NULL
);


ALTER TABLE "AspNetUserRoles" OWNER TO "BestBidEnergy-Admin";

--
-- Name: AspNetUserTokens; Type: TABLE; Schema: public; Owner: BestBidEnergy-Admin
--

CREATE TABLE "AspNetUserTokens" (
    "UserId" text NOT NULL,
    "LoginProvider" text NOT NULL,
    "Name" text NOT NULL,
    "Value" text
);


ALTER TABLE "AspNetUserTokens" OWNER TO "BestBidEnergy-Admin";

--
-- Name: AspNetUsers; Type: TABLE; Schema: public; Owner: BestBidEnergy-Admin
--

CREATE TABLE "AspNetUsers" (
    "Id" text NOT NULL,
    "AccessFailedCount" integer NOT NULL,
    "ConcurrencyStamp" text,
    "Email" character varying(256),
    "EmailConfirmed" boolean NOT NULL,
    "LockoutEnabled" boolean NOT NULL,
    "LockoutEnd" timestamp with time zone,
    "NormalizedEmail" character varying(256),
    "NormalizedUserName" character varying(256),
    "PasswordHash" text,
    "PhoneNumber" text,
    "PhoneNumberConfirmed" boolean NOT NULL,
    "SecurityStamp" text,
    "TwoFactorEnabled" boolean NOT NULL,
    "UserName" character varying(256)
);


ALTER TABLE "AspNetUsers" OWNER TO "BestBidEnergy-Admin";

--
-- Name: BUYERS; Type: TABLE; Schema: public; Owner: BestBidEnergy-Admin
--

CREATE TABLE "BUYERS" (
    "Username" character varying(255) NOT NULL,
    "Account_Num" character varying(255) NOT NULL,
    "Account_Type" character varying(255) NOT NULL,
    "Company" character varying(255),
    "Contact_Name" character varying(150) NOT NULL,
    "Credit_Rating" integer NOT NULL,
    "Phone" character varying(255)
);


ALTER TABLE "BUYERS" OWNER TO "BestBidEnergy-Admin";

--
-- Name: CONTRACTS; Type: TABLE; Schema: public; Owner: BestBidEnergy-Admin
--

CREATE TABLE "CONTRACTS" (
    "ContractId" integer NOT NULL,
    "AvgkWh" numeric NOT NULL,
    "BuyerUsername" character varying(255) NOT NULL,
    "City" character varying(255) NOT NULL,
    "EndDate" timestamp without time zone NOT NULL,
    "Price" numeric NOT NULL,
    "StartDate" timestamp without time zone NOT NULL,
    "State" character varying(40) NOT NULL,
    "Street" character varying(255) NOT NULL,
    "SupplierUsername" text,
    "UtilityAccount" character varying(255) NOT NULL,
    "UtilityArea" character varying(255) NOT NULL,
    "Zip" character varying(5) NOT NULL
);


ALTER TABLE "CONTRACTS" OWNER TO "BestBidEnergy-Admin";

--
-- Name: CONTRACTS_ContractId_seq; Type: SEQUENCE; Schema: public; Owner: BestBidEnergy-Admin
--

CREATE SEQUENCE "CONTRACTS_ContractId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "CONTRACTS_ContractId_seq" OWNER TO "BestBidEnergy-Admin";

--
-- Name: CONTRACTS_ContractId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: BestBidEnergy-Admin
--

ALTER SEQUENCE "CONTRACTS_ContractId_seq" OWNED BY "CONTRACTS"."ContractId";


--
-- Name: SUPPLIERS; Type: TABLE; Schema: public; Owner: BestBidEnergy-Admin
--

CREATE TABLE "SUPPLIERS" (
    "Username" character varying(255) NOT NULL,
    "AccountNum" character varying(255) NOT NULL,
    "Company" character varying(255) NOT NULL,
    "Email" character varying(255) NOT NULL,
    "Phone" text
);


ALTER TABLE "SUPPLIERS" OWNER TO "BestBidEnergy-Admin";

--
-- Name: __EFMigrationsHistory; Type: TABLE; Schema: public; Owner: BestBidEnergy-Admin
--

CREATE TABLE "__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);


ALTER TABLE "__EFMigrationsHistory" OWNER TO "BestBidEnergy-Admin";

--
-- Name: AUCTIONS AuctionID; Type: DEFAULT; Schema: public; Owner: BestBidEnergy-Admin
--

ALTER TABLE ONLY "AUCTIONS" ALTER COLUMN "AuctionID" SET DEFAULT nextval('"AUCTIONS_AuctionID_seq"'::regclass);


--
-- Name: AspNetRoleClaims Id; Type: DEFAULT; Schema: public; Owner: BestBidEnergy-Admin
--

ALTER TABLE ONLY "AspNetRoleClaims" ALTER COLUMN "Id" SET DEFAULT nextval('"AspNetRoleClaims_Id_seq"'::regclass);


--
-- Name: AspNetUserClaims Id; Type: DEFAULT; Schema: public; Owner: BestBidEnergy-Admin
--

ALTER TABLE ONLY "AspNetUserClaims" ALTER COLUMN "Id" SET DEFAULT nextval('"AspNetUserClaims_Id_seq"'::regclass);


--
-- Name: CONTRACTS ContractId; Type: DEFAULT; Schema: public; Owner: BestBidEnergy-Admin
--

ALTER TABLE ONLY "CONTRACTS" ALTER COLUMN "ContractId" SET DEFAULT nextval('"CONTRACTS_ContractId_seq"'::regclass);


--
-- Data for Name: AUCTIONS; Type: TABLE DATA; Schema: public; Owner: BestBidEnergy-Admin
--

COPY "AUCTIONS" ("AuctionID", "AuctionTime", "ContractID") FROM stdin;
\.


--
-- Name: AUCTIONS_AuctionID_seq; Type: SEQUENCE SET; Schema: public; Owner: BestBidEnergy-Admin
--

SELECT pg_catalog.setval('"AUCTIONS_AuctionID_seq"', 1, false);


--
-- Data for Name: AspNetRoleClaims; Type: TABLE DATA; Schema: public; Owner: BestBidEnergy-Admin
--

COPY "AspNetRoleClaims" ("Id", "ClaimType", "ClaimValue", "RoleId") FROM stdin;
\.


--
-- Name: AspNetRoleClaims_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: BestBidEnergy-Admin
--

SELECT pg_catalog.setval('"AspNetRoleClaims_Id_seq"', 1, false);


--
-- Data for Name: AspNetRoles; Type: TABLE DATA; Schema: public; Owner: BestBidEnergy-Admin
--

COPY "AspNetRoles" ("Id", "ConcurrencyStamp", "Name", "NormalizedName") FROM stdin;
1	\N	Admins	Admins
2	\N	Buyers	Buyers
3	\N	Suppliers	Suppliers
\.


--
-- Data for Name: AspNetUserClaims; Type: TABLE DATA; Schema: public; Owner: BestBidEnergy-Admin
--

COPY "AspNetUserClaims" ("Id", "ClaimType", "ClaimValue", "UserId") FROM stdin;
\.


--
-- Name: AspNetUserClaims_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: BestBidEnergy-Admin
--

SELECT pg_catalog.setval('"AspNetUserClaims_Id_seq"', 1, false);


--
-- Data for Name: AspNetUserLogins; Type: TABLE DATA; Schema: public; Owner: BestBidEnergy-Admin
--

COPY "AspNetUserLogins" ("LoginProvider", "ProviderKey", "ProviderDisplayName", "UserId") FROM stdin;
\.


--
-- Data for Name: AspNetUserRoles; Type: TABLE DATA; Schema: public; Owner: BestBidEnergy-Admin
--

COPY "AspNetUserRoles" ("UserId", "RoleId") FROM stdin;
8a64ed10-8e71-4f24-8e95-f30efc4881f9	1
a451aa3f-75bd-4a9a-85d1-37357e2e4d39	2
67c63a67-0675-4d51-bad7-fd9bb3377d2f	2
6d787074-c875-4add-b2f5-8d6d5361db4b	3
20f849e6-1ea0-4c86-8fbf-4889641c2df5	3
\.


--
-- Data for Name: AspNetUserTokens; Type: TABLE DATA; Schema: public; Owner: BestBidEnergy-Admin
--

COPY "AspNetUserTokens" ("UserId", "LoginProvider", "Name", "Value") FROM stdin;
\.


--
-- Data for Name: AspNetUsers; Type: TABLE DATA; Schema: public; Owner: BestBidEnergy-Admin
--

COPY "AspNetUsers" ("Id", "AccessFailedCount", "ConcurrencyStamp", "Email", "EmailConfirmed", "LockoutEnabled", "LockoutEnd", "NormalizedEmail", "NormalizedUserName", "PasswordHash", "PhoneNumber", "PhoneNumberConfirmed", "SecurityStamp", "TwoFactorEnabled", "UserName") FROM stdin;
a451aa3f-75bd-4a9a-85d1-37357e2e4d39	0	076d9f18-d3c4-407f-a01b-470fe3fdfe3d	Buyer1@email.com	f	t	\N	BUYER1@EMAIL.COM	BUYER1@EMAIL.COM	AQAAAAEAACcQAAAAEIpL417ahJaoq9Y9aTwBZjvZurk+xyM9W4FQ45ehBS+Az+Dyd43XsE5632VkuIlJdg==	\N	f	5b28439b-8da5-4387-8a6f-77db0facc185	f	Buyer1@email.com
67c63a67-0675-4d51-bad7-fd9bb3377d2f	0	74f6ee46-53e2-4bed-94c8-a169d59f36d0	Buyer2@email.com	f	t	\N	BUYER2@EMAIL.COM	BUYER2@EMAIL.COM	AQAAAAEAACcQAAAAEPzlORyYZhBdGz2xKMTv3OTtFjZOuR1zamJvI7IuCB9/kMwru+ZuL8rPY4aSRMFP6A==	\N	f	3977b508-1ab4-44bf-8b82-b26b53afc5c9	f	Buyer2@email.com
6d787074-c875-4add-b2f5-8d6d5361db4b	0	21373ea3-4f52-4e2c-8e9c-266248f88c45	Supplier1@email.com	f	t	\N	SUPPLIER1@EMAIL.COM	SUPPLIER1@EMAIL.COM	AQAAAAEAACcQAAAAEGfXNxmUmoH5gCJuJEeWliwtcIsjje2CfJ0UPPNecVqcL/pluWzIrXcG5MHVhqRLUw==	\N	f	fbded267-4ccc-4d07-b1e7-589b0500a650	f	Supplier1@email.com
20f849e6-1ea0-4c86-8fbf-4889641c2df5	0	db0c60d2-3313-4e44-9d58-c98cfb16d028	Supplier2@email.com	f	t	\N	SUPPLIER2@EMAIL.COM	SUPPLIER2@EMAIL.COM	AQAAAAEAACcQAAAAENfZ3smu1grGw0pZJKCyiOINWE6y2f4pWYa2rg4jZNJDhHwlTWeKHn/LHtwJU5A1ZQ==	\N	f	bfe1c7b3-47a4-4c3a-8795-718b063327a3	f	Supplier2@email.com
8a64ed10-8e71-4f24-8e95-f30efc4881f9	0	f0ba9019-527a-45f8-8144-5756246f3a99	Admin@email.com	f	t	\N	ADMIN@EMAIL.COM	ADMIN@EMAIL.COM	AQAAAAEAACcQAAAAEOHr/PLgz/Ss/S0Ovw6FlA+BiTEaq9uOqxqSm59q24qD5346r6hQW+15ZdnL3bRi6g==	\N	f	516d6b64-e401-44cb-9c4b-f0f9a2aa4435	f	Admin@email.com
\.


--
-- Data for Name: BUYERS; Type: TABLE DATA; Schema: public; Owner: BestBidEnergy-Admin
--

COPY "BUYERS" ("Username", "Account_Num", "Account_Type", "Company", "Contact_Name", "Credit_Rating", "Phone") FROM stdin;
a451aa3f-75bd-4a9a-85d1-37357e2e4d39	B0001	Residential	\N	John Smith	703	513-555-0529
67c63a67-0675-4d51-bad7-fd9bb3377d2f	B0002	Commercial	Local Manufacturing Company	Betty DeRose	830	614-555-6258
\.


--
-- Data for Name: CONTRACTS; Type: TABLE DATA; Schema: public; Owner: BestBidEnergy-Admin
--

COPY "CONTRACTS" ("ContractId", "AvgkWh", "BuyerUsername", "City", "EndDate", "Price", "StartDate", "State", "Street", "SupplierUsername", "UtilityAccount", "UtilityArea", "Zip") FROM stdin;
2	3500	a451aa3f-75bd-4a9a-85d1-37357e2e4d39	Cincinnati	2018-06-01 00:00:00	0.07230	2017-06-01 00:00:00	OH	5352 N Winchester Rd	\N	6512-4625-6485-5132	Duke Energy	45244
3	153038	67c63a67-0675-4d51-bad7-fd9bb3377d2f	Columbus	2018-07-01 00:00:00	0.06931	2017-07-01 00:00:00	OH	6485 W Lane Ave	\N	165385645	AEP Ohio	43201
1	3500	a451aa3f-75bd-4a9a-85d1-37357e2e4d39	Cincinnati	2017-06-01 00:00:00	0.07130	2016-06-01 00:00:00	OH	5352 N Winchester Rd	6d787074-c875-4add-b2f5-8d6d5361db4b	6512-4625-6485-5132	Duke Energy	45244
\.


--
-- Name: CONTRACTS_ContractId_seq; Type: SEQUENCE SET; Schema: public; Owner: BestBidEnergy-Admin
--

SELECT pg_catalog.setval('"CONTRACTS_ContractId_seq"', 1, false);


--
-- Data for Name: SUPPLIERS; Type: TABLE DATA; Schema: public; Owner: BestBidEnergy-Admin
--

COPY "SUPPLIERS" ("Username", "AccountNum", "Company", "Email", "Phone") FROM stdin;
6d787074-c875-4add-b2f5-8d6d5361db4b	614-555-3698	S0001	Constellation New Energy	\N
20f849e6-1ea0-4c86-8fbf-4889641c2df5	614-555-9425	S0001	Direct Energy	\N
\.


--
-- Data for Name: __EFMigrationsHistory; Type: TABLE DATA; Schema: public; Owner: BestBidEnergy-Admin
--

COPY "__EFMigrationsHistory" ("MigrationId", "ProductVersion") FROM stdin;
20170420033418_init	1.1.1
20170420043647_identity	1.1.1
\.


--
-- Name: AUCTIONS PK_AUCTIONS; Type: CONSTRAINT; Schema: public; Owner: BestBidEnergy-Admin
--

ALTER TABLE ONLY "AUCTIONS"
    ADD CONSTRAINT "PK_AUCTIONS" PRIMARY KEY ("AuctionID");


--
-- Name: AspNetRoleClaims PK_AspNetRoleClaims; Type: CONSTRAINT; Schema: public; Owner: BestBidEnergy-Admin
--

ALTER TABLE ONLY "AspNetRoleClaims"
    ADD CONSTRAINT "PK_AspNetRoleClaims" PRIMARY KEY ("Id");


--
-- Name: AspNetRoles PK_AspNetRoles; Type: CONSTRAINT; Schema: public; Owner: BestBidEnergy-Admin
--

ALTER TABLE ONLY "AspNetRoles"
    ADD CONSTRAINT "PK_AspNetRoles" PRIMARY KEY ("Id");


--
-- Name: AspNetUserClaims PK_AspNetUserClaims; Type: CONSTRAINT; Schema: public; Owner: BestBidEnergy-Admin
--

ALTER TABLE ONLY "AspNetUserClaims"
    ADD CONSTRAINT "PK_AspNetUserClaims" PRIMARY KEY ("Id");


--
-- Name: AspNetUserLogins PK_AspNetUserLogins; Type: CONSTRAINT; Schema: public; Owner: BestBidEnergy-Admin
--

ALTER TABLE ONLY "AspNetUserLogins"
    ADD CONSTRAINT "PK_AspNetUserLogins" PRIMARY KEY ("LoginProvider", "ProviderKey");


--
-- Name: AspNetUserRoles PK_AspNetUserRoles; Type: CONSTRAINT; Schema: public; Owner: BestBidEnergy-Admin
--

ALTER TABLE ONLY "AspNetUserRoles"
    ADD CONSTRAINT "PK_AspNetUserRoles" PRIMARY KEY ("UserId", "RoleId");


--
-- Name: AspNetUserTokens PK_AspNetUserTokens; Type: CONSTRAINT; Schema: public; Owner: BestBidEnergy-Admin
--

ALTER TABLE ONLY "AspNetUserTokens"
    ADD CONSTRAINT "PK_AspNetUserTokens" PRIMARY KEY ("UserId", "LoginProvider", "Name");


--
-- Name: AspNetUsers PK_AspNetUsers; Type: CONSTRAINT; Schema: public; Owner: BestBidEnergy-Admin
--

ALTER TABLE ONLY "AspNetUsers"
    ADD CONSTRAINT "PK_AspNetUsers" PRIMARY KEY ("Id");


--
-- Name: BUYERS PK_BUYERS; Type: CONSTRAINT; Schema: public; Owner: BestBidEnergy-Admin
--

ALTER TABLE ONLY "BUYERS"
    ADD CONSTRAINT "PK_BUYERS" PRIMARY KEY ("Username");


--
-- Name: CONTRACTS PK_CONTRACTS; Type: CONSTRAINT; Schema: public; Owner: BestBidEnergy-Admin
--

ALTER TABLE ONLY "CONTRACTS"
    ADD CONSTRAINT "PK_CONTRACTS" PRIMARY KEY ("ContractId");


--
-- Name: SUPPLIERS PK_SUPPLIERS; Type: CONSTRAINT; Schema: public; Owner: BestBidEnergy-Admin
--

ALTER TABLE ONLY "SUPPLIERS"
    ADD CONSTRAINT "PK_SUPPLIERS" PRIMARY KEY ("Username");


--
-- Name: __EFMigrationsHistory PK___EFMigrationsHistory; Type: CONSTRAINT; Schema: public; Owner: BestBidEnergy-Admin
--

ALTER TABLE ONLY "__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");


--
-- Name: EmailIndex; Type: INDEX; Schema: public; Owner: BestBidEnergy-Admin
--

CREATE INDEX "EmailIndex" ON "AspNetUsers" USING btree ("NormalizedEmail");


--
-- Name: IX_AspNetRoleClaims_RoleId; Type: INDEX; Schema: public; Owner: BestBidEnergy-Admin
--

CREATE INDEX "IX_AspNetRoleClaims_RoleId" ON "AspNetRoleClaims" USING btree ("RoleId");


--
-- Name: IX_AspNetUserClaims_UserId; Type: INDEX; Schema: public; Owner: BestBidEnergy-Admin
--

CREATE INDEX "IX_AspNetUserClaims_UserId" ON "AspNetUserClaims" USING btree ("UserId");


--
-- Name: IX_AspNetUserLogins_UserId; Type: INDEX; Schema: public; Owner: BestBidEnergy-Admin
--

CREATE INDEX "IX_AspNetUserLogins_UserId" ON "AspNetUserLogins" USING btree ("UserId");


--
-- Name: IX_AspNetUserRoles_RoleId; Type: INDEX; Schema: public; Owner: BestBidEnergy-Admin
--

CREATE INDEX "IX_AspNetUserRoles_RoleId" ON "AspNetUserRoles" USING btree ("RoleId");


--
-- Name: RoleNameIndex; Type: INDEX; Schema: public; Owner: BestBidEnergy-Admin
--

CREATE UNIQUE INDEX "RoleNameIndex" ON "AspNetRoles" USING btree ("NormalizedName");


--
-- Name: UserNameIndex; Type: INDEX; Schema: public; Owner: BestBidEnergy-Admin
--

CREATE UNIQUE INDEX "UserNameIndex" ON "AspNetUsers" USING btree ("NormalizedUserName");


--
-- Name: AspNetRoleClaims FK_AspNetRoleClaims_AspNetRoles_RoleId; Type: FK CONSTRAINT; Schema: public; Owner: BestBidEnergy-Admin
--

ALTER TABLE ONLY "AspNetRoleClaims"
    ADD CONSTRAINT "FK_AspNetRoleClaims_AspNetRoles_RoleId" FOREIGN KEY ("RoleId") REFERENCES "AspNetRoles"("Id") ON DELETE CASCADE;


--
-- Name: AspNetUserClaims FK_AspNetUserClaims_AspNetUsers_UserId; Type: FK CONSTRAINT; Schema: public; Owner: BestBidEnergy-Admin
--

ALTER TABLE ONLY "AspNetUserClaims"
    ADD CONSTRAINT "FK_AspNetUserClaims_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES "AspNetUsers"("Id") ON DELETE CASCADE;


--
-- Name: AspNetUserLogins FK_AspNetUserLogins_AspNetUsers_UserId; Type: FK CONSTRAINT; Schema: public; Owner: BestBidEnergy-Admin
--

ALTER TABLE ONLY "AspNetUserLogins"
    ADD CONSTRAINT "FK_AspNetUserLogins_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES "AspNetUsers"("Id") ON DELETE CASCADE;


--
-- Name: AspNetUserRoles FK_AspNetUserRoles_AspNetRoles_RoleId; Type: FK CONSTRAINT; Schema: public; Owner: BestBidEnergy-Admin
--

ALTER TABLE ONLY "AspNetUserRoles"
    ADD CONSTRAINT "FK_AspNetUserRoles_AspNetRoles_RoleId" FOREIGN KEY ("RoleId") REFERENCES "AspNetRoles"("Id") ON DELETE CASCADE;


--
-- Name: AspNetUserRoles FK_AspNetUserRoles_AspNetUsers_UserId; Type: FK CONSTRAINT; Schema: public; Owner: BestBidEnergy-Admin
--

ALTER TABLE ONLY "AspNetUserRoles"
    ADD CONSTRAINT "FK_AspNetUserRoles_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES "AspNetUsers"("Id") ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

