<%@ Page Language="C#" AutoEventWireup="true"
    MasterPageFile="~/MasterPage.master"
    CodeFile="bA10_Unvalidated_Redirect_And_Forward.aspx.cs" Inherits="A10_Unvalidated_Redirect_And_Forward" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>OWASP A10 Unvalidated Redirect and Forward!</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server" class="text-center">
        <div class="h1">
            
            <br />
            A10 2013 - Unvalidated redirect and forward
        </div>
        <div>
            um redirect (response.redirect) envia uma resposta ao cliente instruindo o browser a fazer outro pedido usando outro url...usando S.E. 
        
        um transfer ou forward é feito directamente no servidor e por vezes usando na decisão informação que vem do cliente que foi la colocado pelo servidor....
        ..verifico a existencia do redirect e tento entender como o url é composto pelos servidor;  
        um utilizador pode tamper with the info e aceder a outra localização que não está protegida do lado do servidor....

        </div>

        <div style="margin-top:20px">
           <a href="?newUrl=http://www.sapo.pt">SAPO</a>
            <a href="?newUrl=http://www.rtp.pt">RTP</a>
        </div>
    </form>
</asp:Content>


