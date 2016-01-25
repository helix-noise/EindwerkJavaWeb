<%@include file="Template/header.jsp" %>
<% Klant klant = (Klant) request.getSession().getAttribute("LoggedUser");%>
<div class="container">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title text-center"><%= klant.getEmail()%></h3>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class=" col-md-12 col-lg-12 ">
                            <table class="table table-user-information">
                                <tbody>
                                    <tr>
                                        <td>Voornaam</td>
                                        <th><%= klant.getVoornaam()%></th>
                                    </tr>
                                    <tr>
                                        <td>Achternaam</td>
                                        <th><%= klant.getAchternaam()%></th>
                                    </tr>
                                    <tr>
                                        <td>Adres</td>
                                        <th><%= klant.getStraatnaam()%> <%= klant.getHuisnummer()%></th>
                                    </tr>
                                    <tr>
                                        <td>Postcode</td>
                                        <th><%= klant.getPostcode()%></th>
                                    </tr>
                                    <tr>
                                        <td>Stad</td>
                                        <th><%= klant.getStad()%></th>
                                    </tr>
                                    <tr>
                                        <td>Telefoon</td>
                                        <th><%= klant.getTelefoon()%></th>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="panel-footer">
                    <a href="Index.jsp" data-toggle="tooltip" type="button" class="btn btn-sm btn-warning"><i class="glyphicon glyphicon-home"></i> Home</a>
                    <div class="pull-right">
                        <a href="BewerkKlant.jsp" data-toggle="tooltip" type="button" class="btn btn-sm btn-warning"><i class="glyphicon glyphicon-edit"></i> Bewerken</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="Template/footer.jsp" %>
