<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Relatorio_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style= "background-image: url('../images/logo2.jpg'); height: 269px; width: 1138px;">
        <p class="lead">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        <p class="lead">&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Names="Chiller" Font-Size="100pt" ForeColor="#0066FF" Text="Relatórios"></asp:Label>
        </p>
        <p>&nbsp;</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Relatorio de editor</h2>
            <p>
                Relatórios dos editores existentes no sistema de intercêmbios. Este relatório está separado por continente e contem o editor com o seu endereço</p>
            <p>
                <a class="btn btn-info" href="/Relatorio/Editor">Editor &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Relatório Geral</h2>
            <p>
                Relatórios de todas as revistas recebidas pelo Museu Nacional, separadas pelo continente dos seus editores.</p>
            <p>
                <a class="btn btn-info" href="/Relatorio/Geral">Geral &raquo;</a>
            </p>

            <p>
                &nbsp;</p>
        </div>
        <div class="col-md-4">
            <h2>Relatório Preferencias</h2>    
            <p>
                Relatórios de todas as revistas recebidas pelo Museu Nacional, separadas pelo continente dos seus editores.</p>
            <p>
                <a class="btn btn-info" href="/Relatorio/Preferencias">Preferência &raquo;</a>
            </p>

            <p>
                &nbsp;</p>               
                            

                
        </div>
    </div>
</asp:Content>
