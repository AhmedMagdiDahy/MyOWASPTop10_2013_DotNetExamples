<%@ Page Language="C#" AutoEventWireup="true" CodeFile="A2_BrokenAuth_SessionMgnt.aspx.cs" Inherits="A2_BrokenAuth_SessionMgnt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <title>OWASP A9 - Broken authentication and session management - Malicious web Site</title>
</head>
<body>
    <form id="form1" runat="server" class="text-center">
    <div class="h1">
    OWASP <br />A2 - Broken authentication and session management <br />Malicious web Site
    </div>
        <div>
            use with Vulnerable web site to still session in a sessionless cookie...session id is on the referer url.... 
        </div>
        <div id="div_info" runat="server" class="h2"></div>
    </form>
</body>
</html>
