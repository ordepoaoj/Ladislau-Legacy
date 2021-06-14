<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="preferencias.aspx.cs" Inherits="preferencias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
    </p>
    <p>

    <asp:Label ID="Label1" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="Definir Preferências"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:ListBox ID="EditorLst" runat="server" AutoPostBack="True" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="Nome" DataValueField="Id" OnSelectedIndexChanged="EditorLst_SelectedIndexChanged" Rows="1" Width="358px"></asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="consultaeditorvazio" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:CheckBoxList ID="MuseuChk" runat="server" DataSourceID="SqlDataSource2" DataTextField="Titulo" DataValueField="Id">
        </asp:CheckBoxList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="consultaMuseuVazio" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </p>
    <p align ="center">
        &nbsp;</p>
    <p align ="center">
        <asp:Button ID="Button1" runat="server" Text="Enviar" CssClass="btn btn-success" OnClick="Button1_Click" />
    </p>
    <p>
    </p>
</asp:Content>

