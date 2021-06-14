<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Consultas.aspx.cs" Inherits="Consultas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        &nbsp;</p>
    <p>
        <br />
    </p>
    <p>

    <asp:Label ID="Label1" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="Consulta intercâmbio "></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
    <asp:TextBox ID="ConsultaTxt" runat="server" CssClass="form-control" Width="697px" Height="34px" AutoCompleteType="Enabled"></asp:TextBox>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnConsulta" runat="server" CssClass="btn btn-info" Text="Consultar" Width="92px" OnClick="Button1_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-default" OnClick="Button1_Click1" Text="Editor" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="consultaTitulo">
            <ItemTemplate>
                Titulo:
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" Text='<%# Eval("Titulo") %>' OnClick="LinkButton1_Click"></asp:LinkButton>
                <br />
                Aleph:
                <asp:Label ID="AlephLabel" runat="server" Text='<%# Eval("Aleph") %>' />
                <br />
                IBICT:
                <asp:Label ID="IBICTLabel" runat="server" Text='<%# Eval("IBICT") %>' />
                <br />
                ISSN:
                <asp:Label ID="ISSNLabel" runat="server" Text='<%# Eval("ISSN") %>' />
                <br />
                Editor:
                <asp:Label ID="Editor" runat="server" Text='<%# Eval("Nome_Editor") %>' />
                &nbsp;<br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="consultaTitulo" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="spGetRevistaNome" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="ConsultaTxt" Name="tituloNome" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="ConsultaTxt" Name="alephNumero" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="ConsultaTxt" Name="IBICT" PropertyName="Text" />
                <asp:ControlParameter ControlID="ConsultaTxt" Name="ISSN" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>

