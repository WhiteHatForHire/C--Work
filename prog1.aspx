<%@ Page language="C#" %>
<%
    // Write the string array to a new file named "WriteLines.txt".
    string[] lines = { "First line", "Second line", "Third line", (DateTime.Now.ToString()) };
    System.IO.File.WriteAllLines(@"C:\inetpub\wwwroot\ms7700\file1.txt", lines);
    bool errFlag = true;
    string errMsg = "";
    string confimMsg = "";
    



    // First Name logic
    if (Request.Form["fName"] == "")
    {
        errFlag = true;
        errMsg = errMsg + "Please enter a first name";
    } else
    {
        errFlag = false;
        confimMsg = confimMsg + "First Name: " + Request.Form["fName"] + "<br>";
    }

    // Last Name logic
    if (Request.Form["lName"] == "")
    {
        errFlag = true;
        errMsg = errMsg + "<br> Please enter a last name";
    } else
    {
        errFlag = false;
        confimMsg = confimMsg + "Last Name: " + Request.Form["lName"];
    }

    // Radio logic
    if (Request.Form["rdSize"] =="sm")
    {
        confimMsg = confimMsg + "<br> Size selected is small";
    }
    if (Request.Form["rdSize"] =="lg")
    {
        confimMsg = confimMsg + "<br> Size selected is large";
    }
    if ((Request.Form["rdSize"] != "sm") && (Request.Form["rdSize"] != "lg"))
    {
        errMsg = errMsg + "<br> Forgot size";
        errFlag = true;

    }

    // Check logic
    if (Request.Form["chkItem"] == "iPhone")
    {
        confimMsg = confimMsg + "<br> You Picked iPhone";
    }

    // Output logic
    if (errFlag == false)
    {
        Response.Write(confimMsg);
    } else
    {
        Response.Write(errMsg);
    }
    Response.Write("<html><body><br />");
    Response.Write("</body></html>");
%>
    