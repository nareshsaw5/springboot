package learning.springboot.services;

import netscape.javascript.JSObject;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloService {

    @GetMapping(path = "/hello", produces = "application/json")
    public String message(){
        return "Hello Naresh";
    }
}
