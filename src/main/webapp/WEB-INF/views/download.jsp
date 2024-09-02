<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Download Resume</title>
</head>
<body>
    <h2>Download Resumes</h2>
    <ul>
        <c:forEach var="file" items="${files}">
            <li>
                <a href="${pageContext.request.contextPath}/candidates/download/${file}">${file}</a>
            </li>
        </c:forEach>
    </ul>
</body>
</html>
