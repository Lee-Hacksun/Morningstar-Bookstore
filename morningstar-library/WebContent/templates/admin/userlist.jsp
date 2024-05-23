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
    <div id="header">
        <header>
            <div class="bg-white">
                <nav class="bg-white border-b border-gray-200 px-4 py-2.5 fixed left-0 right-0 top-0 z-50">
                    <div class="flex flex-wrap justify-between items-center">
                        <div class="flex justify-start items-center">
                            <button data-drawer-target="drawer-navigation"
                                    data-drawer-toggle="drawer-navigation"
                                    aria-controls="drawer-navigation"
                                    class="p-2 mr-2 text-gray-600 rounded-lg cursor-pointer md:hidden hover:text-gray-900 hover:bg-gray-100 focus:bg-gray-100 focus:ring-2 focus:ring-gray-100">
                                <svg aria-hidden="true"
                                     class="w-6 h-6"
                                     fill="currentColor"
                                     viewBox="0 0 20 20"
                                     xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd"
                                          d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h6a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z"
                                          clip-rule="evenodd"
                                    ></path>
                                </svg>
                                <svg aria-hidden="true"
                                     class="hidden w-6 h-6"
                                     fill="currentColor"
                                     viewBox="0 0 20 20"
                                     xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd"
                                          d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
                                          clip-rule="evenodd"></path>
                                </svg>
                                <span class="sr-only">Toggle sidebar</span>
                            </button>
                            <a href="/" class="flex items-center justify-between mr-4">
                                <img class="w-10 mr-3" src="../../assets/icons/morningstarlogo.png" alt="logo">
                                <span class="self-center text-2xl font-semibold whitespace-nowrap">ADMINISTRATOR</span>
                            </a>
                        </div>
                        <div class="flex items-center lg:order-2">
                            <a href="/" class="block py-2 px-4 text-sm text-slate-700 font-semibold hover:bg-gray-100">
                                로그아웃</a>
                        </div>
                    </div>
                </nav>
            </div>
        </header>
    </div>
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
    <div id="footer">
        <footer class="w-full mx-auto border-t border-slate-900/5 bg-white">
            <div class="flex flex-row justify-between mx-auto max-w-[1300px] px-10">
                <div class="float-left mt-10 mb-10">
                    <p class="text-gray-500 text-sm font-bold mb-2">
                        한신대학교
                    </p>
                    <p class="text-gray-500 text-sm font-normal mb-2">
                        6조 | 이승은 이학선 전태준 정민구 정규민
                    </p>
                    <p class="text-gray-500 text-sm font-normal">
                        Copyright ⓒ 6조
                    </p>
                </div>
                <div class="content-center justify-end">
                    <img src="https://www.hs.ac.kr/sites/testPub/images/logo.jpg">
                </div>
            </div>
        </footer>
    </div>
</body>
</html>