package org.cak.controller;


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
        return "redirect:home";
    }

    @GetMapping("login")
    public void login(){};
    
    @PostMapping("login")
    public String Postlogin(MemberDTO mdto, HttpSession session) {
        MemberDTO login = Mservice.login(mdto);

        session.setAttribute("login", login);
        
        if(session.getAttribute("login")!=null) {
        	return "redirect:/home";
        }else{
            return "redirect:/login";
        }
    };

    @GetMapping("cart")
    public String cart(HttpSession session){
        if(session.getAttribute("login")!=null) {
        	return "cart";
        }else{
            return "redirect:/login";      
        }
        
    };

    @GetMapping("logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/home";
    }
}
