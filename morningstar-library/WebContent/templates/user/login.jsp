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
                        로그인
                    </a>
                    <a href="#"
                       class="text-gray-600 hover:bg-gray-50 focus:ring-4 focus:ring-gray-300 font-bold  rounded-lg text-md px-4 lg:px-5 py-2 lg:py-2.5 mr-2 dark:hover:bg-gray-700 focus:outline-none dark:focus:ring-gray-800">
                        회원가입
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
        <div class="mx-auto mt-5 w-full text-center">
            <div class="flex flex-row justify-between border-b-2 border-gray-200">
            </div>
        </div>
    </div>
</div>
<section class="bg-white">
    <div class="flex items-center justify-center px-6 py-8 mx-auto md:h-screen lg:py-0">
        <div class="w-full bg-white rounded-lg shadow dark:border md:mb-10 sm:max-w-md xl:p-0">
            <div class="p-6 space-y-4 md:space-y-6 sm:p-8">
                <div>
                    <a aria-label="Home" href="/">
                        <img class="w-40 mr-2" src="../../img/morningstarlogo.png" alt="logo">
                    </a>
                </div>
                <form id="loginForm" class="space-y-4 md:space-y-6" action="/admin/login" method="post">
                    <div>
                        <!--              <label for="id" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">아이디</label>-->
                        <input type="text" name="id" id="id"
                               class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-3 mb-2"
                               required="" placeholder="아이디를 입력해 주세요.">
                        <!--            </div>-->
                        <!--            <div>-->
                        <!--              <label for="password" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">비밀번호</label>-->
                        <input type="password" name="password" id="password"
                               class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-3"
                               required="" placeholder="비밀번호를 입력해 주세요.">
                    </div>
                    <button type="submit"
                            class="w-full text-white bg-sky-700 focus:ring-4 focus:outline-none focus:ring-emerald-500 font-semibold rounded-lg text-lg px-5 py-3.5 text-center">
                        로그인
                    </button>
                </form>
            </div>
        </div>
    </div>
</section>
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