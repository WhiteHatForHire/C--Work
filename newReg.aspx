<%@ Page language="C#" %>
<%

    string firstName = Request.Form["First Name"];
    string lastName = Request.Form["Last Name"];
    string email = Request.Form["Email Address"];
    string billingAddress = Request.Form["Billing Address"];
    string businessAddress = Request.Form["Business Address"];
    string siteName = Request.Form["Site Name"];

    string[] lines = {firstName, lastName, email, billingAddress, businessAddress, siteName};
    System.IO.File.WriteAllLines(@"C:\inetpub\wwwroot\ms7700\regData.txt", lines);

    // Phone Number logic
    //if (Request.Form["Phone Number"] == "")
    //{
    //    errFlag = true;
    //    errMsg = errMsg + "Please enter a Phone Number";
    //} else
    //{
    //    errFlag = false;
    //    confimMsg = confimMsg + "First Name: " + Request.Form["fName"] + "<br>";
    //}

    // Last Name logic
    //if (Request.Form["lName"] == "")
    //{
    //    errFlag = true;
    //    errMsg = errMsg + "<br> Please enter a last name";
    //} else
    //{
    //    errFlag = false;
    //    confimMsg = confimMsg + "Last Name: " + Request.Form["lName"];
    //}

    // Radio logic
    //if (Request.Form["rdSize"] =="sm")
    //{
    //    confimMsg = confimMsg + "<br> Size selected is small";
    //}
    //if (Request.Form["rdSize"] =="lg")
    //{
    //    confimMsg = confimMsg + "<br> Size selected is large";
    //}
    //if ((Request.Form["rdSize"] != "sm") && (Request.Form["rdSize"] != "lg"))
    //{
    //    errMsg = errMsg + "<br> Forgot size";
    //    errFlag = true;

    //}

    // Check logic
    //if (Request.Form["chkItem"] == "iPhone")
    //{
    //    confimMsg = confimMsg + "<br> You Picked iPhone";
    //}

    // Output logic
    //if (errFlag == false)
    //{
    //    Response.Write(confimMsg);
    //} else
    //{
    //    Response.Write(errMsg);
    //}
    
    Response.Write("Name: ");
    Response.Write(firstName);
    Response.Write(" ");
    Response.Write(lastName);
    Response.Write("<br>");

    Response.Write("Email: ");
    Response.Write(email);
    Response.Write("<br>");

    Response.Write("Billing Address: ");
    Response.Write(billingAddress);
    Response.Write("<br>");
    
    Response.Write("Business Address: ");
    Response.Write(businessAddress);
    Response.Write("<br>");
    
    Response.Write("Site Name: ");
    Response.Write(siteName);
    
%>
    