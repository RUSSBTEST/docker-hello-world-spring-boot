package com.dockerforjavadevelopers.hello;


import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
public class HelloController {
    
    @RequestMapping("/")
    public String index() {
        
        String message = "Hello World!\n" + new java.util.Date().toString() + "\nOk bye!\n";
        return message;
    }
    
}
