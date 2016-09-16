<%@ Page Language="C#" AutoEventWireup="true" CodeFile="A2_BrokenAuth_SessionMgnt.aspx.cs"
    MasterPageFile="~/MasterPage.master"
    Inherits="A2_BrokenAuth_SessionMgnt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>A2 - Broken Authentication and Session Management</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server" class="text-center">
        <div class="h1">
            OWASP
            <br />
            A2 2013 - Broken authentication and session management.
        </div>
        <div class="h4">
            HTTP é um protocolo sem estado!  
        </div>
        <div id="div_login" runat="server" style="visibility: visible">
            Login simples para simular sessão:
            <asp:TextBox ID="TextBox1_pass" runat="server"></asp:TextBox>
            <asp:Button ID="Button1_login" runat="server" Text="Login" OnClick="Button1_login_Click" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1_pass"></asp:RequiredFieldValidator>
        </div>
        <div id="div_infoUser" runat="server" visible="false">
            <div>Este risco/vulnerabilidade pode requerer eng. social. O ataquante aproveita uma falha no site por exemplo XSS para roubar o ID da sessão ou utiliza o referer no caso de ser uma sessão sem cookies...</div>


            <div>SESSÕES SEM COOKIES...(set in web.config)</div>

        </div>

        <div id="Forum">
            <a href="http://localhost:56337/A2_BrokenAuth_SessionMgnt.aspx">Muito BOM!!! vê Isto!!!</a>
        </div>
    </form>
</asp:Content>


