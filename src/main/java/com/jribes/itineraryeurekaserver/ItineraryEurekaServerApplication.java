package com.jribes.itineraryeurekaserver;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer
@EnableDiscoveryClient
public class ItineraryEurekaServerApplication {

  public static void main(String[] args) {
    SpringApplication.run(ItineraryEurekaServerApplication.class, args);
  }
}
