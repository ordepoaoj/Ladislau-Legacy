using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html;
using iTextSharp.text.html.simpleparser;
using System.Text;

public partial class Relatorio_Geral : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (EscolhaBox.SelectedIndex == 0)
        {
                Response.Clear();
                Response.AddHeader("content-disposition", "attachment;filename = Brasil.xls");
                Response.ContentType = "application/vnd.xls";
                System.IO.StringWriter stringWrite = new System.IO.StringWriter();
                System.Web.UI.HtmlTextWriter htmlWrite = new HtmlTextWriter(stringWrite);
                BrasilView.RenderControl(htmlWrite);
                Response.Write(stringWrite.ToString());
                Response.End();   
        }
        if (EscolhaBox.SelectedIndex == 1)
        {
            Response.Clear();
            Response.AddHeader("content-disposition", "attachment;filename = America.xls");
            Response.ContentType = "application/vnd.xls";
            System.IO.StringWriter stringWrite = new System.IO.StringWriter();
            System.Web.UI.HtmlTextWriter htmlWrite = new HtmlTextWriter(stringWrite);
            AmericaView.RenderControl(htmlWrite);
            Response.Write(stringWrite.ToString());
            Response.End();
        }
        if (EscolhaBox.SelectedIndex == 3)
        {
            Response.Clear();
            Response.AddHeader("content-disposition", "attachment;filename = Europa.xls");
            Response.ContentType = "application/vnd.xls";
            System.IO.StringWriter stringWrite = new System.IO.StringWriter();
            System.Web.UI.HtmlTextWriter htmlWrite = new HtmlTextWriter(stringWrite);
            EuropaView.RenderControl(htmlWrite);
            Response.Write(stringWrite.ToString());
            Response.End();
        }
        if (EscolhaBox.SelectedIndex == 2)
        {
            Response.Clear();
            Response.AddHeader("content-disposition", "attachment;filename = Asia.xls");
            Response.ContentType = "application/vnd.xls";
            System.IO.StringWriter stringWrite = new System.IO.StringWriter();
            System.Web.UI.HtmlTextWriter htmlWrite = new HtmlTextWriter(stringWrite);
            AsiaView.RenderControl(htmlWrite);
            Response.Write(stringWrite.ToString());
            Response.End();
        }
        if (EscolhaBox.SelectedIndex == 4)
        {
            Response.Clear();
            Response.AddHeader("content-disposition", "attachment;filename = Africa.xls");
            Response.ContentType = "application/vnd.xls";
            System.IO.StringWriter stringWrite = new System.IO.StringWriter();
            System.Web.UI.HtmlTextWriter htmlWrite = new HtmlTextWriter(stringWrite);
            AfricaView.RenderControl(htmlWrite);
            Response.Write(stringWrite.ToString());
            Response.End();
        }
        if (EscolhaBox.SelectedIndex == 5)
        {
            Response.Clear();
            Response.AddHeader("content-disposition", "attachment;filename = Oceania.xls");
            Response.ContentType = "application/vnd.xls";
            System.IO.StringWriter stringWrite = new System.IO.StringWriter();
            System.Web.UI.HtmlTextWriter htmlWrite = new HtmlTextWriter(stringWrite);
            OceaniaView.RenderControl(htmlWrite);
            Response.Write(stringWrite.ToString());
            Response.End();
        }
        
    }
    public void ExportPDFClick(object sender, EventArgs e)
    {
        if (EscolhaBox.SelectedIndex == 0)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=Vithal_Wadje.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            BrasilView.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
            BrasilView.AllowPaging = true;
            BrasilView.DataBind();

        }
        if (EscolhaBox.SelectedIndex == 1)
        {
            using (StringWriter sw = new StringWriter())
            {
                using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                {
                    PdfPTable pdftable = new PdfPTable(AmericaView.HeaderRow.Cells.Count);
                    pdftable.HeaderRows = 1;

                    foreach (TableCell headerCell in AmericaView.HeaderRow.Cells)
                    {
                        Font font = new Font();
                        font.Color = new BaseColor(AmericaView.HeaderStyle.ForeColor);
                        AmericaView.Attributes["style"] = "border-collapse:separate";


                        PdfPCell pdfPCell = new PdfPCell(new Phrase(headerCell.Text, font));
                        pdfPCell.BackgroundColor = new BaseColor(AmericaView.HeaderStyle.BackColor);
                        pdftable.AddCell(pdfPCell);

                    }

                    foreach (GridViewRow gridViewRow in AmericaView.Rows)
                    {
                        foreach (TableCell tableCell in gridViewRow.Cells)
                        {
                            Font font = new Font();
                            font.Color = new BaseColor(AmericaView.RowStyle.ForeColor);
                            AmericaView.Attributes["style"] = "border-collapse:separate";
                            PdfPCell pdfPCell = new PdfPCell(new Phrase(tableCell.Text));
                            pdfPCell.BackgroundColor = new BaseColor(AmericaView.RowStyle.BackColor);
                            pdftable.AddCell(pdfPCell);


                        }
                    }
                    Document pdfDoc = new Document(PageSize.A4.Rotate(), 4f, 4f, 4f, 4f);
                    PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                    pdfDoc.Open();
                    pdfDoc.Add(pdftable);
                    pdfDoc.Close();


                    Response.ContentType = "application/pdf";
                    Response.AddHeader("content-disposition", "attachment;filename=America.pdf");
                    Response.Write(pdfDoc);
                    Response.Flush();
                    Response.End();
                    /*Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    StringWriter srw = new StringWriter();
                    HtmlTextWriter hrw = new HtmlTextWriter(srw);
                    AmericaView.AllowPaging = false;
                    AmericaView.DataBind();
                    AmericaView.RenderControl(hrw);
                    AmericaView.HeaderRow.Style.Add("width", "15%");
                    AmericaView.HeaderRow.Style.Add("font-size", "10px");
                    AmericaView.Style.Add("text-decoration", "none");
                    AmericaView.Style.Add("font-family", "Arial, Helvetica, sans-serif;");
                    AmericaView.Style.Add("font-size", "8px");
                    StringReader sr = new StringReader(srw.ToString());*/


                }
            }
        }
        if (EscolhaBox.SelectedIndex == 3)
        {
            using (StringWriter sw = new StringWriter())
            {
                using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                {
                    PdfPTable pdftable = new PdfPTable(EuropaView.HeaderRow.Cells.Count);
                    pdftable.HeaderRows = 1;

                    foreach (TableCell headerCell in EuropaView.HeaderRow.Cells)
                    {
                        Font font = new Font();
                        font.Color = new BaseColor(EuropaView.HeaderStyle.ForeColor);
                        AmericaView.Attributes["style"] = "border-collapse:separate";


                        PdfPCell pdfPCell = new PdfPCell(new Phrase(headerCell.Text, font));
                        pdfPCell.BackgroundColor = new BaseColor(EuropaView.HeaderStyle.BackColor);
                        pdftable.AddCell(pdfPCell);

                    }

                    foreach (GridViewRow gridViewRow in EuropaView.Rows)
                    {
                        foreach (TableCell tableCell in gridViewRow.Cells)
                        {
                            Font font = new Font();
                            font.Color = new BaseColor(EuropaView.RowStyle.ForeColor);
                            EuropaView.Attributes["style"] = "border-collapse:separate";
                            PdfPCell pdfPCell = new PdfPCell(new Phrase(tableCell.Text));
                            pdfPCell.BackgroundColor = new BaseColor(EuropaView.RowStyle.BackColor);
                            pdftable.AddCell(pdfPCell);


                        }
                    }
                    Document pdfDoc = new Document(PageSize.A4.Rotate(), 4f, 4f, 4f, 4f);
                    PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                    pdfDoc.Open();
                    pdfDoc.Add(pdftable);
                    pdfDoc.Close();


                    Response.ContentType = "application/pdf";
                    Response.AddHeader("content-disposition", "attachment;filename=Europa.pdf");
                    Response.Write(pdfDoc);
                    Response.Flush();
                    Response.End();
                }
            }
        }
        if (EscolhaBox.SelectedIndex == 2)
        {
            using (StringWriter saw = new StringWriter())
            {
                using (HtmlTextWriter hw = new HtmlTextWriter(saw))
                {
                    PdfPTable pdftable = new PdfPTable(AsiaView.HeaderRow.Cells.Count);
                    pdftable.HeaderRows = 1;

                    foreach (TableCell headerCell in AsiaView.HeaderRow.Cells)
                    {
                        Font font = new Font();
                        font.Color = new BaseColor(AsiaView.HeaderStyle.ForeColor);
                        AmericaView.Attributes["style"] = "border-collapse:separate";


                        PdfPCell pdfPCell = new PdfPCell(new Phrase(headerCell.Text, font));
                        pdfPCell.BackgroundColor = new BaseColor(AsiaView.HeaderStyle.BackColor);
                        pdftable.AddCell(pdfPCell);

                    }

                    foreach (GridViewRow gridViewRow in AsiaView.Rows)
                    {
                        foreach (TableCell tableCell in gridViewRow.Cells)
                        {
                            Font font = new Font();
                            font.Color = new BaseColor(AsiaView.RowStyle.ForeColor);
                            AsiaView.Attributes["style"] = "border-collapse:separate";
                            PdfPCell pdfPCell = new PdfPCell(new Phrase(tableCell.Text));
                            pdfPCell.BackgroundColor = new BaseColor(AsiaView.RowStyle.BackColor);
                            pdftable.AddCell(pdfPCell);


                        }
                    }
                    Document pdfDoc = new Document(PageSize.A4.Rotate(), 4f, 4f, 4f, 4f);
                    PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                    pdfDoc.Open();
                    pdfDoc.Add(pdftable);
                    pdfDoc.Close();


                    Response.ContentType = "application/pdf";
                    Response.AddHeader("content-disposition", "attachment;filename=Asia.pdf");
                    Response.Write(pdfDoc);
                    Response.Flush();
                    Response.End();
                }
            }
        }
        if (EscolhaBox.SelectedIndex == 4)
        {
            using (StringWriter safrw = new StringWriter())
            {
                using (HtmlTextWriter hw = new HtmlTextWriter(safrw))
                {
                    PdfPTable pdftable = new PdfPTable(AfricaView.HeaderRow.Cells.Count);
                    pdftable.HeaderRows = 1;

                    foreach (TableCell headerCell in AfricaView.HeaderRow.Cells)
                    {
                        Font font = new Font();
                        font.Color = new BaseColor(AfricaView.HeaderStyle.ForeColor);
                        AfricaView.Attributes["style"] = "border-collapse:separate";


                        PdfPCell pdfPCell = new PdfPCell(new Phrase(headerCell.Text, font));
                        pdfPCell.BackgroundColor = new BaseColor(AfricaView.HeaderStyle.BackColor);
                        pdftable.AddCell(pdfPCell);

                    }

                    foreach (GridViewRow gridViewRow in AfricaView.Rows)
                    {
                        foreach (TableCell tableCell in gridViewRow.Cells)
                        {
                            Font font = new Font();
                            font.Color = new BaseColor(AfricaView.RowStyle.ForeColor);
                            AfricaView.Attributes["style"] = "border-collapse:separate";
                            PdfPCell pdfPCell = new PdfPCell(new Phrase(tableCell.Text));
                            pdfPCell.BackgroundColor = new BaseColor(AsiaView.RowStyle.BackColor);
                            pdftable.AddCell(pdfPCell);


                        }
                    }
                    Document pdfDoc = new Document(PageSize.A4.Rotate(), 4f, 4f, 4f, 4f);
                    PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                    pdfDoc.Open();
                    pdfDoc.Add(pdftable);
                    pdfDoc.Close();


                    Response.ContentType = "application/pdf";
                    Response.AddHeader("content-disposition", "attachment;filename=Africa.pdf");
                    Response.Write(pdfDoc);
                    Response.Flush();
                    Response.End();
                }
            }
        }
        if (EscolhaBox.SelectedIndex == 5)
        {
            using (StringWriter safrw = new StringWriter())
            {
                using (HtmlTextWriter hw = new HtmlTextWriter(safrw))
                {
                    PdfPTable pdftable = new PdfPTable(OceaniaView.HeaderRow.Cells.Count);
                    pdftable.HeaderRows = 1;

                    foreach (TableCell headerCell in OceaniaView.HeaderRow.Cells)
                    {
                        Font font = new Font();
                        font.Color = new BaseColor(OceaniaView.HeaderStyle.ForeColor);
                        OceaniaView.Attributes["style"] = "border-collapse:separate";


                        PdfPCell pdfPCell = new PdfPCell(new Phrase(headerCell.Text, font));
                        pdfPCell.BackgroundColor = new BaseColor(OceaniaView.HeaderStyle.BackColor);
                        pdftable.AddCell(pdfPCell);

                    }

                    foreach (GridViewRow gridViewRow in OceaniaView.Rows)
                    {
                        foreach (TableCell tableCell in gridViewRow.Cells)
                        {
                            Font font = new Font();
                            font.Color = new BaseColor(OceaniaView.RowStyle.ForeColor);
                            OceaniaView.Attributes["style"] = "border-collapse:separate";
                            PdfPCell pdfPCell = new PdfPCell(new Phrase(tableCell.Text));
                            pdfPCell.BackgroundColor = new BaseColor(AsiaView.RowStyle.BackColor);
                            pdftable.AddCell(pdfPCell);


                        }
                    }
                    Document pdfDoc = new Document(PageSize.A4.Rotate(), 4f, 4f, 4f, 4f);
                    PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                    pdfDoc.Open();
                    pdfDoc.Add(pdftable);
                    pdfDoc.Close();


                    Response.ContentType = "application/pdf";
                    Response.AddHeader("content-disposition", "attachment;filename=Oceania.pdf");
                    Response.Write(pdfDoc);
                    Response.Flush();
                    Response.End();
                }
            }
        }
    }       
    
         
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Confirms that an HtmlForm control is rendered for the
        /* specified ASP.NET server control at run time. */
    }



    protected void PrintBtn_Click(object sender, EventArgs e)
    {
        if (EscolhaBox.SelectedIndex == 0)
        {
            BrasilView.UseAccessibleHeader = true;
            BrasilView.HeaderRow.TableSection = TableRowSection.TableHeader;
            BrasilView.FooterRow.TableSection = TableRowSection.TableFooter;
            BrasilView.Attributes["style"] = "border-collapse:separate";
            foreach (GridViewRow row in BrasilView.Rows)
            {
                if (row.RowIndex % 10 == 0 && row.RowIndex != 0)
                {
                    row.Attributes["style"] = "page-break-after:always;";
                }
            }
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            BrasilView.RenderControl(hw);
            string gridHTML = sw.ToString().Replace("\"", "'").Replace(System.Environment.NewLine, "");
            StringBuilder sb = new StringBuilder();
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload = new function(){");
            sb.Append("var printWin = window.open('', '', 'left=0");
            sb.Append(",top=0,width=1000,height=600,status=0');");
            sb.Append("printWin.document.write(\"");
            string style = "<style type = 'text/css'>thead {display:table-header-group;} tfoot{display:table-footer-group;}</style>";
            sb.Append(style + gridHTML);
            sb.Append("\");");
            sb.Append("printWin.document.close();");
            sb.Append("printWin.focus();");
            sb.Append("printWin.print();");
            sb.Append("printWin.close();");
            sb.Append("};");
            sb.Append("</script>");
            ClientScript.RegisterStartupScript(this.GetType(), "GridPrint", sb.ToString());
            BrasilView.DataBind();
        }
        if (EscolhaBox.SelectedIndex == 1)
        {
            AmericaView.UseAccessibleHeader = true;
            AmericaView.HeaderRow.TableSection = TableRowSection.TableHeader;
            AmericaView.FooterRow.TableSection = TableRowSection.TableFooter;
            AmericaView.Attributes["style"] = "border-collapse:separate";
            foreach (GridViewRow row in AmericaView.Rows)
            {
                if (row.RowIndex % 10 == 0 && row.RowIndex != 0)
                {
                    row.Attributes["style"] = "page-break-after:always;";
                }
            }
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            AmericaView.RenderControl(hw);
            string gridHTML = sw.ToString().Replace("\"", "'").Replace(System.Environment.NewLine, "");
            StringBuilder sb = new StringBuilder();
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload = new function(){");
            sb.Append("var printWin = window.open('', '', 'left=0");
            sb.Append(",top=0,width=1000,height=600,status=0');");
            sb.Append("printWin.document.write(\"");
            string style = "<style type = 'text/css'>thead {display:table-header-group;} tfoot{display:table-footer-group;}</style>";
            sb.Append(style + gridHTML);
            sb.Append("\");");
            sb.Append("printWin.document.close();");
            sb.Append("printWin.focus();");
            sb.Append("printWin.print();");
            sb.Append("printWin.close();");
            sb.Append("};");
            sb.Append("</script>");
            ClientScript.RegisterStartupScript(this.GetType(), "GridPrint", sb.ToString());
            AmericaView.DataBind();
        }
        if (EscolhaBox.SelectedIndex == 2)
        {
            AsiaView.UseAccessibleHeader = true;
            AsiaView.HeaderRow.TableSection = TableRowSection.TableHeader;
            AsiaView.FooterRow.TableSection = TableRowSection.TableFooter;
            AsiaView.Attributes["style"] = "border-collapse:separate";
            foreach (GridViewRow row in AsiaView.Rows)
            {
                if (row.RowIndex % 10 == 0 && row.RowIndex != 0)
                {
                    row.Attributes["style"] = "page-break-after:always;";
                }
            }
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            AsiaView.RenderControl(hw);
            string gridHTML = sw.ToString().Replace("\"", "'").Replace(System.Environment.NewLine, "");
            StringBuilder sb = new StringBuilder();
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload = new function(){");
            sb.Append("var printWin = window.open('', '', 'left=0");
            sb.Append(",top=0,width=1000,height=600,status=0');");
            sb.Append("printWin.document.write(\"");
            string style = "<style type = 'text/css'>thead {display:table-header-group;} tfoot{display:table-footer-group;}</style>";
            sb.Append(style + gridHTML);
            sb.Append("\");");
            sb.Append("printWin.document.close();");
            sb.Append("printWin.focus();");
            sb.Append("printWin.print();");
            sb.Append("printWin.close();");
            sb.Append("};");
            sb.Append("</script>");
            ClientScript.RegisterStartupScript(this.GetType(), "GridPrint", sb.ToString());
            AsiaView.DataBind();
        }
        if (EscolhaBox.SelectedIndex == 3)
        {
            EuropaView.UseAccessibleHeader = true;
            EuropaView.HeaderRow.TableSection = TableRowSection.TableHeader;
            EuropaView.FooterRow.TableSection = TableRowSection.TableFooter;
            EuropaView.Attributes["style"] = "border-collapse:separate";
            foreach (GridViewRow row in EuropaView.Rows)
            {
                if (row.RowIndex % 10 == 0 && row.RowIndex != 0)
                {
                    row.Attributes["style"] = "page-break-after:always;";
                }
            }
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            EuropaView.RenderControl(hw);
            string gridHTML = sw.ToString().Replace("\"", "'").Replace(System.Environment.NewLine, "");
            StringBuilder sb = new StringBuilder();
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload = new function(){");
            sb.Append("var printWin = window.open('', '', 'left=0");
            sb.Append(",top=0,width=1000,height=600,status=0');");
            sb.Append("printWin.document.write(\"");
            string style = "<style type = 'text/css'>thead {display:table-header-group;} tfoot{display:table-footer-group;}</style>";
            sb.Append(style + gridHTML);
            sb.Append("\");");
            sb.Append("printWin.document.close();");
            sb.Append("printWin.focus();");
            sb.Append("printWin.print();");
            sb.Append("printWin.close();");
            sb.Append("};");
            sb.Append("</script>");
            ClientScript.RegisterStartupScript(this.GetType(), "GridPrint", sb.ToString());
            EuropaView.DataBind();
        }
        if (EscolhaBox.SelectedIndex == 4)
        {
            AfricaView.UseAccessibleHeader = true;
            AfricaView.HeaderRow.TableSection = TableRowSection.TableHeader;
            AfricaView.FooterRow.TableSection = TableRowSection.TableFooter;
            AfricaView.Attributes["style"] = "border-collapse:separate";
            foreach (GridViewRow row in AfricaView.Rows)
            {
                if (row.RowIndex % 10 == 0 && row.RowIndex != 0)
                {
                    row.Attributes["style"] = "page-break-after:always;";
                }
            }
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            AfricaView.RenderControl(hw);
            string gridHTML = sw.ToString().Replace("\"", "'").Replace(System.Environment.NewLine, "");
            StringBuilder sb = new StringBuilder();
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload = new function(){");
            sb.Append("var printWin = window.open('', '', 'left=0");
            sb.Append(",top=0,width=1000,height=600,status=0');");
            sb.Append("printWin.document.write(\"");
            string style = "<style type = 'text/css'>thead {display:table-header-group;} tfoot{display:table-footer-group;}</style>";
            sb.Append(style + gridHTML);
            sb.Append("\");");
            sb.Append("printWin.document.close();");
            sb.Append("printWin.focus();");
            sb.Append("printWin.print();");
            sb.Append("printWin.close();");
            sb.Append("};");
            sb.Append("</script>");
            ClientScript.RegisterStartupScript(this.GetType(), "GridPrint", sb.ToString());
            AfricaView.DataBind();
        }
        if (EscolhaBox.SelectedIndex == 5)
        {
            OceaniaView.UseAccessibleHeader = true;
            OceaniaView.HeaderRow.TableSection = TableRowSection.TableHeader;
            OceaniaView.FooterRow.TableSection = TableRowSection.TableFooter;
            OceaniaView.Attributes["style"] = "border-collapse:separate";
            foreach (GridViewRow row in OceaniaView.Rows)
            {
                if (row.RowIndex % 10 == 0 && row.RowIndex != 0)
                {
                    row.Attributes["style"] = "page-break-after:always;";
                }
            }
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            OceaniaView.RenderControl(hw);
            string gridHTML = sw.ToString().Replace("\"", "'").Replace(System.Environment.NewLine, "");
            StringBuilder sb = new StringBuilder();
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload = new function(){");
            sb.Append("var printWin = window.open('', '', 'left=0");
            sb.Append(",top=0,width=1000,height=600,status=0');");
            sb.Append("printWin.document.write(\"");
            string style = "<style type = 'text/css'>thead {display:table-header-group;} tfoot{display:table-footer-group;}</style>";
            sb.Append(style + gridHTML);
            sb.Append("\");");
            sb.Append("printWin.document.close();");
            sb.Append("printWin.focus();");
            sb.Append("printWin.print();");
            sb.Append("printWin.close();");
            sb.Append("};");
            sb.Append("</script>");
            ClientScript.RegisterStartupScript(this.GetType(), "GridPrint", sb.ToString());
            OceaniaView.DataBind();
        }
    }
}