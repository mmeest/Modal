package com.modal;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import static org.junit.jupiter.api.Assertions.*;

import org.junit.Assert;
import org.junit.jupiter.api.Test; 
import org.openqa.selenium.By; 
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import com.mysql.jdbc.Driver;

public class LocalTest {	
	
	@BeforeEach
	void tearDown() {
		
	}
	
   
	@BeforeEach
	public void setUp() {
	   
	}
	
   
	@Test
	public void open_close_modal_window() {	  
		System.setProperty("webdriver.chrome.driver","C:\\browserdrivers\\chromedriver.exe");   
		WebDriver driver = new ChromeDriver();	

		driver.get("http://localhost:8080/AnyProject/index.html");
	    
		// opening modal window
		WebElement dialogButton = driver.findElement(By.xpath("/html/body/div[2]/button"));
		if(dialogButton != null) {
			System.out.println("Dialog button found by xpath");
		}
		dialogButton.click();
		Assert.assertTrue(driver.findElement(By.id("modal")).isDisplayed());  
	   
		// closing modal window
		WebElement cancelButton = driver.findElement(By.xpath("/html/body/div[3]/div[2]/div/form/div/button[2]"));
		if(cancelButton != null) {
			System.out.println("Cancel button found by xpath");
		}
		cancelButton.click();
		Assert.assertFalse(driver.findElement(By.id("modal")).isDisplayed()); 
		try {
			Thread.sleep(3000);
		}catch (InterruptedException e) {
			e.printStackTrace();
		}
	
	driver.close();
	}

   
	@Test
	public void add_remove_filter_rows() {
	    
		System.setProperty("webdriver.chrome.driver","C:\\browserdrivers\\chromedriver.exe");   
		WebDriver driver = new ChromeDriver();	
		driver.get("http://localhost:8080/AnyProject/index.html");    
	   
		WebElement dialogButton = driver.findElement(By.xpath("/html/body/div[2]/button"));
		if(dialogButton != null) {
			System.out.println("Dialog button found by xpath");
		}
		dialogButton.click();
	   
		WebElement addFilter = driver.findElement(By.id("add"));
		if(addFilter != null) {
			System.out.println("Add filter button found by id");
		}
		addFilter.click();
	   
		// remove first row
		WebElement firstRow = driver.findElement(By.xpath("/html/body/div[3]/div[2]/div/form/ul/li[1]/input[2]"));
		if(firstRow != null) {
			System.out.println("First row remove button found by xpath");
		}
		firstRow.click();
	   
		// remove third row
		WebElement thirdRow = driver.findElement(By.xpath("/html/body/div[3]/div[2]/div/form/ul/li[3]/input[2]"));
		if(thirdRow != null) {
			System.out.println("Third row remove button found by xpath");
		}
		thirdRow.click();
	   
		// trying to remove last(second) row
		WebElement secondRow = driver.findElement(By.xpath("/html/body/div[3]/div[2]/div/form/ul/li[2]/input[2]"));
		if(thirdRow != null) {
			System.out.println("Second row remove button found by xpath");
		}
	secondRow.click();
		
	driver.close();
	}
}
