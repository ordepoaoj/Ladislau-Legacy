using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cadastro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Ativo.Checked = true;
        if (User.Identity.ToString() == null)
        {
            Response.Redirect("~/");
        }

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        limpardados();

    }

    protected void BtnEditor_Click(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string cadastroRevista = "A revista " ;
            string cadastroREvista2 = " foi cadastrada :)";
        string cadastroErroRevista = "A revista não foi cadastrada :'(";
        int ativo;
        if (Ativo.Checked == true)
            ativo = 1;
        else
            ativo = 0;

        Update inserir = new Update();
        inserir.abrirConexao();
        if (inserir.insertPeriodico(AlephTxt.Text, TituloTxt.Text, IBITxt.Text, ISSNtxt.Text, ativo, DataTxt.Text, aquisicaoCmb.Text, editorCmb.Text, PeriodicidadeCmb.Text) == true)
        //if (inserir.updatePeriodico(TituloTxt.Text) == true)
        {
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "Message Box", "<script language='javascript'> alert('" + cadastroRevista + TituloTxt.Text + cadastroREvista2 + "')</script>");
            limpardados();
        }
            
        else
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "Message Box", "<script language='javascript'> alert('" + cadastroErroRevista   + "')</script>");
        inserir.fecharconexao();
    }

    public void limpardados()
    {
        AlephTxt.Text = "";
        TituloTxt.Text = "";
        IBITxt.Text = "";
        DataTxt.Text = "";
        Ativo.Checked = true;
        ISSNtxt.Text = "";
    }

    protected void DataTxt_TextChanged(object sender, EventArgs e)
    {

    }
}