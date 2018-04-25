<%@ Page Language="C#" Debug="true" %>
<%@ Import Namespace="System.Data.Odbc" %>

<%
Response.Write("<html><head><title>EMPLOYEE ASP in C#</title></head><body>");

    // Create ODBC database connection, command, and datareader objects
    OdbcConnection myconn;
    OdbcCommand mycmd;
    OdbcDataReader myreader;

    // Connect to physical database using ODBC drivers for .mdb and .accdb files
    myconn = new OdbcConnection(@"DRIVER={Microsoft Access Driver (*.mdb, *.accdb)}; DBQ=c:\inetpub\wwwroot\northwind.accdb");
    mycmd = new OdbcCommand("Select * from employees", myconn);

    Response.Write("<p>Data from the Names table in the EMPLOYEES ACCESS Database: C# Program</p><br>");

    // Open connection object and reader object (cursor in oracle)
    myconn.Open();
    myreader = mycmd.ExecuteReader();

    // use loop to go through records in the reader
    Response.Write("<table><tr><th>ID:</th><th>First Name:</th><th>Last Name:</th></tr>" );
        
    while ((myreader.Read()))
    {
        Response.Write("<tr>");
        Response.Write("<td>");
        Response.Write(myreader["ID"] + " ");
        Response.Write("</td>");

        Response.Write("<td>");
        Response.Write(myreader["First Name"] + ", ");
        Response.Write("</td>");

        Response.Write("<td>");
        Response.Write(myreader["Last Name"]);
        Response.Write("</td>");
        Response.Write("</tr>");
    }

    // Close reader and connection objects
    myreader.Close();
    myconn.Close();
    %>

    <style>
    p {
        text-align: center;
        font-weight: bold;
        font-size: 16px;
    }
    table {
        border: black 3px solid;
        width: 50vh;
        height: 50vh;
        margin: 0 auto;
        text-align: center;
    }
    td {
        border: black 1px solid;
        transition: background-color 1s;
    }

    th {
        border: black 2px solid;
        background: black;
        color: white;
    }
    tr:nth-child(even) {
        background: rgba(197, 197, 197, 0.425);
    }
    td:hover {
        background-color: yellow;
        cursor:crosshair;
    }
    
    </style>
    </table>
    <script>
    // var tds = document.getElementsByTagName('td');
    // tds.addEventListener('click', function() {

    // });
    </script>
    </body>
    </html>

