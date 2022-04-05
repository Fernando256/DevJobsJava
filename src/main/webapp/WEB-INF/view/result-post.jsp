<%--
  Created by IntelliJ IDEA.
  User: luisfernando
  Date: 4/5/22
  Time: 10:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template title="Resultado">
    <jsp:body>
        Name: ${company.name}<br>
        Type: ${company.type}<br>
        Description: ${company.description}<br>

        User name: ${candidate.name}<br>
        Email: ${candidate.email}<br>


    </jsp:body>
</t:template>