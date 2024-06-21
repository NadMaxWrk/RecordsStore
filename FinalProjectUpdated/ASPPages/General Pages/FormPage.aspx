<%@ Page Title="" Language="C#" MasterPageFile="~/ASPPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="FormPage.aspx.cs" Inherits="FinalProjectUpdated.ASPPages.FormPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheets/Pages/StyleSheetForm.css" rel="stylesheet" />
    <link href="../StyleSheets/Common/buttons.css" rel="stylesheet" />
    <script type="module" src="../JavaScriptFiles/JavaScriptSignUp.js"></script>
    <script type="module" src="../JavaScriptFiles/Utils.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>טופס הרשמה לאתר</h1>
    <table>

        <tr>
            <td>
                <label for="first_name">שם פרטי: </label>
            </td>
            <td>
                <input type="text" id="first_name" name="first_name" onblur="CheckFirstName()"></td>
            <td id="errorFirstName" style="color: red"></td>
        </tr>
        <tr>
            <td>
                <label for="last_name">שם משפחה: </label>
            </td>
            <td>
                <input type="text" id="last_name" name="last_name" onblur="CheckLastName()"></td>
            <td id="errorLastName" style="color: red"></td>
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
                <label for="passwordv">אימות סיסמה: </label>
            </td>
            <td>
                <input type="password" id="passwordv" name="passwordv" onblur="CheckPasswordConfirmed()" style="direction: ltr"></td>
            <td id="errorPasswordVeriftication" style="color: red"></td>
        </tr>
        <tr>
            <td>
                <label for="email">אימייל: </label>
            </td>
            <td>
                <input type="text" id="email" name="email" onblur="CheckEmail()" style="direction: ltr"></td>
            <td id="errorEmail" style="color: red"></td>
        </tr>
        <tr>
            <td>
                <label>מגדר</label></td>
            <td>
                <input type="radio" id="male" name="gender" value="male">
                <label for="male">זכר</label>
                <br />
                <input type="radio" id="female" name="gender" value="female">
                <label for="female">נקבה</label>
                <br />
                <input type="radio" id="other" name="gender" value="other">
                <label for="other">אחר</label>
                <br />
            </td>
            <td id="errorGender" style="color: red"></td>
        </tr>
        <tr>
            <td>
                <label for="age">גיל: </label>
            </td>
            <td>
                <input type="number" id="age" name="age" onblur="CheckAge()"></td>
            <td id="errorAge" style="color: red"></td>
        </tr>

        <tr>
            <td>
                <label for="favorite_artist">אמן אהוב: </label>
            </td>
            <td>
                <input type="text" id="fav_artist" name="favorite_artist" onblur="CheckFavArtist()"></td>
            <td id="errorFavArtist" style="color: red"></td>
        </tr>
        <tr>
            <td>
                <label for="genere">בחר ז'אנר אהוב: </label>
            </td>
            <td>
                <select id="genere" name="genere" onblur="CheckGenere()">
                    <option value=" " selected="selected"></option>
                    <option value="rock">רוק</option>
                    <option value="pop">פופ</option>
                    <option value="hip_hop">היפ הופ</option>
                    <option value="jazz">ג'אז</option>
                    <option value="classical">קלאסית</option>
                    <option value="other">אחר</option>
                </select>
            </td>
            <td id="errorGenere" style="color: red"></td>
        </tr>

        <tr>
            <td>
                <button type="submit" onclick="return CreateUser();">שליחת טופס</button>
            </td>

            <td>
                <button type="reset" onclick="ResetErrors()">ניקוי טופס</button>
            </td>

        </tr>
    </table>
</asp:Content>
