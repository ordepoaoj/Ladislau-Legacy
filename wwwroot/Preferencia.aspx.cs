using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Preferencia : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int erro = 0;
        for (int i = 0; i < PreferenceBox.Items.Count; i++)
        {
            Update atualizar = new Update();
            int contador = i + 1;
            if (PreferenceBox.Items[i].Selected)
            {

                string valor = contador.ToString();
                string editorstr = editorCmb.Text;
                if (atualizar.updatePreferencia(valor, editorstr) == true)
                {
                }
                else
                {
                    erro++;
                }
            }
            else
            {
                string valor = contador.ToString();
                string editorstr = editorCmb.Text;
                if (atualizar.deletePreferencia(valor, editorstr))
                {

                }
            }
        }
    }

    protected void editorCmb_SelectedIndexChanged(object sender, EventArgs e)
    {

    }



    protected void editorCmb_SelectedIndexChanged1(object sender, EventArgs e)
    {

        Update atualizar = new Update();
        string valor;
        int contador = 1;
        for (int i = 0; i < PreferenceBox.Items.Count; i++)
        {
            PreferenceBox.Items[i].Selected = false;
        }
        for (int i = 0; i < PreferenceBox.Items.Count; i++)
        {
            valor = contador.ToString();
            if (atualizar.checkboxlst(editorCmb.Text, valor) == valor)
            {
                PreferenceBox.Items[i].Selected = true;
            }

            contador++;
        }
        PreferenceBox.Visible = true;
    }
}