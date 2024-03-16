﻿import
{
    ValidateFieldNotEmpty,
    ValidateUserName,
    ValidatePassword,
    ValidateEmail,
    ValidateAge,
    ValidateFisrtName,
    ValidateLastName,
    ValidatePwdConfirmed
    
} from "./Utils.js";





function CheckFirstName()
{ 
    var name = document.getElementById("first_name").value;
    var valid = ValidateFieldNotEmpty("first_name", "errorFirstName", "לא הוזן שם פרטי");
    if (valid)
    {
        valid = ValidateFisrtName(name);
    }

    return valid;
}

function CheckLastName()
{
    var lastName = document.getElementById("last_name").value;
    var valid = ValidateFieldNotEmpty("last_name", "errorLastName", "לא הוזן שם משפחה");
    if (valid)
    {
        valid = ValidateLastName(lastName);
    }

    return valid;
}

function CheckUserName()
{
    var valid = ValidateFieldNotEmpty("username", "errorUserName", "לא הוזן שם משתמש ");
    if (valid)
    {
        valid = ValidateUserName();
    }
    return valid;
}

function CheckPassword()
{
    var password = document.getElementById("password").value;
    var valid = ValidateFieldNotEmpty("password", "errorPassword", "לא הוזנה סיסמה  "); //TODO: Replace "password" with password
    if (valid)
    {
        valid = ValidatePassword(password);
    }

    return valid;
}

function CheckPasswordConfirmed()
{
    var valid = ValidateFieldNotEmpty("passwordv", "errorPasswordVeriftication", "חובה לאמת סיסמה");
    if (valid)
    {
        valid = ValidatePwdConfirmed();
    }

    return valid;
}

function CheckEmail()
{
    var email = document.getElementById("email").value;

    var valid = ValidateFieldNotEmpty("email", "errorEmail", "לא הוזן אימייל "); // TODO: replace "email" with str

    if (valid)
    {
        valid = ValidateEmail(email);
    }

    return valid;
}

function CheckFavArtist() 
{
    return ValidateFieldNotEmpty("fav_artist", "errorFavArtist", "לא הוזן אמן אהוב ");
}

function CheckGenere()
{
    return ValidateFieldNotEmpty("genere", "errorGenere", " לא הוזן ז'אנר אהוב");
}

function CheckAge()
{
    var valid = true;
    valid = ValidateFieldNotEmpty("age", "errorAge", " לא הוזן גיל ");
    if (valid)
    {
        valid = ValidateAge();
    }

    return valid;
}

function CheckGender()
{
    var valid = true;

    if (document.getElementById("male").checked == false && document.getElementById("female").checked == false && document.getElementById("other").checked == false)
    {
        document.getElementById("errorGender").innerHTML = "לא הוזן מגדר";
        valid = false;
    }

    else
    {
        document.getElementById("errorGender").innerHTML = " ";
    }

    return valid;

}



function CreateUser()
{
    var res = true;
    res = CheckFirstName() && res;
    res = CheckLastName() && res; 
    res = CheckUserName() && res; 
    res = CheckPassword() && res; 
    res = CheckPasswordConfirmed() && res; 
    res = CheckEmail() && res; 
    res = CheckFavArtist() && res; 
    res = CheckGenere() && res; 
    res = CheckAge() && res; 
    res = CheckGender() && res; 

    return res;


}


window.CheckFirstName = CheckFirstName;
window.CheckLastName = CheckLastName;
window.CheckUserName = CheckUserName;
window.CheckPassword = CheckPassword;
window.CheckPasswordConfirmed = CheckPasswordConfirmed;
window.CheckEmail = CheckEmail;
window.CheckFavArtist = CheckFavArtist;
window.CheckGenere = CheckGenere;
window.CheckAge = CheckAge;
window.CheckGender = CheckGender;
window.CreateUser = CreateUser;


//function ValidateFieldMinLength(id, errorElmId, minLen)
//{
//    var valid = true;
//    var fieldValue = "";

//    fieldValue = document.getElementById(id).value;
//    var len = fieldValue.length;

//    if (len < minLen)
//    {
//        document.getElementById(errorElmId).innerHTML = "אורך של מחרוזת קצר מדי";
//    }
//    else
//    {
//        document.getElementById(errorElmId).innerHTML = " ";
//    }

//    return valid;
//}
