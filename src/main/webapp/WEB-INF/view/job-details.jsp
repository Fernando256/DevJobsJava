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
                    <h2>${vacancy.name}</h2>
                </div>
                <div class="description">
                    <p>${vacancy.type}:</p>
                    <span>
                        ${vacancy.description}
                    </span>
                </div>
                <div class="job-information">
                    <p>Salário: ${vacancy.salary}</p>
                    <div class="date-published">
                        <img src="assets/resources/images/clock.png" alt="clock">
                        <span>Criada em: ${vacancy.date.getDayOfMonth()}/${vacancy.date.getMonthValue()}/${vacancy.date.getYear()}</span>
                    </div>

                </div>
                <a href="/devjobs/vaga/aplicar?id=${vacancy.id}"><button>Aplicar-se</button></a>
            </div>
            <div class="profile">
                <img src="assets/resources/images/perfil.png" alt="profile">
            </div>
        </div>
        <c:if test="${not empty candidates}">
            <hr/>
            <div class="title" id="candidate">
                <h2>Candidatos</h2>
            </div>
            <div class="tables">
                <table>
                    <tr>
                        <th>Nome</th>
                        <th>E-mail</th>
                    </tr>
                    <c:forEach var="candidate" items="${candidates}">
                        <tr>
                          <td>${candidate.name}</td>
                          <td>${candidate.email}</td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </c:if>
    </jsp:body>
</t:template>

</html>