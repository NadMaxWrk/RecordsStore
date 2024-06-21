import
{
    ValidateFieldNotEmpty,
} from "./Utils.js";

function CheckLogIn()
{
    var valid = ValidateFieldNotEmpty("username", "errorUserName", "לא הוזן שם משתמש ");
    var valid = ValidateFieldNotEmpty("password", "errorPassword", "לא הוזנה סיסמה  "); 
}

function ResetUsrnamePwd()
{
    document.getElementById("errorUserName").innerHTML = "";
    document.getElementById("errorPassword").innerHTML = "";
}

window.CheckLogIn = CheckLogIn;
window.ResetUsrnamePwd = ResetUsrnamePwd;
