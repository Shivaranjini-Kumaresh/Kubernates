package com.sams.membership.nextgen;

import org.springframework.boot.*;
import org.springframework.boot.autoconfigure.*;

//@EnableWebFlux
@SpringBootApplication
public class HelloworldApplication {

	/*@Bean
	RouterFunction<ServerResponse> healthCheck(){
		return RouterFunctions.route(RequestPredicates.GET("/health"), request -> ServerResponse.ok().body(Mono.just("Health Check Fine"), String.class));
	}*/

	public static void main(String[] args) {
		SpringApplication.run(HelloworldApplication.class, args);


	}

}
