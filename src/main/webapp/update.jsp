<%@page import="java.util.Optional"%>
<%@page import="com.app.vo.ProductVO"%>
<%@page import="com.app.dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 수정 페이지</title>
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
	
	<form action="update" method="post">
		<label>
			<input type="hidden" name="id" value="<%=product.getId() %>"/>
		</label>
		<label>
			<input type="text" name="productName" placeholder="상품명" value="<%=product.getProductName() %>"/>
		</label>
		<label>
			<input type="text" name="productPrice" placeholder="가격" value="<%=product.getProductPrice() %>"/>
		</label>
		<label>
			<input type="text" name="productStock" placeholder="재고" value="<%=product.getProductStock() %>"/>
		</label>
		<button>상품 수정 완료</button>
	</form>
	<%
		}
	%>
</body>
</html>