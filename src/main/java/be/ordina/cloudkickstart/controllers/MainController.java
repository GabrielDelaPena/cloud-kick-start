package be.ordina.cloudkickstart.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainController {

    @GetMapping("/")
    public String landing() {
        return "Welcome stray cat to my basic page!";
    }

    @GetMapping("/home")
    public String home() {
        return "Hello world!";
    }

    @GetMapping("/bye")
    public String bye() {
        return "Bye world!!!";
    }

}
