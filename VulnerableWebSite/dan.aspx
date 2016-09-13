<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dan.aspx.cs" Inherits="dan" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Dan Session Management</title>
</head>
<body>
     <form id="form1" runat="server">
        <asp:Panel runat="server" ID="Panel2Login">
            <asp:TextBox ID="TextBox1_Login" runat="server"></asp:TextBox>
            <asp:Button ID="Button1_DoLogin" runat="server" Text="Go!" OnClick="Button1_DoLogin_Click" />
        </asp:Panel>
        <asp:Panel ID="Panel1" runat="server">
 <div id="div_currentSessionValuesAndKeys">
            <asp:Label ID="Label1_currentSessionValuesAndKeys" runat="server" Text=""></asp:Label>
        </div>
        <div>
            <asp:LinkButton ID="LinkButton1_clearSession" runat="server" OnClick="LinkButton1_clearSession_Click">Clear Session</asp:LinkButton><br />
            <asp:LinkButton ID="LinkButton2_AbandonSession" runat="server" OnClick="LinkButton2_AbandonSession_Click">Abandon Session</asp:LinkButton><br />
            <asp:LinkButton ID="LinkButton3_BothClearAndAbandon" runat="server" OnClick="LinkButton3_BothClearAndAbandon_Click">Clear and Abandon</asp:LinkButton>
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Session key:"></asp:Label>
        <asp:TextBox ID="TextBox1_SessionKeyToRemove" runat="server"></asp:TextBox>
        <asp:LinkButton ID="LinkButton1_RemoveThisSession" runat="server" OnClick="LinkButton1_Click_RemoveThisSession">Remove this Session key</asp:LinkButton>
        <span style="margin-left:10px">
            <asp:LinkButton ID="LinkButton2_ClearThisSession" runat="server" OnClick="LinkButton2_Click_ClearThisSession">Clear</asp:LinkButton>
        </span>
        </div>

            <div>
                <asp:LinkButton ID="LinkButton3_logoff" runat="server" OnClick="LinkButton3_logoff_Click">Ciao...</asp:LinkButton>
            </div>

            <div>
                <asp:LinkButton ID="LinkButton1_SetNonHttpCookie" runat="server" OnClick="LinkButton1_SetNonHttpCookie_Click">Server please set a cookie (not HHTP)</asp:LinkButton>
            </div>

        </asp:Panel>
       
        
    </form>
</body>
</html>
