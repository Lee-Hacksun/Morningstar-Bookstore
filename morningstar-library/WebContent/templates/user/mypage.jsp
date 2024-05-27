<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <div id="header">
        <div class="fixed top-0 z-50 pt-5 w-full bg-white">
            <div class="mx-auto max-w-[1300px] px-4 sm:px-6 lg:px-8">
                <div class="relative z-50 grid grid-cols-3 gap-4">
                    <!-- logo -->
                    <div class="flex items-center md:gap-x-12">
                        <a aria-label="Home" href="/">
                            <img class="w-40 mr-2" src="../../assets/icons/morningstarlogo.png" alt="logo">
                        </a>
                    </div>
                    <!-- 로그인 -->
                    <div class="flex items-center lg:order-2 col-start-3 justify-end">
                        <a href="#"
                           class="text-gray-600 hover:bg-gray-50 focus:ring-4 focus:ring-gray-300 font-bold  rounded-lg text-md px-4 lg:px-5 py-2 lg:py-2.5 mr-2 dark:hover:bg-gray-700 focus:outline-none dark:focus:ring-gray-800">
                            마이페이지 </a> <a href="#"
                                          class="text-gray-600 hover:bg-gray-50 focus:ring-4 focus:ring-gray-300 font-bold  rounded-lg text-md px-4 lg:px-5 py-2 lg:py-2.5 mr-2 dark:hover:bg-gray-700 focus:outline-none dark:focus:ring-gray-800">
                        장바구니 </a> <a href="#"
                                     class="text-gray-600 hover:bg-gray-50 focus:ring-4 focus:ring-gray-300 font-bold  rounded-lg text-md px-4 lg:px-5 py-2 lg:py-2.5 mr-2 dark:hover:bg-gray-700 focus:outline-none dark:focus:ring-gray-800">
                        로그아웃 </a>
                        <button data-collapse-toggle="mobile-menu-2" type="button"
                                class="inline-flex items-center p-2 ml-1 text-sm text-gray-500 rounded-lg lg:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600"
                                aria-controls="mobile-menu-2" aria-expanded="false">
                            <span class="sr-only">Open main menu</span>
                            <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20"
                                 xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd"
                                      d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z"
                                      clip-rule="evenodd"></path>
                            </svg>
                            <svg class="hidden w-6 h-6" fill="currentColor"
                                 viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd"
                                      d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
                                      clip-rule="evenodd"></path>
                            </svg>
                        </button>
                    </div>
                </div>
            </div>
            <div class="mx-auto mt-5 w-full text-center">
                <div class="flex flex-row justify-between border-b-2 border-gray-200">
                </div>
            </div>
        </div>
    </div>
    <div id="content" class="mb-auto p-4 h-auto pt-20">
        <section class="bg-white py-8 md:py-16">
            <div class="mx-auto max-w-7xl px-8">
                <!-- 회원 정보 섹션 -->
                <div class="mx-auto max-w-7xl space-y-4 pb-10 mb-10 border-b border-gray-500">
                    <h1 class="text-4xl font-bold text-gray-900 py-3">홍길동님 반갑습니다.</h1>
                    <p class="text-xl font-base text-gray-500">ID: user</p>
                    <p class="text-xl font-base text-gray-500">PW: 1234</p>
                    <p class="text-xl font-base text-gray-500">이메일: honggildong@example.com</p>
                    <p class="text-xl font-base text-gray-500">주소: 경기도 오산시 한신대길 137</p>
                </div>
                <!-- 주문 조회 섹션 -->
                <div class="mx-auto max-w-7xl space-y-4 pb-10">
                    <div>
                        <h1 class="text-3xl font-bold text-gray-900">주문 조회</h1>
                    </div>
                    <div class="p-10 space-y-4">
                        <!-- 도서 상품 섹션 -->
                        <div class="max-w-5xl mx-auto rounded-xl border border-gray-300 shadow">
                            <div class="flex flex-row justify-between p-5">
                                <div class="flex space-x-10">
                                    <!-- 도서 이미지 -->
                                    <div>
                                        <img src="https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9791158390600.jpg"
                                             class="w-20" alt="ordered book">
                                    </div>
                                    <!-- 도서명, 주문일 -->
                                    <div class="w-96 content-center justify-center space-y-3">
                                        <h2 class="text-xl font-bold">Code Complete 코드 컴플리트</h2>
                                        <p class="text-base font-base text-gray-700">2024-05-25</p>
                                    </div>
                                </div>
                                <div class="flex space-x-20 mr-20">
                                    <!-- 도서 가격 -->
                                    <div class="content-center justify-end">
                                        <p class="text-2xl font-semibold">31,150원</p>
                                    </div>
                                    <!-- 배송 상태 -->
                                    <div class="w-40 content-center justify-end">
                                        <div class="h-10 me-2 mt-1.5 inline-flex items-center rounded bg-sky-100 px-4 py-0.5 text-md font-semibold text-sky-800">
                                            <svg class="me-2 h-5 w-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M18.5 4h-13m13 16h-13M8 20v-3.333a2 2 0 0 1 .4-1.2L10 12.6a1 1 0 0 0 0-1.2L8.4 8.533a2 2 0 0 1-.4-1.2V4h8v3.333a2 2 0 0 1-.4 1.2L13.957 11.4a1 1 0 0 0 0 1.2l1.643 2.867a2 2 0 0 1 .4 1.2V20H8Z"></path>
                                            </svg>
                                            배송 준비
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 도서 상품 섹션 -->
                        <div class="max-w-5xl mx-auto rounded-xl border border-gray-300 shadow">
                            <div class="flex flex-row justify-between p-5">
                                <div class="flex space-x-10">
                                    <!-- 도서 이미지 -->
                                    <div>
                                        <img src="https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9791198656841.jpg"
                                             class="w-20" alt="ordered book">
                                    </div>
                                    <!-- 도서명, 주문일 -->
                                    <div class="w-96 content-center justify-center space-y-3">
                                        <h2 class="text-xl font-bold">오컬트 3부작: 장재현 각본집(검은 사제들, 사바하, 파묘)</h2>
                                        <p class="text-base font-base text-gray-700">2024-05-20</p>
                                    </div>
                                </div>
                                <div class="flex space-x-20 mr-20">
                                    <!-- 도서 가격 -->
                                    <div class="content-center justify-end">
                                        <p class="text-2xl font-semibold">44,550원</p>
                                    </div>
                                    <!-- 배송 상태 -->
                                    <div class="w-40 content-center justify-end">
                                        <div class="h-10 me-2 mt-1.5 inline-flex items-center rounded bg-yellow-100 px-6 py-0.5 text-md font-semibold text-yellow-800">
                                            <svg class="me-2 h-5 w-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7h6l2 4m-8-4v8m0-8V6a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v9h2m8 0H9m4 0h2m4 0h2v-4m0 0h-5m3.5 5.5a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0Zm-10 0a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0Z"></path>
                                            </svg>
                                            배송 중
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 도서 상품 섹션 -->
                        <div class="max-w-5xl mx-auto rounded-xl border border-gray-300 shadow">
                            <div class="flex flex-row justify-between p-5">
                                <div class="flex space-x-10">
                                    <!-- 도서 이미지 -->
                                    <div>
                                        <img src="https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9791165349707.jpg"
                                             class="w-20" alt="ordered book">
                                    </div>
                                    <!-- 도서명, 주문일 -->
                                    <div class="w-96 content-center justify-center space-y-3">
                                        <h2 class="text-xl font-bold">AI 사피엔스: 전혀 다른 세상의 인류</h2>
                                        <p class="text-base font-base text-gray-700">2023-11-15</p>
                                    </div>
                                </div>
                                <div class="flex space-x-20 mr-20">
                                    <!-- 도서 가격 -->
                                    <div class="content-center justify-end">
                                        <p class="text-2xl font-semibold">19,800원</p>
                                    </div>
                                    <!-- 배송 상태 -->
                                    <div class="w-40 content-center justify-end">
                                        <div class="h-10 me-2 mt-1.5 inline-flex items-center rounded bg-green-100 px-4 py-0.5 text-md font-semibold text-green-800">
                                            <svg class="me-2 h-5 w-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 11.917 9.724 16.5 19 7.5"></path>
                                            </svg>
                                            배송 완료
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 도서 상품 섹션 -->
                        <div class="max-w-5xl mx-auto rounded-xl border border-gray-300 shadow">
                            <div class="flex flex-row justify-between p-5">
                                <div class="flex space-x-10">
                                    <!-- 도서 이미지 -->
                                    <div>
                                        <img src="https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9791198517425.jpg"
                                             class="w-20" alt="ordered book">
                                    </div>
                                    <!-- 도서명, 주문일 -->
                                    <div class="w-96 content-center justify-center space-y-3">
                                        <h2 class="text-xl font-bold">불변의 법칙</h2>
                                        <p class="text-base font-base text-gray-700">2023-09-23</p>
                                    </div>
                                </div>
                                <div class="flex space-x-20 mr-20">
                                    <!-- 도서 가격 -->
                                    <div class="content-center justify-end">
                                        <p class="text-2xl font-semibold">22,500원</p>
                                    </div>
                                    <!-- 배송 상태 -->
                                    <div class="w-40 content-center justify-end">
                                        <dd class="h-10 me-2 mt-1.5 inline-flex items-center rounded bg-red-100 px-4 py-0.5 text-md font-semibold text-red-800">
                                            <svg class="me-2 h-5 w-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18 17.94 6M18 18 6.06 6"></path>
                                            </svg>
                                            주문 취소
                                        </dd>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <div id="footer">
        <footer class="w-full mx-auto border-t border-slate-900/5 bg-white">
            <div
                    class="flex flex-row justify-between mx-auto max-w-[1300px] px-10">
                <div class="float-left mt-10 mb-10">
                    <p class="text-gray-500 text-sm font-bold mb-2">한신대학교</p>
                    <p class="text-gray-500 text-sm font-normal mb-2">6조 | 이승은 이학선
                        전태준 정민구 정규민</p>
                    <p class="text-gray-500 text-sm font-normal">Copyright ⓒ 6조</p>
                </div>
                <div class="content-center justify-end">
                    <img src="https://www.hs.ac.kr/sites/testPub/images/logo.jpg">
                </div>
            </div>
        </footer>
    </div>
</div>
</body>
</html>