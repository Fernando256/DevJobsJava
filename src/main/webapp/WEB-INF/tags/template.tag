<%--
  Created by IntelliJ IDEA.
  User: luisfernando
  Date: 4/4/22
  Time: 10:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@tag description="Template principal" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="title"%>


<html>
    <title>${title}</title>
    <base href="${pageContext.request.contextPath}/">
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- CSS -->

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"></link>
    <link rel="stylesheet" href="assets/resources/styles/layout.css"></link>

</head>
<body>
<header>
    <nav>
        <a href="/devjobs"><span>DevJobs</span></a>
    </nav>
</header>
<main id="content">
    <jsp:doBody></jsp:doBody>
</main>
<script src="https://code.jquery.com/jquery-2.2.4.js"></script>
<script src="assets/libraries/jquery.mask.min.js"></script>

</body>
</html>