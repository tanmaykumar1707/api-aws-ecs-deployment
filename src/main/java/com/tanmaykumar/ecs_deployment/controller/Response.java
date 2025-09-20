package com.tanmaykumar.ecs_deployment.controller;


import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class Response {

    private String statusCode;
    
    private String data;

}
