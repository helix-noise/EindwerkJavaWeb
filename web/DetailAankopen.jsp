<%@include file="Template/header.jsp" %>
<%@page import="bll.Film"%>
<% Film film = (Film) request.getAttribute("FilmVerkoop");%>
<div class="col-md-5 col-centered">
    <h2 style="text-align: center">Aankopen</h2>
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
                    <form action="WinkelMandje?id=<%= film.getId()%>" method="POST">
                    <div class="row">
                        <div>
                            <p><b>Aantal</b></p>
                            <input type="number" min="1" max="99" name="Aantal" class="form-control"  required>
                        </div>
                    </div>
                    <div class="row">
                        <div>
                            <input type="submit" class="btn btn-warning form-control" value="Aankopen">
                        </div>
                    </div>
                </form>
            </div>
            <div class="row-down3">
                <a href="LaadFilmLijst" class="btn btn-block btn-danger"> Terug naar lijst</a>
            </div>
        </div>
    </div>
</div>

<%@include file="Template/footer.jsp" %>