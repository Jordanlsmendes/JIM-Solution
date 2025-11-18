using System;
using System.Linq;

namespace JIM_Project.Admin
{
    internal class ClienteDAO
    {
        internal static string CadastrarCliente(Cliente cliente)
        {
            if (cliente == null)
            {
                return "Cliente vazio!";
            }
            string mensagem = string.Empty;
            try
            {
                using (var ctx = new DatabaseEntities())
                {
                    ctx.Clientes.Add(cliente);
                    ctx.SaveChanges();
                    mensagem = "Cliente cadastrado com sucesso!";
                }

            }
            catch (Exception ex)
            {
                mensagem = ex.Message;
            }

            return mensagem;
        }

        internal static Cliente SelecionarCliente(string login)
        {
            try
            {
                using (var ctx = new DatabaseEntities())
                {
                    Cliente cliente = ctx.Clientes.FirstOrDefault(
                        u => u.Login == login);
                    return cliente;
                }
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        internal static void SetUltimoAcesso(Cliente cliente)
        {
            try
            {
                using (var ctx = new DatabaseEntities())
                {
                    var usuario = ctx.Clientes.FirstOrDefault(
                        u => u.IdCliente == cliente.IdCliente);

                    usuario.UltimoAcesso = DateTime.Now;
                    ctx.SaveChanges();
                }
            }
            catch (Exception ex)
            {
            }
        }
    }
}