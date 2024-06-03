<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko" class="scroll-smooth">
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
<c:import url="header.jsp" />
    <div id="content" class="mb-auto p-4 h-auto pt-20">
        <!-- 도서 상품 수정 섹션 -->
        <div class="max-w-7xl mx-auto p-4 space-y-4">
            <form action="BookModify" method="POST">
                <div class="p-5">
                    <!-- ISBN값  -->
                    <div class="mb-6">
                        <p class="text-xl font-semibold py-3">ISBN</p>
                        <input type="text" id="large-input" class="block w-full p-4 text-gray-900 border border-gray-300 rounded-lg bg-gray-50 sm:text-md focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" value="${book.isbn}" name="isbn" readonly>
                    </div>
                    <!-- 도서명 입력칸 -->
                    <div class="mb-6">
                        <p class="text-xl font-semibold py-3">도서명</p>
                        <input type="text" id="large-input" class="block w-full p-4 text-gray-900 border border-gray-300 rounded-lg bg-gray-50 sm:text-md focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" value="${book.bookName}" name="bookname">
                    </div>
                    <!-- 도서 사진 첨부칸 -->
                    <div class="mb-6">
                        <p class="text-xl font-semibold py-3">도서 사진</p>
                        <div class="border border-gray-300 shadow p-5 rounded-lg">
                            <div class="space-y-3">
                                <label for="book_img">현재 이미지 :
                                	<img src="${book.bookImageURL}" alt="Web Image" /> 
								</label>
                                <input class="block w-full text-md text-gray-900 border border-gray-300 rounded-lg cursor-pointer bg-gray-50 focus:outline-none" id="book_img" type="text" name="book_img" accept="image/*">
                            </div>
                        </div>
                    </div>
                    <!-- 저자 -->
                    <div class="mb-6">
                        <p class="text-xl font-semibold py-3">저자</p>
                        <input type="text" id="large-input" class="block w-full p-4 text-gray-900 border border-gray-300 rounded-lg bg-gray-50 sm:text-md focus:ring-blue-500 focus:border-blue-500" value="${book.author}" name="bookauthor">
                    </div>
                    <!-- 출판사 -->
                    <div class="mb-6">
                        <p class="text-xl font-semibold py-3">출판사</p>
                        <input type="text" id="large-input" class="block w-full p-4 text-gray-900 border border-gray-300 rounded-lg bg-gray-50 sm:text-md focus:ring-blue-500 focus:border-blue-500" value="${book.publisher}" name="bookpublisher">
                    </div>
                    <!-- 가격 -->
                    <div class="mb-6">
                        <p class="text-xl font-semibold py-3">가격</p>
                        <input type="number" id="large-input" class="block w-full p-4 text-gray-900 border border-gray-300 rounded-lg bg-gray-50 sm:text-md focus:ring-blue-500 focus:border-blue-500" value="${price}" name="bookprice">
                    </div>
                    <!-- 상세정보 -->
                    <div class="mb-6">
                        <p class="text-xl font-semibold py-3">상세정보</p>
                        <textarea id="book_detail" name="bookdetail" rows="8" class="block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">${book.description}</textarea>
                    </div>
                </div>
                <!-- 게시글 목록으로 돌아가기 -->
                <div class="flex justify-end px-5 mb-20 space-x-3">
                    <input type="submit" value="수정" class="text-gray-600 inline-flex border border-gray-300 shadow bg-white focus:ring-4 focus:outline-none focus:ring-emerald-700 font-medium rounded-lg text-sm px-5 py-2.5">
                </div>
            </form>
        </div>
    </div>
    <c:import url="header.jsp" />
</div>
</body>
</html>