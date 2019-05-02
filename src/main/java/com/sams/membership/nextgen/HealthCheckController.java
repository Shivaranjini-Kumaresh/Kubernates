package com.sams.membership.nextgen;

import org.slf4j.*;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/health")
public class HealthCheckController {

    private static final Logger logger = LoggerFactory.getLogger(HealthCheckController.class);

    @GetMapping("/ping")
    public String sayHello(){
        logger.info("Hey u called me");
        logger.info("Added logger");
        return "Hello";
    }
}
