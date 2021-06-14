<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Endereco.aspx.cs" Inherits="Relatorio_Endereco" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
    </p>

    <asp:Label ID="Label1" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="América" ForeColor="Red"></asp:Label>
    <br />
    <asp:ListView ID="LstEnderecoAmerica" runat="server" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <li style="background-color: #FFF8DC;">Instituição:
                <asp:Label ID="InstituiçãoLabel" runat="server" Text='<%# Eval("Instituição") %>' />
                <br />
                Endereço:
                <asp:Label ID="EndereçoLabel" runat="server" Text='<%# Eval("Endereço") %>' />
                <br />
                Pais:
                <asp:Label ID="PaisLabel" runat="server" Text='<%# Eval("Pais") %>' />
                <br />
            </li>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="background-color: #008A8C;color: #FFFFFF;">Instituição:
                <asp:TextBox ID="InstituiçãoTextBox" runat="server" Text='<%# Bind("Instituição") %>' />
                <br />
                Endereço:
                <asp:TextBox ID="EndereçoTextBox" runat="server" Text='<%# Bind("Endereço") %>' />
                <br />
                Pais:
                <asp:TextBox ID="PaisTextBox" runat="server" Text='<%# Bind("Pais") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Atualizar" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
            </li>
        </EditItemTemplate>
        <EmptyDataTemplate>
            Nenhum dado foi retornado.
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <li style="">Instituição:
                <asp:TextBox ID="InstituiçãoTextBox" runat="server" Text='<%# Bind("Instituição") %>' />
                <br />Endereço:
                <asp:TextBox ID="EndereçoTextBox" runat="server" Text='<%# Bind("Endereço") %>' />
                <br />Pais:
                <asp:TextBox ID="PaisTextBox" runat="server" Text='<%# Bind("Pais") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserir" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Limpar" />
            </li>
        </InsertItemTemplate>
        <ItemSeparatorTemplate>
<br />
        </ItemSeparatorTemplate>
        <ItemTemplate>
            <li style="background-color: #DCDCDC;color: #000000;">Instituição:
                <asp:Label ID="InstituiçãoLabel" runat="server" Text='<%# Eval("Instituição") %>' />
                <br />
                Endereço:
                <asp:Label ID="EndereçoLabel" runat="server" Text='<%# Eval("Endereço") %>' />
                <br />
                Pais:
                <asp:Label ID="PaisLabel" runat="server" Text='<%# Eval("Pais") %>' />
                <br />
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">Instituição:
                <asp:Label ID="InstituiçãoLabel" runat="server" Text='<%# Eval("Instituição") %>' />
                <br />
                Endereço:
                <asp:Label ID="EndereçoLabel" runat="server" Text='<%# Eval("Endereço") %>' />
                <br />
                Pais:
                <asp:Label ID="PaisLabel" runat="server" Text='<%# Eval("Pais") %>' />
                <br />
            </li>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="EnderecoEditor" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter DefaultValue="2" Name="continente" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />

    <asp:Label ID="Label6" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="Brasil" ForeColor="#009933"></asp:Label>
    <asp:ListView ID="LstEnderecoBrasil" runat="server" DataSourceID="SqlDataSourceBrasil">
        <AlternatingItemTemplate>
            <li style="background-color: #FFF8DC;">Instituição:
                <asp:Label ID="InstituiçãoLabel" runat="server" Text='<%# Eval("Instituição") %>' />
                <br />
                Endereço:
                <asp:Label ID="EndereçoLabel" runat="server" Text='<%# Eval("Endereço") %>' />
                <br />
            </li>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="background-color: #008A8C;color: #FFFFFF;">Instituição:
                <asp:TextBox ID="InstituiçãoTextBox" runat="server" Text='<%# Bind("Instituição") %>' />
                <br />
                Endereço:
                <asp:TextBox ID="EndereçoTextBox" runat="server" Text='<%# Bind("Endereço") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Atualizar" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
            </li>
        </EditItemTemplate>
        <EmptyDataTemplate>
            Nenhum dado foi retornado.
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <li style="">Instituição:
                <asp:TextBox ID="InstituiçãoTextBox" runat="server" Text='<%# Bind("Instituição") %>' />
                <br />
                Endereço:
                <asp:TextBox ID="EndereçoTextBox" runat="server" Text='<%# Bind("Endereço") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserir" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Limpar" />
            </li>
        </InsertItemTemplate>
        <ItemSeparatorTemplate>
            <br />
        </ItemSeparatorTemplate>
        <ItemTemplate>
            <li style="background-color: #DCDCDC;color: #000000;">Instituição:
                <asp:Label ID="InstituiçãoLabel" runat="server" Text='<%# Eval("Instituição") %>' />
                <br />
                Endereço:
                <asp:Label ID="EndereçoLabel" runat="server" Text='<%# Eval("Endereço") %>' />
                <br />
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">Instituição:
                <asp:Label ID="InstituiçãoLabel" runat="server" Text='<%# Eval("Instituição") %>' />
                <br />
                Endereço:
                <asp:Label ID="EndereçoLabel" runat="server" Text='<%# Eval("Endereço") %>' />
                <br />
            </li>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSourceBrasil" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="EnderecoEditorBrasil" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="continente" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <p>
    </p>
    <p>
        &nbsp;</p>
    <p>

    <asp:Label ID="Label2" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="Europa" ForeColor="#0099CC"></asp:Label>
    </p>
    <asp:ListView ID="LstEnderecoEuropa" runat="server" DataSourceID="SqlDataSourceEuropa">
        <AlternatingItemTemplate>
            <li style="background-color: #FFF8DC;">Instituição:
                <asp:Label ID="InstituiçãoLabel" runat="server" Text='<%# Eval("Instituição") %>' />
                <br />
                Endereço:
                <asp:Label ID="EndereçoLabel" runat="server" Text='<%# Eval("Endereço") %>' />
                <br />
                Pais:
                <asp:Label ID="PaisLabel" runat="server" Text='<%# Eval("Pais") %>' />
                <br />
            </li>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="background-color: #008A8C;color: #FFFFFF;">Instituição:
                <asp:TextBox ID="InstituiçãoTextBox" runat="server" Text='<%# Bind("Instituição") %>' />
                <br />
                Endereço:
                <asp:TextBox ID="EndereçoTextBox" runat="server" Text='<%# Bind("Endereço") %>' />
                <br />
                Pais:
                <asp:TextBox ID="PaisTextBox" runat="server" Text='<%# Bind("Pais") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Atualizar" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
            </li>
        </EditItemTemplate>
        <EmptyDataTemplate>
            Nenhum dado foi retornado.
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <li style="">Instituição:
                <asp:TextBox ID="InstituiçãoTextBox" runat="server" Text='<%# Bind("Instituição") %>' />
                <br />Endereço:
                <asp:TextBox ID="EndereçoTextBox" runat="server" Text='<%# Bind("Endereço") %>' />
                <br />Pais:
                <asp:TextBox ID="PaisTextBox" runat="server" Text='<%# Bind("Pais") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserir" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Limpar" />
            </li>
        </InsertItemTemplate>
        <ItemSeparatorTemplate>
<br />
        </ItemSeparatorTemplate>
        <ItemTemplate>
            <li style="background-color: #DCDCDC;color: #000000;">Instituição:
                <asp:Label ID="InstituiçãoLabel" runat="server" Text='<%# Eval("Instituição") %>' />
                <br />
                Endereço:
                <asp:Label ID="EndereçoLabel" runat="server" Text='<%# Eval("Endereço") %>' />
                <br />
                Pais:
                <asp:Label ID="PaisLabel" runat="server" Text='<%# Eval("Pais") %>' />
                <br />
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">Instituição:
                <asp:Label ID="InstituiçãoLabel" runat="server" Text='<%# Eval("Instituição") %>' />
                <br />
                Endereço:
                <asp:Label ID="EndereçoLabel" runat="server" Text='<%# Eval("Endereço") %>' />
                <br />
                Pais:
                <asp:Label ID="PaisLabel" runat="server" Text='<%# Eval("Pais") %>' />
                <br />
            </li>
        </SelectedItemTemplate>
    </asp:ListView>
    <p>
    <asp:SqlDataSource ID="SqlDataSourceEuropa" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="EnderecoEditor" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter DefaultValue="4" Name="continente" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>

    <asp:Label ID="Label3" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="Ásia" ForeColor="#FF9933"></asp:Label>
    <asp:ListView ID="LstEnderecoAsia" runat="server" DataSourceID="SqlDataSourceAsia">
        <AlternatingItemTemplate>
            <li style="background-color: #FFF8DC;">
                Instituição:
                <asp:Label ID="InstituiçãoLabel" runat="server" Text='<%# Eval("Instituição") %>' />
                <br />
                
                Endereço:
                
                <asp:Label ID="EndereçoLabel" runat="server" Text='<%# Eval("Endereço") %>' />
                <br />
                
                Pais:
                
                <asp:Label ID="PaisLabel" runat="server" Text='<%# Eval("Pais") %>' />
                <br />
                
            </li>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="background-color: #008A8C;color: #FFFFFF;">
                Instituição:
                <asp:TextBox ID="InstituiçãoTextBox" runat="server" Text='<%# Bind("Instituição") %>' />
                <br />
                
                Endereço:
                
                <asp:TextBox ID="EndereçoTextBox" runat="server" Text='<%# Bind("Endereço") %>' />
                <br />
                
                Pais:
                
                <asp:TextBox ID="PaisTextBox" runat="server" Text='<%# Bind("Pais") %>' />
                <br />
                
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Atualizar" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
            </li>
        </EditItemTemplate>
        <EmptyDataTemplate>
            Nenhum dado foi retornado.
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <li style="">
                Instituição:
                <asp:TextBox ID="InstituiçãoTextBox" runat="server" Text='<%# Bind("Instituição") %>' />
                <br />
                
                Endereço:
                
                <asp:TextBox ID="EndereçoTextBox" runat="server" Text='<%# Bind("Endereço") %>' />
                <br />
                
                Pais:
                
                <asp:TextBox ID="PaisTextBox" runat="server" Text='<%# Bind("Pais") %>' />
                <br />
                
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserir" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Limpar" />
            </li>
        </InsertItemTemplate>
        <ItemSeparatorTemplate>
            <br />
        </ItemSeparatorTemplate>
        <ItemTemplate>
            <li style="background-color: #DCDCDC;color: #000000;">
                Instituição:
                <asp:Label ID="InstituiçãoLabel" runat="server" Text='<%# Eval("Instituição") %>' />
                <br />
                
                Endereço:
                
                <asp:Label ID="EndereçoLabel" runat="server" Text='<%# Eval("Endereço") %>' />
                <br />
                
                Pais:
                
                <asp:Label ID="PaisLabel" runat="server" Text='<%# Eval("Pais") %>' />
                <br />
                
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">
                Instituição:
                <asp:Label ID="InstituiçãoLabel" runat="server" Text='<%# Eval("Instituição") %>' />
                <br />
                
                Endereço:
                
                <asp:Label ID="EndereçoLabel" runat="server" Text='<%# Eval("Endereço") %>' />
                <br />
                
                Pais:
                
                <asp:Label ID="PaisLabel" runat="server" Text='<%# Eval("Pais") %>' />
                <br />
                
            </li>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSourceAsia" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="EnderecoEditor" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter DefaultValue="3" Name="continente" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />

    <asp:Label ID="Label4" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="África" ForeColor="#666666"></asp:Label>
    <asp:ListView ID="LstEnderecoAfrica" runat="server" DataSourceID="SqlDataSourceAfrica">
        <AlternatingItemTemplate>
            <li style="background-color: #FFF8DC;">
                Instituição:
                <asp:Label ID="InstituiçãoLabel" runat="server" Text='<%# Eval("Instituição") %>' />
                <br />
                
                Endereço:
                
                <asp:Label ID="EndereçoLabel" runat="server" Text='<%# Eval("Endereço") %>' />
                <br />
                
                Pais:
                
                <asp:Label ID="PaisLabel" runat="server" Text='<%# Eval("Pais") %>' />
                <br />
                
            </li>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="background-color: #008A8C;color: #FFFFFF;">
                Instituição:
                <asp:TextBox ID="InstituiçãoTextBox" runat="server" Text='<%# Bind("Instituição") %>' />
                <br />
                
                Endereço:
                
                <asp:TextBox ID="EndereçoTextBox" runat="server" Text='<%# Bind("Endereço") %>' />
                <br />
                
                Pais:
                
                <asp:TextBox ID="PaisTextBox" runat="server" Text='<%# Bind("Pais") %>' />
                <br />
                
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Atualizar" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
            </li>
        </EditItemTemplate>
        <EmptyDataTemplate>
            Nenhum dado foi retornado.
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <li style="">
                Instituição:
                <asp:TextBox ID="InstituiçãoTextBox" runat="server" Text='<%# Bind("Instituição") %>' />
                <br />
                
                Endereço:
                
                <asp:TextBox ID="EndereçoTextBox" runat="server" Text='<%# Bind("Endereço") %>' />
                <br />
                
                Pais:
                
                <asp:TextBox ID="PaisTextBox" runat="server" Text='<%# Bind("Pais") %>' />
                <br />
                
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserir" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Limpar" />
            </li>
        </InsertItemTemplate>
        <ItemSeparatorTemplate>
            <br />
        </ItemSeparatorTemplate>
        <ItemTemplate>
            <li style="background-color: #DCDCDC;color: #000000;">
                Instituição:
                <asp:Label ID="InstituiçãoLabel" runat="server" Text='<%# Eval("Instituição") %>' />
                <br />
                
                Endereço:
                
                <asp:Label ID="EndereçoLabel" runat="server" Text='<%# Eval("Endereço") %>' />
                <br />
                
                Pais:
                
                <asp:Label ID="PaisLabel" runat="server" Text='<%# Eval("Pais") %>' />
                <br />
                
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">
                Instituição:
                <asp:Label ID="InstituiçãoLabel" runat="server" Text='<%# Eval("Instituição") %>' />
                <br />
                
                Endereço:
                
                <asp:Label ID="EndereçoLabel" runat="server" Text='<%# Eval("Endereço") %>' />
                <br />
                
                Pais:
                
                <asp:Label ID="PaisLabel" runat="server" Text='<%# Eval("Pais") %>' />
                <br />
                
            </li>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSourceAfrica" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="EnderecoEditor" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter DefaultValue="5" Name="continente" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br />

    <asp:Label ID="Label5" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="Oceania" ForeColor="#CC66FF"></asp:Label>
    <asp:ListView ID="LstEnderecoOceania" runat="server" DataSourceID="SqlDataSourceOceania">
        <AlternatingItemTemplate>
            <li style="background-color: #FFF8DC;">
                Instituição:
                <asp:Label ID="InstituiçãoLabel" runat="server" Text='<%# Eval("Instituição") %>' />
                <br />
                
                Endereço:
                
                <asp:Label ID="EndereçoLabel" runat="server" Text='<%# Eval("Endereço") %>' />
                <br />
                
                Pais:
                
                <asp:Label ID="PaisLabel" runat="server" Text='<%# Eval("Pais") %>' />
                <br />
                
            </li>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="background-color: #008A8C;color: #FFFFFF;">
                Instituição:
                <asp:TextBox ID="InstituiçãoTextBox" runat="server" Text='<%# Bind("Instituição") %>' />
                <br />
                
                Endereço:
                
                <asp:TextBox ID="EndereçoTextBox" runat="server" Text='<%# Bind("Endereço") %>' />
                <br />
                
                Pais:
                
                <asp:TextBox ID="PaisTextBox" runat="server" Text='<%# Bind("Pais") %>' />
                <br />
                
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Atualizar" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
            </li>
        </EditItemTemplate>
        <EmptyDataTemplate>
            Nenhum dado foi retornado.
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <li style="">
                Instituição:
                <asp:TextBox ID="InstituiçãoTextBox" runat="server" Text='<%# Bind("Instituição") %>' />
                <br />
                
                Endereço:
                
                <asp:TextBox ID="EndereçoTextBox" runat="server" Text='<%# Bind("Endereço") %>' />
                <br />
                
                Pais:
                
                <asp:TextBox ID="PaisTextBox" runat="server" Text='<%# Bind("Pais") %>' />
                <br />
                
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserir" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Limpar" />
            </li>
        </InsertItemTemplate>
        <ItemSeparatorTemplate>
            <br />
        </ItemSeparatorTemplate>
        <ItemTemplate>
            <li style="background-color: #DCDCDC;color: #000000;">
                Instituição:
                <asp:Label ID="InstituiçãoLabel" runat="server" Text='<%# Eval("Instituição") %>' />
                <br />
                
                Endereço:
                
                <asp:Label ID="EndereçoLabel" runat="server" Text='<%# Eval("Endereço") %>' />
                <br />
                
                Pais:
                
                <asp:Label ID="PaisLabel" runat="server" Text='<%# Eval("Pais") %>' />
                <br />
                
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">
                Instituição:
                <asp:Label ID="InstituiçãoLabel" runat="server" Text='<%# Eval("Instituição") %>' />
                <br />
                
                Endereço:
                
                <asp:Label ID="EndereçoLabel" runat="server" Text='<%# Eval("Endereço") %>' />
                <br />
                
                Pais:
                
                <asp:Label ID="PaisLabel" runat="server" Text='<%# Eval("Pais") %>' />
                <br />
                
            </li>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSourceOceania" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="EnderecoEditor" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter DefaultValue="6" Name="continente" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    &nbsp;</p>
    <p>
    <asp:DropDownList ID="EscolhaBox" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceContinentes" DataTextField="Nome_Continente" DataValueField="Id" Width="162px">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSourceContinentes" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="SELECT * FROM [Continente_Editor]"></asp:SqlDataSource>
    </p>
    <p id="PrintBtn">
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" OnClick="Button1_Click" Text="Imprimir" />
    </p>
    <p>
    </p>
</asp:Content>

