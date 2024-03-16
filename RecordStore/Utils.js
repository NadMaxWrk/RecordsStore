
export function ValidatePwdConfirmed()
{
    var valid = true;
    var password = document.getElementById("password").value
    var passwordconfirmed = document.getElementById("passwordv").value;

    if (password != passwordconfirmed)
    {
        document.getElementById("errorPasswordVeriftication").innerHTML = "אימות סיסמה שגוי";
        valid = false;
    }

    return valid;
}



//TODO: get field value as parameter instead of calling getElementById

export function ValidateFisrtName(name)
{
    var valid = true;
    var pattern = /[\d!@#$%^&*(),.?":{}|<>]/;

    if (name.match(pattern))
    {
        document.getElementById("errorFirstName").innerHTML = "שם פרטי חייב להכיל רק אותית";
        valid = false;
    }

    return valid;
}

export function ValidateLastName(lastName)
{
    var valid = true;
    var pattern = /[\d!@#$%^&*(),.?":{}|<>]/;

    if (lastName.match(pattern))
    {
        document.getElementById("errorLastName").innerHTML = "שם משפחה חייב להכיל רק אותית";
        valid = false;
    }

    return valid;
}
export function ValidateFieldNotEmpty(id, errorElmId, message)
{
    var valid = true;
    var fieldValue = "";
    fieldValue = document.getElementById(id).value;
    fieldValue = fieldValue.trim();

    if (fieldValue == "" || fieldValue == null)
    {
        document.getElementById(errorElmId).innerHTML = message;
        valid = false;
    }
    else
    {
        document.getElementById(errorElmId).innerHTML = " ";
    }

    return valid;
}

export function ValidateUserName()
{
    var str, len, countL = 0, countN = 0;
    var valid = true;
    str = document.getElementById("username").value;
    len = str.length;
    

    if (!(str[0] >= 'A' && str[0] <= 'Z'))
    {
        document.getElementById("errorUserName").innerHTML = "אות ראשונה צריכה להיות גדולה";
        valid = false;
    }
    else
    {
        for (var i = 1; i < len; i++)
        {
            if (str[i] >= '0' && str[i] <= '9')
            {
                countN++;
            }
            else
            {
                if ((str[i] >= 'a' && str[i] <= 'z') || (str[i] >= 'A' && str[i] <= 'z'))
                {
                    countL++;
                }
            }
        }

        if (!(countL + countN == len - 1)) 
        {
            document.getElementById("errorUserName").innerHTML = "חייב להיות רק אותיות ומספרים";
            valid = false;
        }
        else
        {
            if (countN == 0)
            {
                document.getElementById("errorUserName").innerHTML = "חייבת להיות לפחות ספרה אחת";
                valid = false;
            }
        }
        if (len < 6)
        {
            document.getElementById("errorUserName").innerHTML = "אורך של מחרוזת קצר מדי";
            valid = false;
        }
       
    }

    return valid;
}

export function ValidatePassword(password)
{
    var valid = true;


    //(?=.*[0-9]) means that the password must contain a single digit from 0 to 9.
    //(?=.* [a - z]) means that the password must contain one lowercase letter.
    //(?=.* [A - Z]) means that the password must contain one uppercase letter.
    //(?=.*\W) means that the password must contain one special character.
    //.{ 8, 16 } means that the password must be 8 - 16 characters long.We must use this at the end of the regex, just before the $ symbol.

    var pattern = /^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*\W).{8,16}$/;

    console.log(password);

    if (!password.match(pattern))
    {
        document.getElementById("errorPassword").innerHTML = "הסיסמה חייבת להכיל לפחות 8 תווים, ביניהם תווים מיוחדים, אותיות גדולות וקטנות ומספרים";
        valid = false;
    }
    else
    {
        document.getElementById("errorPassword").innerHTML = "";
    }

    console.log(valid);

    return valid;
}

export function ValidateEmail(email)
{
    var valid = true;


    //TODO:
    // 1. Don't allow . at the end
    // 2. don't allow digits at the end
    var pattern = /^\S+@\S+\.\S+$/;

    if (!email.match(pattern))
    {
        document.getElementById("errorEmail").innerHTML = "אימייל חייב להכיל שטרודל אחד ולפחות נקודה אחת בסדר הנכון";
        valid = false;
    }

    return valid;
}

export function ValidateAge()
{
    var valid = true;
    var a;
    a = document.getElementById("age").value;
    if (a <= 0)
    {
        document.getElementById("errorAge").innerHTML = "גיל אינו יכול להיות קטן או שווה ל-0. אנא הזן גיל הגיוני";
        valid = false;
    }

    if (a >= 1 && a <= 7)
    {
        document.getElementById("errorAge").innerHTML = "גיל קטן מדי. האתר רשאי לבני 8+";
        valid = false;
    }

    return valid;
}