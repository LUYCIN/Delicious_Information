<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">

<head>
    <%@include file="../food/include/header_css.jsp" %>
    <style>

        #navbar-header .navbar-nav .dropdown-menu{
            border: 2px solid lightgrey;
            box-shadow: none;
        }

        @font-face {
            font-family: 'MaplestoryOTFBold';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/MaplestoryOTFBold.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        body {
            font-family: 'MaplestoryOTFBold';
        }

        div li {
            font-weight: 800;
        }

        body {
            background: whitesmoke;
        }

        #navbar-header .dropdown:hover {
            cursor: pointer;
        }
        .dropdown-item:active {
            background: none;
        }

        .boxed-page {
            min-height: 100vh;
            background-image: url("/images/food-image2.jpg");
            background-size: /*353px 390px*/100% 100%;
            background-repeat: no-repeat;
            margin: 0;
        }

        div.flex-column li a.dropdown-item { /*drop a태그 height 크기*/
            padding-top: 0px;
        }

        div.buttonDiv {
            position: absolute;
            width: 120px;
            height: 45px;
            top: 170px;
            margin-left: 63%;
        }

        div.div_search {
            width: 21%;
            margin: 70px 0 30px 40%;
            display: flex;
            border-radius: 1em;
            font-size: 0.8vw;
            border: 2px solid #000000;
            line-height: 180%;
            padding-left: 10px;
        }

        div.div_search form {

            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* 서치바 영역 */
        div.div_search input[type=text] {
            width: 100%;
            height: 40px;
            border: 0px;

        }

        div.div_search input[type=text]:focus {
            outline: none;
        }

        div.div_search a {
            padding: 8px 8px 2px;
        }

        #boardwriter {
            width: 120px;
            height: 45px;
            border: 0;
            border-radius: 2em;
            background-color: whitesmoke;
        }

        #boardwriter:hover {
            color: orangered;
            background-color: lightgray;
            cursor: pointer;
            font-weight: 700;
        }

        /* 서치 아이콘 */
        span.lnr-magnifier {
            font-size: 20px;
        }

        input#inputName {
            padding: 10px;
            opacity: 0.2;
        }

        #navbar-header .dropdown .dropdown-menu {
            top: 80%;
            display: none;
        }

        #navbar-header .dropdown {
            top: 65%;
            height: 1px;
        }

        #navbar-header .dropdown a#navibarDropdown {
            padding-top: 0px;
            top: -38px;
            position: relative;
            /*background: #FFFFFF;*/
            border-radius: 1em;
            padding: 6px;
            padding-left: 25px;
            padding-right: 25px;
        }

        #navbar-header .dropdown a#navibarDropdown2 {
            padding-top: 0px;
            top: -38px;
            position: relative;
           /* background: #FFFFFF;*/
            border-radius: 1em;
            padding: 6px;
            padding-left: 25px;
            padding-right: 25px;
        }

        #navbar-header .active2 a#home {
            position: relative;
            top: 40px;
           /* background: #FFFFFF;*/
            border-radius: 1em;
            padding: 6px;
            padding-left: 25px;
            padding-right: 25px;
        }

        #navbar-header .active3 a#list {
            position: relative;
            top: 40px;
            /*background: #FFFFFF;*/
            border-radius: 1em;
            padding: 6px;
            padding-left: 25px;
            padding-right: 25px;
        }

        li a#sign-in {
            position: relative;
            top: 40px;
           /* background: #FFFFFF;*/
            border-radius: 1em;
            padding: 6px;
            padding-left: 25px;
            padding-right: 25px;
        }

        div.bottom_section ul li a {
            color: black;
        }

        /* 목록 마우스 오버시 (현재 마우스 위치를 알기 위해서) */
        div.bottom_section nav.bottom_nav ul li a.page-link:hover {
            background: lightgray;
            color: #ffff;
        }

        /* List CSS */
        /* 테이블 전체 */
        .test {
            width: 40%;
            border: 2px solid whitesmoke;
            border-radius: 1.5em;
            border-collapse: separate;
            margin: auto;
            padding: 24px;
            background: rgb(246, 245, 243, 0.5);
            line-height: 202%;
            z-index: 1000;
        }

        /* 내부 tr 배경 */
        table.test tr {
           /* background: #ffffff;*/
        }

        @font-face {
            font-family: 'ONE-Mobile-POP';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/ONE-Mobile-POP.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        table.test tr td{
            font-family: 'MaplestoryOTFBold';
        }

        /* th 중앙 정렬 및 외부 폰트 */
        div.boxed-page table th {
            text-align: center;
            /*font-family: 'BMDOHYEON'; !* th 폰트*!*/
            font-weight: 700;
        }

        /* td 중앙 정렬 */
        div.boxed-page table td {
            text-align: center;
        }

        div li {
            font-weight: 700;
        }

        /* 전체 리스트에서 음식명 마우스 오버시 마우스 포인터*/
        div.boxed-page table td:nth-child(2):hover {
            cursor: pointer;
            background: lightgray;
            color: #ffff;
        }

        /* 목록 전체 영역 */
        div.bottom_section {
            padding-bottom: 1px;
            margin-top: 25px;
            /*margin-bottom: 2px;*/
            color: black;
        }

        /* a태그 폰트 설정 */
        div.bottom_section ul li a {
            color: black;
        }

        /* 목록 마우스 오버시 (현재 마우스 위치를 알기 위해서) */
        div.bottom_section nav.bottom_nav ul li a.page-link:hover {
            background: lightgray;
            color: #ffff;
        }

        /* a태그 포커스 삭제*/
        div.bottom_section nav.bottom_nav ul li a.page-link:focus {
            outline: 0;
            box-shadow: none;
        }

        p#title {
            font-weight: 16;
        }

        .dropdown-item:active {
            background: none;
        }

        #navbar-header .dropdown:hover {
            cursor: pointer;
        }

        div.div_search{
            background-color: white;
        }


    </style>
</head>
<body data-spy="scroll" data-target="#navbar" class="static-layout">

<div class="boxed-page">
    <nav id="navbar-header" class="navbar navbar-expand-lg">
        <div class="container">

            <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
                <ul id="ulwidth" class="navbar-nav d-flex justify-content-between ">
                    <div class="d-flex flex-lg-row flex-column justify-content-around widthpx">
                        <li class="nav-item active2">
                            <a class="nav-link" id="home" href="/">Home<span
                                    class="sr-only">(current)</span></a>
                        </li>

                        <li class="nav-item active3">
                            <a class="nav-link" id="list" href="/food/list">List</a>
                        </li>

                    </div>
                    <div class="flex-column titlewidth justify-content-center">
                        <p id="title">𝓢𝓾𝓰𝓰𝓮𝓼𝓽𝓲𝓸𝓷</p>
                    </div>

                    <div class="d-flex flex-lg-row flex-column justify-content-around widthpx " id="board-drop">
                        <li class="nav-item dropdown" id="nav-li">
                            <a class="nav-link dropdown-toggle" id="navibarDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                문의게시판
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item"
                                   onclick="location.href='/board/freeBoard'">자유게시판</a>
                                <a class="dropdown-item"
                                   onclick="location.href='/board/infoBoard'">정보게시판</a>
                                <a class="dropdown-item"
                                   onclick="location.href='/board/suggestionBoard'">문의게시판</a>
                            </div>

                        </li>
                        <c:if test="${empty loginUser}">
                            <li class="nav-item sign active4">
                                <a class="nav-link" id="sign-in" href="/member/sign-in">로그인</a>
                            </li>
                        </c:if>


                        <c:if test="${!empty loginUser}">
                            <%--<li class="nav-item sign active5">
                                <a class="nav-link" id="loginAccount" onclick="location.href='/member/mypage'">${loginUser.name}님</a>
                            </li>
                            <li class="nav-item sign">
                                <a class="nav-link" id="sign-out" href="/member/sign-out">로그아웃</a>
                            </li>--%>

                            <li class="nav-item dropdown" id="nav-li">
                                <a class="nav-link dropdown-toggle" id="navibarDropdown2" role="button"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        ${loginUser.name}님
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item"
                                       href="/member/mypage">마이 페이지</a>
                                    <a class="dropdown-item"
                                       id="sign-out" href="/member/sign-out">로그아웃</a>
                                </div>

                            </li>
                        </c:if>
                    </div>
                </ul>
            </div>
        </div>
    </nav>


    <div class="div_search">
        <form id="searchForm">
            <input type="text" placeholder="검색하고 싶은 제목을 입력하세요" style="opacity: 1" name="keyword" id="inputName"
                   value="${s.keyword}">
            <a id="side-search-open" class="nav-link" href="#">
                <span class="lnr lnr-magnifier"></span>
            </a>

        </form>
    </div>

    <c:if test="${!empty loginUser}">
        <div class="buttonDiv">
            <button type="button" id="boardwriter" onclick="location.href='/board/suggestionBoard/write'">글쓰기</button>
        </div>
    </c:if>


    <table class="test">
        <tr>
            <th style="width:10%">No</th>
            <th style="width:33%">제목</th>
            <th style="width:19%">작성자</th>
            <th style="width:27%">작성일</th>
            <th style="width:11%">조회수</th>
        </tr>

        <c:forEach var="sb" items="${sl}">
            <tr>
                <td>${sb.boardNo}</td>
                <td onclick="location.href='/board/suggestionBoard/detail/${sb.boardNo}'">${sb.shortTitle}[${sb.replyCount}]</td>
                <td>${sb.shortWriter}</td>
                <td>${sb.regdate}</td>
                <td>${sb.hit}</td>
            </tr>
        </c:forEach>
    </table>

    <div class="bottom_section d-flex justify-content-center">
        <nav class="bottom_nav">
            <ul class="pagination">
                <c:if test="${pm.prev}">
                    <li class="page-item">
                        <a class="page-link"
                           href="/board/suggestionBoard?pageNum=${pm.beginPage-1}&amount=${pm.page.amount}&keyword=${s.keyword}">prev</a>
                    </li>
                </c:if>

                <c:forEach var="n" begin="${pm.beginPage}" end="${pm.endPage}" step="1">
                    <li class="paginate_button page-item " data-page-num="${n}">
                        <a class="page-link"
                           href="/board/suggestionBoard?pageNum=${n}&amount=${pm.page.amount}&keyword=${s.keyword}">${n}</a>
                    </li>
                </c:forEach>

                <c:if test="${pm.next}">
                    <li class="page-item"><a class="page-link"
                                             href="/board/suggestionBoard?pageNum=${pm.endPage + 1}&amount=${pm.page.amount}&keyword=${s.keyword}">next</a>
                    </li>
                </c:if>
            </ul>
        </nav>
    </div>

</div>
<script>
    const msg = '${msg}';
    console.log(msg);
    if (msg !== '') {
        alert(msg);
    }
</script>

</body>
</html>