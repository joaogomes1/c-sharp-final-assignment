<%@ Page Title="" Language="C#" MasterPageFile="~/Projeto.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Projeto3.Admin.Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="row margin-top-60">
        <div class="col-6">
            <div class="box border margin-right-10">
                <h3>USUÁRIO</h3>
                <br />
                <asp:Label ID="Mensagem" runat="server" ForeColor="Red" Font-Bold="true" ></asp:Label>
                <br />
                <asp:Label ID="Codigo" runat="server" Font-Bold="true" Font-Size="30px" ></asp:Label>
                <br />
                <label>NOME COMPLETO</label>
                <asp:TextBox ID="NomeCompleto" MaxLength="255" runat="server"></asp:TextBox>
                <label>E-MAIL</label>
                <asp:TextBox ID="Email" MaxLength="255" runat="server"></asp:TextBox>
                <label>NOME DE ACESSO</label>
                <asp:TextBox ID="NomeAcesso" MaxLength="255" runat="server"></asp:TextBox>
                <label>SENHA</label>
                <asp:TextBox ID="Senha" MaxLength="255" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="Enviar" OnClick="Enviar_Click" runat="server" Text="Inserir" />
                
                <asp:Button ID="Excluir" CssClass="botao-delete" OnClick="Excluir_Click" Visible="false" runat="server" Text="Excluir" />
            </div>
        </div>

        <div class="col-6">
            <div class="box">
                <asp:TextBox ID="BuscarUsuario" Width="300px" runat="server"></asp:TextBox>
                <asp:Button ID="Buscar" OnClick="Buscar_Click" runat="server" Text="Buscar" />
                <asp:Button ID="Cancelar" Visible="false" OnClick="Cancelar_Click" runat="server" Text="X" />
                <br />
                <br />
                <asp:GridView ID="GridViewUsuarios" AutoGenerateSelectButton="true" OnSelectedIndexChanged="GridViewUsuarios_SelectedIndexChanged" Width="100%" CellPadding="8" HeaderStyle-BackColor="#dfdfdf" BorderColor="#c0c0c0" AutoGenerateColumns="true" runat="server"></asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
