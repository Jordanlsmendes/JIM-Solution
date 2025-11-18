using System;
using System.Collections.Generic;
using System.Linq;

namespace JIM_Project.Admin
{
    internal class ProdutoDAO
    {
        internal static string CadastrarProduto(Produto produto)
        {
            if (produto == null)
            {
                return "Produto vazio!";
            }
            string mensagem = string.Empty;
            try
            {
                using (var ctx = new DatabaseEntities())
                {
                    ctx.Produtos.Add(produto);
                    ctx.SaveChanges();
                    mensagem = "Produto cadastrado com sucesso!";
                }

            }
            catch (Exception ex)
            {
                mensagem = ex.Message;
            }

            return mensagem;
        }

        internal static Produto SelecionarProduto(string nome)
        {
            try
            {
                using (var ctx = new DatabaseEntities())
                {
                    Produto produto = ctx.Produtos.FirstOrDefault(
                        u => u.NomeProduto == nome);
                    return produto;
                }
            }
            catch (Exception ex)
            {
                return null;
            }
        }
    }
}