<%@ Page Language="C#" AutoEventWireup="true"
    MasterPageFile="~/MasterPage.master" CodeFile="A4_Insec_DirectObjRef.aspx.cs" Inherits="A4_Unsec_DirectObjRef" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Insecure Direct Object Reference</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server" class="text-center">
        <div class="h1">
            <br />
            A4 2013 - Insecure Direct Object Reference
        </div>
        <div>
            a utilização por exemplo no url de uma referência a um objeto e cujo valor é directamente usado no servidor para processar...
        <br />
            por exemplo obter a lista de preferencia de um user e o id do user está no url, e o utilizador malicioso usa isso para obter a lista de outro user...
        
        </div>

        <div id="div_dologin" runat="server">
            <div>Login:</div>
            <asp:TextBox ID="TextBox1_utilizador" runat="server"></asp:TextBox>
            <asp:Button ID="Button1_login" runat="server" Text="DoLogin" OnClick="Button1_login_Click" />
        </div>
        <div id="div_ShowRedirectLink" runat="server">
        </div>
        <div id="div_ShowDataList" runat="server">
        </div>
    </form>
</asp:Content>


