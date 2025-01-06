<html>
<head>
    <title>Welcome to my page</title>
    <!-- Link to the CSS stylesheet -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style4.css">
</head>
<body>

<h2>To be Updated</h2>
<!-- Displaying user ID with animation -->
<p class="user">${user.id}</p>

<!-- Form for adding a user -->
<form action="addUser" class="animated-form">
    <label for="id">Enter ID</label>
    <input type="text" name="id" id="id"><br>
    <label for="name">Enter Name</label>
    <input type="text" name="name" id="name"><br>
    <input type="submit" value="Submit">
</form>

</body>
</html>
