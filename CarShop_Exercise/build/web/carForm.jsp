<%-- 
    Document   : carForm
    Created on : 2 Jun 2026, 8:03:59 pm
    Author     : ASUS
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>

    <head>

        <title>Car Shop Application</title>

        <link rel="stylesheet"
              href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
              crossorigin="anonymous">

    </head>

    <body>

        <header>

            <nav class="navbar navbar-expand-md navbar-dark"
                 style="background-color: tomato">

                <div>
                    <a href="" class="navbar-brand">
                        Car Shop App
                    </a>
                </div>

                <ul class="navbar-nav">
                    <li>
                        <a href="<%=request.getContextPath()%>/list"
                           class="nav-link">Cars</a>
                    </li>
                </ul>

            </nav>

        </header>

        <br>

        <div class="container col-md-5">

            <div class="card">

                <div class="card-body">

                    <c:if test="${car != null}">
                        <form action="update" method="post">
                        </c:if>

                        <c:if test="${car == null}">
                            <form action="insert" method="post">
                            </c:if>

                            <h2>

                                <c:if test="${car != null}">
                                    Edit Car
                                </c:if>

                                <c:if test="${car == null}">
                                    Add New Car
                                </c:if>

                            </h2>

                            <c:if test="${car != null}">
                                <input type="hidden"
                                       name="car_id"
                                       value="<c:out value='${car.car_id}' />" />
                            </c:if>

                            <fieldset class="form-group">

                                <label>Brand</label>

                                <input type="text"
                                       value="<c:out value='${car.brand}' />"
                                       class="form-control"
                                       name="brand"
                                       required="required">

                            </fieldset>

                            <fieldset class="form-group">

                                <label>Model</label>

                                <input type="text"
                                       value="<c:out value='${car.model}' />"
                                       class="form-control"
                                       name="model">

                            </fieldset>

                            <fieldset class="form-group">

                                <label>Cyclinder</label>

                                <input type="number"
                                       value="<c:out value='${car.cyclinder}' />"
                                       class="form-control"
                                       name="cyclinder">

                            </fieldset>

                            <fieldset class="form-group">

                                <label>Price</label>

                                <input type="number"
                                       step="0.01"
                                       value="<c:out value='${car.price}' />"
                                       class="form-control"
                                       name="price">

                            </fieldset>

                            <button type="submit" class="btn btn-success">
                                Save
                            </button>

                        </form>

                </div>

            </div>

        </div>

    </body>

</html>