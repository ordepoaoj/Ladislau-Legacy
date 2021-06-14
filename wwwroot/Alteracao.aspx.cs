using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Alteracao : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string getValue = Request.QueryString["ID"];
        getValue = getValue.Replace("%20", " ");
        valor.Text = getValue;
    }


    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string cadastroRevista = "A revista ";
        string cadastroREvista2 = " foi alterada :)";
        string cadastroErroRevista = "A revista não foi alterada :'(";
        string aleph = "";
        string titulo = "";
        string ibict = "";
        string issn = "";
        string chegada = "";
        string editor = "";
        string cod_editor = "";
        Update atualizar = new Update();

        int count = ResultadoList.Items.Count;
        for (int i = 0; i < count; i++)
        {
            TextBox alephTxt = ResultadoList.Items[i].FindControl("Alephtxt") as TextBox;
            aleph = alephTxt.Text;
            TextBox tituloTxt = ResultadoList.Items[i].FindControl("TituloTxt") as TextBox;
            titulo = tituloTxt.Text;
            TextBox ibictTxt = ResultadoList.Items[i].FindControl("IBITxt") as TextBox;
            ibict = ibictTxt.Text;
            TextBox issnTxt = ResultadoList.Items[i].FindControl("ISSNtxt") as TextBox;
            issn = issnTxt.Text;
            TextBox chegadaTxt = ResultadoList.Items[i].FindControl("Chegadatxt") as TextBox;
            chegada = chegadaTxt.Text;
            ListBox editorBox = ResultadoList.Items[i].FindControl("EditorBox") as ListBox;
            editor = editorBox.Text;
        }

        cod_editor = atualizar.consultaEditor(editor);

        if (atualizar.updatePeriodico(aleph, titulo, ibict, issn, chegada, cod_editor) == true)
        {
            
            Response.Write("<script LANGUAGE='JavaScript' >alert('"+cadastroRevista + cod_editor + cadastroREvista2 + "');document.location='" + ResolveClientUrl("~/Resultado.aspx?ID=" + aleph) + "';</script>");


        }
        else
        {
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "Message Box", "<script language='javascript'> alert('" + cadastroErroRevista + "')</script>");
        }
    }
}