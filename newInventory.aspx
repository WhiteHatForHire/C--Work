<%@ Page Language="C#" Debug="true" %>
<%@ Import Namespace="System.Data.Odbc" %>

<%
Response.Write("<html><head><title>EMPLOYEE ASP in C#</title></head><body>");

    // Create ODBC database connection, command, and datareader objects
    OdbcConnection myconn;
    OdbcCommand mycmd;
    OdbcDataReader myreader;

    // Connect to physical database using ODBC drivers for .mdb and .accdb files
    myconn = new OdbcConnection(@"DRIVER={Microsoft Access Driver (*.mdb, *.accdb)}; DBQ=c:\inetpub\wwwroot\ms7700\Company.accdb");
    mycmd = new OdbcCommand("Select * from Inventory", myconn);

    Response.Write("<p>Data from the Names table in the EMPLOYEES ACCESS Database: C# Program</p><br>");

    // Open connection object and reader object (cursor in oracle)
    myconn.Open();
    myreader = mycmd.ExecuteReader();

    Response.Write("<form name='inventoryForm' method='POST' action='order.aspx'>");

    // use loop to go through records in the reader
    Response.Write("<table><tr><th>ItemNO:</th><th>Item Name:</th><th>Item Description</th><th>Item Quantity</th><th>Item Price</th><th>Item Picture</th><th>Quantity</th></tr>" );
        
    int i = 1;
    Session["count"] = i;
    while ((myreader.Read()))
    {
        Response.Write("<tr>");
        Response.Write("<td>");
        Response.Write(myreader["ItemNo"] + " ");
        Response.Write("</td>");
        Session["ItemNo" + i] = myreader["ItemNo"];

        Response.Write("<td>");
        Response.Write(myreader["ItemName"]);
        Response.Write("</td>");
        Session["ItemName" + i] = myreader["ItemName"];
        

        Response.Write("<td>");
        Response.Write(myreader["ItemDesc"]);
        Response.Write("</td>");
        Session["ItemDesc" + i] = myreader["ItemDesc"];
        

        Response.Write("<td>");
        Response.Write(myreader["ItemQOff"]);
        Response.Write("</td>");
        Session["ItemQOff" + i] = myreader["ItemQOff"];
        

        Response.Write("<td>");
        Response.Write(myreader["ItemPrice"]);
        Response.Write("</td>");
        Session["ItemPrice" + i] = myreader["ItemPrice"];
        

        Response.Write("<td>");
        Response.Write("<");
        Response.Write("img src = ");
        Response.Write("\'");
        Response.Write(myreader["ItemPicture"]);
        Response.Write("\'");
        Response.Write(">");
        Response.Write("</td>");
        Response.Write("<td><input type='text'");
        Response.Write(" name=textbox");
        Response.Write(i);
        Response.Write(" id='textbox");
        Response.Write(i);
        Response.Write("'>");
        Response.Write("</tr>");
        i++;
        Session["count"] = i;
    }
    Response.Write("</table>");
    Response.Write("<input class='center' type='submit' value='Submit'>");
    Response.Write("<input class='center' type='reset' value='Reset'>");
    Response.Write("</form>");

    

    // Close reader and connection objects
    myreader.Close();
    myconn.Close();
    %>

    <style>
        img {
            height: 100px;
            width: 100px;
        }
    p {
        text-align: center;
        font-weight: bold;
        font-size: 16px;
    }
    table {
        border: black 3px solid;
        width: 80%;
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
    .center {
        margin: 0 auto;
        text-align:center;
        display: block;
        margin-top: 1rem;
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

