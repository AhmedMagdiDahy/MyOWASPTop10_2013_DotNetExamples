<%@ Page Language="C#" AutoEventWireup="true"
    MasterPageFile="~/MasterPage.master"  CodeFile="OWASP_TOP10_2013.aspx.cs" Inherits="OWASP_TOP10_2013" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>OWASP TOP 10 - 2013</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        
        <div class="text-center">
          
            <div class="h1">TOP 10 - 2013</div>
            <div class="h3"><a href="A1_Injection.aspx">A1 - Injection</a></div>
            <div class="h3"><a href="A2_BrokenAuth_SessionMgnt.aspx">A2 - Broken Authentication and Session Management</a></div>
            <div class="h3"><a href="A3_XSS.aspx">A3 - XSS Cross Site Scripting</a></div>
            <div class="h3"><a href="A4_Insec_DirectObjRef.aspx">A4 - Unsecure Direct Object Reference</a></div>
            <div class="h3"><a href="A5_SecMisconfig.aspx">A5 - Security Misconfiguration</a></div>
            <div class="h3"><a href="A6_SensitiveDataExposure.aspx">A6 - Sensitive Data Exposure</a></div>
            <div class="h3"><a href="A7_Missing_FunctionLevel_AccessControl.aspx">A7 - Missing Function Level Access Control</a></div>
            <div class="h3"><a href="A8_CSRF.aspx">A8 - XSRF/CSRF Cross Site Request Forgery</a></div>
            <div class="h3"><a href="A9_Using_Known_Vulnerable_Component.aspx">A9 - Using Known Vulnerable Components</a></div>
            <div class="h3"><a href="bA10_Unvalidated_Redirect_And_Forward.aspx">A10 - Unvalidated Refirects and Forwards(Transfer)</a></div>
        </div>
        <div class="text-right" style="margin-right:10%; margin-top:-2%">

           
        </div>
    </form>
</asp:Content>



