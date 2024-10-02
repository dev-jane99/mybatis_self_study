<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 추가 페이지</title>
</head>
<body>
	<form action="write" method="post">
		<label>
			<input type="text" name="productName" placeholder="상품명" />
		</label>
		<label>
			<input type="text" name="productPrice" placeholder="가격" />
		</label>
		<label>
			<input type="text" name="productStock" placeholder="재고" />
		</label>
		<button>상품등록</button>
	</form>
</body>
</html>