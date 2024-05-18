<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=1280">
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://unpkg.com/flowbite@1.5.3/dist/flowbite.js"></script>
    <title>샛별문고</title>
</head>
<body>
<div class="flex flex-col h-screen justify-between">
    <%@include file ="../assets/header/user_header.jsp" %>
    
    <div id="content" class="mb-auto p-4 h-auto pt-20">
        <section class="bg-white py-8 antialiased dark:bg-gray-900 md:py-16">
            <div class="mx-auto max-w-screen-xl px-4 2xl:px-0">
                <div class="mx-auto max-w-3xl">
                    <h2 class="text-xl font-semibold text-gray-900 sm:text-2xl">장바구니</h2>
                        <div>
                            <div class="flex py-6">
                                <div class="mx-auto p-10">
                                    <img src="../../img/emptycart.png" class="mb-10 w-56 justify-center">
                                    <p class="text-xl font-bold text-center">
                                        찜한 상품이 없습니다.
                                    <p>
                                    <p class="text-xl font-bold text-center">
                                        상품을 추가해주세요.
                                    </p>
                                </div>
                            </div>
                        </div>
                    <div class="mt-6 gap-4 sm:flex sm:items-center sm:justify-center">
                        <a href="#"
                           class="mt-4 flex w-full items-center justify-center rounded-lg bg-sky-700 px-5 py-2.5 text-lg font-semibold text-white hover:bg-sky-800 focus:outline-none focus:ring-4 focus:ring-primary-300 sm:mt-0">쇼핑하러가기</a>
                    </div>
                </div>
            </div>
        </section>
    </div>
    
    <%@include file ="../assets/footer/footer.jsp" %>
</div>
</body>
</html>