package org.cak.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.cak.domain.MemberDTO;
import org.cak.service.Memberservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MemberController {

	
    @Autowired
    private Memberservice Mservice;

    @GetMapping("join")
    public void join(){};

    @PostMapping("join")
    public String postjoin(MemberDTO mdto){
        Mservice.insert(mdto);
        return "redirect:index";
    }

    @GetMapping("login")
    public void login(){};
    
    @PostMapping("login")
    public String Postlogin(MemberDTO mdto, HttpSession session) {
        MemberDTO login = Mservice.login(mdto);

        session.setAttribute("login", login);
        
        if(session.getAttribute("login")!=null) {
        	return "redirect:/index";
        }else{
            return "redirect:/login";
        }
    };

    @GetMapping("cart")
    public String cart(HttpServletRequest request,HttpSession session){
        if(session.getAttribute("login")!=null) {
        	return "redirect:/cart";
        }else{
        	request.setAttribute("msg", "로그인이 필요합니다.");
        	request.setAttribute("url", "/login");
            return "";
            
        }
        
    };

    @GetMapping("logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/home";
    }
}
