<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Download Resumes</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            max-width: 600px;
            margin-top: 50px;
        }
        .list-group-item {
            border: none;
            padding: 10px 15px;
        }
        .list-group-item a {
            color: #007bff;
            text-decoration: none;
        }
        .list-group-item a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="text-center mb-4">Download Resumes</h2>
        <div class="list-group">
            <c:forEach var="file" items="${files}">
                <a href="${pageContext.request.contextPath}/candidates/download/${file}" class="list-group-item list-group-item-action">
                    ${file}
                </a>
            </c:forEach>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
