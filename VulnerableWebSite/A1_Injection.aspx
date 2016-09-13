<%@ Page Language="C#" AutoEventWireup="true" CodeFile="A1_Injection.aspx.cs" Inherits="A1_Injection"
    MasterPageFile="~/MasterPage.master"  %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <title>OWASP 2013 A1 - Injection</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <form id="form1" runat="server" class="text-center">
        <div class="h1">
            OWASP <br />A1 2013 - Injection
        </div>
        <div class="h4">
            &quot;Injection&quot; é o processo de enviar comandos a um interpretador de forma ilícita! 
        </div>
        <div>
            <h1 class="h3">SQL Injection LOGIN Process:</h1>
            <div >
                <span class="text-primary">Username</span>:<asp:TextBox ID="TextBox1_UserName" runat="server"></asp:TextBox>
                <br />
                <span class="text-primary">Password</span>:<asp:TextBox ID="TextBox2_Password" runat="server"></asp:TextBox>
    <%--<asp:regularexpressionvalidator id="regularexpressionvalidator1" runat="server" controltovalidate="textbox2_password" display="dynamic" enabled="true" errormessage="entrada inválida!" forecolor="red" validationexpression="^[a-zA-Z0-9@]+$"></asp:regularexpressionvalidator>--%>

                

            <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2_Password" Display="Dynamic" ErrorMessage="*o campo é de preenchimento obrigatório" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                <br />
                <asp:Button ID="Button_Login" runat="server" OnClick="Button_Login_Click" Text="Login" CssClass="btn-primary" />
                <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>

            </div>
        </div>
    </form>

</asp:Content>
