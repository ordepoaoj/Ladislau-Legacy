<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Resultado.aspx.cs" Inherits="Resultado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        <asp:Label ID="teste" runat="server" Visible="False"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>

    <asp:Label ID="Label1" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="Resultado da pesquisa"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Font-Italic="True" Text="Título:"></asp:Label>
                &nbsp;
                <asp:Label ID="TituloLabel" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" ForeColor="#3399FF" Text='<%# Eval("Titulo") %>' />
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Font-Italic="True" Text="Aleph:"></asp:Label>
&nbsp;<asp:Label ID="AlephLabel" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" ForeColor="#3399FF" Text='<%# Eval("Aleph") %>' />
                <br />
                <br />
                IBICT:
                <asp:Label ID="IBICTLabel" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" ForeColor="#3399FF"  Text='<%# Eval("IBICT") %>' />
                <br />
                <br />
                ISSN:
                <asp:Label ID="ISSNLabel" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" ForeColor="#3399FF"  Text='<%# Eval("ISSN") %>' />
                <br />
                <br />
                Ativo:
                <asp:Label ID="AtivoLabel" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" ForeColor="#3399FF"  Text='<%# Eval("Ativo") %>' />
                <br />
                <br />
                Chegada:
                <asp:Label ID="ChegadaLabel" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" ForeColor="#3399FF"  Text='<%# Eval("Chegada", "{0: dd/MM/yyyy}") %>' />
                <br />
                <br />
                Aquisição:
                <asp:Label ID="AquisicaoLabel" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" ForeColor="#3399FF" Text='<%# Eval("Tipo_Aquisicao") %>' />
                <br />
                <br />
                Nome do Editor:
                <asp:Label ID="Nome_EditorLabel" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" ForeColor="#3399FF"  Text='<%# Eval("Nome_Editor") %>' />
                <br />
                <br />
                Nome do Pais:
                <asp:Label ID="Nome_PaisLabel" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" ForeColor="#3399FF"  Text='<%# Eval("Nome_Pais") %>' />
                <br />
<br />
                Nome do Continente:
                <asp:Label ID="Nome_ContinenteLabel" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" ForeColor="#3399FF"  Text='<%# Eval("Nome_Continente") %>' />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="consulta" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="teste" Name="aleph" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:Button ID="BtnAlterar" runat="server" CssClass="btn btn-success" Text="Alterar" Width="92px" OnClick="Button1_Click" />
    &nbsp;<asp:Button ID="Button1" runat="server" CssClass="btn btn-info" OnClick="Button1_Click1" Text="Desativar" />
        &nbsp;
        <asp:Button ID="BtnApagar" runat="server" CssClass="btn btn-danger" Text="Apagar" Width="92px" OnClick="Button2_Click" Enabled="False" />
    </p>
    <p>
    </p>
</asp:Content>

