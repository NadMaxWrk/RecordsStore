import
{
    ValidateFieldNotEmpty,
} from "./Utils.js";

function VerifyLogInFields()
{
    var valid1 = ValidateFieldNotEmpty(usernameClientID, "errorUserName", "לא הוזן שם משתמש ");
    var valid2 = ValidateFieldNotEmpty(passwordClientID, "errorPassword", "לא הוזנה סיסמה  ");

    return valid1 && valid2;
}

function ResetUsrnamePwd()
{
    document.getElementById(divResponseClientID).innerHTML = "";
    document.getElementById("errorUserName").innerHTML = "";
    document.getElementById("errorPassword").innerHTML = "";
}

window.VerifyLogInFields = VerifyLogInFields;
window.ResetUsrnamePwd = ResetUsrnamePwd;
