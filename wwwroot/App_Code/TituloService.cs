using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for TituloService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
 [System.Web.Script.Services.ScriptService]
public class TituloService : System.Web.Services.WebService
{

    public TituloService()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public List <string> GetRevistaNome(string titulo)
    {
        string connstring = ConfigurationManager.ConnectionStrings["MuseuBibliotecaConnectionString"].ConnectionString;
        List<string> RevistaNome = new List<string>();
        using (SqlConnection con = new SqlConnection(connstring))
        {
            SqlCommand comando = new SqlCommand("spGetRevistaNome",con);
            comando.CommandType = CommandType.StoredProcedure;

            SqlParameter parameto = new SqlParameter("@tituloNome", titulo);
            comando.Parameters.Add(parameto);

            con.Open();
            SqlDataReader rdr = comando.ExecuteReader();

            while (rdr.Read())
            {
                RevistaNome.Add(rdr["Titulo"].ToString());
            }
            return RevistaNome;
        }
    }

}
