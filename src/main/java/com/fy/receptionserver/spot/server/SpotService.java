package com.fy.receptionserver.spot.server;

import org.springframework.cloud.openfeign.FeignClient;

@FeignClient(value = "SPOTE-SERVER")
public interface SpotService {

}
