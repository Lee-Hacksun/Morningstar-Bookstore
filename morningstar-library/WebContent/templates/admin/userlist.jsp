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
    <div id="content" class="mb-auto p-4 h-auto pt-20 pb-40">
        <section class="bg-white py-3 sm:py-5">
            <div class="mx-auto max-w-7xl px-4 lg:px-12">
                <div class="bg-white dark:bg-gray-800 relative shadow-md sm:rounded-lg overflow-hidden">
                    <div class="flex flex-col md:flex-row items-center justify-between space-y-3 md:space-y-0 md:space-x-4 p-4 border-b dark:border-gray-700">
                        <div class="w-full flex items-center space-x-3">
                            <h5 class="text-2xl font-semibold">회원 관리</h5>
                        </div>
                    </div>
                    <div class="overflow-x-auto">
                        <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
                            <thead class="text-xs uppercase bg-gray-50 dark:bg-gray-700">
                            <tr>
                                <th scope="col" class="px-4 py-3">
                                    <span class="sr-only">Expand/Collapse Row</span>
                                </th>
                                <th scope="col" class="px-4 py-3 min-w-20">이름</th>
                                <th scope="col" class="px-4 py-3 min-w-[10rem]">아이디</th>
                            </tr>
                            </thead>
                            <tbody data-accordion="table-column">
                            <!-- 회원 정보 -->
                            <tr class="border-b dark:border-gray-700 hover:bg-gray-200 dark:hover:bg-gray-700 cursor-pointer transition" id="table-column-header-0" data-accordion-target="#table-column-body-0" aria-expanded="false" aria-controls="table-column-body-0">
                                <td class="p-3 w-4">
                                    <svg data-accordion-icon="" class="w-6 h-6 shrink-0" fill="currentColor" viewbox="0 0 20 20" aria-hidden="true" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd" />
                                    </svg>
                                </td>
                                <th scope="row" class="px-4 py-3 font-medium text-gray-900 whitespace-nowrap dark:text-white flex items-center">
                                    홍길동
                                </th>
                                <td class="px-4 py-3">ghdrlfehd</td>
                            </tr>
                            <tr class="hidden flex-1 overflow-x-auto w-full" id="table-column-body-0" aria-labelledby="table-column-header-0">
                                <td class="p-4 border-b" colspan="9">
                                    <!-- 상세 정보 -->
                                    <div class="px-10">
                                        <p class="mb-2 text-base leading-none font-medium text-gray-900">PW : ghdrlfehd11</p>
                                        <p class="mb-2 text-base leading-none font-medium text-gray-900">주소 : 서울특별시 종로구 청와대로 1 </p>
                                    </div>
                                    <!-- 탈퇴 버튼 -->
                                    <div class="flex items-center justify-end space-x-3 mt-4">
                                        <button type="button" class="py-2 px-3 flex items-center text-sm font-medium text-center text-white bg-red-700 hover:bg-red-800 focus:ring-4 focus:ring-red-300 rounded-lg dark:bg-red-600 dark:hover:bg-red-700 dark:focus:ring-red-900">
                                            탈퇴
                                        </button>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <c:import url="footer.jsp" />
</div>
</body>
</html>