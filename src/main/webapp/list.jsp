<%@page import="com.app.vo.ProductVO"%>
<%@page import="java.util.List"%>
<%@page import="com.app.dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록확인</title>
</head>
<body>
   <table border="1">
      <tr>
         <th>상품 번호</th>
         <th>상품명</th>
         <th>상품 가격</th>
         <th>상품 재고</th>
      </tr>
      <%
         ProductDAO productDAO = new ProductDAO();
         List<ProductVO> products = productDAO.selectAll();
         for(int i = 0; i < products.size(); i++){
      %>
      <tr>
         <td><a href="read.jsp?id=<%=products.get(i).getId() %>"><%=products.get(i).getId() %></a></td>
         <td><%=products.get(i).getProductName() %></td>
         <td><%=products.get(i).getProductPrice() %></td>
         <td><%=products.get(i).getProductStock() %></td>
      </tr>
      <%
         }
      %>
   </table>
</body>
</html>