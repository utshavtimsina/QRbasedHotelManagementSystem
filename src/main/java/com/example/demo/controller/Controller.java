package com.example.demo.controller;


import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Base64;
import java.util.List;
import java.util.Optional;

import javax.imageio.ImageIO;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.model.Menu;
import com.example.demo.model.Purchase;
import com.example.demo.services.UserServices;
//import sun.misc.BASE64Encoder;
//import sun.misc.BASE64Decoder;
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
			void shows(@RequestParam int table_no,@RequestParam int item_no,@RequestParam int quantity) {
			int id=1;
			Purchase purchase= new Purchase(id,table_no,item_no,quantity,1 );
			service.addToPurchase(purchase);
			//return purchase.toString();
			
			
		}
		@RequestMapping("/welcome")
		public  Object menuItems() throws IOException {
			
		List<Menu> list = (List<Menu>) service.menuItemss();
		
//			for(Menu l:list) {
//				
////				 if(l.getImage().equals("expresso.png")) {
////					 l.setImage("help me");
////				 }else {
//////				  
////					 l.setImage("oh sure");
////				 }
//				//  if(l.getId()>18) {
//				 byte[] fileContent = FileUtils.readFileToByteArray(new File("./image/"+l.getImage()));
//			// String s=Base64.getEncoder().encodeToString(fileContent);
//				 l.setImage( Base64.getEncoder().encodeToString(fileContent));	
//			
//				
//			}
			return list;
			
		}
	
//		public static String encodeToString(BufferedImage image, String type) {
//	        String imageString = null;
//	        ByteArrayOutputStream bos = new ByteArrayOutputStream();
//
//	        try {
//	            ImageIO.write(image, type, bos);
//	            byte[] imageBytes = bos.toByteArray();
//
//	            BASE64Encoder encoder = new BASE64Encoder();
//	            imageString = encoder.encode(imageBytes);
//
//	            bos.close();
//	        } catch (IOException e) {
//	            e.printStackTrace();
//	        } finally {
//			}
//	        return imageString;
//	    }
//		
//		
		
		@RequestMapping(value = "/id")
		public Object sendPath(@RequestParam int id) {
			
			
				return service.getById(id);
			
		}
		
		
		
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
		   
		    return ResponseEntity.ok(images);
		}
}
