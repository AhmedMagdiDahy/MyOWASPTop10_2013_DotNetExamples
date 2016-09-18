<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="XSS2.aspx.cs" Inherits="fullXSS.XSS2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>XSS no direct alert :) a little deeper though</title>
    <script src="scripts/myScripts.js"></script>
    <script>      

function getData()
{
    //alert("onload done!");
    loadData("xss2.aspx?data=1", "spanResult");
}
</script>
 
</head>
<body onload="getData();">
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1Forum" runat="server" Height="54px" TextMode="MultiLine" Width="370px"></asp:TextBox>
            <asp:Button ID="Button1_AddPosta" runat="server" Text="Post" OnClick="Button1_AddPosta_Click" />
            <asp:Button ID="Button2_LimparForum" runat="server" Text="Limpar!" OnClick="Button2_LimparForum_Click" />
        </div>
    <div>
        <span id="spanResult">
        </span>
    </div>
    </form>
</body>
      <script>
        
        //  spanResult.innerHTML = '<img src="dummy" onerror="alert(\'XSS!!\');"/>';
    </script>
</html>
