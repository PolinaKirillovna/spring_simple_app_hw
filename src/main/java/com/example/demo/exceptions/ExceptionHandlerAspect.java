package com.example.demo.exceptions;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.slf4j.Logger;


@Aspect
@Component
public class ExceptionHandlerAspect {

    @Around("execution(* com.example.demo.service.*.*(..))")
    public Object handleCustomException(ProceedingJoinPoint joinPoint) throws Throwable {
        try {
            return joinPoint.proceed();
        } catch (CustomException e) {
            Logger logger = LoggerFactory.getLogger(joinPoint.getTarget().getClass());
            logger.error("Error occurred: {}", e.getMessage());

            return new ResponseEntity<>(e.getMessage(), e.getStatus());
        }
    }
}


