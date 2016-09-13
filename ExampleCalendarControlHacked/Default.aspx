<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calendar Control Hacked!!</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <style>
        table {
        margin-left:auto;
        margin-right:auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="text-center">
        <div class="h1">
            Este calendário não permite a escolha de datas anteriores a data de hoje e a data de hoje após as 10 horas AM!
            
        </div>
        <br />
        <div>
            Tampering; Repudiation; Elevation of privilege
        </div>
        <hr />
    <div style="vertical-align:middle">
     
        <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
    </div>
    </form>
</body>
</html>
