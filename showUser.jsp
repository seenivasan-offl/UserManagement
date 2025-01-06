<html>
<head>
    <title>Welcome to my page</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style2.css">
</head>
<body>

<h2>Display User Information</h2>

<!-- The user's name will slide in with animation and pulse with color -->

<p>${user.id}:${user.name}</p>

</body>
</html>
