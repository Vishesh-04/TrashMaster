package com.Vishesh.TrashMaster.Repo;

import com.Vishesh.TrashMaster.Model.SchedulePost;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class ScheduleRepo {

    private JdbcTemplate jdbc ;

    public JdbcTemplate getJdbc() {
        return jdbc;
    }

    @Autowired
    public void setJdbc(JdbcTemplate jdbc) {
        this.jdbc = jdbc;
    }
    List<SchedulePost> schedules = new ArrayList<>();
    public List<SchedulePost> returnAllSchedule() {
        return schedules;
    }

    public void addSchedulePost(SchedulePost schPost) {
        System.out.println("Repo");
        schedules.add(schPost);

        System.out.println(schPost);
    }
    public void save(SchedulePost s) {
        String sql = "INSERT INTO schedule(fname, lname, email, pno, adde, city, state, zip, time, date, seg) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        int rows=jdbc.update(sql,s.getFname(),s.getLname(),s.getEmail(), s.getPno(), s.getAdd(), s.getCity(), s.getState(), s.getZip(), s.getTime(), s.getDate(), s.getSeg());
        System.out.println(s);
        System.out.println(rows +"affected");
    }
}
