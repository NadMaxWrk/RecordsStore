import
{
    CheckUserName,
    CheckPassword
} from "./JavaScriptSignUp.js";


function CheckLogIn()
{
    var res = true;
    res = CheckUserName() && res;
    res = CheckPassword() && res;

    return res;

}

function ResetUsrnamePwd()
{
    document.getElementById("errorUserName").innerHTML = "";
    document.getElementById("errorPassword").innerHTML = "";
}

window.CheckLogIn = CheckLogIn;
window.ResetUsrnamePwd = ResetUsrnamePwd;





