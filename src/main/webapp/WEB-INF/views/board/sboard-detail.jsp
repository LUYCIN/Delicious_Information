<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">

<head>
    <%@include file="../food/include/header_css.jsp" %>

    <!-- jquery -->
    <script src="/js/jquery-3.3.1.min.js"></script>

    <!-- include summernote css/js -->

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

        #navbar-header .dropdown:hover {
            cursor: pointer;
        }
        .dropdown-item:active {
            background: none;
        }

        body {
            font-family: 'MaplestoryOTFBold';
        }

        div li {
            font-weight: 800;
        }

        body {
            background: #ffffff;
        }

        div.flex-column p.maintext {
            margin-left: 105px;
        }

        section#middle {
            width: 37%;
        }

        .boxed-page {
            min-height: 100vh;
            background-image: url("/images/food-image2.jpg");
            background-size: /*353px 390px*/100% 100%;
            background-repeat: no-repeat;
            margin:0 0 30px 0;
        }

        .boxed-page-bottom {
            background: #ffffff;
        }

        section.wrapcontent {
            padding: 20px 20px 10px;
            border-radius: 1.5em;
            margin: 100px auto 0px;
            background: whitesmoke;
        }

        div.title {
            background: whitesmoke;
            padding-left: 0px;
        }

        #writeForm {
            padding: 0px;
        }

        h1 {
            font-weight: 600;
            font-size: 24px;
        }

        div.liParent li {
            text-align: center;
        }

        input.form-control:disabled {
            background: #FFFFFF;
        }

        textarea.form-control:disabled {
            background: #FFFFFF;
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

        div.flex-column li a.dropdown-item { /*drop a?????? height ??????*/
            padding-top: 0px;
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

        div p#p1, p#p2, p#p3 {
            font-weight: 800;
            margin-left: 8px;
        }

        div.col-12 {
            text-align: center;
        }

        #mod-btn {
            width: 120px;
            height: 45px;
            border: 0;
            border-radius: 2em;
            margin-top: 15px;
            margin-bottom: 10px;
            background-color: whitesmoke;
            border: 1px solid black;
            font-weight: 800;
            /*position: absolute;*/
            /*top: 97%;*/
            /*left: 80%;*/
            z-index: 2000;

            float: right;
            margin-right: 5px;
        }

        #mod-btn:hover {
            color: orangered;
            background-color: lightgrey;
            cursor: pointer;
            font-weight: 700;
        }

        #del-btn {
            width: 120px;
            height: 45px;
            border: 0;
            border-radius: 2em;
            margin-top: 15px;
            margin-bottom: 10px;
            background-color: whitesmoke;
            border: 1px solid black;
            font-weight: 800;
            /*position: absolute;*/
            /*top: 97%;*/
            /*left: 80%;*/
            float: right;
            z-index: 2000;
            color: black;
        }

        #del-btn:hover {
            color: orangered;
            background-color: lightgrey;
            cursor: pointer;
            font-weight: 700;
        }

        div#mod-btn, #del-btn {
            margin-left: 7px;
        }

        #replies {
            width: 46%;
            margin: 0 auto 30px;
        }

        p#title{
            font-weight: 16;
        }


    </style>

</head>
<body data-spy="scroll" data-target="#navbar" class="static-layout">

<%@include file="../about/include/side_nav.jsp" %>

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
                        <p id="title">????????????????????????????????????????</p>
                    </div>

                    <div class="d-flex flex-lg-row flex-column justify-content-around widthpx " id="board-drop">
                        <li class="nav-item dropdown" id="nav-li">
                            <a class="nav-link dropdown-toggle" id="navibarDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                ???????????????
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item"
                                   onclick="location.href='/board/freeBoard'">???????????????</a>
                                <a class="dropdown-item"
                                   onclick="location.href='/board/infoBoard'">???????????????</a>
                                <a class="dropdown-item"
                                   onclick="location.href='/board/suggestionBoard'">???????????????</a>
                            </div>

                        </li>
                        <c:if test="${empty loginUser}">
                            <li class="nav-item sign active4">
                                <a class="nav-link" id="sign-in" href="/member/sign-in">?????????</a>
                            </li>
                        </c:if>


                        <c:if test="${!empty loginUser}">
                            <%--<li class="nav-item sign active5">
                                <a class="nav-link" id="loginAccount" onclick="location.href='/member/mypage'">${loginUser.name}???</a>
                            </li>
                            <li class="nav-item sign">
                                <a class="nav-link" id="sign-out" onclick="signOut()">????????????</a>
                            </li>--%>

                            <li class="nav-item dropdown" id="nav-li">
                                <a class="nav-link dropdown-toggle" id="navibarDropdown2" role="button"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        ${loginUser.name}???
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item"
                                       href="/member/mypage">?????? ?????????</a>
                                    <a class="dropdown-item"
                                       id="sign-out" onclick="signOut()">????????????</a>
                                </div>

                            </li>
                        </c:if>
                    </div>
                </ul>
            </div>
        </div>
    </nav>


    <section class="d-flex align-items-center flex-column col-5 wrapcontent" id="middle">
        <div class="title col-12"><h1></h1></div>
        <br/>
        <form id="writeForm" class="col-12" action="/board/sboard/write" method="post">
            <div class="form-group">

                <p id="p1">??????</p>


                <input type="text" id="title-input" class="form-control col-12" name="title" value="${sb.title}"
                       disabled><br/>
                <p id="p2">?????????</p>
                <input type="text" id="writer-input" class="form-control col-12" name="writer" value="${sb.writer}"
                       disabled><br/>
                <p id="p3">????????????</p>
                <textarea class="form-control col-12" rows="13" disabled>${sb.content}</textarea>

                <c:if test="${loginUser.account == sb.writer || loginUser.grade == 'admin'}">
                    <button id="del-btn" type="button" class="btn btn-danger">??????</button>
                    <button id="mod-btn" type="button" class="btn btn-warning">??????</button>
                </c:if>


            </div>
        </form>

    </section>
</div>


<div class="boxed-page-bottom">
        <!-- ?????? ?????? -->

        <div id="replies" class="row">
            <div class="offset-md-1 col-md-10">
                <!-- ?????? ?????? ?????? -->
                <div class="card">
                    <div class="card-body">

                        <c:if test="${empty loginUser}">
                            <a href="/member/sign-in">????????? ????????? ??? ?????? ???????????????.</a>
                        </c:if>

                        <c:if test="${not empty loginUser}">
                            <div class="row">
                                <div class="col-md-9">
                                    <div class="form-group">
                                        <label for="newReplyText" hidden>?????? ??????</label>
                                        <textarea rows="3" id="newReplyText" name="replyText" class="form-control"
                                                  placeholder="????????? ??????????????????."></textarea>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="newReplyWriter" hidden>?????? ?????????</label>
                                        <input id="newReplyWriter" name="replyWriter" type="text"
                                               value="${loginUser.account}" class="form-control" placeholder="????????? ??????"
                                               readonly style="margin-bottom: 6px;">
                                        <button id="replyAddBtn" type="button"
                                                class="btn btn-dark form-control"
                                                style="background: whitesmoke; color: black">??????
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                    </div>
                </div> <!-- end reply write -->


                <!--?????? ?????? ??????-->
                <div class="card">
                    <!-- ?????? ?????? ?????? -->
                    <div class="card-header text-white m-0" style="background:whitesmoke;">
                        <div class="float-left" style="color: black; font-weight: 700">?????? (<span id="replyCnt">0</span>)
                        </div>
                    </div>

                    <!-- ?????? ?????? ?????? -->
                    <div id="replyCollapse" class="card">
                        <div id="replyData">
                            <!--
                            < JS??? ?????? ?????? DIV?????? >
                        -->
                        </div>

                        <!-- ?????? ????????? ?????? -->
                        <ul class="pagination justify-content-center">
                            <!--
                            < JS??? ?????? ????????? DIV?????? >
                        -->
                        </ul>
                    </div>
                </div> <!-- end reply content -->
            </div>
        </div> <!-- end replies row -->


        <!-- ?????? ?????? ?????? -->
        <div class="modal fade bd-example-modal-lg" id="replyModifyModal">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header" style="background: whitesmoke; color: white;">
                        <h4 class="modal-title">?????? ????????????</h4>
                        <button type="button" class="close text-white" data-bs-dismiss="modal">X</button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">
                        <div class="form-group">
                            <input id="modReplyId" type="hidden">
                            <label for="modReplyText" hidden>????????????</label>
                            <textarea id="modReplyText" class="form-control" placeholder="????????? ?????? ????????? ???????????????."
                                      rows="3"></textarea>
                        </div>
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button id="replyModBtn" type="button" class="btn btn-dark">??????</button>
                        <button id="modal-close" type="button" class="btn btn-danger"
                                data-bs-dismiss="modal">??????
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <!-- end replyModifyModal -->
    </div>

</body>
<!-- bootstrap js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" defer></script>
<script>
    const $modBtn = document.getElementById('mod-btn');
    const $delBtn = document.getElementById('del-btn');
    const $listBtn = document.getElementById('list-btn');

    const msg = '${msg}';
    console.log(msg);
    if (msg !== '') {
        alert(msg);
    }

    function signOut() {
        if (confirm('???????????????????????????????')) {
            location.href = '/member/sign-out';
        }
    }

    if ($modBtn !== null) {
        //????????????
        $modBtn.onclick = e => {
            location.href = '/board/suggestionBoard/modify?boardNo=${sb.boardNo}';
        };
    }

    if ($delBtn !== null) {

        //????????????
        $delBtn.onclick = e => {
            if (!confirm('?????? ?????????????????????????')) {
                return;
            }
            location.href = '/board/suggestionBoard/delete?boardNo=${sb.boardNo}';
        };
    }
    //????????????
    $listBtn.onclick = e => {
        console.log('???????????? ??????!');
        location.href = '/board/suggestionBoard?pageNum=${p.pageNum}&amount=${p.amount}';
    };
</script>
<!-- ???????????? script -->
<script>

    // ???????????? ?????? ?????????
    const currentAccount = '${loginUser.account}';
    const grade = '${loginUser.grade}';

    //?????? ??? ??????
    const bno = '${sb.boardNo}';
    // console.log('bno:', bno);

    // ?????? ?????? URL
    const URL = '/api/v1/replies';

    //?????? ?????? ?????? ??????
    function formatDate(datetime) {
        //????????? ?????? ???????????? ??????????????? ??????
        const dateObj = new Date(datetime);
        // console.log(dateObj);
        //??????????????? ?????? ??? ?????? ?????? ??????
        let year = dateObj.getFullYear();
        //1?????? 0?????? ??????????????????.
        let month = dateObj.getMonth() + 1;
        let day = dateObj.getDate();
        let hour = dateObj.getHours();
        let minute = dateObj.getMinutes();
        //??????, ?????? ????????????
        let ampm = '';
        if (hour < 12 && hour >= 6) {
            ampm = '??????';
        } else if (hour >= 12 && hour < 21) {
            ampm = '??????';
            if (hour !== 12) {
                hour -= 12;
            }
        } else if (hour >= 21 && hour <= 24) {
            ampm = '???';
            hour -= 12;
        } else {
            ampm = '??????';
        }
        //????????? 1????????? ?????? 2????????? ??????
        (month < 10) ? month = '0' + month : month;
        (day < 10) ? day = '0' + day : day;
        (hour < 10) ? hour = '0' + hour : hour;
        (minute < 10) ? minute = '0' + minute : minute;
        return year + "-" + month + "-" + day + " " + ampm + " " + hour + ":" + minute;
    }


    // ?????? ????????? ?????? ?????? ????????? ??????
    function makePageDOM(pageInfo) {
        let tag = "";
        const begin = pageInfo.beginPage;
        const end = pageInfo.endPage;
        //?????? ?????? ?????????
        if (pageInfo.prev) {
            tag += "<li class='page-item'><a class='page-link page-active' href='" + (begin - 1) +
                "'>??????</a></li>";
        }
        //????????? ?????? ????????? ?????????
        for (let i = begin; i <= end; i++) {
            let active = '';
            if (pageInfo.page.pageNum === i) {
                active = 'p-active';
            }

            tag += "<li class='page-item " + active + "'><a class='page-link page-custom' href='" + i +
                "'>" + i + "</a></li>";
        }
        //?????? ?????? ?????????
        if (pageInfo.next) {
            tag += "<li class='page-item'><a class='page-link page-active' href='" + (end + 1) +
                "'>??????</a></li>";
        }

        // ??????????????? ?????????
        const $pageUl = document.querySelector('.pagination');
        $pageUl.innerHTML = tag;

        // ul??? ?????????????????? ?????? ??????.
        $pageUl.dataset.fp = pageInfo.finalPage;


    }


    // ?????? ?????? DOM??? ???????????? ??????
    function makeReplyDOM({
                              replyList,
                              count,
                              maker
                          }) {
        // ??? ?????? ????????? ??????
        let tag = '';

        if (replyList === null || replyList.length === 0) {
            tag += "<div id='replyContent' class='card-body'>????????? ?????? ????????????! ??????</div>";

        } else {
            for (let rep of replyList) {
                tag += "<div id='replyContent' class='card-body' data-replyId='" + rep.replyNo + "'>" +
                    "    <div class='row user-block'>" +
                    "       <span class='col-md-3'>" +
                    "         <b>" + rep.replyWriter + "</b>" +
                    "       </span>" +
                    "       <span class='offset-md-6 col-md-3 text-right'><b>" + formatDate(rep.replyDate) +
                    "</b></span>" +
                    "    </div><br>" +
                    "    <div class='row'>" +
                    "       <div class='col-md-6'>" + rep.replyText + "</div>" +
                    "       <div class='offset-md-2 col-md-4 text-right'>";

                if (currentAccount === rep.replyWriter || grade === 'admin') {
                    tag +=
                        "         <a id='replyModBtn' class='btn btn-sm btn-outline-dark' data-bs-toggle='modal' data-bs-target='#replyModifyModal'>??????</a>&nbsp;" +
                        "         <a id='replyDelBtn' class='btn btn-sm btn-outline-dark' href='#'>??????</a>";
                }
                tag += "       </div>" +
                    "    </div>" +
                    " </div>";
            }
        }

        // ?????? ????????? ????????? DOM ??????
        document.getElementById('replyData').innerHTML = tag;

        // ?????? ??? ??????
        document.getElementById('replyCnt').textContent = count;

        // ????????? ?????????
        makePageDOM(maker);


    }

    // ?????? ????????? ??????????????? ????????????????????? ???????????? ??????
    function showReplies(pageNum = 1) {

        fetch(URL + '?boardNo=' + bno + '&pageNum=' + pageNum)
            .then(res => res.json())
            .then(replyMap => {
                // console.log(replyMap.replyList);
                makeReplyDOM(replyMap);
            });
    }

    // ????????? ?????? ??????????????? ?????? ??????
    function makePageButtonClickEvent() {
        // ????????? ?????? ??????????????? ??????
        const $pageUl = document.querySelector('.pagination');
        $pageUl.onclick = e => {
            if (!e.target.matches('.page-item a')) return;

            e.preventDefault();
            // ?????? ????????? ?????? ????????????
            const pageNum = e.target.getAttribute('href');
            // console.log(pageNum);

            // ????????? ????????? ?????? ?????? ????????? ??????
            showReplies(pageNum);
        };
    }

    // ?????? ?????? ????????? ?????? ????????? ?????? ??????
    function makeReplyRegisterClickEvent() {

        document.getElementById('replyAddBtn').onclick = makeReplyRegisterClickHandler;
    }


    // ?????? ?????? ????????? ?????? ????????? ??????
    function makeReplyRegisterClickHandler(e) {

        const $writerInput = document.getElementById('newReplyWriter');
        const $contentInput = document.getElementById('newReplyText');

        // ????????? ????????? ????????????
        const replyData = {
            replyWriter: $writerInput.value,
            replyText: $contentInput.value,
            boardNo: bno
        };

        // POST????????? ?????? ?????? ?????? ??????
        const reqInfo = {
            method: 'POST',
            headers: {
                'content-type': 'application/json'
            },
            body: JSON.stringify(replyData)
        };

        fetch(URL, reqInfo)
            .then(res => res.text())
            .then(msg => {
                if (msg === 'insert-success') {
                    alert('?????? ?????? ??????');
                    // ?????? ????????? ??????
                    // $writerInput.value = '';
                    $contentInput.value = '';
                    // ?????? ?????? ?????????
                    showReplies(document.querySelector('.pagination').dataset.fp);
                } else {
                    alert('?????? ?????? ??????');
                }
            });
    }

    // ?????? ???????????? ?????? ????????????
    function processModifyShow(e, rno) {

        // console.log('???????????? ?????????!! after');

        // ????????? ?????? ????????? ?????? ?????? ?????????????????? ????????????.
        const replyText = e.target.parentElement.parentElement.firstElementChild.textContent;
        console.log('?????? ????????????:', replyText);

        // ????????? ?????? ??????????????? ????????????.
        document.getElementById('modReplyText').value = replyText;

        // ????????? ?????? ??? ?????? ??????(??????????????????)??? ?????? ??????????????? ????????? ????????????.
        const $modal = document.querySelector('.modal');
        $modal.dataset.rno = rno;
    }

    // ?????? ?????? ????????????
    function processRemove(rno) {
        if (!confirm('????????? ?????????????????')) return;

        fetch(URL + '/' + rno, {
            method: 'DELETE'
        })
            .then(res => res.text())
            .then(msg => {
                if (msg === 'del-success') {
                    alert('?????? ??????!!');
                    showReplies(); // ?????? ??????????????????
                } else {
                    alert('?????? ??????!!');
                }
            });
    }


    // ?????? ???????????? ??????, ?????? ?????? ????????? ??????
    function makeReplyModAndDelHandler(e) {

        const rno = e.target.parentElement.parentElement.parentElement.dataset.replyid;
        console.log('mod get rno: ', rno);

        e.preventDefault();

        // console.log('???????????? ?????????!! before');
        if (e.target.matches('#replyModBtn')) {
            processModifyShow(e, rno);
        } else if (e.target.matches('#replyDelBtn')) {
            processRemove(rno);
        }
    }

    // ?????? ?????? ?????? ??????, ?????? ????????? ??????
    function openModifyModalAndRemoveEvent() {

        const $replyData = document.getElementById('replyData');
        $replyData.onclick = makeReplyModAndDelHandler;
    }

    // ?????? ?????? ????????? ?????? ?????????
    function replyModifyEvent() {

        const $modal = $('#replyModifyModal');

        document.getElementById('replyModBtn').onclick =
            e => {
                // console.log('?????? ?????? ?????? ??????!');

                // ????????? ?????? ????????? ?????? ?????????
                const rno = e.target.closest('.modal').dataset.rno;
                console.log('mod post rno', rno);

                const reqInfo = {
                    method: 'PUT',
                    headers: {
                        'content-type': 'application/json'
                    },
                    body: JSON.stringify({
                        replyText: $('#modReplyText').val(),
                        replyNo: rno
                    })
                };


                fetch(URL + '/' + rno, reqInfo)
                    .then(res => res.text())
                    .then(msg => {
                        if (msg === 'mod-success') {
                            alert('?????? ??????!!');
                            $modal.modal('hide'); // ????????? ??????
                            showReplies(); // ?????? ??????????????????
                        } else {
                            alert('?????? ??????!!');
                        }
                    });
            };
    }


    // ?????? ?????????
    (function () {

        // ?????? ?????? ???????????? ?????? 1????????? ?????????
        showReplies();

        // ?????? ????????? ?????? ??????????????? ??????
        makePageButtonClickEvent();

        // ?????? ?????? ?????? ??????????????? ??????
        makeReplyRegisterClickEvent();

        // ?????? ?????? ?????? ??????, ?????? ????????? ??????
        openModifyModalAndRemoveEvent();

        // ?????? ?????? ?????? ?????? ????????? ??????
        replyModifyEvent();


    })();
</script>


</html>