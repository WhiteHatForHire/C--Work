<%@ Page language="C#" %>
<style>
    table {
      border: 3px solid white;
      margin: 0 auto;
      background-color: lightgrey;
    }

    td {
      border: 1px solid white;
      padding: .4rem;
    }

    th {
      font-size: 20px;
    }
    tr:nth-child(even) {
        background: rgba(197, 197, 197, 0.425);
    }
    td:hover {
        background-color: yellow;
        cursor:crosshair;
    }
    p {
        text-align: center;
        font-weight: bold;
        font-size: 16px;
    }
</style>
<%
//Response.Write(Session["ItemName1"]);
    // Add session counter and replace i with it
    // Loop through the 
    Response.Write("<table>");
    int subtotal = 0;
    double tax = 0;
    int delCost = 0;
    double total = 0;
    for (var i = 1; i < Convert.ToInt32(Session["count"]); i++) {
        if (Convert.ToInt32(Session["ItemQOff" + i]) < 0) {
          Response.Write("Please Enter a Quantity of 0 or More for " + Session["ItemName" + i]);
          
          break;
        } else {
        int qty = Convert.ToInt32(Request.Form["textbox" + i]);
        int price = Convert.ToInt32(Session["ItemPrice" + i]) * qty;
        Response.Write("<tr><th>Item Name</th><th>Item Quantity</th><th>Item Cost</th><th>Total Item Cost</th></tr>");
        Response.Write("<tr>");
        Response.Write("<td>" + Session["ItemName" + i] + "</td>");
        Response.Write("<td>" + qty + "</td>");
        Response.Write("<td>" + Convert.ToInt32(Session["ItemPrice" + i]) + "</td>");
        Response.Write("<td>" + Convert.ToInt32(Session["ItemPrice" + i]) * qty + "</td>");
        Response.Write("</tr>");
        subtotal += price;
        }
    }
    tax = Convert.ToDouble(subtotal) * 0.06;
    total = subtotal + tax + 100;
    // DO TOTAL
    // A summary line with the name, quantity, and total cost for each item ordered.
    // The total of all items.
    // --Add variable that is += with each ItemCost * ItemQOff each loop
    // A .06 percent tax charge.
    // The cost of the delivery.
    // The Total cost of the entire order.
    
    Response.Write("</table>");
    Response.Write("Subtotal: $ " + subtotal + "<br>");
    Response.Write("Tax: $ " + tax + "<br>");
    Response.Write("Delivery Cost: $100" + "<br>");
    Response.Write("Total: $ " + total + "<br>");
    
    

    /* string email = Request.Form["email"];
    string blogBody = Request.Form["blogBody"];
    string title = Request.Form["title"];
    DateTime localDate = DateTime.Now;
    Guid guid = Guid.NewGuid();
    string guidStr = guid.ToString();
    string ip = (HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"]);
    
    
    
    
    bool errFlag = true;
    string errMsg = "";
    string confirmMsg = "";
    
    // Email logic
    if (email == "")
    {
        errFlag = true;
        errMsg = errMsg + "Please enter an email <br>";
    } else
    {
        errFlag = false;
        confirmMsg = confirmMsg + "Email: " + email + "<br>";
    }

    // Body logic
    if (blogBody == "")
    {
        errFlag = true;
        errMsg = errMsg + "Please enter a body";
    } else
    {
        errFlag = false;
        confirmMsg = confirmMsg + "Body: " + blogBody + "<br>";
    }

    if (errMsg != "")
    {
        Response.Write(errMsg);
        Response.Write("<br><button onclick='window.history.back();'>Go Back</button>");
    } else
    {
        using (System.IO.StreamWriter file =
        new System.IO.StreamWriter(@"C:\inetpub\wwwroot\ms7700\blog.html", true))
    {
        file.WriteLine("<div class='post' id='" + guidStr + "'>");

        file.WriteLine("<p>" + title + ":" + "</p>");
        file.WriteLine("<p>" + blogBody + "</p>");
        file.WriteLine("<p><small>" + "Posted by: " + email + "</small><br>");
        file.WriteLine("<small>" + localDate + "</small></p>");
        file.WriteLine("<small>" + "Posted from: " + ip + "</small></p>");

        file.WriteLine("</div>");
        Response.Redirect("http://157.160.104.106/ms7700/blog.html");
    };
    } */


    

%>
