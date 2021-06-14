using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Revista
/// </summary>
public class Revista
{
    public Revista()
    {
    }
    public string aleph
    {
        get;
        set;
    }
    public string titulo
    {
        get;
        set;
    }
    public string ibict
    {
        get;
        set;
    }
    public string issn
    {
        get;
        set;
    }
    public int ativo
    {
        get;
        set;
    }
    public DateTime chegada
    {
        get;
        set;
    }
    public int aquisicao
    {
        get;
        set;
    }
    public string editor
    {
        get;
        set;
    }
    public string cd_Periodicidade
    {
        get;
        set;
    }
    public Revista obterRevista(string ID)
    {
        Revista revista = new Revista();
        Connection conexao = new Connection();
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MuseuBibliotecaConnectionString"].ConnectionString);
        conn.Open();
        string sqlRevista = "SELECT * from Revista WHERE Titulo = @ID";
        SqlCommand cmd = new SqlCommand(sqlRevista, conn);
        cmd.Parameters.AddWithValue("@ID", ID);
        cmd.ExecuteNonQuery();
        SqlDataReader leitor = cmd.ExecuteReader();
        while (leitor.Read())
        {
            revista.titulo = leitor["titulo"].ToString();
            revista.aleph = leitor["Aleph"].ToString();
            revista.ibict = leitor["IBICT"].ToString();
            revista.issn = leitor["ISSN"].ToString();
            revista.chegada = Convert.ToDateTime(leitor["Chegada"].ToString());
            revista.aquisicao = Convert.ToInt32(leitor["cd_Aquisicao"].ToString());
            revista.editor = leitor["cd_Editor"].ToString();
            revista.editor = leitor["cd_cd_Periodicidade"].ToString();
        }
        conn.Close();

        return revista;
    }

}