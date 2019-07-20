package com.fy.receptionserver.travels.service;

import com.fy.receptionserver.travels.domain.Travel;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@FeignClient(name="TRAVELS-SERVER")
public interface TravelsService {

    @RequestMapping(value = "travels/queryTravel", method = RequestMethod.POST)
    public List<Travel> ask();
}
