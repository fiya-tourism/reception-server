package com.fy.receptionserver;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

@EnableFeignClients
@SpringBootApplication
public class ReceptionServerApplication {

    public static void main(String[] args) {
        SpringApplication.run(ReceptionServerApplication.class, args);
    }

}
