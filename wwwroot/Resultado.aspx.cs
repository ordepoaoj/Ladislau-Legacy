using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Resultado : System.Web.UI.Page
{
    Update atualizar = new Update();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string getValue = Request.QueryString["ID"];
            getValue = getValue.Replace("%20", " ");
            teste.Text = getValue;
        }
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //DataList1.

        Response.Redirect("~/Alteracao.aspx?ID=" + Request.QueryString["ID"]);
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (atualizar.disablePeriodico(Request.QueryString["ID"]) == true)
        {

            Page.ClientScript.RegisterStartupScript(Page.GetType(), "Message Box", "<script language='javascript'> alert(Revista desativada)</script>");
            Response.Redirect("~/Consultas.aspx");


        }
        else
        {
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "Message Box", "<script language='javascript'> alert(Revista intacta (erro))</script>");
        }
    }
}