<%@ Page Title="" Language="C#" MasterPageFile="~/Projeto.Master" AutoEventWireup="true" CodeBehind="ExibirExcecoes.aspx.cs" Inherits="Projeto3.ExibirExcecoes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="row margin-top-60">
        <div class="col-12">
            <h3>Exceções da Aplicação</h3>
            <hr />
            <asp:Label ID="Conteudo" runat="server"></asp:Label>
            <hr />
            <asp:Button ID="Excluir" OnClick="Excluir_Click" runat="server" Text="Excluir Dados" />
        </div>
    </div>
</asp:Content>
