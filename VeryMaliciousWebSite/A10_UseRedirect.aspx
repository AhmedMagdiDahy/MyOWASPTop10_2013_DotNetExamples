<%@ Page Language="C#" AutoEventWireup="true" CodeFile="A10_UseRedirect.aspx.cs" Inherits="A10_UseRedirect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Using another site redirect vulnerability</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <a href="http://localhost:54286\bA10_Unvalidated_Redirect_And_Forward.aspx?newUrl=http://www.sapo.pt">Super Hyper no Unvalidated A10!</a>
    </div>
    </form>
</body>
</html>
