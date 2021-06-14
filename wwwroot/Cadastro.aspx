<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Cadastro.aspx.cs" Inherits="Cadastro" %>


   

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

            

     <script type="text/javascript">
function basicPopup() 
{
    popupWindow = window.open("Editor.aspx", 'popUpWindow', 'height=500,width=300,left=100,top=30,resizable=No,scrollbars=No,toolbar=no,menubar=no,location=no,directories=no, status=No');
}
</script>



    <p>
    <br />
</p>
    
<p>

    &nbsp;</p>
     <p>

         &nbsp;</p>
     <p>

    <asp:Label ID="Label1" runat="server" Font-Names="Segoe Print" Font-Size="XX-Large" Text="Cadastro de periódicos"></asp:Label>
    </p>
    <p>
    Ns-Aleph</p>
<p>
    <asp:TextBox ID="AlephTxt" runat="server" CssClass="form-control" Width="210px" Height="34px"></asp:TextBox>
</p>
    <p>
        &nbsp;</p>

<p>
    Tíitulo</p>
<p>
    <asp:TextBox ID="TituloTxt" runat="server" CssClass="form-control" Width="503px" Height="34px"></asp:TextBox>
</p>
    <p>
        &nbsp;</p>
<p>
    IBI-IBICT</p>
<p>
    <asp:TextBox ID="IBITxt" runat="server" CssClass="form-control" Width="210px" Height="34px"></asp:TextBox>
</p>
     <p>
         &nbsp;</p>
     <p>
    ISSN</p>
     <p>
    <asp:TextBox ID="ISSNtxt" runat="server" CssClass="form-control" Width="210px" Height="34px"></asp:TextBox>
</p>
<p>
    &nbsp;</p>
    <p>
        <asp:CheckBox ID="Ativo" runat="server" Text="  Ativo" />
</p>
    <div style="height: 19px">
</div>
    <p>
</p>
    <p>
        Data de chegada</p>
    <p>
    <asp:TextBox ID="DataTxt" type="Date" runat="server" CssClass="form-control" Width="210px" Height="34px" OnTextChanged="DataTxt_TextChanged"></asp:TextBox>
</p>
    <div style="height: 25px">
</div>
    <p>
</p>
    <p>
        Editor:</p>
    <p>
        <asp:ListBox ID="editorCmb" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="Nome_Editor" DataValueField="Id" Height="34px" Rows="1" Width="305px"></asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="SELECT * FROM [Editor] ORDER BY [Nome_Editor]"></asp:SqlDataSource>
</p>
    <div style="height: 25px">
</div>
    <p>
</p>
    <p>
        Aquisição</p>
    <p>
        <asp:ListBox ID="aquisicaoCmb" runat="server" CssClass="form-control" DataSourceID="SqlDataSource2" DataTextField="Tipo_Aquisicao" DataValueField="Id" Height="34px" Rows="1" Width="134px">
            <asp:ListItem Selected="True">Selecione o valor</asp:ListItem>
        </asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="SELECT * FROM [Aquisicao] ORDER BY [Tipo_Aquisicao]"></asp:SqlDataSource>
</p>
    <div style="height: 24px">
</div>
    <p>
</p>
    <p>
        Periodicidade</p>
    <p>
        <asp:ListBox ID="PeriodicidadeCmb" runat="server" CssClass="form-control" DataSourceID="SqlDataSource3" DataTextField="Tipo_Periodicidade" DataValueField="Id" Height="34px" Rows="1" Width="128px"></asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MuseuBibliotecaConnectionString %>" SelectCommand="SELECT * FROM [Periodicidade]"></asp:SqlDataSource>
</p>
    <div style="height: 36px">
    </div>
    <p>
</p>
    <p align="center">
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Enviar" Width="92px" OnClick="Button1_Click" />
&nbsp;<asp:Button ID="BtnEditor" runat="server" CssClass="btn btn-info" Text="Editor" Width="91px" OnClientClick="basicPopup();return false;"/>
&nbsp;
        <asp:Button ID="Button3" runat="server" CssClass="btn btn-default" Text="Apagar" Width="92px" OnClick="Button3_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>

    
    <p>
</p>
    <p>
</p>
    <p>
</p>   
        </asp:Content>


