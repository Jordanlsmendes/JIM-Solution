using System;
using System.Collections.Generic;
using System.Linq;

namespace JIM_Project.Admin
{
    internal class CategoriaDAO
    {
        internal static List<Categoria> ListarCategorias()
        {
            List<Categoria> lista = null;
            try
            {
                using (var ctx = new DatabaseEntities())
                {
                    lista = ctx.Categorias.OrderBy(p => p.Descricao).ToList();

                }
            }
            catch (Exception)
            {
            }

            return lista;
        }
    }
}