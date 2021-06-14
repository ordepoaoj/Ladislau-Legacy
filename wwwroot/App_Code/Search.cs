using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for Search
/// </summary>
public class Search
{

    public Search()
    {

    }
    public void consultaAleph(string Aleph)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MuseuBibliotecaConnectionString"].ConnectionString);
        Connection conectar = new Connection();
        conectar.abrirConexao();
        string findAleplh = "select * from Revista where (Aleph like '%' + @aleph + '%')";
        SqlCommand comando = new SqlCommand(findAleplh, conn);
        comando.Parameters.Add("@aleph", System.Data.SqlDbType.Int).Value = Aleph;

    }
    public void consultaIssn(string Issn)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MuseuBibliotecaConnectionString"].ConnectionString);
        Connection conectar = new Connection();
        conectar.abrirConexao();
        string findISSN = "select * from Revista where (ISSN like '%' + @ISSN + '%')";
        SqlCommand comando = new SqlCommand(findISSN, conn);
        comando.Parameters.Add("@ISSN", System.Data.SqlDbType.Int).Value = Issn;
    }
    public void consultaTitulo(string Titulo)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MuseuBibliotecaConnectionString"].ConnectionString);
        Connection conectar = new Connection();
        conectar.abrirConexao();
        string findTitulo = "select * from Revista where (Titulo like '%' + @titulo + '%')";
        SqlCommand comando = new SqlCommand(findTitulo, conn);
        comando.Parameters.Add("@titulo", System.Data.SqlDbType.Int).Value = Titulo;
    }
    public List<string> consultaPreferencia (string editor)
        {
        List<string> teste = new List<string>();
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MuseuBibliotecaConnectionString"].ConnectionString);
        Connection conectar = new Connection();
        conectar.abrirConexao();
        string findEditor = "select cod_publicacao from Preferencia_Editor where Cod_Editor = @editor";
        SqlCommand comando = new SqlCommand(findEditor, conn);
        comando.Parameters.Add("@titulo", System.Data.SqlDbType.Int).Value = editor;
        SqlDataReader leitor = comando.ExecuteReader();


        while (leitor.Read())
        {
            teste.Add(leitor.ToString());
        }
        return teste;
        }   

}