<%--
  Created by IntelliJ IDEA.
  User: Sameer
  Date: 8/22/2017
  Time: 3:42 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html xmlns:g="http://www.w3.org/1999/xhtml">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <g:link controller="todos" action="createTodos" class="btn btn-info btn-lg"><span class="glyphicon glyphicon-plus-sign" ></span> Add Data</g:link>
%{--
    <g:link controller="todos" action="deleteTodos" id="1" class="btn btn-info btn-lg"><span class="glyphicon glyphicon-minus-sign" ></span> Remove Data</g:link>
--}%

</head>
<body>

<div class="container">
    <table class="table">
        <thead>
        <tr>
            <th>Notes</th>
            <th>Created at</th>
            <th>Tags</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${todos}" var="td">
            <tr>
                <td>${td.note}</td>
                <td>${td.created_at}</td>
                <td>${td.tags.tags[0]}</td>
                <td><Button class="btn btn-info btn-lg" data-toggle="modal"  onclick='showUpdateModal("${td.id}")'>update</Button></td>
                <td> <g:link controller="todos" action="deleteTodos" id="${td.id}" class="btn btn-info btn"><span class="glyphicon glyphicon-minus-sign" ></span> Remove Data</g:link>
                </td>
            </tr>

        </g:each>

        </tbody>
    </table>
</div>



<div class="container">
   %{-- <h2>Modal Example</h2>
    <!-- Trigger the modal with a button -->
    <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>--}%

    <!-- Modal -->
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Modal Header</h4>
                </div>
                <div class="modal-body">
                    <g:form class="form-signin"  role="form" controller="todos" action="updateTodos" >
                        <h3 class="form-signin-heading">Add data to todos</h3>
                        <input type="hidden" id="setId" name="setId" >
                        <input type="text" class="form-control" name="todos" id="todosNote" placeholder="Add todos" required autofocus>
                        <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
                    </g:form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>

</div>


<script>

    function showUpdateModal(id) {
        console.log(id)
        // show modal
        // set id
        $("#setId").val(id);
        $('#myModal').modal('show');
    }
</script>
</body>
</html>

