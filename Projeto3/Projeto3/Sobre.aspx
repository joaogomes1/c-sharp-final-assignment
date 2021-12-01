<%@ Page Title="" Language="C#" MasterPageFile="~/Projeto.Master" AutoEventWireup="true" CodeBehind="Sobre.aspx.cs" Inherits="Projeto3.Sobre" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="row margin-top-60">
        <div class="col-12">
            <div class="box border">

                <%--TÍTULO--%>
                <div style="text-align:center">
                    <h1>Sobre o Projeto</h1>
                </div>

                <%-- TEXTO --%>
                <div>
                    Esse projeto foi desenvolvido na disciplina Eletiva - Programação C# no curso de Análise e desenvolvimento de sistemas,  da FATEC de Americana/SP.
                    <br />
                    <br />

                    Com modelo do projeto desenvolvido durante às aulas realizamos adições e modificações referentes à tarefa final da disciplina.
                    <br />
                    <br />
                    <h2>Projeto desenvolvido pelos alunos:</h2>
                    <ul>
                        <li>Caio de Luccas Rosolen</li>
                        <li>João Ricardo de Souza Gomes</li>
                        <li>Juan Rodrigues Batista Marques</li>
                        <li>Marco Peerci</li>
                    </ul>
                </div>
            </div>
        </div>    
    </div>
</asp:Content>
