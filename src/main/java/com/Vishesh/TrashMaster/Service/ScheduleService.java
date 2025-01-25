package com.Vishesh.TrashMaster.Service;

import com.Vishesh.TrashMaster.Model.SchedulePost;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.Vishesh.TrashMaster.Repo.ScheduleRepo;
import java.util.List;

@Service
public class ScheduleService {
    @Autowired
    public ScheduleRepo repo;
    public List<SchedulePost> returnAllSchedule(){
        return repo.returnAllSchedule();
    }

    public void addSchedule(SchedulePost schPost){
        System.out.println("Service");
        repo.save(schPost);
    }
}