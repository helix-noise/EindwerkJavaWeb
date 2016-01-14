<%@include file="Template/header.jsp" %>

<div class="container">
    <h1 class="well text-center">Registreren</h1>
    <div class="col-lg-12 well">
        <div class="row">
            <form action="RegistreerKlant" method="POST">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-6 form-group">
                            <label>Voornaam</label>
                            <input type="text" placeholder="Plaats hier uw voornaam.." class="form-control" name="Voornaam" required>
                        </div>
                        <div class="col-sm-6 form-group">
                            <label>Achternaam</label>
                            <input type="text" placeholder="Plaats hier uw achternaam.." class="form-control" name="Achternaam" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class=" col-sm-12 form-group">
                            <label>Straat</label>
                            <textarea placeholder="Plaats hier uw straatnaam.." rows="2" class="form-control" name="Straat" required></textarea>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4 form-group">
                            <label>Huisnummer</label>
                            <input type="text" placeholder="Huisnummer en bus.." class="form-control" name="Huisnummer" required>
                        </div>	
                        <div class="col-sm-4 form-group">
                            <label>Postcode</label>
                            <input type="text" placeholder="Plaats hier uw postcode.." class="form-control" name="Postcode" required>
                        </div>	
                        <div class="col-sm-4 form-group">
                            <label>Stad</label>
                            <input type="text" placeholder="Plaats hier uw stad.." class="form-control" name="Stad" required>
                        </div>		
                    </div>						
                    <div class="col-sm-12 form-group">
                        <label>Telefoon</label>
                        <input type="text" placeholder="Plaats hier uw telefoonnummer.." class="form-control" name="Telefoon" required>
                    </div>
                    <div class="col-sm-12 form-group">
                        <label>E-mail</label>
                        <input type="email" placeholder="Plaats hier uw e-mail.." class="form-control" name="Email" required>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 form-group">
                            <label>Paswoord</label>
                            <input type="password" placeholder="Plaats hier uw paswoord.." class="form-control" name="Paswoord" required>
                        </div>		
                        <div class="col-sm-6 form-group">
                            <label>Herhaal paswoord</label>
                            <input type="password" placeholder="Herhaal uw paswoord.." class="form-control" name="HPaswoord" required>
                        </div>	
                    </div>
                    <div class="col-sm-12 form-group text-center">
                        <button type="button" class="btn btn-lg btn-warning">Registreren</button>
                    </div>
                </div>
            </form> 
        </div>
    </div>
</div>

<%@include file="Template/footer.jsp" %>