package com.spidemyer.gamestore.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class IndexController {
    
    @GetMapping("/")
    public String getIndex(){
        return "index";
    }

    @GetMapping("path")
    public String getHome() {
        return "index";
    }
    
    @GetMapping("/game-add")
    public String getGameAdd() {
        return "/games/add";
    }
    
}
