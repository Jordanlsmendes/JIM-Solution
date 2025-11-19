<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmProduto.aspx.cs" Inherits="JIM_Project.Admin.FrmProduto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Administração</title>
   <style>
        body {
            background-color: #A22C2C /* vermelho escuro */
            color: darkred; /* amarelo para texto */
            font-family: "Consolas", monospace;
            padding: 20px;
        }

        h1 {
            color: darkred; 
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
        ddlCategoria {
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
        <div>
            <h1>Administração de Produtos</h1>
            <p>
                <label>Categoria:</label>
                <asp:DropDownList runat="server" ID="ddlCategoria">
                </asp:DropDownList>
            </p>

            <p>
                <label>Nome:</label>
                <input type="text"  id="txtNome" runat="server"/>
            </p>

            <p>
                <label>Descrição:</label>
                <input type="text"  id="txtDescricao" runat="server"/>
            </p>
            
            <p>
                <label>Data de Cadastro:</label>
                <input type="date"  id="txtDataCad" runat="server"/>
            </p>

            <p>
                <label>Imagem:</label>
                <input type="file"  id="txtImagem" runat="server"/>
            </p>

            <p>
                <label>Preco:</label>
                <input type="number" id="txtPreco" runat="server"/>
            </p>
            </div>
            
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
