package com.fy.receptionserver.travels.service;

import org.springframework.cloud.openfeign.FeignClient;

@FeignClient("CRITIC-SERVER")
public interface TravelsCommentService {
}
