<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ConsultaEditor.aspx.cs" Inherits="ConsultaEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        &nbsp;</p>
    <p>
        <br />
    </p>
    <p>

    <asp:Label ID="Label1" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="Consulta editor"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
    <asp:TextBox ID="ConsultaTxt" runat="server" CssClass="form-control" Width="697px" Height="34px" AutoCompleteType="Enabled"></asp:TextBox>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" CssClass="btn btn-info" Text="Consulta" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-default" OnClick="Button1_Click1" Text="Revista" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                Nome:
                <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />
                <br />
                Endereco:
                <asp:Label ID="EnderecoLabel" runat="server" Text='<%# Eval("Endereco") %>' />
                <br />
                Nome_Pais:
                <asp:Label ID="Nome_PaisLabel" runat="server" Text='<%# Eval("Nome_Pais") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="consultaeditor" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="ConsultaTxt" Name="editorNome" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
    </p>
</asp:Content>

