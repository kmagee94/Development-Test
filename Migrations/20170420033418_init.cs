using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Metadata;

namespace BestBidEnergy.Migrations
{
    public partial class init : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "AUCTIONS",
                columns: table => new
                {
                    AuctionID = table.Column<int>(nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.SerialColumn),
                    AuctionTime = table.Column<DateTime>(nullable: false),
                    ContractID = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AUCTIONS", x => x.AuctionID);
                });

            migrationBuilder.CreateTable(
                name: "BUYERS",
                columns: table => new
                {
                    Username = table.Column<string>(maxLength: 255, nullable: false),
                    Account_Num = table.Column<string>(maxLength: 255, nullable: false),
                    Account_Type = table.Column<string>(maxLength: 255, nullable: false),
                    Company = table.Column<string>(maxLength: 255, nullable: true),
                    Contact_Name = table.Column<string>(maxLength: 150, nullable: false),
                    Credit_Rating = table.Column<int>(nullable: false),
                    Email = table.Column<string>(maxLength: 255, nullable: false),
                    Phone = table.Column<string>(maxLength: 255, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BUYERS", x => x.Username);
                });

            migrationBuilder.CreateTable(
                name: "CONTRACTS",
                columns: table => new
                {
                    ContractId = table.Column<int>(maxLength: 1000000, nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.SerialColumn),
                    AvgkWh = table.Column<decimal>(nullable: false),
                    BuyerUsername = table.Column<string>(maxLength: 255, nullable: false),
                    City = table.Column<string>(maxLength: 255, nullable: false),
                    EndDate = table.Column<DateTime>(nullable: false),
                    Price = table.Column<decimal>(nullable: false),
                    StartDate = table.Column<DateTime>(maxLength: 255, nullable: false),
                    State = table.Column<string>(maxLength: 40, nullable: false),
                    Street = table.Column<string>(maxLength: 255, nullable: false),
                    SupplierUsername = table.Column<string>(nullable: true),
                    UtilityAccount = table.Column<string>(maxLength: 255, nullable: false),
                    UtilityArea = table.Column<string>(maxLength: 5, nullable: false),
                    Zip = table.Column<string>(maxLength: 40, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CONTRACTS", x => x.ContractId);
                });

            migrationBuilder.CreateTable(
                name: "SUPPLIERS",
                columns: table => new
                {
                    Username = table.Column<string>(maxLength: 255, nullable: false),
                    AccountNum = table.Column<string>(maxLength: 255, nullable: false),
                    Company = table.Column<string>(maxLength: 255, nullable: false),
                    Email = table.Column<string>(maxLength: 255, nullable: false),
                    Phone = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_SUPPLIERS", x => x.Username);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "AUCTIONS");

            migrationBuilder.DropTable(
                name: "BUYERS");

            migrationBuilder.DropTable(
                name: "CONTRACTS");

            migrationBuilder.DropTable(
                name: "SUPPLIERS");
        }
    }
}
