<%@ Page Language="C#" AutoEventWireup="true"
    MasterPageFile="~/MasterPage.master"
    CodeFile="A7_Missing_FunctionLevel_AccessControl.aspx.cs" Inherits="A7_Missing_FunctionLevel_AccessControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>A7 - Missing Function Level Access Control</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server" class="text-center">
        <div class="h1">
            OWASP
            <br />
            A7 2013 - Missing function level access control
        </div>
        <div>
            site web form com roteamento configurado para friendly url mas sem controlo de acesso aos métodos pedidos...

        asp.net MVC igual....
        </div>
    </form>
</asp:Content>


