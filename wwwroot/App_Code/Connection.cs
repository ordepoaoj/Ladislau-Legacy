using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for Connection
/// </summary>
public class Connection
{

    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MuseuBibliotecaConnectionString"].ConnectionString);
    public Connection()
    {
        
    }
    public Boolean abrirConexao()
    {
        try
        {
            conn.Open();
            return true;
        }
        catch (SqlException e)
        {
            return false;
        }
        
    }

}