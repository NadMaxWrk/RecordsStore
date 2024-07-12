﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ASPPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="ShowData.aspx.cs" Inherits="FinalProjectUpdated.ASPPages.ShowTable" %>

<asp:Content ID="ShowData" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheets/Pages/ShowUsersStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div runat="server">
        <div style="text-align: center; direction: rtl; margin-top: 30px;" runat="server" id="sortUsers" name="sortUsers">
            
            <div style="display: inline-block;">מיין לפי: </div>
            <select id="sortBySelect" runat="server" name="sortBySelect" style="display: inline-block;" />
            
            <div style="margin-right:10px; display: inline-block">
                <div style="display: inline-block;">סדר לפי: </div>
                    <input type="radio" id="asc" name="order" runat="server" />
                    <label for="asc">עולה</label>
                    <input type="radio" id="dsc" name="order" runat="server">
                    <label for="dsc">יורד</label>
            </div>
            
            <input type="button" runat="server" onserverclick="sortButton_ServerClicked" value="מיון נתונים" />
        </div>

        <div runat="server" id="divTable" name="divTable">
        </div>

        <div style="text-align: center; direction: rtl; margin-top: 30px;" runat="server">
            <div style="display: inline-block;">מחיקת משתמש לפי מספר זיהוי: </div>
            <input type="text" id="deleteUserId" name="deleteUserId" runat="server" />
            <input type="button" runat="server" onserverclick="deleteButton_ServerClicked" value="מחיקת משתמש" />
            <label runat="server" id="UserNotFound"></label>
        </div>
    </div>
</asp:Content>
