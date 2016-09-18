<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="XSS1.aspx.cs" Inherits="fullXSS.XSS1" ValidateRequest="true"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simple XSS</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align:center"><h1>XSS - Nível 1</h1></div>
        <span>Pesquise:</span>
        <asp:TextBox ID="TextBox1_Search" runat="server" Width="267px"></asp:TextBox>
<asp:button runat="server" text="Pesquisar" ID="button_pesquisar" OnClick="button_pesquisar_Click"/>
    </div>
        <div style="margin-top:25px">
            <asp:Label ID="Label1_Result" runat="server" ></asp:Label>
        </div>
    </form>
</body>
</html>

