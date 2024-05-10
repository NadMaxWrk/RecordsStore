using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;


public class Helper
{
    public const string DBName = "RecordsStoreDB.mdf";   //Name of the MSSQL Database.
    public const string tblName = "Users";      // Name of the user Table in the Database
    public const string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\"
                                    + DBName + ";Integrated Security=True";   // The Data Base is in the App_Data = |DataDirectory|

    public static DataSet RetrieveTable(string SQLStr)
    // Gets A table from the data base acording to the SELECT Command in SQLStr;
    // Returns DataSet with the Table.
    {
        // connect to DataBase
        SqlConnection con = new SqlConnection(conString);

        // Build SQL Query
        SqlCommand cmd = new SqlCommand(SQLStr, con);

        // Build DataAdapter
        SqlDataAdapter ad = new SqlDataAdapter(cmd);

        // Build DataSet to store the data
        DataSet ds = new DataSet();

        // Get Data form DataBase into the DataSet
        ad.Fill(ds, tblName);

        return ds;
    }

    public static object GetScalar(string SQL)
    {
        // התחברות למסד הנתונים
        SqlConnection con = new SqlConnection(conString);

        // בניית פקודת SQL
        SqlCommand cmd = new SqlCommand(SQL, con);

        // ביצוע השאילתא
        con.Open();
        object scalar = cmd.ExecuteScalar();
        con.Close();

        return scalar;
    }

    public static int ExecuteNonQuery(string SQL)
    {
        // התחברות למסד הנתונים
        SqlConnection con = new SqlConnection(conString);

        // בניית פקודת SQL
        SqlCommand cmd = new SqlCommand(SQL, con);

        // ביצוע השאילתא
        con.Open();
        int n = cmd.ExecuteNonQuery();
        con.Close();

        // return the number of rows affected
        return n;
    }

    public static string BuildSimpleUsersTable(DataTable dt)
    // the Method Build HTML user Table using the users in the DataTable dt.
    {
        string[] columnHeaders = new string[] { "שם משתמש", "שם פרטי", "שם משפחה", "סיסמה", "אמייל", "מגדר", "גיל", "ז'אנר אהוב", "אמן אהוב", "מנהל" };

        string str = "<table style='text-align: center; direction: rtl; margin: 0 auto; border-collapse: collapse; margin-top: 40px; '>";
        str += "<tr>";
        foreach (string header in columnHeaders)
        {
            str += "<th style='padding: 8px; background-color: #f2f2f2;'>" + header + "</th>";
        }
        str += "<tr>";



        foreach (DataRow row in dt.Rows)
        {
            str += "<tr>";

            foreach (DataColumn col in dt.Columns)
            {
                str += "<td style='padding: 8px; border: 1px solid #ddd;'>" + row[col] + "</td>";
            }

            str += "</tr>";
        }

        str += "</table>";
        return str;
    }
}
