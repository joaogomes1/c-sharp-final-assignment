<%@ Page Title="" Language="C#" MasterPageFile="~/Projeto.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Projeto3.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="row margin-top-60">
        <div class="col-3">
            <div class="box border">
                <h3>Entrar</h3>
                <br />
                <asp:Label ID="Mensagem" runat="server" ForeColor="red"></asp:Label>
                <label>Nome de Acesso</label>
                <asp:TextBox ID="NomeAcesso" MaxLength="255" runat="server"></asp:TextBox>
                <label>Senha</label>
                <asp:TextBox ID="Senha" MaxLength="255" TextMode="Password" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="Entrar" OnClick="Entrar_Click" runat="server" Text="Entrar" />
            </div>
        </div>
    </div>
</asp:Content>
