package com.example.demo.controller;


import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.imageio.ImageIO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import com.example.demo.model.Purchase;
import com.example.demo.services.UserServices;

@RestController
public class Controller {

		@RequestMapping("/")
		String show() {
			return "welcome";
		}
		
		
		@Autowired
		UserServices service;
		
	
		@RequestMapping("/orders")
		public Object orderList(@RequestParam int table_no) {
			
			//return  
			
		
			List<Purchase> p= service.myOrders(table_no);
			
			return  p;
			//return null;
			
		}
		@RequestMapping("/tableNo")
			void shows(@RequestParam int id,@RequestParam int table_no,@RequestParam int item_no,@RequestParam int quantity) {
			Purchase purchase= new Purchase(id,table_no,item_no,quantity );
			service.addToPurchase(purchase);
			//return purchase.toString();
			
			
		}
		@RequestMapping("/welcome")
		public Object menuItems() {
			
			return service.menuItemss();
			
		}
		
//		@RequestMapping(value = "/getImage", method = RequestMethod.GET)
//		  public void showImage(HttpServletResponse response) throws Exception {
//
//		    ByteArrayOutputStream jpegOutputStream = new ByteArrayOutputStream();
//
//		    try {
//		    	File f = new File("./image/blacktea.jpg");
//		      BufferedImage image = ImageIO.read(f);
//		      ImageIO.write(image, "jpeg", jpegOutputStream);
//		    } catch (IllegalArgumentException e) {
//		      response.sendError(HttpServletResponse.SC_NOT_FOUND);
//		    }
//
//		    byte[] imgByte = jpegOutputStream.toByteArray();
//
//		    response.setHeader("Cache-Control", "no-store");
//		    response.setHeader("Pragma", "no-cache");
//		    response.setDateHeader("Expires", 0);
//		    response.setContentType("image/jpeg");
//		    ServletOutputStream responseOutputStream = response.getOutputStream();
//		    responseOutputStream.write(imgByte);
//		    responseOutputStream.flush();
//		    responseOutputStream.close();
//		  }
//		
		@RequestMapping(value = "/Image", consumes = MediaType.ALL_VALUE, produces = MediaType.IMAGE_JPEG_VALUE)
		@ResponseBody
		public ResponseEntity<byte[]> getImage(@RequestParam String name) throws IOException {
			String loc="./image/"+name;
			//loc.concat(name);
			File f = new File(loc);
		      BufferedImage image = ImageIO.read(f);
		      ByteArrayOutputStream baos = new ByteArrayOutputStream();
		      ImageIO.write( image, "jpg", baos );
		      baos.flush();
		      byte[] images = baos.toByteArray();
		      baos.close();
		    //byte[] image = imageService.getImage(id);  //this just gets the data from a database
		    return ResponseEntity.ok(images);
		}
}
