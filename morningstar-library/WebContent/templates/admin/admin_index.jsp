<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://unpkg.com/flowbite@1.5.3/dist/flowbite.js"></script>
    <title>샛별문고</title>
</head>
<body>
<div class="flex flex-col h-screen justify-between">
    <c:import url="header.jsp" />
     <div class="max-w-[1300px] mx-auto admin_options">
		 <div>
		 <a href="/" >
                                <img class="book_orderImg" src="../../assets/icons/book_order.png" alt="발주">
                                <span class=" text-2xl font-semibold whitespace-nowrap">발주</span>
                            </a>
		 </div>
		 <div>
		 <a href="/ViewBook" >
                                <img class="book_managementImg" src="../../assets/icons/book_management.png" alt="도서관리">
                                <span class=" text-2xl font-semibold whitespace-nowrap">도서 관리</span>
                            </a>
		 </div>
		 <div>
		 <a href="/" >
                                <img class="user_managementImg" src="../../assets/icons/user_management.png" alt="회원관리">
                                <span class=" text-2xl font-semibold whitespace-nowrap">회원 관리</span>
                            </a>
		 </div>
	 </div>
    <c:import url="footer.jsp" />
</div>
</body>
</html>
<style>
.admin_options{
	display: flex;
    justify-content: center;
    align-items: center;
    gap: 200px;
    margin-top: 50px; 
}
.admin_options div{
	text-align: center;
}
.admin_options img{
	display: block;
    margin: 0 auto 10px;
	width:200px;
	height:200px;
}
.admin_options span {
    display: block;
}
</style>