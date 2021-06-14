<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Editor.aspx.cs" Inherits="Relatorio_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    &nbsp;</p>
<p>

    <asp:Label ID="Label6" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="Revistas atrasadas"></asp:Label>
    <br />
</p>
<p>

    <asp:Label ID="Label1" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="Mensal" ForeColor="Red"></asp:Label>
    </p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="940px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField HeaderText="Titulo">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" Text='<%# Eval("Titulo") %>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Aleph" HeaderText="Aleph" SortExpression="Aleph" />
            <asp:BoundField DataField="IBICT" HeaderText="IBICT" SortExpression="IBICT" />
            <asp:BoundField DataField="ISSN" HeaderText="ISSN" SortExpression="ISSN" />
            <asp:BoundField DataField="Chegada" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Chegada" SortExpression="Chegada" />
            <asp:BoundField DataField="Nome_Editor" HeaderText="Editor" SortExpression="Nome_Editor" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <EmptyDataTemplate>
            <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("Titulo") %>'></asp:LinkButton>
        </EmptyDataTemplate>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="Cobranca" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter DefaultValue="Mensal" Name="periodo" Type="String" />
            <asp:Parameter DefaultValue="60" Name="tempo" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
<p>

    <asp:Label ID="Label2" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="Bimestral" ForeColor="#0099CC"></asp:Label>
    </p>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="940px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField HeaderText="Titulo" SortExpression="Titulo">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Titulo") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" Text='<%# Eval("Titulo") %>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Aleph" HeaderText="Aleph" SortExpression="Aleph" />
            <asp:BoundField DataField="IBICT" HeaderText="IBICT" SortExpression="IBICT" />
            <asp:BoundField DataField="ISSN" HeaderText="ISSN" SortExpression="ISSN" />
            <asp:BoundField DataField="Chegada" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Chegada" SortExpression="Chegada" />
            <asp:BoundField DataField="Nome_Editor" HeaderText="Editor" SortExpression="Nome_Editor" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="Cobranca" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter DefaultValue="Bimestral" Name="periodo" Type="String" />
            <asp:Parameter DefaultValue="90" Name="tempo" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
<p>

    <asp:Label ID="Label3" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="Trimestral" ForeColor="#FF9933"></asp:Label>
    </p>
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Width="940px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField HeaderText="Titulo" SortExpression="Titulo">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Titulo") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" Text='<%# Eval("Titulo") %>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Aleph" HeaderText="Aleph" SortExpression="Aleph" />
            <asp:BoundField DataField="IBICT" HeaderText="IBICT" SortExpression="IBICT" />
            <asp:BoundField DataField="ISSN" HeaderText="ISSN" SortExpression="ISSN" />
            <asp:BoundField DataField="Chegada" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Chegada" SortExpression="Chegada" />
            <asp:BoundField DataField="Nome_Editor" HeaderText="Editor" SortExpression="Nome_Editor" />
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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="Cobranca" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter DefaultValue="Trimestral" Name="periodo" Type="String" />
            <asp:Parameter DefaultValue="120" Name="tempo" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
<p>

    <asp:Label ID="Label4" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="Quadrimestral" ForeColor="#666666"></asp:Label>
    </p>
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" Width="940px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField HeaderText="Titulo" SortExpression="Titulo">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Titulo") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" Text='<%# Eval("Titulo") %>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Aleph" HeaderText="Aleph" SortExpression="Aleph" />
            <asp:BoundField DataField="IBICT" HeaderText="IBICT" SortExpression="IBICT" />
            <asp:BoundField DataField="ISSN" HeaderText="ISSN" SortExpression="ISSN" />
            <asp:BoundField DataField="Chegada" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Chegada" SortExpression="Chegada" />
            <asp:BoundField DataField="Nome_Editor" HeaderText="Editor" SortExpression="Nome_Editor" />
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
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="Cobranca" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter DefaultValue="Quadrimestral" Name="periodo" Type="String" />
            <asp:Parameter DefaultValue="150" Name="tempo" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
<p>

    <asp:Label ID="Label5" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="Semestral" ForeColor="#009933"></asp:Label>
    </p>
    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource5" ForeColor="#333333" GridLines="None" Width="940px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField HeaderText="Titulo" SortExpression="Titulo">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Titulo") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click" Text='<%# Eval("Titulo") %>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Aleph" HeaderText="Aleph" SortExpression="Aleph" />
            <asp:BoundField DataField="IBICT" HeaderText="IBICT" SortExpression="IBICT" />
            <asp:BoundField DataField="ISSN" HeaderText="ISSN" SortExpression="ISSN" />
            <asp:BoundField DataField="Chegada" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Chegada" SortExpression="Chegada" />
            <asp:BoundField DataField="Nome_Editor" HeaderText="Editor" SortExpression="Nome_Editor" />
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
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="Cobranca" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter DefaultValue="Semestral" Name="periodo" Type="String" />
            <asp:Parameter DefaultValue="210" Name="tempo" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>

