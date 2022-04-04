
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%--<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>--%>
<t:template>
    <jsp:body>
        <main>
            <span id="hidden">a</span>
            <div class="container">
                <div class="title">
                    <p>DevJobs</p>
                </div>
                <div class="vacancy">
                    <div class="vacancy-container" id="verify-job">
                        <span>Quer verificar as vagas disponíveis?</span>
                        <a href="/devjobs/vagas"><button>Vagas</button></a>
                    </div>
                    <div class="vacancy-container">
                        <span>Quer cadastrar uma vaga de emprego?</span>
                        <a href="/devjobs/registrar/vaga"><button>Cadastrar</button></a>
                    </div>
                </div>
            </div>
        </main>
    </jsp:body>
</t:template>

</html>