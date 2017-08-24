<%--
  Created by IntelliJ IDEA.
  User: Sameer
  Date: 8/24/2017
  Time: 12:12 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>

<table class="table">
    <thead>
    <tr>
        <th>Notes</th>
        <th>created at</th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${todosbyTags}" var="td" status="i">
        <tr>
            <td>${todosbyTags[i].note}</td>
            <td>${todosbyTags[i].created_at}</td>

        </tr>

    </g:each>

    </tbody>
</table>
</body>
</html>