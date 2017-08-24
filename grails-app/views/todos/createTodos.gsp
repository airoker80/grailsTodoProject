<%--
  Created by IntelliJ IDEA.
  User: Sameer
  Date: 8/22/2017
  Time: 3:06 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
<div class="container">
    <ul class="nav nav-pills">
        <li class="active"><a data-toggle="pill" href="#home">Home</a></li>
        <li><a data-toggle="pill" href="#menu1">Add todo</a></li>
        <li><a data-toggle="pill" href="#menu2">Add tags</a></li>
        <li><a data-toggle="pill" href="#menu3">Menu 3</a></li>
    </ul>
<div class="tab-content">
    <div id="home" class="tab-pane fade in active">
        <g:form  id="login" role="form" controller="todos" action="addTodos">
            <p> Home</p>
        %{--<g:link controller="todos" action="deleteTodos" id="1">Delete </g:link>--}%
        </g:form>
    </div>
    <div id="menu1" class="tab-pane fade">
        <g:form  controller="todos" action="addTodos">
            <input type="text" name="todos" id="todos" placeholder="Add todos" required autofocus>
            <button  type="submit">Submit</button>
        %{--<g:link controller="todos" action="deleteTodos" id="1">Delete </g:link>--}%

        <div>
            <g:each in="${taglist}" >
                <label class="radio-inline">
                    <input type="radio" name="tagId" value="${it.id}">${it.tags}
                </label>
            </g:each>
        </div>
        </g:form>
    </div>
    <div id="menu2" class="tab-pane fade">
        <g:form  role="form" controller="tags" action="addTags">
            <input type="text" name="tags" id="tags" placeholder="Add Tags" required autofocus>
            <button  type="submit">Submit</button>
        %{--<g:link controller="todos" action="deleteTodos" id="1">Delete </g:link>--}%
        </g:form>
    </div>

    <div id="menu3" class="tab-pane fade">
            <div class="dropdown">
                <button class="btn btn-default dropdown-toggle" type="button" id="menu" data-toggle="dropdown">Tags
                    <span class="caret"></span></button>

                <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
    <g:each in="${taglist}" status="i" var="myVar">
                      <li role="presentation">
        <g:link controller="todos" action="getTodosByTag" id="${taglist.id[i]}" >
            ${taglist.tags[i]}
        </g:link>

                      </li>
    </g:each>
                </ul>

            </div>

    </div>

    </div>
</div>
</div>


</body>
</html>