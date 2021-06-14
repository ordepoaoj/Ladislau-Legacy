<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Preferencia.aspx.cs" Inherits="Preferencia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
    </p>
    <p>

        &nbsp;</p>
    <p>

        &nbsp;</p>
    <p>

    <asp:Label ID="Label1" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="Definir Preferências"></asp:Label>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
        <asp:ListBox ID="editorCmb" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="Nome_Editor" DataValueField="Id" Height="34px" Rows="1" Width="305px" AutoPostBack="True" OnSelectedIndexChanged="editorCmb_SelectedIndexChanged1"></asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="SELECT * FROM [Editor] ORDER BY [Nome_Editor]"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:CheckBoxList ID="PreferenceBox" runat="server" DataSourceID="SqlDataSource2" DataTextField="Titulo" DataValueField="Id" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" ClientIDMode="AutoID" Visible="False">
        </asp:CheckBoxList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="consRevista_Museu" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p align ="center">
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Enviar" Width="92px" OnClick="Button1_Click"/>
    </p>
    <p>
    </p>
</asp:Content>

