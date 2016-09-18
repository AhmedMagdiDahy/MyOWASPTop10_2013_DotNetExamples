<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validar1.aspx.cs" Inherits="A0_ValidationBasics.Validar1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Playing around with input validation! :)</title>

    <script>
        function clientValidation() {
            //debugger;
            var ele = document.getElementById("txtName");
            var outputFile = document.getElementById("resultSpan1");
            if (ele.value == "") {
                outputFile.innerText = "*Não pode postar sem preencher alguma coisa...THX!";
                return false;
            }
            else
                return true;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" onsubmit="return clientValidation();">
        <div>
            <span>nome de utilizador:</span>
            <input id="txtName" type="text" name="name" />


            <span id="resultSpan1" style="color: red"></span>
        </div>

        <div>
            <span>palavra passe:</span>
            <input id="txtPass" type="text" name="pass" />
        </div>


        <input id="Submit1" type="submit" value="login" /></p>
    </form>

</body>
</html>
