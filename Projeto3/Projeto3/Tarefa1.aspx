<%@ Page Title="" Language="C#" MasterPageFile="~/Projeto.Master" AutoEventWireup="true" CodeBehind="Tarefa1.aspx.cs" Inherits="Projeto3.Tarefa1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

    <div class="row margin-top-60">
        <div class="col-12">
            <div class="box border">
                <h4>Artigo da semana:</h4>

                <%--TÍTULO--%>
                <div style="text-align:center">
                    <h1>IBM apresenta processador quântico de 127 qubits</h1>
                    <h4 style="font-weight:normal;">Novo processador aprofunda os roadmaps líderes da indústria para avançar no rendimento de seus sistemas quânticos</h4>
                    <h6 style="font-style:oblique">(Computer World, 17/11/2021)</h6>
                </div>

                <%-- IMAGEM --%>
                <div style="text-align:center;">
                    <img style="width:100%" src="Images/eagle.jpg" />
                    <p style="font-size: 0.8em">Processador quantico Eagle IBM Foto: Divulgação/IBM</p>
                </div>

                <%-- TEXTO --%>
                <div>

                    A IBM anunciou no Quantum Summit 2021, evento anual em que a IBM apresenta destaques de hardware e software quântico, o Eagle, novo processador quântico de 127 qubits (bits quânticos). Segundo a companhia, o processador Eagle marca o ponto em que os circuitos quânticos não podem ser simulados de maneira confiável e exata num computador clássico.
                    <br />
                    <br />

                    A IBM recentemente apresentou os roadmaps para seu projeto de computação quântica, incluindo uma jornada para escalar o hardware quântico a fim de permitir que os circuitos quânticos complexos alcancem a Vantagem Quântica. A Vantagem Quântica é o ponto no qual os sistemas quânticos podem superar significativamente seus contrapontos clássicos. Eagle é o último passo nessa jornada de escalabilidade.
                    <br />
                    <br />

                    A IBM mede o progresso no hardware de computação quântica através de três atributos de desempenho: escala, qualidade e velocidade. A escala é medida pelo número de qubits em um processador quântico e determina o quão grande é o circuito quântico que pode ser executado. A qualidade é medida pelo Volume Quântico e descreve com que precisão os circuitos quânticos funcionam em um dispositivo quântico real. A velocidade é medida por CLOPS (Circuit Layer Operations Per Second), uma métrica que a IBM introduziu em novembro de 2021 e que identifica a viabilidade de executar cálculos reais compostos de um grande número de circuitos quânticos.
                    <br />
                    <br />

                    <h2>Processador Eagle de 127 qubits</h2>
                    O Eagle é o primeiro processador quântico IBM desenvolvido e implementado para conter mais de 100 qubits operacionais e conectados. Ele segue o processador Hummingbird de 65 qubit, lançado pela IBM em 2020, e o processador Falcon de 27 qubit, anunciado em 2019. Para alcançar esse avanço, os pesquisadores da IBM desenvolveram inovações pioneiras em seus processadores quânticos existentes, como um desenho de combinação de qubit para reduzir erros e uma arquitetura para diminuir o número de componentes necessários. As novas técnicas usadas em Eagle colocam a fiação de controle em vários níveis físicos dentro do processador enquanto mantém os qubits em uma única camada, permitindo um aumento significativo nos qubits.
                    <br />
                    <br />

                    O aumento de Qubits vai permitir que os usuários explorem problemas em um novo nível de complexidade ao conduzir experimentos e executar aplicativos, como otimizar o aprendizado de máquina ou modelar novas moléculas e materiais para uso em áreas que vão desde a indústria de energia até o processo de descoberta de fármacos. Eagle é o primeiro processador quântico da IBM cuja escala torna impossível a simulação confiável em um computador clássico.
                    <br />
                    <br />

                    "A chegada do processador Eagle é um grande passo em direção ao dia em que os computadores quânticos poderão superar os computadores clássicos em aplicações úteis", declarou o Dr. Darío Gil, vice-presidente Sênior da IBM e Diretor de Research. "A computação quântica tem o poder de transformar quase todos os setores e nos ajudar a enfrentar os maiores problemas de nosso tempo. É por isso que a IBM continua inovando rapidamente no design de hardware e software quânticos, gerando maneiras para que as cargas de trabalho quânticas e clássicas se fortaleçam mutuamente e criem um ecossistema global que é fundamental para o crescimento de uma indústria quântica."
                    <br />
                    <br />

                    <h5 style="font-style: oblique;">
                        Confira a matéria na íntegra <a href="https://computerworld.com.br/plataformas/ibm-apresenta-processador-quantico-de-127-qubits/">aqui</a>.
                    </h5>

                </div>


            </div>
        </div>    
    </div>
    
</asp:Content>
