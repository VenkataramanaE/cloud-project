<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload Resume</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .container {
            max-width: 600px;
            margin-top: 50px;
        }
        .form-control-file {
            margin-bottom: 20px;
        }
        .alert {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="text-center">Upload Resume</h2>
        <form action="${pageContext.request.contextPath}/candidates/upload" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="file">Choose file</label>
                <input type="file" class="form-control-file" id="file" name="file" required>
            </div>
            <button type="submit" class="btn btn-primary btn-block">Upload</button>
        </form>
        <c:if test="${not empty message}">
            <div class="alert alert-info" role="alert">
                ${message}
            </div>
        </c:if>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
