package com.hyun.toy_springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
    @GetMapping("")

    // 컨트롤러가 요청을 받아 모델과 데이터를 주고 받음
    // 모델이 데이터 베이스와 연동되어 반영
    // 모델에서 돌아온 데이터를 컨트롤러가 가지고 있음
    // 해당 데이터와 파일 경로를 통해 View 로 출력

    @RequestMapping(value = { "", "/", "/main" })
    public String main() {

        return "main";

    }

    @RequestMapping(value = "/home")
    public ModelAndView home(ModelAndView modelAndView) {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        if (principal instanceof UserDetails) {
            String username = ((UserDetails) principal).getUsername();
            String password = ((UserDetails) principal).getPassword();
            System.out.println("Username : " + username);
            System.out.println("Password : " + password);

            System.out.println(((UserDetails) principal).hashCode());
            System.out.println(((UserDetails) principal).isAccountNonExpired());
            System.out.println(((UserDetails) principal).isAccountNonExpired());
            System.out.println(((UserDetails) principal).isAccountNonLocked());
            System.out.println(((UserDetails) principal).isCredentialsNonExpired());
            System.out.println(((UserDetails) principal).isEnabled());
            System.out.println(((UserDetails) principal).toString());
            System.out.println(((UserDetails) principal).getClass());
            System.out.println(((UserDetails) principal).getAuthorities());
        } else {
            String username = principal.toString();
        }
        modelAndView.setViewName("home");
        return modelAndView;

    }

}
