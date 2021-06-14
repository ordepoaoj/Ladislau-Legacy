<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Geral.aspx.cs" Inherits="Relatorio_Geral" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
    </p>
    <p>

    <asp:Label ID="Label6" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="Brasil" ForeColor="#009933"></asp:Label>
    </p>
        <asp:GridView ID="BrasilView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceBrasil" Font-Names="Comic Sans MS" ForeColor="#333333" GridLines="None" Width="870px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Titulo" HeaderText="Titulo" SortExpression="Titulo" />
                <asp:BoundField DataField="ISSN" HeaderText="ISSN" SortExpression="ISSN" />
                <asp:BoundField DataField="Nome_Editor" HeaderText="Editor" SortExpression="Nome_Editor" />
                <asp:BoundField DataField="Tipo_Periodicidade" HeaderText="Periodicidade" SortExpression="Tipo_Periodicidade" />
                <asp:BoundField DataField="Tipo_Aquisicao" HeaderText="Aquisicao" SortExpression="Tipo_Aquisicao" />
                <asp:BoundField DataField="Chegada" HeaderText="Chegada" SortExpression="Chegada" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="Aleph" HeaderText="Aleph" SortExpression="Aleph" />
                <asp:BoundField DataField="IBICT" HeaderText="IBICT" SortExpression="IBICT" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceBrasil" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="RelatorioContinente" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="Continente" Type="Int32" />
            </SelectParameters>
    </asp:SqlDataSource>
    <p>

        &nbsp;</p>
    <p>

    <asp:Label ID="Label1" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="América" ForeColor="Red"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="AmericaView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" Font-Names="Comic Sans MS" ForeColor="#333333" GridLines="None" Width="870px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Titulo" HeaderText="Titulo" SortExpression="Titulo" />
                <asp:BoundField DataField="ISSN" HeaderText="ISSN" SortExpression="ISSN" />
                <asp:BoundField DataField="Nome_Editor" HeaderText="Editor" SortExpression="Nome_Editor" />
                <asp:BoundField DataField="Tipo_Periodicidade" HeaderText="Periodicidade" SortExpression="Tipo_Periodicidade" />
                <asp:BoundField DataField="Tipo_Aquisicao" HeaderText="Aquisicao" SortExpression="Tipo_Aquisicao" />
                <asp:BoundField DataField="Chegada" HeaderText="Chegada" SortExpression="Chegada" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="Aleph" HeaderText="Aleph" SortExpression="Aleph" />
                <asp:BoundField DataField="IBICT" HeaderText="IBICT" SortExpression="IBICT" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="RelatorioContinente" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="2" Name="Continente" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>

        &nbsp;</p>
    <p>

    <asp:Label ID="Label2" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="Europa" ForeColor="#0099CC"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="EuropaView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" Font-Names="Comic Sans MS" ForeColor="#333333" GridLines="None" Width="869px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Titulo" HeaderText="Titulo" SortExpression="Titulo" />
                <asp:BoundField DataField="ISSN" HeaderText="ISSN" SortExpression="ISSN" />
                <asp:BoundField DataField="Nome_Editor" HeaderText="Editor" SortExpression="Nome_Editor" />
                <asp:BoundField DataField="Tipo_Periodicidade" HeaderText="Periodicidade" SortExpression="Tipo_Periodicidade" />
                <asp:BoundField DataField="Tipo_Aquisicao" HeaderText="Aquisicao" SortExpression="Tipo_Aquisicao" />
                <asp:BoundField DataField="Chegada" HeaderText="Chegada" SortExpression="Chegada" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="Aleph" HeaderText="Aleph" SortExpression="Aleph" />
                <asp:BoundField DataField="IBICT" HeaderText="IBICT" SortExpression="IBICT" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" OnSelecting="SqlDataSource2_Selecting" SelectCommand="RelatorioContinente" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="4" Name="Continente" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>

        &nbsp;</p>
    <p>

    <asp:Label ID="Label3" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="Ásia" ForeColor="#FF9933"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="AsiaView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource3" Font-Names="Comic Sans MS" ForeColor="#333333" GridLines="None" Width="870px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Titulo" HeaderText="Titulo" SortExpression="Titulo" />
                <asp:BoundField DataField="ISSN" HeaderText="ISSN" SortExpression="ISSN" />
                <asp:BoundField DataField="Nome_Editor" HeaderText="Editor" SortExpression="Nome_Editor" />
                <asp:BoundField DataField="Tipo_Periodicidade" HeaderText="Periodicidade" SortExpression="Tipo_Periodicidade" />
                <asp:BoundField DataField="Tipo_Aquisicao" HeaderText="Aquisicao" SortExpression="Tipo_Aquisicao" />
                <asp:BoundField DataField="Chegada" HeaderText="Chegada" SortExpression="Chegada" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="Aleph" HeaderText="Aleph" SortExpression="Aleph" />
                <asp:BoundField DataField="IBICT" HeaderText="IBICT" SortExpression="IBICT" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="RelatorioContinente" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="3" Name="Continente" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>

        &nbsp;</p>
    <p>

    <asp:Label ID="Label4" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="África" ForeColor="#666666"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="AfricaView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource4" Font-Names="Comic Sans MS" ForeColor="#333333" GridLines="None" Width="870px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Titulo" HeaderText="Titulo" SortExpression="Titulo" />
                <asp:BoundField DataField="ISSN" HeaderText="ISSN" SortExpression="ISSN" />
                <asp:BoundField DataField="Nome_Editor" HeaderText="Editor" SortExpression="Nome_Editor" />
                <asp:BoundField DataField="Tipo_Periodicidade" HeaderText="Periodicidade" SortExpression="Tipo_Periodicidade" />
                <asp:BoundField DataField="Tipo_Aquisicao" HeaderText="Aquisicao" SortExpression="Tipo_Aquisicao" />
                <asp:BoundField DataField="Chegada" HeaderText="Chegada" SortExpression="Chegada" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="Aleph" HeaderText="Aleph" SortExpression="Aleph" />
                <asp:BoundField DataField="IBICT" HeaderText="IBICT" SortExpression="IBICT" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="RelatorioContinente" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="5" Name="Continente" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>

        &nbsp;</p>
    <p>

    <asp:Label ID="Label5" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="Oceania" ForeColor="#CC66FF"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="OceaniaView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource5" Font-Names="Comic Sans MS" ForeColor="#333333" GridLines="None" Width="870px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Titulo" HeaderText="Titulo" SortExpression="Titulo" />
                <asp:BoundField DataField="ISSN" HeaderText="ISSN" SortExpression="ISSN" />
                <asp:BoundField DataField="Nome_Editor" HeaderText="Editor" SortExpression="Nome_Editor" />
                <asp:BoundField DataField="Tipo_Periodicidade" HeaderText="Periodicidade" SortExpression="Tipo_Periodicidade" />
                <asp:BoundField DataField="Tipo_Aquisicao" HeaderText="Aquisicao" SortExpression="Tipo_Aquisicao" />
                <asp:BoundField DataField="Chegada" HeaderText="Chegada" SortExpression="Chegada" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="Aleph" HeaderText="Aleph" SortExpression="Aleph" />
                <asp:BoundField DataField="IBICT" HeaderText="IBICT" SortExpression="IBICT" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="RelatorioContinente" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="6" Name="Continente" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
<p>
    <asp:ListBox ID="EscolhaBox" runat="server" CssClass="form-control" DataSourceID="SqlDataSource6" DataTextField="Nome_Continente" DataValueField="Id" Height="35px" Rows="1" Width="161px"></asp:ListBox>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="SELECT * FROM [Continente_Editor]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:Button ID="ExcelBtin" runat="server" OnClick="Button1_Click" Text="Excel" CssClass="btn btn-success" />
        <asp:Button ID="ExcelBtin0" runat="server" OnClick="ExportPDFClick" Text="PDF" CssClass="btn btn-danger" />
        <asp:Button ID="PrintBtn" runat="server" CssClass="btn btn-info" OnClick="PrintBtn_Click" Text="Imprimir" />
    </p>
    <p>
    </p>
</asp:Content>

