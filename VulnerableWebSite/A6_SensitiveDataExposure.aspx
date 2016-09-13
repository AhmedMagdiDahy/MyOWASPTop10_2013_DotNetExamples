<%@ Page Language="C#" AutoEventWireup="true"
    MasterPageFile="~/MasterPage.master"
    CodeFile="A6_SensitiveDataExposure.aspx.cs" Inherits="A6_SensitiveDataExposure" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>A6 - Sensitive Data Exposure</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server" class="text-center">
        <div class="h1">
            OWASP
            <br />
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

            Show how Membership works and stores password <br />
            <br /><br />
            HTTPs ? SHTTPs
        </div>
    </form>
</asp:Content>
