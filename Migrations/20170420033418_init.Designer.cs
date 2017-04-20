using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using BestBidEnergy.Data;

namespace BestBidEnergy.Migrations
{
    [DbContext(typeof(BestBidEnergyContext))]
    [Migration("20170420033418_init")]
    partial class init
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
            modelBuilder
                .HasAnnotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.SerialColumn)
                .HasAnnotation("ProductVersion", "1.1.0-rtm-22752");

            modelBuilder.Entity("BestBidEnergy.Models.Auction", b =>
                {
                    b.Property<int>("AuctionID")
                        .ValueGeneratedOnAdd();

                    b.Property<DateTime>("AuctionTime");

                    b.Property<int>("ContractID");

                    b.HasKey("AuctionID");

                    b.ToTable("AUCTIONS");
                });

            modelBuilder.Entity("BestBidEnergy.Models.Buyer", b =>
                {
                    b.Property<string>("Username")
                        .ValueGeneratedOnAdd()
                        .HasMaxLength(255);

                    b.Property<string>("Account_Num")
                        .IsRequired()
                        .HasMaxLength(255);

                    b.Property<string>("Account_Type")
                        .IsRequired()
                        .HasMaxLength(255);

                    b.Property<string>("Company")
                        .HasMaxLength(255);

                    b.Property<string>("Contact_Name")
                        .IsRequired()
                        .HasMaxLength(150);

                    b.Property<int>("Credit_Rating");

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasMaxLength(255);

                    b.Property<string>("Phone")
                        .HasMaxLength(255);

                    b.HasKey("Username");

                    b.ToTable("BUYERS");
                });

            modelBuilder.Entity("BestBidEnergy.Models.Contract", b =>
                {
                    b.Property<int>("ContractId")
                        .ValueGeneratedOnAdd()
                        .HasMaxLength(1000000);

                    b.Property<decimal>("AvgkWh");

                    b.Property<string>("BuyerUsername")
                        .IsRequired()
                        .HasMaxLength(255);

                    b.Property<string>("City")
                        .IsRequired()
                        .HasMaxLength(255);

                    b.Property<DateTime>("EndDate");

                    b.Property<decimal>("Price");

                    b.Property<DateTime>("StartDate")
                        .HasMaxLength(255);

                    b.Property<string>("State")
                        .IsRequired()
                        .HasMaxLength(40);

                    b.Property<string>("Street")
                        .IsRequired()
                        .HasMaxLength(255);

                    b.Property<string>("SupplierUsername");

                    b.Property<string>("UtilityAccount")
                        .IsRequired()
                        .HasMaxLength(255);

                    b.Property<string>("UtilityArea")
                        .IsRequired()
                        .HasMaxLength(5);

                    b.Property<string>("Zip")
                        .IsRequired()
                        .HasMaxLength(40);

                    b.HasKey("ContractId");

                    b.ToTable("CONTRACTS");
                });

            modelBuilder.Entity("BestBidEnergy.Models.Supplier", b =>
                {
                    b.Property<string>("Username")
                        .ValueGeneratedOnAdd()
                        .HasMaxLength(255);

                    b.Property<string>("AccountNum")
                        .IsRequired()
                        .HasMaxLength(255);

                    b.Property<string>("Company")
                        .IsRequired()
                        .HasMaxLength(255);

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasMaxLength(255);

                    b.Property<string>("Phone");

                    b.HasKey("Username");

                    b.ToTable("SUPPLIERS");
                });
        }
    }
}
