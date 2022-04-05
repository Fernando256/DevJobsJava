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
            <a href="/devjobs/vaga/detalhes/1">
                <div class="job-card">
                    <div class="profile">
                        <img src="assets/resources/images/perfil.png" alt="profile">
                    </div>
                    <div class="job-information">
                        <h4>Desenvolvedor Back-end Node.js JR</h4>
                        <p>Salário: R$ 3.000,00</p>
                        <img src="assets/resources/images/clock.png" alt="clock">
                        <span>Há 2 dias</span>
                    </div>
                </div>
            </a>
        </div>
    </jsp:body>
</t:template>

</html>