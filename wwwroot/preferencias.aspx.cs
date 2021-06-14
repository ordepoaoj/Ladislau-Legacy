using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class preferencias : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void EditorLst_SelectedIndexChanged(object sender, EventArgs e)
    {

        Update atualizar = new Update();
        string valor;
        int contador = 1;
        for (int i = 0; i < MuseuChk.Items.Count; i++)
        {
            MuseuChk.Items[i].Selected = false;
        }
        for (int i = 0; i < MuseuChk.Items.Count; i++)
        {
            valor = contador.ToString();
            if (atualizar.checkboxlst(MuseuChk.Text, valor) == valor)
            {
                MuseuChk.Items[i].Selected = true;
            }

            contador++;
        }
        MuseuChk.Visible = true;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int erro = 0;
        for (int i = 0; i < MuseuChk.Items.Count; i++)
        {
            Update atualizar = new Update();
            int contador = i + 1;
            if (MuseuChk.Items[i].Selected)
            {

                string valor = contador.ToString();
                string editorstr = EditorLst.Text;
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
                string editorstr = EditorLst.Text;
                if (atualizar.deletePreferencia(valor, editorstr))
                {

                }
            }
        }
    }
}