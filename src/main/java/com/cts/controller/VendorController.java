package com.cts.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.annotation.MultipartConfig;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cts.entity.Vendor;
import com.cts.entity.Vendor;
import com.cts.entity.Vendor;
import com.cts.service.VendorService;

@Controller
@RequestMapping("/vendor")
public class VendorController {
	@Autowired
	VendorService vendorService;
	
	final Logger logger=Logger.getLogger(VendorController.class);
	
	@GetMapping("/vendorList")
	public String getAllVendor(Model model)
	{
		
		List<Vendor>listOfVendor=vendorService.getAllVendors();
		System.out.println(listOfVendor);
		model.addAttribute("vendor",listOfVendor);
		return "vendorList";
	}


	@GetMapping("/showVendorForm")
	public String showFormToAddVendor(Model model)
	{
		Vendor theVendor=new Vendor();
		
		model.addAttribute("vendor",theVendor);
		return "newVendor";
	}
	
	@PostMapping("/saveVendor")
	public String addVendorToList(@ModelAttribute("vendor") Vendor theVendor )
	{
	
	try{
		vendorService.saveVendor(theVendor);
		return "redirect:/admin?success";
	}
	catch(Exception e){
		logger.info(e.toString());
		return "redirect:/404?fail";
	}
	
	}
	

@GetMapping("/updateForm")
public String showFormForUpdate(@RequestParam("vendorName") String vendorName , Model model)
{
	Vendor theVendor=vendorService.getVendor(vendorName);
	model.addAttribute("vendor",theVendor);
	return "newVendor";
}

@GetMapping("/delete")
public String deleteAVendor(@RequestParam("emailId") String theEmailId , Model model)
{
	vendorService.deleteVendor(theEmailId);
	return "redirect:/admin";
}
}
