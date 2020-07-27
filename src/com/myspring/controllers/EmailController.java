package com.myspring.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EmailController {
	
	@Autowired
	private JavaMailSender mailSender;

	@RequestMapping(value = "/sendmail" , method=RequestMethod.POST)
	public String doSendEmail(HttpServletRequest request) {
		//Takes input from email
		String recipientAddress = request.getParameter("recipient");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
		
		
		//Prints debug info
		System.out.println("To: "+recipientAddress);
		System.out.println("Subject: "+subject);
		System.out.println("Message: "+message);
		
		
		//creates a simple e-mail object
		SimpleMailMessage email = new SimpleMailMessage();
		email.setTo(recipientAddress);
		email.setSubject(subject);
		email.setText(message);

		//Sends the email
		mailSender.send(email);
		
		System.out.println("Successfully sent mail");
		
		//forwards to the view named email
		return "result";
	}

}
