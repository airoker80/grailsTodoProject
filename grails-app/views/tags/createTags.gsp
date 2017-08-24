<%--
  Created by IntelliJ IDEA.
  User: Sameer
  Date: 8/22/2017
  Time: 2:52 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<div class="container">
    <div class="row">
        <div class="container" id="formContainer">

            <g:form class="form-signin" id="login" role="form" controller="tags" action="addTags">
                <h3 class="form-signin-heading">Please sign in</h3>
                <a href="#" id="flipToRecover" class="flipLink">
                    <div id="triangle-topright"></div>
                </a>
                <input type="text" class="form-control" name="tags" id="tags" placeholder="Add tags" required autofocus>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
            </g:form>

        </div> <!-- /container -->
    </div>
</div>
</body>
</html>