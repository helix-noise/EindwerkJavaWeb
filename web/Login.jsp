<%@include file="Template/header.jsp" %>

<div class="container">
    <h1 class="well text-center">Log-in</h1>
    <div class="col-lg-12 well">
        <div class="row">
            <form action="LoginKlant" method="POST">
                <div class="col-sm-12">
                    <% if(request.getAttribute("error") != null){ %>
                    <p class="text-center" style="color: red;"><b><%= request.getAttribute("error") %></b></p>
                    <%}%>
                    <div class="row">
                        <div class="form-group">
                            <span class="col-sm-1  col-sm-offset-3"><i class="glyphicon glyphicon-user" style="font-size: 35px; color: chocolate"></i></span>
                            <div class="col-sm-4">
                                <input type="email" class="form-control" placeholder="E-mail" name="Email" required>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group">
                            <span class="col-sm-1  col-sm-offset-3"><i class="glyphicon glyphicon-lock" style="font-size: 35px; color: chocolate"></i></span>
                            <div class="col-sm-4">
                                <input type="password" class="form-control" placeholder="Paswoord" name="Paswoord" required>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-sm-4 col-sm-offset-4 form-group text-center">
                            <a href="Registreren.jsp" class="btn btn-lg btn-warning glyphicon glyphicon-user"> Registreren</a>
                            <button type="submit" class="btn btn-warning btn-lg glyphicon glyphicon-log-in"> Log-in</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<%@include file="Template/footer.jsp" %>