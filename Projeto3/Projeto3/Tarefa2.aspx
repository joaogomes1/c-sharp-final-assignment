<%@ Page Title="" Language="C#" MasterPageFile="~/Projeto.Master" AutoEventWireup="true" CodeBehind="Tarefa2.aspx.cs" Inherits="Projeto3.Tarefa2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

    <div class="row margin-top-60">
        <div class="col-12">
            <div class="box border">
                <h4>Video da semana:</h4>

                <%--TÍTULO--%>
                <div style="text-align:center">
                    <h1>Saiba o que é SQL Injection</h1>
                    <h6 style="font-style:oblique">(Código Fonte TV, 02/08/2021)</h6>
                </div>

                <%-- VIDEO --%>
                <div style="text-align:center;">
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/jN8QGOxdhvM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    <p style="font-size: 0.8em">SQL Injection (Do Ataque a Prevenção)</p>
                </div>

                <%-- TEXTO --%>
                <div>
                   Injeção SQL é um dos ataques mais comuns em sistemas web realizado pelos hackers. O engraçado é que se proteger desse tipo de vulnerabilidade não é complicado. Por isso esse vídeo é importante para todo tipo de desenvolvedor, do júnior ao sênior. Fizemos questão de mostrar algumas das formas mais comuns de se fazer esse tipo de ataque para todos verem como o SQLi é perigoso de verdade.
                    <br />
                    <br />
                    <h5 style="font-style: oblique;">
                        Links citados no vídeo:
                    </h5>
                    <ul>
                        <li><a href="https://youtu.be/snOXxJa31GI">ORM</a></li>
                        <li><a href="https://youtu.be/kMznyI7r2Tc">SQL</a></li>
                    </ul>
                    

                </div>


            </div>
        </div>    
    </div>
    
</asp:Content>
