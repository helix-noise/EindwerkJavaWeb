<%@page import="java.util.List"%>
<%@page import="bll.Film"%>
<% int count = 0; %>
<% List<Film> FilmLijst = (List<Film>) session.getAttribute("FilmLijst"); %>
<%@include file="Template/header.jsp" %>
<div class="container-fluid">
    <% for (Film f : FilmLijst) { %>
    <% if (count == 0) { %>
    <div class="row">
        <% } else if (count > 0 && count % 4 == 0) { %>
    </div><div class="row">
        <% }%>
        <!-- ITEM-->
        <div class="col-sm-3">
            <div>
                <div class="thumbnail">
                    <img src="<%= f.getFoto()%>" style="width: 150px; height: 250px">
                    <div class="caption">
                        <p>
                            <strong><%= f.getNaam()%></strong>
                        </p>
                        <div class="row">
                            <div class="col-sm-6">
                                <a href="HaalDetails?id=<%= f.getId() %>" class="btn btn-block btn-warning glyphicon glyphicon-eye-open"> Detail</a>
                            </div>
                            <div class="col-sm-6">
                                <a href=""  class="btn btn-block btn-warning glyphicon glyphicon-shopping-cart"> Aankopen</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- / ITEM-->
        <% count++; %>
        <% }%>
    </div>
</div>
<%@include file="Template/footer.jsp" %>