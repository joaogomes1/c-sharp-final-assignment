<%@ Page Title="" Language="C#" MasterPageFile="~/Projeto.Master" AutoEventWireup="true" CodeBehind="Contato.aspx.cs" Inherits="Projeto3.Contato" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="row margin-top-60">
        <!-- FORMULÁRIO DE ENTRADA DE DADOS -->
        <div class="col-6">
            <div class="box border margin-left-10">
                <h2>Fale Conosco</h2>
                <br />
                <asp:Label ID="Erro" Font-Bold="true" Font-Size="16px" ForeColor="red" runat="server" ></asp:Label>
                <label>Seu Nome</label>
                <asp:TextBox ID="SeuNome" MaxLength="100" runat="server"></asp:TextBox>
                <label>Seu E-mail</label>
                <asp:TextBox ID="SeuEmail" TextMode="Email" MaxLength="255" runat="server"></asp:TextBox>
                <label>Mensagem</label>
                <asp:TextBox ID="Mensagem" TextMode="MultiLine" Rows="6" MaxLength="1000" runat="server"></asp:TextBox>
                <asp:Button ID="Enviar" OnClick="Enviar_Click" runat="server" Text="Enviar" />
            </div>
        </div>
    </div>
</asp:Content>
