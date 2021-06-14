<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Conpilacao.aspx.cs" Inherits="Relatorio_Conpilacao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Chart ID="Chart1" runat="server" DataMember="DefaultView" DataSourceID="SqlDataSource1" Height="345px" Width="379px">
            <Series>
                <asp:Series ChartType="Pie" Name="Series1" XValueMember="Editor" YValueMembers="Quantidade">
                </asp:Series>
            </Series>
            <MapAreas>
                <asp:MapArea Coordinates="0,0,0,0" />
            </MapAreas>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
            <Titles>
                <asp:Title Name="Editor por Continente">
                </asp:Title>
            </Titles>
        </asp:Chart>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="contarContinente" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

