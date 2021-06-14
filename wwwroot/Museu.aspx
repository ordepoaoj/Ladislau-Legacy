<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Museu.aspx.cs" Inherits="Museu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    <br />
</p>
<p>
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Nome_Editor" HeaderText="Editor" SortExpression="Nome_Editor" />
            <asp:BoundField DataField="Nome_Pais" HeaderText="Pais" SortExpression="Nome_Pais" />
            <asp:BoundField DataField="Nome_Continente" HeaderText="Continente" SortExpression="Nome_Continente" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="SELECT Editor.Nome_Editor, Pais_Editor.Nome_Pais, Continente_Editor.Nome_Continente FROM Editor INNER JOIN Pais_Editor ON Editor.Cod_Pais = Pais_Editor.Id INNER JOIN Continente_Editor ON Pais_Editor.Cod_Continente = Continente_Editor.Id ORDER BY Pais_Editor.Nome_Pais"></asp:SqlDataSource>
</p>
</asp:Content>

