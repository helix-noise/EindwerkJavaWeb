<%@page import="java.util.ArrayList"%>
<%@page import="bll.Aankoop"%>
<%@page import="java.util.List"%>
<%@include file="Template/header.jsp" %>
<%List<Aankoop> WinkelMandje = (ArrayList<Aankoop>)request.getSession().getAttribute("winkelMandje");%>
<div class="container">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">
                <div class="panel panel-warning">
                    <div class="panel-heading">
                        <h3 class="panel-title text-center">Winkelmandje</h3>
                    </div>
                    <div class="panel-body">
                        <div class="row">

                            <div class=" col-md-12 col-lg-12">
                                <table class="table table-user-information">
                                    <tbody>
                                        <tr>
                                            <th>Naam</th>
                                            <th>Aantal</th>
                                            <th>Prijs</th>
                                            <th>Subtotaal</th>
                                        </tr>
                                        <% for (Aankoop a : WinkelMandje) {%>
                                        <tr>
                                            <td>
                                                <%= a.getNaam()%>
                                            </td>
                                            <td>
                                                <%= a.getAantal()%>
                                            </td>
                                            <td>
                                                <%= a.getPrijs()%>
                                            </td>
                                            <td class="text-right">
                                                <%= a.getSubtotaal()%>
                                            </td>
                                        </tr>
                                        <% }%>
                                    </tbody>
                                </table>
                                <table class="table table-user-information">
                                    <tr >
                                        <td class=" col-md-6 ">Totaal bedrag:</td>
                                        <td class=" text-right" style="padding-right: 5px;"><%= request.getAttribute("Totaal")%></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer">
                        <a href="LaadFilmLijst" data-toggle="tooltip" type="button" class="btn btn-sm btn-warning"><i class="glyphicon glyphicon-forward"></i>Verder Winkelen</a>
                        <span class="pull-right">
                            <a href="Betaald.jsp" data-toggle="tooltip" type="button" class="btn btn-sm btn-warning"><i class="glyphicon glyphicon-shopping-cart"></i> Aankopen</a>
                        </span>
                    </div>
                </div>
        </div>
    </div>
</div>


<%@include file="Template/footer.jsp" %>
