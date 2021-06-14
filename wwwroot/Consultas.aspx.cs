using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Consultas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string resultado = "";
        string consultaR = ((LinkButton)sender).Text;

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MuseuBibliotecaConnectionString"].ConnectionString);
        Connection conectar = new Connection();
        conectar.abrirConexao();
        string findAleplh = "select aleph from Revista where titulo = @titulo";
        SqlCommand comando = new SqlCommand(findAleplh, conn);
        comando.Parameters.AddWithValue("titulo", consultaR);
        conn.Open();

        SqlDataReader leitor = comando.ExecuteReader();

        if (leitor.Read())
        {
            resultado = leitor.GetString(0);
        }

        Response.Redirect("~/Resultado.aspx?ID=" + resultado);

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/ConsultaEditor.aspx");
    }
}