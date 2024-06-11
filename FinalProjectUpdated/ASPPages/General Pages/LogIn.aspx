<%@ Page Title="" Language="C#" MasterPageFile="~/ASPPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="FinalProjectUpdated.ASPPages.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheets/Pages/StyleSheetForm.css" rel="stylesheet" />
    <script type="module" src="../JavaScriptFiles/JavaScriptSignUp.js"></script>
    <script type="module" src="../JavaScriptFiles/Utils.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <th colspan="3">טופס התחברות לאתר </th>
        </tr>
        <tr>
            <td>
                <label for="username">שם משתמש: </label>
            </td>
            <td>
                <input type="text" id="username" name="username" onblur="CheckUserName()" style="direction: ltr"></td>
            <td id="errorUserName" style="color: red"></td>
        </tr>
        <tr>
            <td>
                <label for="password">סיסמה: </label>
            </td>
            <td>
                <input type="password" id="password" name="password" onblur="CheckPassword()" style="direction: ltr"></td>
            <td id="errorPassword" style="color: red"></td>
        </tr>

        <tr>
            <td>
                <button type="submit" onclick="return CheckLogIn();">שליחת טופס</button>
            </td>

            <td>
                <button type="reset" onclick="ResetErrors()">ניקוי טופס</button>
            </td>

        </tr>


    </table>




</asp:Content>
