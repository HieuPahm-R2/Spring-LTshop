package vn.hoidanit.laptopshop;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloControl {
    @GetMapping("/")
    public String index(){
        return "Konichiwa";
    }
}
