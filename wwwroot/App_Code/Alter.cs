using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Alter
/// </summary>
public class Alter
{
    public Alter()
    {

    }
    public bool alterarEditor(string ID, string Editor)
    {
        try
        {
            Connection conexao = new Connection();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MuseuBibliotecaConnectionString"].ConnectionString);
            conn.Open();
            conexao.abrirConexao();
            //string sqlPeriodico = "insert into Revista (Aleph, Titulo, IBICT, ISSN, Ativo, Chegada, cd_Aquisicao, cd_Editor, cd_Periodicidade) values (@aleph, @titulo, @ibict, @issn, @ativo, @chegada, @aquisicao, @editor, @periodicidade)";
            string sqlPeriodico = "update Revista (cd_Editor) values (@editor) where titulo = @id";
            SqlCommand cmd = new SqlCommand(sqlPeriodico, conn);
            cmd.Parameters.AddWithValue("@editor", Editor);
            cmd.Parameters.AddWithValue("@id", ID);
            cmd.ExecuteNonQuery();
            return true;
        }
        catch (Exception e)
        {
            return false;
        }

    }
    public bool alterarPeriodico(string ID,string aleph, string titulo, string ibict, string issn, int ativo, string chegada, string aquisicao, string cd_Periodicidade)
    {
        try
        {
            Connection conexao = new Connection();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MuseuBibliotecaConnectionString"].ConnectionString);
            conn.Open();
            conexao.abrirConexao();
            string sqlPeriodico = "update Revista (Aleph, Titulo, IBICT, ISSN, Ativo, Chegada, cd_Aquisicao, cd_Periodicidade) values (@aleph, @titulo, @ibict, @issn, @ativo, @chegada, @aquisicao, @periodicidade) where titulo = @id";
            SqlCommand cmd = new SqlCommand(sqlPeriodico, conn);
            cmd.Parameters.AddWithValue("@aleph", aleph);
            cmd.Parameters.AddWithValue("@titulo", titulo);
            cmd.Parameters.AddWithValue("@ibict", ibict);
            cmd.Parameters.AddWithValue("@issn", issn);
            cmd.Parameters.AddWithValue("@ativo", ativo);
            cmd.Parameters.AddWithValue("@chegada", chegada);
            cmd.Parameters.AddWithValue("@aquisicao", aquisicao);
            cmd.Parameters.AddWithValue("@periodicidade", cd_Periodicidade);
            cmd.Parameters.AddWithValue("@ID", ID);
            cmd.ExecuteNonQuery();
            return true;
        }
        catch (Exception e)
        {
            return false;
        }
    }
}