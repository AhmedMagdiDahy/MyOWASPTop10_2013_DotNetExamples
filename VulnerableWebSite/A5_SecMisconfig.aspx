<%@ Page Language="C#" AutoEventWireup="true"
    MasterPageFile="~/MasterPage.master"
    CodeFile="A5_SecMisconfig.aspx.cs" Inherits="A5_SecMisconfig" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>A5 - Security Misconfiguration</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server" class="text-center">
        <div class="h1">
           
            <br />
            A5 2013 - Security Misconfiguration
        </div>
        <div>
            CGI ISAPI ASP.NET IIS APACHE WINDOWS .NET....

        </div>

        <div>
            Top 5 ASP.net web.config Security Misconfiguration...
        </div>

        <div>
            ASP:NET CUSTOM ERRORS MODE OFF (web.config)
            causar uma excepção não suportada....
            <asp:Button ID="Button1" runat="server" Text="GO!" />
            <div>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </div>
        </div>
    </form>
</asp:Content>



