using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public class Helper
{
    public const string DBName = "RecordsStoreDB.mdf";   //Name of the MSSQL Database.
    public const string tblName = "Users";      // Name of the user Table in the Database
    public const string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\"
                                    + DBName + ";Integrated Security=True";   // The Data Base is in the App_Data = |DataDirectory|

    /// <summary>
    /// gets A table from the database according to the SELECT Command in SQLStr;
    /// </summary>
    /// <param name="SQLStr">QueryString</param>
    /// <returns>DataSet with the Table </returns>
    public static DataSet ExecuteQuery(string SQLStr)
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

    /// <summary>
    ///  execute a non query SQL command (INSERT, DELETE, UPDATE)
    /// </summary>
    /// <param name="SQL"></param>
    /// <returns></returns>
    public static int ExecuteNonQuery(string SQL)
    {
        // create a connection to the database
        SqlConnection con = new SqlConnection(conString);

        // building the SQL command (query)
        SqlCommand cmd = new SqlCommand(SQL, con);

        // executing the command
        con.Open();
        int n = cmd.ExecuteNonQuery();
        con.Close();

        // return the number of rows affected
        return n;
    }

    /// <summary>
    ///  execute a scalar SQL command (SELECT COUNT, MAX, MIN, AVG)
    /// </summary>
    /// <param name="SQL"></param>
    /// <returns></returns>
    public static object GetScalar(string SQL)
    {
        // create a connection to the database
        SqlConnection con = new SqlConnection(conString);

        // building the SQL command with the query
        SqlCommand cmd = new SqlCommand(SQL, con);

        // executing query
        con.Open();
        object scalar = cmd.ExecuteScalar();
        con.Close();

        return scalar;
    }

    /// <summary>
    /// the Method Build HTML user Table using the users in the DataTable dt.
    /// </summary>
    /// <param name="dt"></param>
    /// <param name="columnHeaders"></param>
    /// <returns> an html string representing the table data</returns>
    public static string BuildSimpleTable(DataTable dt, string[] columnHeaders)
    {
        string str = "<table>";
        str += "<tr>";
        foreach (string header in columnHeaders)
        {
            str += "<th>" + header + "</th>";
        }
        str += "<tr>";

        foreach (DataRow row in dt.Rows)
        {
            str += "<tr>";

            foreach (DataColumn col in dt.Columns)
            {
                str += "<td>" + row[col] + "</td>";
            }

            str += "</tr>";
        }

        str += "</table>";
        return str;
    }
}
