<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmLogin.aspx.cs" Inherits="JIM_Project.FrmLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>
    <style>
        /* Estilos gerais do body com fundo vermelho e centralização */
        body {
            background-color: #7b0000; /* vermelho escuro da borda */
            font-family: monospace, monospace; /* fonte monoespaçada */
            padding: 40px;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            min-height: 100vh;
            margin: 0;
        }

        /* Container do formulário com fundo branco e bordas arredondadas */
        form#form1 {
            background-color: #fff;
            border-radius: 8px;
            padding: 25px 30px;
            width: 350px;
            box-sizing: border-box;
            box-shadow: 0 0 10px rgb(123 0 0 / 0.4);
            color: #7b0000; /* cor do texto */
        }

        /* Título com borda inferior e espaçamento */
        h1 {
            font-weight: normal;
            font-size: 1.6em;
            margin-top: 0;
            margin-bottom: 20px;
            border-bottom: 2px solid #7b0000;
            padding-bottom: 5px;
        }

        /* Label estilo negrito e margens */
        label {
            font-weight: bold;
            font-size: 0.9em;
            display: block;
            margin-bottom: 5px;
        }

        /* Inputs, selects, textarea estilo com borda vermelha, cantos arredondados */
        input[type="text"],
        input[type="password"],
        input[type="email"],
        input[type="date"],
        select {
            width: 100%;
            padding: 7px 8px;
            border: 1.5px solid #7b0000;
            border-radius: 4px;
            font-family: monospace, monospace;
            font-size: 1em;
            box-sizing: border-box;
            margin-bottom: 18px;
            transition: border-color 0.25s ease;
        }

        /* Foco nos campos com borda um pouco mais escura */
        input[type="text"]:focus,
        input[type="password"]:focus,
        input[type="email"]:focus,
        input[type="date"]:focus,
        select:focus {
            border-color: #550000;
            outline: none;
        }

        /* Botões Limpar e Entrar estilo */
        input[type="reset"],
        input[type="submit"],
        btnLogar {
            background-color: #7b0000;
            border: none;
            color: white;
            font-weight: bold;
            padding: 8px 18px;
            margin-right: 12px;
            cursor: pointer;
            font-family: monospace, monospace;
            border-radius: 4px;
            font-size: 1em;
            transition: background-color 0.3s ease;
        }

        /* Hover mais escuro */
        input[type="reset"]:hover,
        input[type="submit"]:hover,
        asp\\:Button:hover,
        button:hover {
            background-color: #550000;
        }

        /* Mensagem de label (como erro ou status) */
        label#lblMensagem {
            font-weight: normal;
            font-size: 0.9em;
            color: #7b0000;
            display: block;
            min-height: 18px;
            margin-top: 10px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Administração do Sistema</h1>
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