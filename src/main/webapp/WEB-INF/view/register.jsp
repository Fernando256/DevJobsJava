<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template>
    <jsp:body>
        <head>
            <link rel="stylesheet" href="assets/resources/styles/register.css">
        </head>
        <form action="registrar" method="POST">
            <h2>Cadastro de Vaga</h2>
            <div class="input-information">
                <p>Nome da Empresa:</p>
                <input type="text" name="company-name">
            </div>
            <div class="input-information">
                <p>Tipo da vaga:</p>
                <input type="text" name="job-type">
            </div>
            <div class="input-information">
                <p>Salario:</p>
                <input type="text" id="salary" name="salary">
            </div>
            <div class="input-information">
                <p>Descrição:</p>
                <textarea rows="7" cols="50" name="description"></textarea>
            </div>
            <div class="buttons">
                <input type="submit" value="Enviar" id="send-button">
                <a href="/devjobs/"><input type="button" value="Cancelar" id="cancel-button"></a>
            </div>
        </form>
        <script>
            window.onload = function (){
                $('#salary').mask("R$ 0.000,00");
                localStorage.setItem("devjobs", "Seja bem vindo ao devjobs!");

                $.ajax({
                    url: 'http://localhost:8080/devjobs/registrar',
                    method: 'get',
                    success: function() {
                        alert("Cadastre uma vaga para sua empresa!");
                    }
                });
            }
        </script>
    </jsp:body>
</t:template>
</html>
