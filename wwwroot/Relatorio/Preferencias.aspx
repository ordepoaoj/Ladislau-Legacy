<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Preferencias.aspx.cs" Inherits="Relatorio_Preferencias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
    </p>
    <p>

    <asp:Label ID="Label1" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="Preferencias dos Editores"></asp:Label>
    </p>
    <p>
        <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="Titulo" DataValueField="Id" Rows="1" Width="376px"></asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="SELECT [Id], [Titulo] FROM [Revista_Museu]"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>

    <asp:Label ID="Label6" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="Brasil" ForeColor="#009933"></asp:Label>
    </p>
        <asp:GridView ID="BrasilView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataBrasil" Font-Names="Comic Sans MS" ForeColor="#333333" GridLines="None" Width="870px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Instituição" HeaderText="Instituição" SortExpression="Instituição" />
                <asp:BoundField DataField="Endereco" HeaderText="Endereco" SortExpression="Endereco" />
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
        <asp:SqlDataSource ID="SqlDataBrasil" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="Preference" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="Brasil" Name="continente" Type="String" />
                <asp:ControlParameter ControlID="ListBox1" DefaultValue="" Name="livro" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
    </asp:SqlDataSource>
    <p>
        &nbsp;</p>
    <p>

    <asp:Label ID="Label7" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="América" ForeColor="Red"></asp:Label>
    </p>
        <asp:GridView ID="AmericaView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataAmerica" Font-Names="Comic Sans MS" ForeColor="#333333" GridLines="None" Width="870px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Instituição" HeaderText="Instituição" SortExpression="Instituição" />
                <asp:BoundField DataField="Endereco" HeaderText="Endereco" SortExpression="Endereco" />
                <asp:BoundField DataField="Pais" HeaderText="Pais" SortExpression="Pais" />
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
        <asp:SqlDataSource ID="SqlDataAmerica" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="Preference" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="America" Name="continente" Type="String" />
                <asp:ControlParameter ControlID="ListBox1" DefaultValue="" Name="livro" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
    </asp:SqlDataSource>
    <p>
        &nbsp;</p>
    <p>

    <asp:Label ID="Label2" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="Europa" ForeColor="#0099CC"></asp:Label>
    </p>
        <asp:GridView ID="EuropaView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataEuropa" Font-Names="Comic Sans MS" ForeColor="#333333" GridLines="None" Width="870px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Instituição" HeaderText="Instituição" SortExpression="Instituição" />
                <asp:BoundField DataField="Endereco" HeaderText="Endereco" SortExpression="Endereco" />
                <asp:BoundField DataField="Pais" HeaderText="Pais" SortExpression="Pais" />
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
        <asp:SqlDataSource ID="SqlDataEuropa" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="Preference" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="Europa" Name="continente" Type="String" />
                <asp:ControlParameter ControlID="ListBox1" DefaultValue="" Name="livro" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
    </asp:SqlDataSource>
    <p>

    <asp:Label ID="Label3" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="Ásia" ForeColor="#FF9933"></asp:Label>
    </p>
        <asp:GridView ID="AsiaView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataAsia" Font-Names="Comic Sans MS" ForeColor="#333333" GridLines="None" Width="870px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Instituição" HeaderText="Instituição" SortExpression="Instituição" />
                <asp:BoundField DataField="Endereco" HeaderText="Endereco" SortExpression="Endereco" />
                <asp:BoundField DataField="Pais" HeaderText="Pais" SortExpression="Pais" />
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
        <asp:SqlDataSource ID="SqlDataAsia" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="Preference" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="Asia" Name="continente" Type="String" />
                <asp:ControlParameter ControlID="ListBox1" DefaultValue="" Name="livro" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
    </asp:SqlDataSource>
    <p>

    <asp:Label ID="Label4" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="África" ForeColor="#666666"></asp:Label>
    </p>
        <asp:GridView ID="AfricaView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataAfrica" Font-Names="Comic Sans MS" ForeColor="#333333" GridLines="None" Width="870px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Instituição" HeaderText="Instituição" SortExpression="Instituição" />
                <asp:BoundField DataField="Endereco" HeaderText="Endereco" SortExpression="Endereco" />
                <asp:BoundField DataField="Pais" HeaderText="Pais" SortExpression="Pais" />
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
        <asp:SqlDataSource ID="SqlDataAfrica" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="Preference" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="Africa" Name="continente" Type="String" />
                <asp:ControlParameter ControlID="ListBox1" DefaultValue="" Name="livro" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
    </asp:SqlDataSource>
    <p>

    <asp:Label ID="Label5" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="Oceania" ForeColor="#CC66FF"></asp:Label>
    </p>
        <asp:GridView ID="OceaniaView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataOceania" Font-Names="Comic Sans MS" ForeColor="#333333" GridLines="None" Width="870px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Instituição" HeaderText="Instituição" SortExpression="Instituição" />
                <asp:BoundField DataField="Endereco" HeaderText="Endereco" SortExpression="Endereco" />
                <asp:BoundField DataField="Pais" HeaderText="Pais" SortExpression="Pais" />
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
        <asp:SqlDataSource ID="SqlDataOceania" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="Preference" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="Oceania" Name="continente" Type="String" />
                <asp:ControlParameter ControlID="ListBox1" DefaultValue="" Name="livro" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
    </asp:SqlDataSource>
    <p>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    </p>
</asp:Content>

