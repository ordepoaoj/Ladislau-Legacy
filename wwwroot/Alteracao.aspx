<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Alteracao.aspx.cs" Inherits="Alteracao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="valor" runat="server" Visible="False"></asp:Label>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>

    <asp:Label ID="Label1" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="Alteração de periódicos"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:DataList ID="ResultadoList" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                Ns-Aleph:<br />
                <asp:TextBox ID="AlephTxt" runat="server" CssClass="form-control" Height="34px" Text='<%# Eval("Aleph") %>' Width="210px"></asp:TextBox>
                <br />
                Titulo:
                <br />
                <asp:TextBox ID="TituloTxt" runat="server" CssClass="form-control" Height="34px" Text='<%# Eval("Titulo") %>' Width="503px"></asp:TextBox>
                <br />
                IBICT:<br />
                <asp:TextBox ID="IBITxt" runat="server" CssClass="form-control" Height="34px" Text='<%# Eval("IBICT") %>' Width="210px"></asp:TextBox>
                <br />
                ISSN:
                <br />
                <asp:TextBox ID="ISSNtxt" runat="server" CssClass="form-control" Height="34px" Text='<%# Eval("ISSN") %>' Width="210px"></asp:TextBox>
                <br />
                Chegada:
                <br />
                <asp:TextBox ID="Chegadatxt" runat="server" CssClass="form-control" Type="date" value='<%# Eval("Chegada", "{0:yyyy-MM-dd}") %>'></asp:TextBox>
                <br />
                Editor:<br />
                <asp:ListBox ID="EditorBox" runat="server" CssClass="form-control" DataSourceID="SqlDataSource2" DataTextField="Nome_Editor" DataValueField="Nome_Editor" Height="58px" Rows="1" SelectedValue='<%# Eval("Nome_Editor") %>' Width="351px"></asp:ListBox>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="SELECT [Id], [Nome_Editor] FROM [Editor]"></asp:SqlDataSource>
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="Resultado" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="valor" Name="Aleph" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="BtnAlterar" runat="server" CssClass="btn btn-success" Text="Alterar" Width="92px" OnClick="Button1_Click" />
    </p>
    <p>
        &nbsp;</p>
    <p>
    </p>
</asp:Content>

