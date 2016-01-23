<%@page import="bll.Film"%>
<%@include file="Template/header.jsp" %>
<% Film film = (Film) request.getAttribute("FilmDetail");%>
<div class="col-md-5 col-centered">
    <h2 style="text-align: center">Detail</h2>
    <div class="well well-lg">
        <div class="row">
            <div class="col-sm-6">
                <img src="<%= film.getFoto()%>" class="img-responsive">
            </div>
            <div class="col-sm-6">
                <dl class="table">
                    <dt>Naam</dt>
                    <dd><%= film.getNaam()%></dd>
                    <dt>Beschrijving</dt>
                    <dd><%= film.getBeschrijving()%></dd>
                    <dt>Genre</dt>
                    <dd><%= film.getGenre()%></dd>
                    <dt>Prijs</dt>
                    <dd><%= film.getPrijs()%></dd>
                </dl>
            </div>
            <div class="row-down3">
                <a href="LaadFilmLijst" class="btn btn-block btn-warning"> Terug naar lijst</a>
            </div>
        </div>
    </div>
</div>

<%@include file="Template/footer.jsp" %>
