using System;
using System.Collections.Generic;
using System.Linq;

namespace JIM_Project.Admin
{
    internal class PerfilUsuarioDAO
    {
        internal static List<UsuarioPerfil> ListarPerfis()
        {
            List<UsuarioPerfil> lista = null;
            try
            {
                using (var ctx = new DatabaseEntities())
                {
                    lista = ctx.UsuarioPerfis.OrderBy(p => p.Descricao).ToList();

                }
            }
            catch (Exception)
            {
            }

            return lista;
        }
    }

}