<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template>
    <jsp:body>
        <head>
            <link rel="stylesheet" href="assets/resources/styles/job-details.css"></link>
        </head>
        <div class="container-job">
            <div class="job-details">
                <div class="title">
                    <h2>Desenvolvedor Back-end Node.js JR</h2>
                </div>
                <div class="description">
                    <p>Requisitos e Qualificações:</p>
                    <span>
                        NodeJS;<br/>
                        NestJS;<br/>
                        Typescript;<br/>
                        Modelagem de API;<br/>
                        Conhecimento em TDD e BDD;<br/>
                        Desenvolvimento de micro serviço;<br/>
                        Integração com os seguintes protocolos: HTTP, SOAP, Socket (desejável);<br/>
                        Experiência com web socket, SSE - Server Sent Event (desejável);<br/>
                        Experiência com Design Pattern;<br/>
                    </span>
                </div>
                <div class="job-information">
                    <p>Salário: R$ 3.000,00</p>
                    <div class="date-published">
                        <img src="assets/resources/images/clock.png" alt="clock">
                        <span>Há 2 dias</span>
                    </div>

                </div>
                <a href="/devjobs/vaga/1/aplicar"><button>Aplicar-se</button></a>
            </div>
            <div class="profile">
                <img src="assets/resources/images/perfil.png" alt="profile">
            </div>
        </div>
        <hr/>
        <div class="title" id="candidate">
            <h2>Candidatos</h2>
        </div>
        <div class="tables">
            <table>
                <tr>
                  <th>Nome</th>
                  <th>Email</th>
                </tr>
                <tr>
                  <td>Alfreds Futterkiste</td>
                  <td>Maria Anders</td>
                </tr>
                <tr>
                  <td>Centro comercial Moctezuma</td>
                  <td>Francisco Changa</td>
                </tr>
                <tr>
                  <td>Ernst Handel</td>
                  <td>Roland Mendel</td>
                </tr>
              </table>
        </div>
    </jsp:body>
</t:template>

</html>