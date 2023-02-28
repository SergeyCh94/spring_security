package skypro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ControllerNew {

    @GetMapping("/")
    public String showPublicInfo() {
        return "publicInfo";
    }

    @GetMapping("/public_room")
    public String showPublicRoom() {
        return "publicRoom";
    }

    @GetMapping("/server_room")
    public String showServerRoom() {
        return "serverRoom";
    }

    @GetMapping("/security_room")
    public String showSecurityRoom() {
        return "securityRoom";
    }

    @GetMapping("/boss_room")
    public String showBossRoom() {
        return "bossRoom";
    }

}
