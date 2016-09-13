<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="A8_CSRF.aspx.cs" Inherits="A8_CSRF" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>A8 - Cross Site Request Forgery</title></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><form id="form1" runat="server" class="text-center">
        <div class="h1">
            OWASP <br />A8 2013 - Cross Site Request Forgery
        </div>
    <div>
    um utilizador está num site a fazer compras (ou no homebanking), esse site tem vulnerabilidades, um ataquante envia um email ao utilizador esperando que este abre o email no navegador enquanto esta logado no site, se acontecer isso, o email tem código que aproveita a vulne. do site para fazer pedidos indevidos fazendoo com que para o servidor esse(s) pedido(s) venham do utilizador "legalmente" logado...
        
        usar ANTI CSRF Token...
        
        ASP.net MVC implementa isso out of the box... 
    </div>
    </form>
</asp:Content>

