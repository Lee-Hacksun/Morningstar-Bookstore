<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<div id="header">
        <div class="fixed top-0 z-50 pt-5 w-full bg-white">
            <div class="mx-auto max-w-[1300px] px-4 sm:px-6 lg:px-8">
                <div class="relative z-50 grid grid-cols-3 gap-4">
                    <!-- logo -->
                    <div class="flex items-center md:gap-x-12">
                        <a aria-label="Home" href="/">
                            <img class="w-40 mr-2" src="../assets/icons/morningstarlogo.png" alt="logo">
                        </a>
                    </div>
                    <!-- 로그인 -->
                    <div class="flex items-center lg:order-2 col-start-3 justify-end">
                        <a href="/login.jsp"
                           class="text-gray-600 hover:bg-gray-50 focus:ring-4 focus:ring-gray-300 font-bold  rounded-lg text-md px-4 lg:px-5 py-2 lg:py-2.5 mr-2 dark:hover:bg-gray-700 focus:outline-none dark:focus:ring-gray-800">
                            로그인
                        </a>
                        <a href="/join.jsp"
                           class="text-gray-600 hover:bg-gray-50 focus:ring-4 focus:ring-gray-300 font-bold  rounded-lg text-md px-4 lg:px-5 py-2 lg:py-2.5 mr-2 dark:hover:bg-gray-700 focus:outline-none dark:focus:ring-gray-800">
                            회원가입
                        </a>
                    </div>
                </div>
            </div>
            <div class="mx-auto mt-5 max-w-[1300px] px-4 sm:px-6 lg:px-8 text-center">
                <div class="flex flex-row justify-between border-b-2 border-gray-200 w-full">
                </div>
            </div>
        </div>
    </div>
</body>
</html>