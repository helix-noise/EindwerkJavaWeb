<%@include file="Template/header.jsp" %>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="well well-sm">
                <form class="form-horizontal" action="ContactComp.jsp">
                    <fieldset>
                        <legend class="text-center header">Contacteer ons</legend>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2"><i class="glyphicon glyphicon-user" style="font-size: 35px; color: chocolate"></i></span>
                            <div class="col-md-8">
                                <input id="naam" name="naam" type="text" placeholder="Naam" class="form-control" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2"><i class="glyphicon glyphicon-envelope" style="font-size: 35px; color: chocolate"></i></span>
                            <div class="col-md-8">
                                <input id="email" name="email" type="text" placeholder="Email" class="form-control" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2"><i class="glyphicon glyphicon-earphone" style="font-size: 35px; color: chocolate"></i></span>
                            <div class="col-md-8">
                                <input id="telefoon" name="telefoon" type="text" placeholder="Telefoon" class="form-control" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2"><i class="glyphicon glyphicon-pencil" style="font-size: 35px; color: chocolate"></i></span>
                            <div class="col-md-8">
                                <textarea class="form-control" id="bericht" name="bericht" placeholder="Voer hier uw bericht in." rows="7" required></textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-12 text-center">
                                <button type="submit" class="btn btn-warning btn-lg">Verzenden</button>
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>

<%@include file="Template/footer.jsp" %>