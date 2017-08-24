<%--
  Created by IntelliJ IDEA.
  User: Sameer
  Date: 8/23/2017
  Time: 12:42 PM
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
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>

<body>
<div class="container">
    <table class="table">
        <thead>
        <tr>
            <th>Tags</th>
            <th>Created at</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${list_tags}" var="tg">
            <tr>
                <td>${tg.tags}</td>
                <td>${tg.created_at}</td>
                <td><Button class="btn btn-info btn-lg" data-toggle="modal"  onclick='showUpdateModal("${tg.id}")'>update</Button></td>
                <td> <g:link controller="tags" action="deleteTags" id="${tg.id}" class="btn btn-info btn"><span class="glyphicon glyphicon-minus-sign" ></span> Remove Data</g:link>
                </td>
            </tr>

        </g:each>

        </tbody>
    </table>
</div>

<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Modal Header</h4>
            </div>
            <div class="modal-body">
                <g:form class="form-signin"  role="form" controller="tags" action="updateTags" >
                    <h3 class="form-signin-heading">Add data to todos</h3>
                    <input type="hidden" id="setId" name="setId" >
                    <input type="text" class="form-control" name="tags" id="addtodos" placeholder="Add todos" required autofocus>
                    <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
                </g:form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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