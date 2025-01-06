<html>
<head>
    <title>Welcome to my page</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style4.css">
</head>
<body>

<h2>Enter the detail</h2>
<form action="addUser" class="animated-form">
    <label for="id">Enter ID</label>
    <input type="text" name="id" id="id"><br>
    <label for="name">Enter Name</label>
    <input type="text" name="name" id="name"><br>
    <input type="submit" value="Submit">
</form>

<h2>Display User Information</h2>
<form action="getUser" class="animated-form">
    <label for="id">Enter ID</label>
    <input type="text" name="id" id="id"><br>
    <input type="submit"><br>
</form>

<h2>Enter the detail to delete</h2>
<form action="deleteUser" class="animated-form">
    <label for="id">Enter ID</label>
    <input type="text" name="id" id="id"><br>
    <input type="submit"><br>
</form>

<h2>Enter the detail to update</h2>
<form action="updateUser" class="animated-form">
    <label for="id">Enter ID</label>
    <input type="text" name="id" id="id"><br>
    <input type="submit"><br>
</form>

</body>
</html>
