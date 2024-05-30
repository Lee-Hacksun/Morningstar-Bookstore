<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
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
    <div id="content" class="mb-auto p-4 h-auto pt-20 pb-40">
        <!-- 검색창 -->
        <div class="my-12">
            <form class="max-w-md mx-auto">
                <label for="default-search"
                       class="mb-2 text-sm font-medium text-gray-900 sr-only dark:text-white">Search</label>
                <div class="relative">
                    <div class="absolute inset-y-0 start-0 flex items-center ps-3 pointer-events-none">
                        <svg class="w-4 h-4 text-gray-500 dark:text-gray-400"
                             aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
                             fill="none" viewBox="0 0 20 20">
                            <path stroke="currentColor"
                                  stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                  d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z"/>
                        </svg>
                    </div>
                    <input type="search" id="default-search"
                           class="block w-full p-4 ps-10 text-sm text-gray-900 shadow rounded-xl bg-gray-50 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                           placeholder="도서명이나 저자명으로 검색해보세요." required/>
                    <button type="submit"
                            class="text-white absolute end-2.5 bottom-2.5 bg-sky-700 hover:bg-sky-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-xl text-sm px-4 py-2 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                        검색
                    </button>
                </div>
            </form>
        </div>
        <!-- 카테고리 -->
        <nav class="bg-white w-full z-20 py-10">
            <div
                    class="items-center justify-center hidden w-full md:flex md:w-auto md:order-1"
                    id="navbar-sticky">
                <ul class="grid grid-cols-4 gap-4 p-4 md:p-0 mt-4 font-bold text-xl border border-gray-100 rounded-lg bg-gray-50 rtl:space-x-reverse md:flex-row md:mt-0 md:border-0 md:bg-white dark:bg-gray-800 md:dark:bg-gray-900 dark:border-gray-700">
                    <li class="w-36"><a href="#" class="block font-semibold text-center text-gray-900 hover:bg-gray-100 md:hover:bg-transparent md:hover:text-sky-700 pb-3 border-b-4 border-gray-200 hover:border-sky-700" aria-current="page">전체</a></li>
                    <li><a href="#"
                           class="block font-semibold text-center text-gray-900 hover:bg-gray-100 md:hover:bg-transparent md:hover:text-sky-700 pb-3 border-b-4 border-gray-200 hover:border-sky-700">국내도서</a>
                    </li>
                    <li><a href="#"
                           class="block font-semibold text-center text-gray-900 hover:bg-gray-100 md:hover:bg-transparent md:hover:text-sky-700 pb-3 border-b-4 border-gray-200 hover:border-sky-700">동양도서</a>
                    </li>
                    <li><a href="#"
                           class="block font-semibold text-center text-gray-900 hover:bg-gray-100 md:hover:bg-transparent md:hover:text-sky-700 pb-3 border-b-4 border-gray-200 hover:border-sky-700">서양도서</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="mb-10 mx-auto max-w-[1300px]">
            <!-- 베스트셀러 -->
            <div class="justify-items-end w-full p-4">
                <div class="grid grid-cols-4 gap-4">
                    <div class="float-left">
                        <div>
                            <a href="/products/504"> <img
                                    src="https://contents.kyobobook.co.kr/sih/fit-in/300x0/pdt/9788946422711.jpg"
                                    alt="book cover">
                            </a>
                            <div>
                                <a href="/products/">
                                    <div class="flex flex-col p-3">
                                        <div>
                                            <p class="text-left text-xl font-bold">있는 힘껏 산다</p>
                                        </div>
                                        <div class="mt-1">
                                            <p class="text-left text-base">정재경 · 샘터(샘터사)</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="float-left">
                        <div>
                            <a href="/products/366"> <img
                                    src="https://contents.kyobobook.co.kr/sih/fit-in/300x0/pdt/9791193262122.jpg"
                                    alt="book cover">
                            </a>
                            <div>
                                <a href="/products/">
                                    <div class="flex flex-col p-3">
                                        <div>
                                            <p class="text-left text-xl font-bold">일류의 조건</p>
                                        </div>
                                        <div class="mt-1">
                                            <p class="text-left text-base">사이토 다카시 · 필름(Feelm)</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="float-left">
                        <div>
                            <a href="/products/348"> <img
                                    src="https://contents.kyobobook.co.kr/sih/fit-in/300x0/pdt/9791171830237.jpg"
                                    alt="book cover">
                            </a>
                            <div>
                                <a href="/products/">
                                    <div class="flex flex-col p-3">
                                        <div>
                                            <p class="text-left text-xl font-bold">법구경 마음공부</p>
                                        </div>
                                        <div class="mt-1">
                                            <p class="text-left text-base">정운 · 필름(Feelm)</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="float-left">
                        <div>
                            <a href="/products/354"> <img
                                    src="https://contents.kyobobook.co.kr/sih/fit-in/300x0/pdt/9791170611080.jpg"
                                    alt="book cover">
                            </a>
                            <div>
                                <a href="/products/">
                                    <div class="flex flex-col p-3">
                                        <div>
                                            <p class="text-left text-xl font-bold">벌거벗은 세계사: 권력자편</p>
                                        </div>
                                        <div class="mt-1">
                                            <p class="text-left text-base">
                                                tvn
                                                <벌거벗은세계사>제작팀 · 교보문고
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <c:import url="footer.jsp" />
</div>
</body>
</html>