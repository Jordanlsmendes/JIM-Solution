using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JIM_Project.Admin
{
    public partial class FrmUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                List<UsuarioPerfil> perfis = PerfilUsuarioDAO.ListarPerfis();
                AtualizarDDLPerfis(perfis);
            }
        }

        private void AtualizarDDLPerfis(List<UsuarioPerfil> perfis)
        {
            ddlPerfil.DataSource = perfis;
            ddlPerfil.DataTextField = "Descricao";
            ddlPerfil.DataValueField = "IdPerfil";

            ddlPerfil.DataBind();
            ddlPerfil.Items.Insert(0, "Selecione");
        }

        protected void btnCadastar_Click(object sender, EventArgs e)
        {
            string senha = txtSenha.Value;
            string repetirSenha = txtRepetirSenha.Value;

            if (!senha.Equals(repetirSenha))
            {
                return;
            }

            int idPerfil = 0;

            if (!int.TryParse(ddlPerfil.SelectedValue, out idPerfil))
            {
                return;
            }

            Cliente user = new Cliente();

            user.UsuarioPerfilID = idPerfil;

            user.PrimeiroNome = txtPrimeiroNome.Value;
            user.UltimoNome = txtUltimoNome.Value;
            user.Celular = txtCelular.Value;
            user.Email = txtEmail.Value;
            user.Login = txtLogin.Value;

            user.DataNasc = DateTime.Parse(txtDataNasc.Value);
            user.Senha = Sha1Helper.GerarHashSha1(senha);

            lblMensagem.InnerText = ClienteDAO.CadastrarCliente(user);

            LimparCampos();
            Response.Redirect("~/FrmLogin");
        }

        private void LimparCampos()
        {
            txtSenha.Value = " ";
            txtRepetirSenha.Value = " ";
            txtPrimeiroNome.Value = " ";
            txtUltimoNome.Value = " ";
            txtCelular.Value = " ";
            txtEmail.Value = " ";
            txtLogin.Value = " ";
            txtDataNasc.Value = " ";
            ddlPerfil.SelectedIndex = 0;
        }
    }

}