<%@ Page Language="C#" AutoEventWireup="true"
    MasterPageFile="~/MasterPage.master"
    CodeFile="A7_Missing_FunctionLevel_AccessControl.aspx.cs" Inherits="A7_Missing_FunctionLevel_AccessControl" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>A7 - Missing Function Level Access Control</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server" class="text-center">
        <div class="h1">
            <br />
            A7 2013 - Missing function level access control
        </div>
        <div>
            (site web form com roteamento configurado para friendly url mas sem controlo de acesso aos métodos pedidos...

        asp.net MVC igual....)

            Neste caso o exemplo é mais simples para windows forms que não protegem server side handlers....
        </div>

        <div id="todos">
            <asp:LinkButton ID="LinkButton" runat="server" OnClick="LinkButton1_forAllusers_Click">For Everyone</asp:LinkButton>
        </div>

        <div id="admins" runat="server" style="visibility:visible">
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_onlyAdmins_Click">Só para admins</asp:LinkButton>
        </div>

        <div style="margin-top:25px">
            <span id="info" runat="server" ></span>
        </div>
    </form>
</asp:Content>


