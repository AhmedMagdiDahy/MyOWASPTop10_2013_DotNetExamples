<%@ Page Language="C#" AutoEventWireup="true"
    MasterPageFile="~/MasterPage.master"
    CodeFile="A3_XSS.aspx.cs" Inherits="A3_XSS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>OWASP A3 - XSS Cross Site Scripting</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server" class="text-center">
        <div class="h1">
            <br />
&nbsp;A3 - XSS Cross Site Scripting
        </div>
        <div class="h3">

            O XSS está relacionado com a execução de javascript maligno num cliente<br />
            devido a vulnerabilidade que foi aproveitada numa aplicação de servidor<br />
            que não valida ou limpa (sanitize) os dados de entrada!<br />
            <br />

            O XSS refletido requere Eng. social<br />
            O armazenado não necessita de Eng. social...<br />
            <br />
            Deve-se Utilizar WHITE LISTs e não black list na validação dos dados de entrada!<br />
            utilizar AntiXSS lib .net (limpar os dados de entrada! e de saída...Input and Output encoding!)

        </div>
        <hr />
        <div style="margin: 25px" class="h1">Forum muito Vulnerável!!</div>
        <div id="postsList" runat="server"></div>
        <div style="margin-top: 1%;">

            <asp:TextBox ID="TextBox1_NewPost" runat="server" TextMode="MultiLine" Width="300px" Height="50px"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Campo Obrigatório" ControlToValidate="TextBox1_NewPost" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Dados inválidos!" ForeColor="Red"></asp:RegularExpressionValidator>--%>

            <asp:Button ID="Button1_post" runat="server" Text="Postar" OnClick="Button1_post_Click" class="btn-primary" />
            <asp:Button ID="Button1_CleanPost" runat="server" Text="Limpar" OnClick="Button1_CleanPost_Click" class="btn-danger" CausesValidation="False" />
        </div>
    </form>
</asp:Content>

