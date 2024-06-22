<%@ Page Title="" Language="C#" MasterPageFile="~/ASPPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="FinalProjectUpdated.ASPPages.LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheets/Pages/StyleSheetForm.css" rel="stylesheet" />
    <link href="../StyleSheets/Common/buttons.css" rel="stylesheet" />
    <script type="text/javascript">
        var usernameClientID = '<%= LogInUsername.ClientID %>';
        var passwordClientID = '<%= LogInPassword.ClientID %>';
        var divResponseClientID = '<%= divResponse.ClientID %>';
    </script>
    <script type="module" src="../JavaScriptFiles/LogInPage.js"></script>
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
                <input type="text" id="LogInUsername" name="username" runat="server" style="direction: ltr"></td>
            <td id="errorUserName" style="color: red"></td>
        </tr>
        <tr>
            <td>
                <label for="password">סיסמה: </label>
            </td>
            <td>
                <input type="password" id="LogInPassword" name="password" runat="server" style="direction: ltr"></td>
            <td id="errorPassword" style="color: red"></td>
        </tr>

        <tr>
            <td>
                <asp:Button type="submit" CssClass="aspButton" Text="שליחת טופס" OnClientClick="return VerifyLogInFields();" OnClick="CheckLogin" runat="server"></asp:Button>
            </td>
            <td>
                <button type="reset" onclick="ResetUsrnamePwd()">ניקוי טופס</button>
            </td>

        </tr>


    </table>

    <div id="divResponse" name="divResponse" runat="server">

    </div>



</asp:Content>
