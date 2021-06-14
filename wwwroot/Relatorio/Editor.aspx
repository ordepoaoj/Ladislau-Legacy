<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Editor.aspx.cs" Inherits="Relatorio_Editor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        &nbsp;</p>
    <p>
        <br />
    </p>
    <p>

    <asp:Label ID="Label6" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="Brasil" ForeColor="#009933"></asp:Label>
    </p>
    <asp:GridView ID="BrasilView" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Font-Names="Comic Sans MS" CellPadding="4" ForeColor="#333333" GridLines="None" Width="682px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Nome_Editor" HeaderText="Editor" SortExpression="Nome_Editor" />
            <asp:BoundField DataField="Nome_Pais" HeaderText="Pais" SortExpression="Nome_Pais" />
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
    <p>

    <asp:Label ID="Label1" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="América" ForeColor="Red"></asp:Label>
    </p>
    <asp:GridView ID="AmericaView" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Font-Names="Comic Sans MS" CellPadding="4" ForeColor="#333333" GridLines="None" Width="682px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Nome_Editor" HeaderText="Nome_Editor" SortExpression="Nome_Editor" />
            <asp:BoundField DataField="Nome_Pais" HeaderText="Nome_Pais" SortExpression="Nome_Pais" />
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
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="SELECT Editor.Nome_Editor, Pais_Editor.Nome_Pais FROM Editor INNER JOIN Pais_Editor ON Editor.Cod_Pais = Pais_Editor.Id WHERE (Pais_Editor.Cod_Continente = 2) ORDER BY Pais_Editor.Nome_Pais, Editor.Nome_Editor"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>

    <asp:Label ID="Label2" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="Europa" ForeColor="#0099CC"></asp:Label>
    </p>
    <asp:GridView ID="EuropaView" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Font-Names="Comic Sans MS" CellPadding="4" ForeColor="#333333" GridLines="None" Width="682px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Nome_Editor" HeaderText="Editor" SortExpression="Nome_Editor" />
            <asp:BoundField DataField="Nome_Pais" HeaderText="Pais" SortExpression="Nome_Pais" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="SELECT Editor.Nome_Editor, Pais_Editor.Nome_Pais FROM Editor INNER JOIN Pais_Editor ON Editor.Cod_Pais = Pais_Editor.Id WHERE (Pais_Editor.Cod_Continente = 4) ORDER BY Pais_Editor.Nome_Pais, Editor.Nome_Editor"></asp:SqlDataSource>
    <p>
        &nbsp;</p>
    <p>

    <asp:Label ID="Label3" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="Ásia" ForeColor="#FF9933"></asp:Label>
    </p>
    <asp:GridView ID="AsiaView" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Font-Names="Comic Sans MS" CellPadding="4" ForeColor="#333333" GridLines="None" Width="682px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Nome_Editor" HeaderText="Editor" SortExpression="Nome_Editor" />
            <asp:BoundField DataField="Nome_Pais" HeaderText="Pais" SortExpression="Nome_Pais" />
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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="SELECT Editor.Nome_Editor, Pais_Editor.Nome_Pais FROM Editor INNER JOIN Pais_Editor ON Editor.Cod_Pais = Pais_Editor.Id WHERE (Pais_Editor.Cod_Continente = 3) ORDER BY Pais_Editor.Nome_Pais, Editor.Nome_Editor"></asp:SqlDataSource>
    <br />

    <asp:Label ID="Label4" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="África" ForeColor="#666666"></asp:Label>
    <br />
    <asp:GridView ID="AfricaView" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" Font-Names="Comic Sans MS" CellPadding="4" ForeColor="#333333" GridLines="None" Width="682px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Nome_Editor" HeaderText="Editor" SortExpression="Nome_Editor" />
            <asp:BoundField DataField="Nome_Pais" HeaderText="Pais" SortExpression="Nome_Pais" />
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
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="SELECT Editor.Nome_Editor, Pais_Editor.Nome_Pais FROM Editor INNER JOIN Pais_Editor ON Editor.Cod_Pais = Pais_Editor.Id WHERE (Pais_Editor.Cod_Continente = 5) ORDER BY Pais_Editor.Nome_Pais, Editor.Nome_Editor"></asp:SqlDataSource>
    <br />

    <asp:Label ID="Label5" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="Oceania" ForeColor="#CC00CC"></asp:Label>
    <br />
    <asp:GridView ID="OceaniaView" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" Font-Names="Comic Sans MS" CellPadding="4" ForeColor="#333333" GridLines="None" Width="682px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Nome_Editor" HeaderText="Editor" SortExpression="Nome_Editor" />
            <asp:BoundField DataField="Nome_Pais" HeaderText="Pais" SortExpression="Nome_Pais" />
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
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="SELECT Editor.Nome_Editor, Pais_Editor.Nome_Pais FROM Editor INNER JOIN Pais_Editor ON Editor.Cod_Pais = Pais_Editor.Id WHERE (Pais_Editor.Cod_Continente = 6) ORDER BY Pais_Editor.Nome_Pais, Editor.Nome_Editor"></asp:SqlDataSource>
    <br />
    <asp:ListBox ID="EscolhaBox" runat="server" CssClass="form-control" DataSourceID="SqlDataSource6" DataTextField="Nome_Continente" DataValueField="Id" Height="35px" Rows="1" Width="161px" OnSelectedIndexChanged="EscolhaBox_SelectedIndexChanged"></asp:ListBox>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="SELECT * FROM [Continente_Editor]"></asp:SqlDataSource>
    <br />
        <asp:Button ID="ExcelBtin" runat="server" OnClick="Button1_Click" Text="Excel" CssClass="btn btn-success" />
        <asp:Button ID="ExcelBtin0" runat="server" OnClick="ExportPDFClick" Text="PDF" CssClass="btn btn-danger" />
        <asp:Button ID="PrintBtn" runat="server" CssClass="btn btn-info" OnClick="PrintBtn_Click" Text="Imprimir" />
    <br />
</asp:Content>

