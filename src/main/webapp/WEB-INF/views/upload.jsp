<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Upload Resume</title>
</head>
<body>
    <h2>Upload Resume</h2>
    <form action="${pageContext.request.contextPath}/candidates/upload" method="post" enctype="multipart/form-data">
        <label for="file">Select Resume:</label>
        <input type="file" name="file" id="file" required>
        <button type="submit">Upload</button>
    </form>

    <c:if test="${not empty message}">
        <p>${message}</p>
    </c:if>
</body>
</html>
