<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmCliente.aspx.cs" Inherits="JIM_Project.Admin.FrmUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Administração</title>

   <style>
        body {
            background-color: #A22C2C; /* vermelho escuro */
            color: darkred; /* amarelo para texto */
            font-family: "Consolas", monospace;
            padding: 20px;
        }

        h1 {
            color: darkred; /* amarelo destacado */
            font-weight: normal;
            border-bottom: 2px solid #9B433D; /* vermelho acobreado */
            padding-bottom: 5px;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: darkred; /* laranja forte */
            font-weight: bold;
        }

        /* estilos de inputs e select */
        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="date"],
        select,
        ddlPerfil {
            background-color: whitesmoke; /* vermelho acobreado */
            border: 1px solid darkred; /* vermelho vivo */
            border-radius: 3px;
            color: darkred; /* amarelo */
            font-family: "Consolas", monospace;
            padding: 8px;
            width: 320px;
            box-sizing: border-box;
            margin-bottom: 20px;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="email"]:focus,
        input[type="password"]:focus,
        input[type="date"]:focus,
        select:focus {
            border-color: whitesmoke; /* amarelo */
            outline: none;
            background-color: whitesmoke; /* vermelho escuro */
        }


        input[type="reset"],
        input[type="submit"],
        .btn-cadastrar {
            background-color: darkred;
            border: none;
            border-radius: 3px;
            color: whitesmoke;
            font-weight: bold;
            padding: 10px 18px;
            cursor: pointer;
            font-family: "Consolas", monospace;
            transition: background-color 0.3s ease;
            margin-right: 10px;
            text-align: center;
        }

        input[type="reset"]:hover,
        input[type="submit"]:hover,
        .btn-cadastrar:hover {
            background-color: #F43737;
        }

        form#form1 {
            max-width: 400px;
            margin: 0 auto;
            background-color: white;
            padding: 30px;
            border-radius: 6px;
            box-shadow: 0 0 10px #000000aa;
        }

    </style>

</head>
<body>
    <form id="form1" runat="server">

            <h1>Cadastro de Usuário</h1>
            <p>
                <label>Perfil Usuário:</label>
                <asp:DropDownList runat="server" ID="ddlPerfil">
                </asp:DropDownList>
            </p>

            <p>
                <label>Primeiro Nome:</label>
                <input type="text"  id="txtPrimeiroNome" runat="server"/>
            </p>
            
            <p>
                <label>Sobrenome:</label>
                <input type="text"  id="txtUltimoNome" runat="server"/>
            </p>

            <p>
                <label>Email:</label>
                <input type="email"  id="txtEmail" runat="server"/>
            </p>

            <p>
                <label>Data de Nascimento:</label>
                <input type="date"  id="txtDataNasc" runat="server"/>
            </p>

            <p>
                <label>Celular:</label>
                <input type="text"  id="txtCelular" runat="server"/>
            </p>

            <p>
                <label>Login:</label>
                <input type="text"  id="txtLogin" runat="server"/>
            </p>

            <p>
                <label>Senha:</label>
                <input type="password" id="txtSenha" runat="server"/>
            </p>

            <p>
                <label>Repetir Senha:</label>
                <input type="password"  id="txtRepetirSenha" runat="server"/>
            </p>

            <p>
                <input type="reset" value="Limpar" />
                <asp:Button Text="Cadastrar" ID="btnCadastar" OnClick="btnCadastar_Click" runat="server" />
                
            </p>
            
            <p>
                <label id="lblMensagem" runat="server"></label>
            </p>

    </form>
</body>
</html>
