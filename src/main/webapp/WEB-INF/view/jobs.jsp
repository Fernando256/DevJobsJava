<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template>
    <jsp:body>
        <head>
            <link rel="stylesheet" href="assets/resources/styles/jobs.css">
        </head>
        <span id="hidden">a</span>
        <div class="container">
            <div class="title">
                <h2>Empregos</h2>
            </div>
            <!-- List Jobs -->
            <c:if test="${not empty vacancies}">
                <c:forEach var="vacancy" items="${vacancies}">
                    <a href="/devjobs/vaga/detalhes?id=${vacancy.id}">
                        <div class="job-card">
                            <div class="profile">
                                <img src="assets/resources/images/perfil.png" alt="profile">
                            </div>
                            <div class="job-information">
                                <h4>${vacancy.type}</h4>
                                <p>Salario: ${vacancy.salary}</p>
                                <img src="assets/resources/images/clock.png" alt="clock">
                                <span>Criada em: ${vacancy.date.getDayOfMonth()}/${vacancy.date.getMonthValue()}/${vacancy.date.getYear()} </span>
                            </div>
                        </div>
                    </a>
                </c:forEach>
            </c:if>
        </div>
    </jsp:body>
</t:template>

</html>