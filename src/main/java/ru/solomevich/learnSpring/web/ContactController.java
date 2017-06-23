package ru.solomevich.learnSpring.web;

/**
 * Created by 15 on 14.06.2017.
 */
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContactController {

        @RequestMapping(value = "/")
        public String home(){
            return "test";
        }
    }
