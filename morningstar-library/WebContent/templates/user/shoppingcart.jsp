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
    <div id="header">
        <div class="fixed top-0 z-50 pt-5 w-full bg-white">
            <div class="mx-auto max-w-[1300px] px-4 sm:px-6 lg:px-8">
                <div class="relative z-50 grid grid-cols-3 gap-4">
                    <!-- logo -->
                    <div class="flex items-center md:gap-x-12">
                        <a aria-label="Home" href="/">
                            <img class="w-40 mr-2" src="../../img/morningstarlogo.png" alt="logo">
                        </a>
                    </div>
                    <!-- 로그인 -->
                    <div class="flex items-center lg:order-2 col-start-3 justify-end">
                        <a href="#"
                           class="text-gray-600 hover:bg-gray-50 focus:ring-4 focus:ring-gray-300 font-bold  rounded-lg text-md px-4 lg:px-5 py-2 lg:py-2.5 mr-2 dark:hover:bg-gray-700 focus:outline-none dark:focus:ring-gray-800">
                            마이페이지
                        </a>
                        <a href="#"
                           class="text-gray-600 hover:bg-gray-50 focus:ring-4 focus:ring-gray-300 font-bold  rounded-lg text-md px-4 lg:px-5 py-2 lg:py-2.5 mr-2 dark:hover:bg-gray-700 focus:outline-none dark:focus:ring-gray-800">
                            장바구니
                        </a>
                        <a href="#"
                           class="text-gray-600 hover:bg-gray-50 focus:ring-4 focus:ring-gray-300 font-bold  rounded-lg text-md px-4 lg:px-5 py-2 lg:py-2.5 mr-2 dark:hover:bg-gray-700 focus:outline-none dark:focus:ring-gray-800">
                            로그아웃
                        </a>
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
                            <svg class="hidden w-6 h-6" fill="currentColor" viewBox="0 0 20 20"
                                 xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd"
                                      d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
                                      clip-rule="evenodd"></path>
                            </svg>
                        </button>
                    </div>
                </div>
            </div>
            <div class="mx-auto mt-5 max-w-[1300px] px-4 sm:px-6 lg:px-8 text-center">
                <div class="flex flex-row justify-between border-b-2 border-gray-200 w-full">
                </div>
            </div>
        </div>
    </div>
    <div id="content" class="mb-auto p-4 h-auto pt-20">
        <section class="bg-white py-8 antialiased dark:bg-gray-900 md:py-16">
            <div class="mx-auto max-w-screen-xl px-4 2xl:px-0">
                <div class="mx-auto max-w-3xl">
                    <h2 class="text-xl font-semibold text-gray-900 dark:text-white sm:text-2xl">장바구니</h2>

                    <div class="relative mt-6 overflow-x-auto border-b border-gray-200 dark:border-gray-800 sm:mt-8">
                        <table class="w-full text-left text-base text-gray-900 dark:text-white md:table-fixed">
                            <tbody class="divide-y divide-gray-200 dark:divide-gray-800">
                            <!-- 도서 상품 -->
                            <tr>
                                <!-- 도서 이미지 -->
                                <td class="w-96 min-w-56 whitespace-nowrap py-4">
                                    <a href="#" class="flex items-center gap-8 font-medium hover:underline">
                                        <div class="w-20 shrink-0">
                                            <img class="h-full w-full"
                                                 src="https://contents.kyobobook.co.kr/sih/fit-in/200x0/pdt/9791188331796.jpg"
                                                 alt="imac image"/>
                                        </div>
                                        돈의 속성(300쇄 리커버에디션)
                                    </a>
                                </td>
                                <!-- 도서 수량 -->
                                <td class="p-4">
                                    <label for="counter-input-6" class="sr-only">Choose quantity:</label>
                                    <div class="flex items-center">
                                        <button type="button" id="decrement-button-1"
                                                data-input-counter-decrement="counter-input-1"
                                                class="inline-flex h-5 w-5 shrink-0 items-center justify-center rounded-md border border-gray-300 bg-gray-100 hover:bg-gray-200 focus:outline-none focus:ring-2 focus:ring-gray-100 dark:border-gray-600 dark:bg-gray-700 dark:hover:bg-gray-600 dark:focus:ring-gray-700">
                                            <svg class="h-2.5 w-2.5 text-gray-900 dark:text-white" aria-hidden="true"
                                                 xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 18 2">
                                                <path stroke="currentColor" stroke-linecap="round"
                                                      stroke-linejoin="round" stroke-width="2" d="M1 1h16"/>
                                            </svg>
                                        </button>
                                        <input type="text" id="counter-input-1" data-input-counter
                                               class="w-10 shrink-0 border-0 bg-transparent text-center text-sm font-medium text-gray-900 focus:outline-none focus:ring-0 dark:text-white"
                                               placeholder="" value="1" required/>
                                        <button type="button" id="increment-button-1"
                                                data-input-counter-increment="counter-input-1"
                                                class="inline-flex h-5 w-5 shrink-0 items-center justify-center rounded-md border border-gray-300 bg-gray-100 hover:bg-gray-200 focus:outline-none focus:ring-2 focus:ring-gray-100 dark:border-gray-600 dark:bg-gray-700 dark:hover:bg-gray-600 dark:focus:ring-gray-700">
                                            <svg class="h-2.5 w-2.5 text-gray-900 dark:text-white" aria-hidden="true"
                                                 xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 18 18">
                                                <path stroke="currentColor" stroke-linecap="round"
                                                      stroke-linejoin="round" stroke-width="2" d="M9 1v16M1 9h16"/>
                                            </svg>
                                        </button>
                                    </div>
                                </td>
                                <!-- 도서 가격 -->
                                <td class="p-4 text-end text-base font-bold text-gray-900 dark:text-white">33,000원</td>
                                <!-- 도서 삭제 -->
                                <td class="py-4">
                                    <button data-tooltip-target="remove-tooltip" data-tooltip-placement="top"
                                            type="button"
                                            class="ml-auto block rounded-lg p-2 text-gray-500 hover:bg-gray-100 dark:hover:bg-gray-700 hover:text-gray-900 dark:text-gray-400">
                                        <span class="sr-only"> Remove </span>
                                        <svg class="h-5 w-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
                                             width="24" height="24" fill="none" viewBox="0 0 24 24">
                                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                                  stroke-width="2"
                                                  d="M5 7h14m-9 3v8m4-8v8M10 3h4a1 1 0 0 1 1 1v3H9V4a1 1 0 0 1 1-1ZM6 7h12v13a1 1 0 0 1-1 1H7a1 1 0 0 1-1-1V7Z"/>
                                        </svg>
                                    </button>
                                    <div id="remove-tooltip" role="tooltip"
                                         class="tooltip invisible absolute z-10 inline-block rounded-lg bg-gray-900 px-3 py-2 text-sm font-medium text-white opacity-0 shadow-sm dark:bg-gray-700">
                                        Remove
                                        <div class="tooltip-arrow" data-popper-arrow></div>
                                    </div>
                                </td>
                            </tr>
                            <!-- 도서 상품 -->
                            <tr>
                                <!-- 도서 이미지 -->
                                <td class="w-96 min-w-56 whitespace-nowrap py-4">
                                    <a href="#" class="flex items-center gap-8 font-medium hover:underline">
                                        <div class="w-20 shrink-0">
                                            <img class="h-full w-full"
                                                 src="https://contents.kyobobook.co.kr/sih/fit-in/200x0/pdt/9791162674314.jpg"
                                                 alt="imac image"/>
                                        </div>
                                        맨땅에 헤딩 나의 중개 일기
                                    </a>
                                </td>
                                <!-- 도서 수량 -->
                                <td class="p-4">
                                    <label for="counter-input-2" class="sr-only">Choose quantity:</label>
                                    <div class="flex items-center">
                                        <button type="button" id="decrement-button-2"
                                                data-input-counter-decrement="counter-input-2"
                                                class="inline-flex h-5 w-5 shrink-0 items-center justify-center rounded-md border border-gray-300 bg-gray-100 hover:bg-gray-200 focus:outline-none focus:ring-2 focus:ring-gray-100 dark:border-gray-600 dark:bg-gray-700 dark:hover:bg-gray-600 dark:focus:ring-gray-700">
                                            <svg class="h-2.5 w-2.5 text-gray-900 dark:text-white" aria-hidden="true"
                                                 xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 18 2">
                                                <path stroke="currentColor" stroke-linecap="round"
                                                      stroke-linejoin="round" stroke-width="2" d="M1 1h16"/>
                                            </svg>
                                        </button>
                                        <input type="text" id="counter-input-2" data-input-counter
                                               class="w-10 shrink-0 border-0 bg-transparent text-center text-sm font-medium text-gray-900 focus:outline-none focus:ring-0 dark:text-white"
                                               placeholder="" value="1" required/>
                                        <button type="button" id="increment-button-2"
                                                data-input-counter-increment="counter-input-2"
                                                class="inline-flex h-5 w-5 shrink-0 items-center justify-center rounded-md border border-gray-300 bg-gray-100 hover:bg-gray-200 focus:outline-none focus:ring-2 focus:ring-gray-100 dark:border-gray-600 dark:bg-gray-700 dark:hover:bg-gray-600 dark:focus:ring-gray-700">
                                            <svg class="h-2.5 w-2.5 text-gray-900 dark:text-white" aria-hidden="true"
                                                 xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 18 18">
                                                <path stroke="currentColor" stroke-linecap="round"
                                                      stroke-linejoin="round" stroke-width="2" d="M9 1v16M1 9h16"/>
                                            </svg>
                                        </button>
                                    </div>
                                </td>
                                <!-- 도서 가격 -->
                                <td class="p-4 text-end text-base font-bold text-gray-900 dark:text-white">15,000원</td>
                                <!-- 도서 삭제 -->
                                <td class="py-4">
                                    <button data-tooltip-target="remove-tooltip" data-tooltip-placement="top"
                                            type="button"
                                            class="ml-auto block rounded-lg p-2 text-gray-500 hover:bg-gray-100 dark:hover:bg-gray-700 hover:text-gray-900 dark:text-gray-400">
                                        <span class="sr-only"> Remove </span>
                                        <svg class="h-5 w-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
                                             width="24" height="24" fill="none" viewBox="0 0 24 24">
                                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                                  stroke-width="2"
                                                  d="M5 7h14m-9 3v8m4-8v8M10 3h4a1 1 0 0 1 1 1v3H9V4a1 1 0 0 1 1-1ZM6 7h12v13a1 1 0 0 1-1 1H7a1 1 0 0 1-1-1V7Z"/>
                                        </svg>
                                    </button>
                                    <div id="remove-tooltip" role="tooltip"
                                         class="tooltip invisible absolute z-10 inline-block rounded-lg bg-gray-900 px-3 py-2 text-sm font-medium text-white opacity-0 shadow-sm dark:bg-gray-700">
                                        Remove
                                        <div class="tooltip-arrow" data-popper-arrow></div>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="mt-8">
                        <p class="text-xl font-semibold text-gray-900 dark:text-white">주문 정보</p>

                        <div class="mt-6 space-y-4">
                            <div class="space-y-2">
                                <dl class="flex items-center justify-between gap-4">
                                    <dt class="text-base font-normal text-gray-500 dark:text-gray-400">총 상품가격</dt>
                                    <dd class="text-base font-medium text-gray-900 dark:text-white">48,000원</dd>
                                </dl>

                                <dl class="flex items-center justify-between gap-4">
                                    <dt class="text-base font-normal text-gray-500 dark:text-gray-400">배송비</dt>
                                    <dd class="text-base font-medium text-gray-900 dark:text-white">3000원</dd>
                                </dl>
                            </div>

                            <dl class="flex items-center justify-between gap-4 border-t border-gray-200 pt-4 dark:border-gray-700">
                                <dt class="text-base font-bold text-gray-900 dark:text-white">총 결제금액</dt>
                                <dd class="text-base font-bold text-gray-900 dark:text-white">51,000원</dd>
                            </dl>
                        </div>
                    </div>

                    <div class="mt-6 gap-4 sm:flex sm:items-center sm:justify-center">
                        <a href="#"
                           class="w-full flex rounded-lg border border-gray-200 bg-white px-5 py-2.5 justify-center text-sm font-medium text-gray-900 hover:bg-gray-100 hover:text-primary-700 focus:z-10 focus:outline-none focus:ring-4 focus:ring-gray-100">쇼핑
                            계속하기</a>
                        <a href="#"
                           class="mt-4 flex w-full items-center justify-center rounded-lg bg-sky-700 px-5 py-2.5 text-sm font-medium text-white hover:bg-sky-800 focus:outline-none focus:ring-4 focus:ring-primary-300 sm:mt-0">주문하기</a>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <div id="footer">
        <footer class="max-w-[1300px] mx-auto border-t border-slate-900/5 bg-white">
            <div class="flex flex-row justify-between mx-auto w-full px-10">
                <div class="float-left mt-7 mb-7">
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
</div>
</body>
</html>