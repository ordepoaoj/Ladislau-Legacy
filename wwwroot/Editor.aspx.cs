using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Editor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Update inserir = new Update();
        inserir.abrirConexao();
        if (inserir.updateEditor(NomeEditorTxt.Text, EnderecoTxt.Text, PaisCmb.Text,Email.Text,Telefone.Text) == true)
        {
            string cadastroEditor = "Cadastro realizado com sucesso";
            Page.ClientScript.RegisterStartupScript(Page.GetType(),"Message Box","<script language='javascript'> alert('"+ cadastroEditor + "')</script>");
            ScriptManager.RegisterStartupScript(this, this.GetType(), "onclick", "window.close()", true);
        }
        inserir.fecharconexao();
    }
}