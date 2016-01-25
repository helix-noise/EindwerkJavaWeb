<%@include file="Template/header.jsp" %>
<% Klant klant = (Klant)request.getSession().getAttribute("LoggedUser"); %>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="well well-sm">
                <fieldset>
                    <legend class="text-center header">Bedankt</legend>
                    <div class="form-group">
                        <h4 class="text-center">Bedankt voor uw bestelling <%= klant.getVoornaam() %></h4>
                        <h4 class="text-center">Uw verzending word zo spoedig mogelijk verzonden.</h4>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2 col-md-offset-5">
                            <a href="Index.jsp" class="btn btn-block btn-warning glyphicon glyphicon-home"> Index</a>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
</div>
<% session.removeAttribute("winkelMandje"); %>
<%@include file="Template/footer.jsp" %>
