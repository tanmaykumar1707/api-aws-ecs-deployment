package com.tanmaykumar.ecs_deployment.controller;


import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api")
public class DemoController {


    @PostMapping("/test")
    public ResponseEntity<Response> testApi(@RequestBody Request request) {
        Response response = Response.builder().statusCode("200").data(request.getName() +" " +  request.getVersion()).build();
        return  ResponseEntity.ok(response);
    }


    @GetMapping("/test")
    public ResponseEntity<Response> testApi() {
        Response response = Response.builder().statusCode("200").data("This is demo build by tanmaykumar").build();
        return  ResponseEntity.ok(response);
    }


}
