<%@ Page Language="C#" AutoEventWireup="true"
    MasterPageFile="~/MasterPage.master"
    CodeFile="A6_SensitiveDataExposure.aspx.cs" Inherits="A6_SensitiveDataExposure" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>A6 - Sensitive Data Exposure</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server" class="text-center">
        <div class="h1">
            &nbsp;<br />
            A6 2013 - Sensitive Data Exposure
            <br />
            <h4>2010 - Insecure Cryptographic Storage </h4>
            <br />
            <h4>2010 - Insuficient transport layer protection </h4>
        </div>
        <div>
            As palavras passe dos utilizadores são guardadas em pleno texto (em vez de ser feito um hash!!) e um funcionário da empresa divulga essa informação...<br />
            See some .net crypto. function <br />
            hash password without salt<br />
            hash password with salt<br />
                                               
        </div>
        <div>
            <h1>Criar um novo Utilizador:</h1>
              <span class="text-primary">Username</span>:<asp:TextBox ID="TextBox1_UserName" runat="server"></asp:TextBox>
                <br />
                <span class="text-primary">Password</span>:<asp:TextBox ID="TextBox2_Password" runat="server"></asp:TextBox>

                <br />
                <asp:Button ID="Button_CreateUser" runat="server"  Text="Criar" CssClass="btn-primary" OnClick="Button_CreateUser_Click" /><asp:Button ID="Button1_CreateUSerSafe0" runat="server"  Text="Criar safe 0" CssClass="btn-primary" OnClick="Button1_CreateUSerSafe0_Click" />
                <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
        </div>

    </form>
</asp:Content>
