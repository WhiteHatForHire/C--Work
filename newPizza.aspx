<%@ Page language="C#" %>
<%

    string firstName = Request.Form["First Name"];
    string lastName = Request.Form["Last Name"];
    string phoneNumber = Request.Form["Phone Number"];
    string size = Request.Form["products"];
    string chkPeppers = Request.Form["chkPeppers"];
    string chkCheese = Request.Form["chkCheese"];
    string chkOlives = Request.Form["chkOlives"];
    string chkOnion = Request.Form["chkOnion"];
    string chkWhite = Request.Form["chkWhite"];
    string total = Request.Form["total"];

    string[] lines = {"First Name: " + firstName, "Last Name: " + lastName, "Phone Number: " + phoneNumber, "Size: " + size, "Toppings " + chkPeppers + chkCheese + chkOlives + chkOnion + chkWhite, "Total " + total};
    System.IO.File.WriteAllLines(@"C:\inetpub\wwwroot\ms7700\newPizza.txt", lines);
    
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


    Response.Write("First Name: " + firstName + "<br>");
    Response.Write("Last Name: " + lastName + "<br>");
    Response.Write("Phone Number: " + phoneNumber + "<br>");
    Response.Write("Size: " + size + "<br>");
    Response.Write("Toppings: " + chkPeppers);
    Response.Write(" " + chkCheese);
    Response.Write(" " + chkOlives + " " + chkOnion + " " + chkWhite + "<br>");
    Response.Write(" " + chkOnion + "<br>");
    Response.Write(" " + chkWhite + "<br>");
    Response.Write("Total: " + total);
    
%>
    