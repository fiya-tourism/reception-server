package com.fy.receptionserver.travels.service;

import com.fy.receptionserver.travels.domain.Travel;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@FeignClient(name="TRAVELS-SERVER")
public interface TravelsService {

    @RequestMapping(value = "travels/queryTravel", method = RequestMethod.POST)
    public List<Travel> ask();

    @RequestMapping("travels/upTravelById")
    public Travel travelsById(@RequestParam("travelsId") Integer travelsId);

    @RequestMapping("travels/insertTravels")
    public Integer insertInIt(@RequestBody Travel travel);
}
