package com.cognizant.jwt_handson;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@SpringBootApplication
public class JwtHandsonApplication {

	private static final Logger LOGGER =
			LoggerFactory.getLogger(JwtHandsonApplication.class);

	public static void main(String[] args) {
		SpringApplication.run(JwtHandsonApplication.class, args);
	}
}
