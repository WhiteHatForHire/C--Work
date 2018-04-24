<%@ Page language="C#" %>

<%
    string email = Request.Form["email"];
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
    }


    

%>
