<%@include file="Template/header.jsp" %>

<div class="col-md-5 col-centered">
    <h2 style="text-align: center">Registreren</h2>
    <div class="well well-lg">
        <form>
            <dl class="table text-center">
                <dt>Voornaam</dt>
                <dd><input type="text" name="Voornaam" class="form-control"></dd>
                <dt>Achternaam</dt>
                <dd><input type="text" name="Achternaam" class="form-control"></dd>
                <dt>E-mail</dt>
                <dd><input type="text" name="Email" class="form-control"></dd>
                <dt>Adres</dt>
                <dd><input type="text" name="Adres" class="form-control"></dd>
                <dt>Stad</dt>
                <dd><input type="text" name="Stad" class="form-control"></dd>
                <dt>Postcode</dt>
                <dd><input type="text" name="Postcode" class="form-control"></dd>
                <dt>Telefoonnummer</dt>
                <dd><input type="text" name="Telefoon" class="form-control"></dd>
            </dl>
            <div class="row">
                <div class="col-sm-8 col-centered">
                    <a href="Index.jsp" class="btn btn-lg btn-warning glyphicon glyphicon-home"> Home</a>
                    <input type="submit" class="btn btn-lg btn-warning" value="Registreren">
                </div>
            </div>
        </form>
    </div>
</div>

<%@include file="Template/footer.jsp" %>