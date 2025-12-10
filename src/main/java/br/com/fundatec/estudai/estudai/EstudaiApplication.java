package br.com.fundatec.estudai.estudai;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableAsync
@EnableScheduling
public class EstudaiApplication {

	public static void main(String[] args) {
		SpringApplication.run(EstudaiApplication.class, args);
	}

}
