﻿using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

#pragma warning disable CA1814 // Prefer jagged arrays over multidimensional

namespace Cursus.LMS.DataAccess.Migrations
{
    /// <inheritdoc />
    public partial class RemoveTablePaymentCard : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "PaymentCards");

            migrationBuilder.DeleteData(
                table: "EmailTemplates",
                keyColumn: "Id",
                keyValue: new Guid("1ba44611-118a-4129-b473-75fb0e61897e"));

            migrationBuilder.DeleteData(
                table: "EmailTemplates",
                keyColumn: "Id",
                keyValue: new Guid("1d5a00c0-9190-42e7-99aa-048e500ac95f"));

            migrationBuilder.DeleteData(
                table: "EmailTemplates",
                keyColumn: "Id",
                keyValue: new Guid("1eadc563-e8bf-45e3-9c3d-0f192e40fe0d"));

            migrationBuilder.DeleteData(
                table: "EmailTemplates",
                keyColumn: "Id",
                keyValue: new Guid("4d55f74b-e236-4e55-9900-6f2e3c7cad8d"));

            migrationBuilder.DeleteData(
                table: "EmailTemplates",
                keyColumn: "Id",
                keyValue: new Guid("862301e4-4633-4a44-b6b9-1bdb611dd50c"));

            migrationBuilder.DeleteData(
                table: "EmailTemplates",
                keyColumn: "Id",
                keyValue: new Guid("8745a080-e332-4605-aad5-772b8358c3b3"));

            migrationBuilder.DeleteData(
                table: "EmailTemplates",
                keyColumn: "Id",
                keyValue: new Guid("935959e5-06e1-449d-b4e9-4945d91ca987"));

            migrationBuilder.DeleteData(
                table: "EmailTemplates",
                keyColumn: "Id",
                keyValue: new Guid("a52150d2-443e-4dd9-8f4d-ab9e50c3f798"));

            migrationBuilder.DeleteData(
                table: "EmailTemplates",
                keyColumn: "Id",
                keyValue: new Guid("c091a394-e03d-4bc2-840b-1b25b8dfd677"));

            migrationBuilder.DeleteData(
                table: "EmailTemplates",
                keyColumn: "Id",
                keyValue: new Guid("e756972c-af01-48f4-95cd-cc3a77a80a67"));

            migrationBuilder.DeleteData(
                table: "EmailTemplates",
                keyColumn: "Id",
                keyValue: new Guid("eb5346de-1631-4b1f-a155-8182e6192f41"));

            migrationBuilder.DeleteData(
                table: "EmailTemplates",
                keyColumn: "Id",
                keyValue: new Guid("f89e800f-726b-4c26-9090-301a90105723"));

            migrationBuilder.DeleteData(
                table: "EmailTemplates",
                keyColumn: "Id",
                keyValue: new Guid("ffc92d36-a64e-4ba2-9feb-ec3cb1d1ef63"));

            migrationBuilder.UpdateData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "BestZedAndYasuo",
                columns: new[] { "ConcurrencyStamp", "CreateTime", "PasswordHash", "SecurityStamp" },
                values: new object[] { "356727c4-86e9-4564-8f9e-0e8ddcaa02a2", new DateTime(2024, 7, 29, 5, 41, 24, 686, DateTimeKind.Utc).AddTicks(1020), "AQAAAAIAAYagAAAAELstZRWymiblaEkuWKAczllxIXV2/qB3m9GlLJFp9tZmKiXNIh+LN4aSMotaj1XVmA==", "d13587c5-68d3-48f9-9d61-3a540054ff5f" });

            migrationBuilder.InsertData(
                table: "EmailTemplates",
                columns: new[] { "Id", "BodyContent", "CallToAction", "Category", "CreatedBy", "CreatedTime", "FooterContent", "Language", "PersonalizationTags", "PreHeaderText", "RecipientType", "SenderEmail", "SenderName", "Status", "SubjectLine", "TemplateName", "UpdatedBy", "UpdatedTime" },
                values: new object[,]
                {
                    { new Guid("0bbc7851-e037-4c06-8bd3-42acaa2f5473"), "Dear {FirstName} {LastName},<br><br>\r\n\r\n                    This email confirms that your payout request has been processed successfully.\r\n                    <br>\r\n                    <strong>Payout Details:</strong>\r\n                    <ul>\r\n                    <li>Amount: {PayoutAmount}</li>\r\n                    <li>Transaction Date: {TransactionDate}</li> \r\n                    </ul>\r\n                    <br>\r\n                    You can view your payout history in your instructor dashboard. \r\n                    <br> \r\n                    Thank you for being a valued Cursus instructor!\r\n                    <br>", "<a href=\"https://cursuslms.xyz/user/sign-in\">Login</a>", "Payout", null, null, "<p>Contact us at cursusservicetts@gmail.com</p>", "English", "{FirstName}, {LastName}, {PayoutAmount}, {TransactionDate}", "Payout Successful!", "Customer", "cursusservicetts@gmail.com", "Cursus Team", 1, "Your Cursus Payout is Complete!", "NotifyInstructorPaymentReceived", null, null },
                    { new Guid("38a27169-b02b-4069-8cd2-d3c4f3cad1d2"), "Dear [UserFullName],<br><br>Welcome to Cursus! We are excited to have you join our learning community.", "<a href=\"https://cursuslms.xyz/user/sign-in\">Login</a>", "Welcome", null, null, "<p>Contact us at cursusservicetts@gmail.com</p>", "English", "{FirstName}, {LastName}", "Thank you for signing up!", "Customer", "cursusservicetts@gmail.com", "Cursus Team", 1, "Welcome to Cursus!", "WelcomeEmail", null, null },
                    { new Guid("486fc5c4-3c55-4838-98a1-210a8e25d36d"), "Dear [UserFullName],<br><br>Your account will be deleted after 14 days.", "<a href=\"https://cursuslms.xyz/user/sign-in\">Login</a>", "Course completed", null, null, "<p>Contact us at cursusservicetts@gmail.com</p>", "English", "{FirstName}, {LastName}", "Hello!", "Customer", "cursusservicetts@gmail.com", "Cursus Team", 1, "Congratulations on completing the course!", "StudentCompleteCourse", null, null },
                    { new Guid("5432e952-72d2-4480-b27e-4a725ccf2c3e"), "<p>Hello {FirstName},</p><p>Click <a href=\"{ResetLink}\">here</a> to reset your password.</p>", "<a href=\"{{ResetLink}}\">Reset Password</a>", "Security", null, null, "<p>Contact us at cursusservicetts@gmail.com</p>", "English", "{FirstName}, {ResetLink}", "Reset your password to regain access.", "Customer", "cursusservicetts@gmail.com", "Cursus Team", 1, "Reset Your Password", "ChangePassword", null, null },
                    { new Guid("5612edb0-f8b7-4cf0-ab53-f667491c6f35"), "Hi [UserFullName],<br><br>We received a request to reset your password. Click the link below to reset your password.", "https://cursuslms.xyz/sign-in/verify-email?userId=user.Id&token=Uri.EscapeDataString(token)", "Security", null, null, "If you did not request a password reset, please ignore this email.", "English", "[UserFullName], [ResetPasswordLink]", "Reset your password to regain access", "Customer", "cursusservicetts@gmail.com", "Cursus Team", 1, "Reset Your Password", "ForgotPasswordEmail", null, null },
                    { new Guid("5b6ddbd4-bb0d-423f-9053-d0d36e43db6e"), "<p>Your {courseTitle} course led by {instructorName} is inactive.</p>", "<a href=\"{{LoginLink}}\">Login Now</a>", "Notification", null, null, "<p>Contact us at cursusservicetts@gmail.com</p>", "English", "{FullName}", "Hello friends,", "Customer", "instructor@gmail.com", "Instructor", 1, "Inactive Course", "InactiveCourseEmail", null, null },
                    { new Guid("a628d8af-895e-453f-9513-284d950b80bf"), "New course has been rejected by Admin, please check in the main page.", "<a href=\"https://cursuslms.xyz/user/sign-in\">Login</a>", "Notice for instructor", null, null, "<p>Contact us at cursusservicetts@gmail.com</p>", "English", "{FirstName}, {LastName}", "The New Courses is not available now", "Student", "cursusservicetts@gmail.com", "Cursus Team", 1, "Your course has been rejected!", "RejectInstructorCourse", null, null },
                    { new Guid("afd71958-a500-4681-91c2-1184cb98bf71"), "<h2>-Your Account has been aprroval!</h2>", "<p><a href='http://bloodmoonrpg.carrd.co?token={token}' style='padding: 10px 20px; color: white; background-color: #007BFF; text-decoration: none;'>Verify</a></p>", "Approval", null, null, "<p>Thank you for your waiting! Click this to go to the main page</p>", "English", "{FirstName}, {LastName}", "Circus Verify Email For Instructor Approval", "Instructor", "cursusservicetts@gmail.com", "Cursus Team", 1, "Circus Verify Email For Instructor Approval", "SendEmailForInstructorApproval", null, null },
                    { new Guid("be1df6b2-12da-4cd6-9df1-54f2e3968ea1"), "Dear [UserFullName],<br><br>Your account has been deleted.", "<a href=\"https://cursuslms.xyz/user/sign-in\">Login</a>", "Delete Account", null, null, "<p>Contact us at cursusservicetts@gmail.com</p>", "English", "{FirstName}, {LastName}", "Hello!", "Customer", "cursusservicetts@gmail.com", "Cursus Team", 1, "Delete Account!", "DeleteAccount", null, null },
                    { new Guid("d02e084e-5d90-42e1-9abd-8e1e9e93e31e"), "New course has been approved by Admin, please check in the main page.", "<a href=\"https://cursuslms.xyz/user/sign-in\">Login</a>", "Notice for instructor", null, null, "<p>Contact us at cursusservicetts@gmail.com</p>", "English", "{FirstName}, {LastName}", "The New Courses is available now", "Instructor", "cursusservicetts@gmail.com", "Cursus Team", 1, "Your course has been approved!", "ApproveInstructorCourse", null, null },
                    { new Guid("e3efd75f-37b4-46fd-a5ba-863d79cc129e"), "New course has been added by Instructor, please check in the main page.", "<a href=\"https://cursuslms.xyz/user/sign-in\">Login</a>", "Notice for admin", null, null, "<p>Contact us at cursusservicetts@gmail.com</p>", "English", "{FirstName}, {LastName}", "The New Courses is available", "Admin", "cursusservicetts@gmail.com", "Cursus Team", 1, "New course has been created!", "NotificationForAdminAboutNewCourse", null, null },
                    { new Guid("eca5c2e2-3e40-4fa6-9f8c-ab129aaa1741"), "<p>Thank you for registering your Cursus account. Click here to go back the page</p>", "<a href=\"{{Login}}\">Login now</a>", "Verify", null, null, "<p>Contact us at cursusservicetts@gmail.com</p>", "English", "{FirstName}, {LinkLogin}", "User Account Verified!", "Customer", "cursusservicetts@gmail.com", "Cursus Team", 1, "Cursus Verify Email", "SendVerifyEmail", null, null },
                    { new Guid("ef60d075-0d22-44dc-a086-c66aba12d1d9"), "Dear [UserFullName],<br><br>You have completed our course program, you can take new courses to increase your knowledge and skills.", "<a href=\"https://cursuslms.xyz/user/sign-in\">Login</a>", "Remind Account", null, null, "<p>Contact us at cursusservicetts@gmail.com</p>", "English", "{FirstName}, {LastName}", "Hello!", "Customer", "cursusservicetts@gmail.com", "Cursus Team", 1, "Remind Delete Account!", "RemindDeleteAccount", null, null }
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "EmailTemplates",
                keyColumn: "Id",
                keyValue: new Guid("0bbc7851-e037-4c06-8bd3-42acaa2f5473"));

            migrationBuilder.DeleteData(
                table: "EmailTemplates",
                keyColumn: "Id",
                keyValue: new Guid("38a27169-b02b-4069-8cd2-d3c4f3cad1d2"));

            migrationBuilder.DeleteData(
                table: "EmailTemplates",
                keyColumn: "Id",
                keyValue: new Guid("486fc5c4-3c55-4838-98a1-210a8e25d36d"));

            migrationBuilder.DeleteData(
                table: "EmailTemplates",
                keyColumn: "Id",
                keyValue: new Guid("5432e952-72d2-4480-b27e-4a725ccf2c3e"));

            migrationBuilder.DeleteData(
                table: "EmailTemplates",
                keyColumn: "Id",
                keyValue: new Guid("5612edb0-f8b7-4cf0-ab53-f667491c6f35"));

            migrationBuilder.DeleteData(
                table: "EmailTemplates",
                keyColumn: "Id",
                keyValue: new Guid("5b6ddbd4-bb0d-423f-9053-d0d36e43db6e"));

            migrationBuilder.DeleteData(
                table: "EmailTemplates",
                keyColumn: "Id",
                keyValue: new Guid("a628d8af-895e-453f-9513-284d950b80bf"));

            migrationBuilder.DeleteData(
                table: "EmailTemplates",
                keyColumn: "Id",
                keyValue: new Guid("afd71958-a500-4681-91c2-1184cb98bf71"));

            migrationBuilder.DeleteData(
                table: "EmailTemplates",
                keyColumn: "Id",
                keyValue: new Guid("be1df6b2-12da-4cd6-9df1-54f2e3968ea1"));

            migrationBuilder.DeleteData(
                table: "EmailTemplates",
                keyColumn: "Id",
                keyValue: new Guid("d02e084e-5d90-42e1-9abd-8e1e9e93e31e"));

            migrationBuilder.DeleteData(
                table: "EmailTemplates",
                keyColumn: "Id",
                keyValue: new Guid("e3efd75f-37b4-46fd-a5ba-863d79cc129e"));

            migrationBuilder.DeleteData(
                table: "EmailTemplates",
                keyColumn: "Id",
                keyValue: new Guid("eca5c2e2-3e40-4fa6-9f8c-ab129aaa1741"));

            migrationBuilder.DeleteData(
                table: "EmailTemplates",
                keyColumn: "Id",
                keyValue: new Guid("ef60d075-0d22-44dc-a086-c66aba12d1d9"));

            migrationBuilder.CreateTable(
                name: "PaymentCards",
                columns: table => new
                {
                    CardNumber = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    UserId = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    CardName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CardProvider = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PaymentCards", x => x.CardNumber);
                    table.ForeignKey(
                        name: "FK_PaymentCards_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.UpdateData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "BestZedAndYasuo",
                columns: new[] { "ConcurrencyStamp", "CreateTime", "PasswordHash", "SecurityStamp" },
                values: new object[] { "f0624552-51a1-49f8-a4e2-bfafac878382", new DateTime(2024, 7, 24, 3, 16, 28, 171, DateTimeKind.Utc).AddTicks(4113), "AQAAAAIAAYagAAAAEGJz5zOUhWMqbVE7h14KPS35AEoZIufvWWqzDdIasf1VI7Pw1fYpVqXO8DMvjJUlYw==", "85fedbf9-d375-4575-b952-f90c8568ebf8" });

            migrationBuilder.InsertData(
                table: "EmailTemplates",
                columns: new[] { "Id", "BodyContent", "CallToAction", "Category", "CreatedBy", "CreatedTime", "FooterContent", "Language", "PersonalizationTags", "PreHeaderText", "RecipientType", "SenderEmail", "SenderName", "Status", "SubjectLine", "TemplateName", "UpdatedBy", "UpdatedTime" },
                values: new object[,]
                {
                    { new Guid("1ba44611-118a-4129-b473-75fb0e61897e"), "Dear [UserFullName],<br><br>Your account has been deleted.", "<a href=\"https://cursuslms.xyz/user/sign-in\">Login</a>", "Delete Account", null, null, "<p>Contact us at cursusservicetts@gmail.com</p>", "English", "{FirstName}, {LastName}", "Hello!", "Customer", "cursusservicetts@gmail.com", "Cursus Team", 1, "Delete Account!", "DeleteAccount", null, null },
                    { new Guid("1d5a00c0-9190-42e7-99aa-048e500ac95f"), "<p>Hello {FirstName},</p><p>Click <a href=\"{ResetLink}\">here</a> to reset your password.</p>", "<a href=\"{{ResetLink}}\">Reset Password</a>", "Security", null, null, "<p>Contact us at cursusservicetts@gmail.com</p>", "English", "{FirstName}, {ResetLink}", "Reset your password to regain access.", "Customer", "cursusservicetts@gmail.com", "Cursus Team", 1, "Reset Your Password", "ChangePassword", null, null },
                    { new Guid("1eadc563-e8bf-45e3-9c3d-0f192e40fe0d"), "<p>Thank you for registering your Cursus account. Click here to go back the page</p>", "<a href=\"{{Login}}\">Login now</a>", "Verify", null, null, "<p>Contact us at cursusservicetts@gmail.com</p>", "English", "{FirstName}, {LinkLogin}", "User Account Verified!", "Customer", "cursusservicetts@gmail.com", "Cursus Team", 1, "Cursus Verify Email", "SendVerifyEmail", null, null },
                    { new Guid("4d55f74b-e236-4e55-9900-6f2e3c7cad8d"), "Dear [UserFullName],<br><br>Your account will be deleted after 14 days.", "<a href=\"https://cursuslms.xyz/user/sign-in\">Login</a>", "Course completed", null, null, "<p>Contact us at cursusservicetts@gmail.com</p>", "English", "{FirstName}, {LastName}", "Hello!", "Customer", "cursusservicetts@gmail.com", "Cursus Team", 1, "Congratulations on completing the course!", "StudentCompleteCourse", null, null },
                    { new Guid("862301e4-4633-4a44-b6b9-1bdb611dd50c"), "<h2>-Your Account has been aprroval!</h2>", "<p><a href='http://bloodmoonrpg.carrd.co?token={token}' style='padding: 10px 20px; color: white; background-color: #007BFF; text-decoration: none;'>Verify</a></p>", "Approval", null, null, "<p>Thank you for your waiting! Click this to go to the main page</p>", "English", "{FirstName}, {LastName}", "Circus Verify Email For Instructor Approval", "Instructor", "cursusservicetts@gmail.com", "Cursus Team", 1, "Circus Verify Email For Instructor Approval", "SendEmailForInstructorApproval", null, null },
                    { new Guid("8745a080-e332-4605-aad5-772b8358c3b3"), "Dear [UserFullName],<br><br>You have completed our course program, you can take new courses to increase your knowledge and skills.", "<a href=\"https://cursuslms.xyz/user/sign-in\">Login</a>", "Remind Account", null, null, "<p>Contact us at cursusservicetts@gmail.com</p>", "English", "{FirstName}, {LastName}", "Hello!", "Customer", "cursusservicetts@gmail.com", "Cursus Team", 1, "Remind Delete Account!", "RemindDeleteAccount", null, null },
                    { new Guid("935959e5-06e1-449d-b4e9-4945d91ca987"), "Dear [UserFullName],<br><br>Welcome to Cursus! We are excited to have you join our learning community.", "<a href=\"https://cursuslms.xyz/user/sign-in\">Login</a>", "Welcome", null, null, "<p>Contact us at cursusservicetts@gmail.com</p>", "English", "{FirstName}, {LastName}", "Thank you for signing up!", "Customer", "cursusservicetts@gmail.com", "Cursus Team", 1, "Welcome to Cursus!", "WelcomeEmail", null, null },
                    { new Guid("a52150d2-443e-4dd9-8f4d-ab9e50c3f798"), "Hi [UserFullName],<br><br>We received a request to reset your password. Click the link below to reset your password.", "https://cursuslms.xyz/sign-in/verify-email?userId=user.Id&token=Uri.EscapeDataString(token)", "Security", null, null, "If you did not request a password reset, please ignore this email.", "English", "[UserFullName], [ResetPasswordLink]", "Reset your password to regain access", "Customer", "cursusservicetts@gmail.com", "Cursus Team", 1, "Reset Your Password", "ForgotPasswordEmail", null, null },
                    { new Guid("c091a394-e03d-4bc2-840b-1b25b8dfd677"), "New course has been rejected by Admin, please check in the main page.", "<a href=\"https://cursuslms.xyz/user/sign-in\">Login</a>", "Notice for instructor", null, null, "<p>Contact us at cursusservicetts@gmail.com</p>", "English", "{FirstName}, {LastName}", "The New Courses is not available now", "Student", "cursusservicetts@gmail.com", "Cursus Team", 1, "Your course has been rejected!", "RejectInstructorCourse", null, null },
                    { new Guid("e756972c-af01-48f4-95cd-cc3a77a80a67"), "New course has been approved by Admin, please check in the main page.", "<a href=\"https://cursuslms.xyz/user/sign-in\">Login</a>", "Notice for instructor", null, null, "<p>Contact us at cursusservicetts@gmail.com</p>", "English", "{FirstName}, {LastName}", "The New Courses is available now", "Instructor", "cursusservicetts@gmail.com", "Cursus Team", 1, "Your course has been approved!", "ApproveInstructorCourse", null, null },
                    { new Guid("eb5346de-1631-4b1f-a155-8182e6192f41"), "New course has been added by Instructor, please check in the main page.", "<a href=\"https://cursuslms.xyz/user/sign-in\">Login</a>", "Notice for admin", null, null, "<p>Contact us at cursusservicetts@gmail.com</p>", "English", "{FirstName}, {LastName}", "The New Courses is available", "Admin", "cursusservicetts@gmail.com", "Cursus Team", 1, "New course has been created!", "NotificationForAdminAboutNewCourse", null, null },
                    { new Guid("f89e800f-726b-4c26-9090-301a90105723"), "<p>Your {courseTitle} course led by {instructorName} is inactive.</p>", "<a href=\"{{LoginLink}}\">Login Now</a>", "Notification", null, null, "<p>Contact us at cursusservicetts@gmail.com</p>", "English", "{FullName}", "Hello friends,", "Customer", "instructor@gmail.com", "Instructor", 1, "Inactive Course", "InactiveCourseEmail", null, null },
                    { new Guid("ffc92d36-a64e-4ba2-9feb-ec3cb1d1ef63"), "Dear {FirstName} {LastName},<br><br>\r\n\r\n                    This email confirms that your payout request has been processed successfully.\r\n                    <br>\r\n                    <strong>Payout Details:</strong>\r\n                    <ul>\r\n                    <li>Amount: {PayoutAmount}</li>\r\n                    <li>Transaction Date: {TransactionDate}</li> \r\n                    </ul>\r\n                    <br>\r\n                    You can view your payout history in your instructor dashboard. \r\n                    <br> \r\n                    Thank you for being a valued Cursus instructor!\r\n                    <br>", "<a href=\"https://cursuslms.xyz/user/sign-in\">Login</a>", "Payout", null, null, "<p>Contact us at cursusservicetts@gmail.com</p>", "English", "{FirstName}, {LastName}, {PayoutAmount}, {TransactionDate}", "Payout Successful!", "Customer", "cursusservicetts@gmail.com", "Cursus Team", 1, "Your Cursus Payout is Complete!", "NotifyInstructorPaymentReceived", null, null }
                });

            migrationBuilder.CreateIndex(
                name: "IX_PaymentCards_UserId",
                table: "PaymentCards",
                column: "UserId");
        }
    }
}
