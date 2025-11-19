using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using JIM_Project.Admin;

namespace JIM_Project
{
    public partial class FrmLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogar_Click(object sender, EventArgs e)
        {
            string login = txtLogin.Value;
            string senhaNormal = txtSenha.Value;

            if (string.IsNullOrEmpty(login) || string.IsNullOrEmpty(senhaNormal))
            {
                Mensagem("Informe um login e uma senha válidos!");
                return;
            }

            Cliente cliente = ClienteDAO.SelecionarCliente(login);
            if (cliente == null)
            {
                Mensagem("Informe um login e uma senha válidos!");
                return;
            }

            string senhaCriptografada = Sha1Helper.GerarHashSha1(senhaNormal);
            if (senhaCriptografada.Equals(cliente.Senha))
            {
                //Cliente possui permissão para acessar o sistema
                ClienteDAO.SetUltimoAcesso(cliente);
                FormsAuthentication.SetAuthCookie(cliente.Login, true);

                if (cliente.UsuarioPerfilID == 2)
                {

                    Response.Redirect("~/Menu.aspx");
                    Mensagem("Bem vindo cliente");
                }
                if (cliente.UsuarioPerfilID == 1)
                {
                    Response.Redirect("~/Admin/FrmProduto.aspx");
                    Mensagem("Bem vindo administrador");
                }

                txtLogin.Value = "";
                txtSenha.Value = "";

            }
            else
            {
                Mensagem("Informe um login e uma senha válidos!");
                return;
            }
        }

        private void Mensagem(string texto)
        {
            lblMensagem.InnerText = texto;
        }
    }
}