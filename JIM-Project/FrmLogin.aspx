<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmLogin.aspx.cs" Inherits="JIM_Project.FrmLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>
</head>
<body>
    <h1>Administração do Sistema</h1>
    <form id="form1" runat="server">
        <div>
            <p>
                <label>Login:</label>
                <br />
                <input type="text" name="login" id="txtLogin" required runat="server"/>
            </p>

            <p>
                <label>Senha:</label>
                <br />
                <input type="password" name="senha" id="txtSenha" required runat="server"/>
            </p>
            <p>
                <asp:Button Text="Entrar" id="btnLogar" runat="server" OnClick="btnLogar_Click" />
                <input type="reset" />
            </p>
            <p>
                <label id="lblMensagem" runat="server"></label>
            </p>
        </div>
    </form>
</body>
</html>