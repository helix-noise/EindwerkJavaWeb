<%@include file="Template/header.jsp" %>

<% Klant klant = (Klant) request.getSession().getAttribute("LoggedUser");%>
<div class="container">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title text-center">Bewerk <%= klant.getEmail() %></h3>
                </div>
                <form action="BewerkKlant?id=<%= klant.getId() %>" method="POST">
                    <div class="panel-body">
                        <div class="row">
                            <div class=" col-md-12 col-lg-12 ">
                                <table class="table table-user-information">
                                    <tbody>
                                        <tr>
                                            <td>Voornaam</td>
                                            <th><input type="text" name="Voornaam" value="<%= klant.getVoornaam()%>" required></th>
                                        </tr>
                                        <tr>
                                            <td>Achternaam</td>
                                            <th><input type="text" name="Achternaam" value="<%= klant.getAchternaam()%>" required></th>
                                        </tr>
                                        <tr>
                                            <td>Straat</td>
                                            <th><input type="text" name="Straat" value="<%= klant.getStraatnaam()%>" required></th>
                                        </tr>
                                        <tr>
                                            <td>Huisnummer</td>
                                            <th><input type="text" name="Huisnummer" value="<%= klant.getHuisnummer()%>" required></th>
                                        </tr>
                                        <tr>
                                            <td>Postcode</td>
                                            <th><input type="text" name="Postcode" value="<%= klant.getPostcode()%>" required></th>
                                        </tr>
                                        <tr>
                                            <td>Stad</td>
                                            <th><input type="text" name="Stad" value="<%= klant.getStad()%>" required></th>
                                        </tr>
                                        <tr>
                                            <td>Telefoon</td>
                                            <th><input type="text" name="Telefoon" value="<%= klant.getTelefoon()%>" required></th>
                                        </tr>
                                        <tr>
                                            <td>E-mail</td>
                                            <th><input type="text"  name="Email" value="<%= klant.getEmail()%>" required></th>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer">
                        <button type="submit" class="btn btn-sm btn-warning glyphicon glyphicon-edit"> Opslaan</button>
                        <div class="pull-right">
                            <a href="DetailKlant.jsp" data-toggle="tooltip" type="button" class="btn btn-sm btn-danger"><i class="glyphicon glyphicon-remove"></i> Annuleren</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<%@include file="Template/footer.jsp" %>