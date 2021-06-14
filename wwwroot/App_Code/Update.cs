using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Configuration;

/// <summary>
/// Summary description for Update
/// </summary>
public class Update
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MuseuBibliotecaConnectionString"].ConnectionString);
    SqlDataReader dr;
    private IDataReader reader;

    public Update()
    {
        
    }
    public void abrirConexao()
    {
        
        conn.Open();

    }
    public void fecharconexao()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MuseuBibliotecaConnectionString"].ConnectionString);
        conn.Close();
    }
    public string consultaEditor(string editor)
    {
                try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MuseuBibliotecaConnectionString"].ConnectionString);
            string resultado = "";
            string sqlEditor = "SELECT Editor.Id from Editor WHERE Editor.Nome_Editor = @editor";
            SqlCommand cmd = new SqlCommand(sqlEditor, conn);
            cmd.Parameters.AddWithValue("@editor", editor);
            conn.Open();
            cmd.ExecuteNonQuery();
            SqlDataReader leitor = cmd.ExecuteReader();
            if (leitor.Read())
            {
                resultado = leitor.GetInt32(0).ToString();
            }
            return resultado;
        }
        catch (SqlException erro)
        {
            conn.Close();
            return erro.ToString();
        }
    }
    public bool updateEditor(string nome, string endereco, string pais,string email,string telefone)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MuseuBibliotecaConnectionString"].ConnectionString);
            string sqlEditor = "insert into Editor (Nome_Editor, Endereco, Cod_Pais, Email, Telefone) values (@nome, @endereco, @pais,@email,@telefone)";
            SqlCommand cmd = new SqlCommand(sqlEditor, conn);
            cmd.Parameters.AddWithValue("@nome", nome);
            cmd.Parameters.AddWithValue("@endereco", endereco);
            cmd.Parameters.AddWithValue("@pais", pais);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@telefone", telefone);
            conn.Open();
            cmd.ExecuteNonQuery();

            return true;
        }
        catch (SqlException erro)
        {
            return false;
        }

    }
    public bool insertPeriodico(string aleph, string titulo, string ibict, string issn, int ativo, string chegada, string aquisicao, string editor, string  cd_Periodicidade)
       // public bool updatePeriodico(string titulo)

    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MuseuBibliotecaConnectionString"].ConnectionString);
            string sqlPeriodico = "insert into Revista (Aleph, Titulo, IBICT, ISSN, Ativo, Chegada, cd_Aquisicao, cd_Editor, cd_Periodicidade) values (@aleph, @titulo, @ibict, @issn, @ativo, @chegada, @aquisicao, @editor, @periodicidade)";
            //string sqlPeriodico = "insert into Revista (Titulo)values (@titulo)";
            SqlCommand cmd = new SqlCommand(sqlPeriodico, conn);
            cmd.Parameters.AddWithValue("@aleph", aleph);
            cmd.Parameters.AddWithValue("@titulo", titulo);
            cmd.Parameters.AddWithValue("@ibict", ibict);
            cmd.Parameters.AddWithValue("@issn", issn);
            cmd.Parameters.AddWithValue("@ativo", ativo);
            cmd.Parameters.AddWithValue("@chegada", chegada);
            cmd.Parameters.AddWithValue("@aquisicao", aquisicao);
            cmd.Parameters.AddWithValue("@editor", editor);
            cmd.Parameters.AddWithValue("@periodicidade", cd_Periodicidade);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            return true;
        }
        catch(SqlException erroCadastro)
        {
            Console.Write(erroCadastro);
            return false;
        }
    }
    public bool updatePeriodico(string aleph, string titulo, string ibict, string issn, string chegada, string editor)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MuseuBibliotecaConnectionString"].ConnectionString);
            string sqlPeriodico = "update Revista set Aleph = @aleph, Titulo =  @titulo, IBICT = @ibict, ISSN = @issn, Chegada = @chegada, cd_Editor = @editor where Aleph = @aleph";
            SqlCommand cmd = new SqlCommand(sqlPeriodico, conn);
            cmd.Parameters.AddWithValue("@aleph", aleph);
            cmd.Parameters.AddWithValue("@titulo", titulo);
            cmd.Parameters.AddWithValue("@ibict", ibict);
            cmd.Parameters.AddWithValue("@issn", issn);
            cmd.Parameters.AddWithValue("@chegada", chegada);
            cmd.Parameters.AddWithValue("@editor", editor);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            return true;
        }
        catch(Exception e)
        {
            conn.Close();
            return false;
        }
    }
    public bool disablePeriodico(string aleph)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MuseuBibliotecaConnectionString"].ConnectionString);
            string sqlPeriodico = "update Revista set Ativo = 0 where Aleph = @aleph";
            SqlCommand cmd = new SqlCommand(sqlPeriodico, conn);
            cmd.Parameters.AddWithValue("@aleph", aleph);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            return true;
        }
        catch (Exception e)
        {
            conn.Close();
            return false;
        }
    }
        public void autoCompletar(TextBox text)
    {
        SqlCommand cmdAleph = new SqlCommand("Select Aleph from Revista",conn);
        dr = cmdAleph.ExecuteReader();
        while (dr.Read())
        {
            
        }
        conn.Close();
    }
    public bool updatePreferencia(string cd_Publicacao, string cd_Editor)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MuseuBibliotecaConnectionString"].ConnectionString);
            string sqlEditor = "insert into Preferencia_Editor (Cod_publicacao,Cod_Editor) values (@cd_Publicacao, @cd_Editor)";
            SqlCommand cmd = new SqlCommand(sqlEditor, conn);
            cmd.Parameters.AddWithValue("@cd_Publicacao", cd_Publicacao);
            cmd.Parameters.AddWithValue("@cd_Editor", cd_Editor);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            return true;
        }
        catch (SqlException erro)
        {
            conn.Close();
            return false;
        }
        
    }

    public bool deletePreferencia(string cd_Publicacao, string cd_Editor)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MuseuBibliotecaConnectionString"].ConnectionString);
            string sqlEditor = "delete from Preferencia_Editor where Preferencia_Editor.Cod_Editor = @cd_Editor and Cod_publicacao = @cd_Publicacao";
            SqlCommand cmd = new SqlCommand(sqlEditor, conn);
            cmd.Parameters.AddWithValue("@cd_Publicacao", cd_Publicacao);
            cmd.Parameters.AddWithValue("@cd_Editor", cd_Editor);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            return true;
        }
        catch (Exception e)
        {
            conn.Close();
            return false;
        }
        
    }

    public string checkboxlst(string editor, string publicacao)
    {
        string str = null;
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MuseuBibliotecaConnectionString"].ConnectionString);
            string sqlCheckBox = " select Preferencia_Editor.Cod_publicacao from Preferencia_Editor where Cod_Editor = @editor and Cod_publicacao = @publicacao";
            SqlCommand cmd = new SqlCommand(sqlCheckBox, conn);
            cmd.Parameters.AddWithValue("@editor", editor);
            cmd.Parameters.AddWithValue("@publicacao", publicacao);
            conn.Open();
            cmd.ExecuteNonQuery();

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                str = dr[0].ToString();
            }
            else
            {
                str = "falha";
            }

            conn.Close();
            return str;
        }
        catch (Exception e)
        {
            conn.Close();
            return e.ToString();
        }
        
    }
}