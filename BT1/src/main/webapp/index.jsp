<%@ page import="java.util.ArrayList" %><%--

  Created by IntelliJ IDEA.
  User: duytran
  Date: 1/31/21
  Time: 23:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<%!
    public class User {
        private String name;
        private String dateOfBirth;
        private String address;
        private String img;

        public User() {
        }

        public User(String name, String dateOfBirth, String address, String img) {
            this.name = name;
            this.dateOfBirth = dateOfBirth;
            this.address = address;
            this.img = img;
        }

        public String getName() {
            return name;
        }

        public String getDateOfBirth() {
            return dateOfBirth;
        }

        public String getAddress() {
            return address;
        }

        public String getImg() {
            return img;
        }
    }
%>
<%
    ArrayList<User> list = new ArrayList<>();
    list.add(new User("Tran Van A", "20/20/2020", "HN", "none"));
    list.add(new User("Tran Van B", "20/20/2020", "HN", "none"));
    list.add(new User("Tran Van C", "20/20/2020", "HN", "none"));
    list.add(new User("Tran Van D", "20/20/2020", "HN", "none"));
    list.add(new User("Tran Van E", "20/20/2020", "HN", "none"));
    list.add(new User("Tran Van F", "20/20/2020", "HN", "none"));
%>
<c:set var="lists" value="<%=list%>" scope="application"/>
<table>
    <thead>
    <tr>
        <th>User Name</th>
        <th>DateOfBirth</th>
        <th>Address</th>
        <th>Img</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="item" items="${lists}">
        <tr>
            <td>${item.name}</td>
            <td>${item.dateOfBirth}</td>
            <td>${item.address}</td>
            <td><img src="1.jpg" alt="1" width="20" height="20"></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
