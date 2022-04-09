<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template>
    <jsp:body>
        <head>
            <link rel="stylesheet" href="assets/resources/styles/register.css">
        </head>
            <form action="/devjobs/vaga/aplicar" method="POST">
            <h2>Dados do candidato:</h2>
            <div class="input-information">
                <p>Nome:</p>
                <input type="text" name="name">
            </div>
            <div class="input-information">
                <p>E-mail:</p>
                <input type="email" name="email">
            </div>
                <input type="hidden" name="id" value="${id}">
            <div class="buttons">
                <input type="submit" value="Enviar" id="send-button">
                <a href="/devjobs/vaga/detalhes?id=${id}"><input type="button" value="Cancelar" id="cancel-button"></a>
            </div>
        </form>
    </jsp:body>
</t:template>

</html>