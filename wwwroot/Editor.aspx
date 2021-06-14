<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Editor.aspx.cs" Inherits="Editor" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    
<head runat="server">
    <title>
        Cadastro de Editor
    </title>
    <style>
        .form-control {
  display: block;
  padding: 6px 12px;
  font-size: 14px;
  line-height: 1.428571429;
  color: #555555;
  vertical-align: middle;
  background-color: #ffffff;
  border: 1px solid #cccccc;
  border-radius: 4px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -webkit-transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
          transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
}
    </style>    
</head>
<body>
    
    <form id="form1" runat="server">
    <div>
    
        Nome do Editor<br />
        <asp:TextBox ID="NomeEditorTxt" runat="server" CssClass="form-control" Height="26px" Width="241px"></asp:TextBox>
    
        <br />
        Endereço<asp:TextBox ID="EnderecoTxt" runat="server" CssClass="form-control" Height="24px" Width="251px"></asp:TextBox>
    
        <br />
        E-mail:<asp:TextBox ID="Email" runat="server" CssClass="form-control" Height="24px" Width="251px" TextMode="Email"></asp:TextBox>
    
        <br />
        Telefone:<asp:TextBox ID="Telefone" runat="server" CssClass="form-control" Height="24px" Width="251px" TextMode="Phone"></asp:TextBox>
    
        <br />
        Pais<br />
        <asp:ListBox ID="PaisCmb" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="Nome_Pais" DataValueField="Id" Height="35px" Rows="1" Width="130px"></asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="SELECT * FROM [Pais_Editor] ORDER BY [Nome_Pais]"></asp:SqlDataSource>
        <br />
        <asp:Button ID="Button1" runat="server" CssClass="form-control" Text="Salvar" OnClick="Button1_Click" />
        <%--<asp:Button ID="Button2" runat="server" CssClass="form-control" Text="Cancelar" />--%>
        <br />
    
    </div>
    </form>
</body>
</html>
