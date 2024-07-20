<%@ Page Title="" Language="C#" MasterPageFile="~/ASPPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="FormPage.aspx.cs" Inherits="FinalProjectUpdated.ASPPages.FormPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheets/Pages/StyleSheetForm.css" rel="stylesheet" />
    <link href="../StyleSheets/Common/buttons.css" rel="stylesheet" />
    <script type="module" src="../JavaScriptFiles/Utils.js"></script>
    <script type="module" src="../JavaScriptFiles/SignUp.js"></script>
    <script type="text/javascript">
        var userAlreadyExistsClientID = '<%= UserAlreadyExists.ClientID %>';
        var fieldsServerErrorClientID = '<%= FieldsServerError.ClientID %>';
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>טופס הרשמה לאתר</h1>
    <div class="form-container">
        <table>

            <tr>
                <td>
                    <label for="first_name">שם פרטי: </label>
                </td>
                <td>
                    <input type="text" id="first_name" name="first_name" onblur="CheckFirstName()"></td>
                <td id="errorFirstName" class="errorColumns"></td>
            </tr>
            <tr>
                <td>
                    <label for="last_name">שם משפחה: </label>
                </td>
                <td>
                    <input type="text" id="last_name" name="last_name" onblur="CheckLastName()"></td>
                <td id="errorLastName" class="errorColumns"></td>
            </tr>
            <tr>
                <td>
                    <label for="username">שם משתמש: </label>
                </td>
                <td>
                    <input type="text" id="username" name="username" onblur="CheckUserName()" style="direction: ltr"></td>

                <td id="errorUserName" name="errorUserName" class="errorColumns"></td>
            </tr>
            <tr>
                <td>
                    <label for="password">סיסמה: </label>
                </td>
                <td>
                    <input type="password" id="password" name="password" onblur="CheckPassword()" style="direction: ltr"></td>
                <td id="errorPassword" class="errorColumns"></td>
            </tr>
            <tr>
                <td>
                    <label for="passwordv">אימות סיסמה: </label>
                </td>
                <td>
                    <input type="password" id="passwordv" name="passwordv" onblur="CheckPasswordConfirmed()" style="direction: ltr"></td>
                <td id="errorPasswordVeriftication" class="errorColumns"></td>
            </tr>
            <tr>
                <td>
                    <label for="email">אימייל: </label>
                </td>
                <td>
                    <input type="text" id="email" name="email" onblur="CheckEmail()" style="direction: ltr"></td>
                <td id="errorEmail" class="errorColumns"></td>
            </tr>
            <tr>
                <td>
                    <label>מגדר</label></td>
                <td>
                    <input type="radio" id="male" name="gender" value="Male">
                    <label for="male">זכר</label>
                    <br />
                    <input type="radio" id="female" name="gender" value="Female">
                    <label for="female">נקבה</label>
                    <br />
                    <input type="radio" id="other" name="gender" value="Other">
                    <label for="other">אחר</label>
                    <br />
                </td>
                <td id="errorGender" class="errorColumns"></td>
            </tr>
            <tr>
                <td>
                    <label for="age">גיל: </label>
                </td>
                <td>
                    <input type="number" id="age" name="age" onblur="CheckAge()"></td>
                <td id="errorAge" class="errorColumns"></td>
            </tr>

            <tr>
                <td>
                    <label for="fav_artist">אמן אהוב: </label>
                </td>
                <td>
                    <input type="text" id="fav_artist" name="fav_artist" onblur="CheckFavArtist()"></td>
                <td id="errorFavArtist" class="errorColumns"></td>
            </tr>
            <tr>
                <td>
                    <label for="genre">בחר ז'אנר אהוב: </label>
                </td>
                <td>
                    <select id="genre" name="genre" onblur="CheckGenre()">
                        <option value=" " selected="selected"></option>
                        <option value="rock">רוק</option>
                        <option value="pop">פופ</option>
                        <option value="hip_hop">היפ הופ</option>
                        <option value="jazz">ג'אז</option>
                        <option value="classical">קלאסית</option>
                        <option value="other">אחר</option>
                    </select>
                </td>
                <td id="errorGenre" class="errorColumns"></td>
            </tr>

            <tr>
                <td>
                    <asp:Button type="submit" CssClass="aspButton" Text="שליחת טופס" OnClientClick="return VerifyCreateUserFields();" OnClick="CreateNewUser" runat="server"></asp:Button>
                </td>

                <td>
                    <button type="reset" onclick="ResetErrors()">ניקוי טופס</button>
                </td>

            </tr>

        </table>
    </div>

    <div name="UserAlreadyExists" id="UserAlreadyExists" runat="server"></div>
    <div name="FieldsServerError" id="FieldsServerError" runat="server"></div>
</asp:Content>
