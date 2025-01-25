package com.Vishesh.TrashMaster.Controller;

import com.Vishesh.TrashMaster.Model.SchedulePost;
import com.Vishesh.TrashMaster.Service.ScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    @Autowired
    private ScheduleService service;

    @RequestMapping("/")
    public String home(){
        System.out.println("Home");
        return "index.jsp";
    }

    @RequestMapping("/schedule")
    public String schedule(){
        System.out.println("Schedule");
        return "scheduleFinal.jsp";
    }

    @PostMapping("/add")
    public String scheduleadd(SchedulePost schedulePost, Model model){
        System.out.println("Schedule add");
        model.addAttribute("SchedulePost", schedulePost);
        service.addSchedule(schedulePost);
        return "scheduleFinal.jsp";
    }
//
//    @RequestMapping("/scheduleFinal.html")
//    public String schedule(){
//        System.out.println("Schedule");
//        return "scheduleFinal.jsp";
//    }
}
