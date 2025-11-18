using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JIM_Project.Admin
{
    public partial class FrmProduto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                List<Categoria> categorias = CategoriaDAO.ListarCategorias();
                AtualizarDDLCategorias(categorias);
            }
        }

        private void AtualizarDDLCategorias(List<Categoria> categorias)
        {
            ddlCategoria.DataSource = categorias;
            ddlCategoria.DataTextField = "Descricao";
            ddlCategoria.DataValueField = "IdCategoria";

            ddlCategoria.DataBind();
            ddlCategoria.Items.Insert(0, "Selecione");
        }

        protected void btnCadastar_Click(object sender, EventArgs e)
        {

            int idCategoria = 0;

            if (!int.TryParse(ddlCategoria.SelectedValue, out idCategoria))
            {
                return;
            }

            Produto produto = new Produto();

            produto.CategoriaID = idCategoria;
            

            produto.NomeProduto = txtNome.Value;
            produto.Descricao = txtDescricao.Value;
            produto.ImagemUrl = txtImagem.Value;
            produto.Preco = decimal.Parse(txtPreco.Value);

            produto.DataCadastro = DateTime.Parse(txtDataCad.Value);

            lblMensagem.InnerText = ProdutoDAO.CadastrarProduto(produto);

            LimparCampos();

        }

        private void LimparCampos()
        {
            txtNome.Value = " ";
            txtDescricao.Value = " ";
            txtPreco.Value = " ";
            txtDataCad.Value = " ";
            ddlCategoria.SelectedIndex = 0;

            string script = $"document.getElementById('{txtImagem}').value = '';";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "limparFile", script, true);
        }
    }
}