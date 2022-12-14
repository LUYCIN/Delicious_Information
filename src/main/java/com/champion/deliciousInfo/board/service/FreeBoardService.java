package com.champion.deliciousInfo.board.service;

import com.champion.deliciousInfo.board.domain.FreeBoard;
import com.champion.deliciousInfo.board.domain.InfoBoard;
import com.champion.deliciousInfo.board.domain.Sboard;
import com.champion.deliciousInfo.board.dto.ValidateMemberDTO;
import com.champion.deliciousInfo.board.repository.FreeBoardMapper;
import com.champion.deliciousInfo.common.search.Search;
import com.champion.deliciousInfo.reply.repository.FreeReplyMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.util.WebUtils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.AttributedString;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service
@Log4j2
@RequiredArgsConstructor
public class FreeBoardService {

    private final FreeBoardMapper freeBoardMapper;

    private final FreeReplyMapper freeReplyMapper;

    public List<FreeBoard> findAllService() {
        List<FreeBoard> freeBoardList = freeBoardMapper.findAll();
        processConverting(freeBoardList);
        return freeBoardList;
    }


    public Map<String, Object> search(Search search) {
        log.info("search service start");

        Map<String, Object> findDataMap = new HashMap<>();

        List<FreeBoard> freeBoardList = freeBoardMapper.search(search);
        processConverting(freeBoardList);

        findDataMap.put("fbList", freeBoardList);
        findDataMap.put("tc", freeBoardMapper.getTotalCount(search));

        return findDataMap;
    }

    @Transactional
    public boolean regist(FreeBoard freeBoard) {
        log.info("freeboard reigst start -{}", freeBoard);
        boolean flag = freeBoardMapper.regist(freeBoard);
        return flag;
    }

    public FreeBoard findone(int freeboardNo, HttpServletRequest request, HttpServletResponse response) {
        log.info("start findoneservice");
        FreeBoard ffindone = freeBoardMapper.findone(freeboardNo);

        makeViewCount(freeboardNo,  response, request);
        return ffindone;
    }

    private void makeViewCount(int boardNo, HttpServletResponse response, HttpServletRequest request) {
        // ????????? ?????? - ?????? ????????? ????????? ????????? ????????? ???????????? ????????? null??? ?????????
        Cookie foundCookie = WebUtils.getCookie(request, "f" + boardNo);

        if (foundCookie == null) {
            freeBoardMapper.upViewCount(boardNo);

            Cookie cookie = new Cookie("f" + boardNo, String.valueOf(boardNo));// ?????? ??????
            cookie.setMaxAge(60); // ?????? ?????? ??????
            cookie.setPath("/board/freeBoard/detail"); // ?????? ?????? ??????

            response.addCookie(cookie); // ?????????????????? ?????? ??????
        }
    }

    // ??????????????? ??????
    public boolean modify(FreeBoard freeBoard) {
        log.info("freeboard modify");
        return freeBoardMapper.modify(freeBoard);
    }

    // ????????? ????????? ????????? ???????????? ????????????
    public ValidateMemberDTO getMember(int freeboardNo) {
        ValidateMemberDTO member = freeBoardMapper.findMemberByfreeBoardNo(freeboardNo);
        if (member == null) member = new ValidateMemberDTO();
        return member;
    }

    @Transactional
    public boolean removeService(int freeboardNo) {
        log.info("remove service start - {}", freeboardNo);

       /* // ?????? ?????? ?????? ??????
        replyMapper.removeAll(boardNo);*/
        // ?????? ????????? ??????
        boolean remove = freeBoardMapper.remove(freeboardNo);
        return remove;
    }

    private void processConverting(List<FreeBoard> freeBoardList){
        for (FreeBoard f : freeBoardList){
            setReplyCount(f);
            substringTitle(f);
        }
    }

    private void processConverting2(List<FreeBoard> freeBoardList){
        for (FreeBoard f : freeBoardList){
            substringTitle2(f);
        }
    }

    private void setReplyCount(FreeBoard f){
        f.setReplyCount(freeReplyMapper.getReplyCount((long) f.getFreeboardNo()));
    }

    private void substringTitle(FreeBoard f) {

        String title = f.getTitle(); // ????????? 12?????? ???????????? ...
        String writer = f.getWriter();  // ???????????? 10?????? ???????????? ...

        if (title.length() > 12) {
            String subStr = title.substring(0, 12);
            f.setShortTitle(subStr + "...");
        } else {
            f.setShortTitle(title);
        }

        if (writer.length() > 10) {
            String subWri = writer.substring(0, 10);
            f.setShortWriter(subWri + "...");
        } else {
            f.setShortWriter(writer);
        }
    }

    private void substringTitle2(FreeBoard f) {
        String title = f.getTitle(); //

        if (title.length() > 20) {
            String subStr = title.substring(0, 20);
            f.setShortTitle(subStr + "...");
        } else {
            f.setShortTitle(title);
        }
    }


    public List<FreeBoard> findByAccount(String writer) {
//        log.info("search service start");

//        Map<String, Object> findDataMap = new HashMap<>();

        List<FreeBoard> freeBoardList = freeBoardMapper.findByAccount(writer);
        processConverting2(freeBoardList);

        return freeBoardList;
    }

}
