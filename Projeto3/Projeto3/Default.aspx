<%@ Page Title="" Language="C#" MasterPageFile="~/Projeto.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Projeto3.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="padding-lr">
        <!-- SLIDES -->
        <div class="flexslider" style="direction: rtl;">
            <ul class="slides">
                <li>
                    <img src="Images/banner0.png" />
                </li>

                <li>
                    <img src="Images/banner1.png" />
                </li>

                <li>
                    <img src="Images/banner2.png" />
                </li>

                <li>
                    <img src="Images/banner3.png" />
                </li>
            </ul>
        </div>
        <script>
            $(window).load(function () {
                $('.flexslider').flexslider({
                    animation: "slide",
                    rtl: true
                });
            });
        </script>
    </div>

    <div class="row margin-top-60">
        <div class="col-3 padding-lr">
            <div>
                <img width="100%" src="Images/si1.png" />
            </div>
            <div class="font-12">
                <h4>Sobre Analise de Sistemas</h4>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
            </div>
            <asp:HyperLink ID="HyperLink1" NavigateUrl="Ads.aspx" runat="server">Saiba mais...</asp:HyperLink>
        </div>

        <div class="col-3 padding-lr">
            <div>
                <img width="100%" src="Images/si2.jpg" />
            </div>
            <div class="font-12">
                <h4>Sobre linguagens de Programação</h4>
                Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem.
            </div>
            <asp:HyperLink ID="HyperLink2" NavigateUrl="Linguagens.aspx" runat="server">Saiba mais...</asp:HyperLink>

        </div>

        <div class="col-3 padding-lr">
            <div>
                <img width="100%" src="Images/si2.jpg" />
            </div>
            <div class="font-12">
                <h4>Projeto de Sistemas </h4>
                Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem.
            </div>
            <asp:HyperLink ID="HyperLink3" NavigateUrl="Projetos.aspx" runat="server">Saiba mais...</asp:HyperLink>

        </div>

        <div class="col-3 padding-lr">
            <div>
                <img width="100%" src="Images/si4.jpg" />
            </div>
            <div class="font-12">
                <h4>Aplicativos para Mobile</h4>

                nesciunt.consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.consectetur adipisicing elit,
            </div>
            <asp:HyperLink ID="HyperLink4" NavigateUrl="Mobile.aspx" runat="server">Saiba mais...</asp:HyperLink>
        </div>
    </div>

    <div class="row box">
        <div class="col-2">
            <div class="border">
                <img width="100px" src="Images/programador.png" />
                <div class="font-12">
                    <h4>Programação</h4>
                    Quer ser um programador? faça o curso de Analise e Desenvolvimento de Sistema da Fatec de Americana.
                </div>
                <asp:HyperLink ID="HyperLink5" NavigateUrl="http://www.fatec.edu.br" Target="_blank" runat="server">Saiba mais...</asp:HyperLink>
            </div>

        </div>
    </div>

</asp:Content>
