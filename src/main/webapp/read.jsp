<%@page import="java.util.Optional"%>
<%@page import="com.app.vo.ProductVO"%>
<%@page import="com.app.dao.ProductDAO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 정보</title>
</head>
<body>
	<% 
		System.out.println(request.getParameter("id")); 
		ProductDAO productDAO = new ProductDAO();
		ProductVO productVO = new ProductVO();
		
		Optional<ProductVO> foundProduct = productDAO.select(Long.parseLong(request.getParameter("id")));
		if(foundProduct.isPresent()){
			ProductVO product = foundProduct.get();
	%>
		<table id="productTable" border="1">
		<tr>
			<th>상품 번호</th>
			<th>상품명</th>
			<th>상품 가격</th>
			<th>상품 재고</th>
		</tr>

		<tr>
			<th><%=product.getId() %></th>
			<th><%=product.getProductName() %></th>
			<th><%=product.getProductPrice() %></th>
			<th><%=product.getProductStock() %></th>
		</tr>
	</table>
	<% 
		}
	%>
	<a href="update.jsp?id=<%=request.getParameter("id") %>"><button>상품 수정</button></a>
	<a href="delete?id=<%=request.getParameter("id") %>"><button>해당 상품 삭제하기</button></a>
</body>
</html>