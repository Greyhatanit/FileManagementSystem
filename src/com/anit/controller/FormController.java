package com.anit.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.anit.model.*;
import com.anit.service.EmployeeService;

@Controller
public class FormController {

	@Autowired
	private EmployeeService employeeService;

	/*
	 * Get in the login page using GET request
	 */
	@RequestMapping(value = "/loginform", method = RequestMethod.GET)
	public String showForm() {
		System.out.println("you are here");
		return "submitform";
	}

	/*
	 * Post the login form and direct to dao layer return boolean value if the
	 * login is successful
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String processForm(@RequestParam String username,
			@RequestParam String password) {
		boolean userExists = employeeService.validateEmployee(username,
				password);
		if (userExists) {
			System.out.println("Scucessful");
			return "dashboard";
		} else {
			System.out.println("User failed ");
			return "redirect:/loginform";
		}
	}

	/*
	 * Get the file upload jsp form using GET method
	 */

	@RequestMapping(value = "/FileUpload", method = RequestMethod.GET)
	public String fileUploadForm() {
		System.out.println("you are in form");
		return "fileupload";
	}

	/*
	 * Get the data of files uploaded taking the parameters using @RequestParam
	 */
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String fleUpload(@RequestParam int contractno,
			@RequestParam String filename, @RequestParam int accountno,
			@RequestParam String caption, @RequestParam String description,
			@RequestParam String Handler, @RequestParam String pastdate,
			@RequestParam String choosefile) {

		FileUpload file = new FileUpload();
		file.setContractno(contractno);
		file.setFilename(choosefile);
		file.setAccount_no(accountno);
		file.setCaption(caption);
		file.setDescription(description);
		file.setHandler(Handler);
		file.setDate(pastdate);
		File file1 = new File("choosefile");
		file.setPath(file1.getAbsolutePath());

		if (file != null)
			employeeService.fileUpload(file);
		return "redirect:/dash";
	}

	/*
	 * Direct to the dashboard jsp using the GET method
	 */
	@RequestMapping(value = "/dash", method = RequestMethod.GET)
	public String dashboard() {
		System.out.println("you are in dashboard");
		return "dashboard";
	}

	/*
	 * Get to profile.jsp using GET method
	 */
	@RequestMapping(value = "/profileUpload", method = RequestMethod.GET)
	public String profileDirect() {
		System.out.println("you are in form");
		return "profile";
	}

	/*
	 * POST the data of the profile using POST method
	 */
	@RequestMapping(value = "/profile", method = RequestMethod.POST)
	public String fleUpload(@RequestParam String firstname,
			@RequestParam String middlename, @RequestParam String lastname,
			@RequestParam int age, @RequestParam int phoneno,
			@RequestParam String email, @RequestParam String photo,
			@RequestParam String date_Hired, @RequestParam int attendance,
			@RequestParam String address) {

		Profile pro = new Profile();
		pro.setFirstname(firstname);
		pro.setMiddlename(middlename);
		pro.setLastname(lastname);
		pro.setAge(age);
		pro.setPhone(phoneno);
		pro.setEmail(email);
		File file1 = new File("photo");
		pro.setPhoto(file1.getAbsolutePath() + photo);
		pro.setDatehired(date_Hired);
		pro.setAttendance(attendance);
		pro.setAddress(address);

		if (pro != null)
			employeeService.profile(pro);
		return "redirect:/dash";
	}

	/*
	 * Get the list of files
	 */
	@RequestMapping("/getList")
	public ModelAndView getUserLIst() {
		List<FileUpload> fileList = employeeService.getFileList();
		return new ModelAndView("fileList", "fileList", fileList);
	}

	/*
	 * Get the list of the profiles
	 */
	@RequestMapping("/profiles")
	public ModelAndView getProfileLIst() {
		List<Profile> profileList = employeeService.getProfileList();
		return new ModelAndView("profileList", "profileList", profileList);
	}

	/*
	 * Get the list of files using filename
	 */
	@RequestMapping(value="/searchByFileName", method=RequestMethod.POST)
	public String getFilesByName(@RequestParam String FileName, Map<String, Object> map) {
		System.out.println("filename "+FileName);
		map.put("fileList", employeeService.searchFileByName(FileName));
		return "fileList";
	}
	
	@RequestMapping(value = "/edit")
	public ModelAndView editFile(@RequestParam int id,
			@RequestParam String filename, @RequestParam int accountno,
			@RequestParam String caption, @RequestParam String description,
			@RequestParam String Handler, @RequestParam String pastdate,
			@RequestParam String choosefile) {
		System.out.println("ID to be edited is "+ id);
		FileUpload file = new FileUpload();
		file.setContractno(id);
		file.setFilename(filename);
		System.out.println("FileName "+ filename);
		/* file.setAccount_no(accountno);
		file.setCaption(caption);
		file.setDescription(description);
		file.setHandler(Handler);
		file.setDate(pastdate);
		File file1 = new File("choosefile");
		file.setPath(file1.getAbsolutePath());*/
		
		FileUpload filee  = employeeService.getFile(file.getContractno());
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("user", filee);
		return new ModelAndView("updateUser", model);
	}
	
	@RequestMapping("/delete")
	public String deleteFile(@RequestParam int id) {
		System.out.println("Contract No "+id);
		employeeService.deleteFile(id);
		return "redirect:/getList";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateStudent(@RequestParam int id,
			@RequestParam String filename, @RequestParam int accountno,
			@RequestParam String caption, @RequestParam String description,
			@RequestParam String Handler, @RequestParam String pastdate,
			@RequestParam String choosefile) {
		FileUpload file = new FileUpload();
		file.setContractno(id);
		file.setFilename(filename);
		System.out.println("FileName "+ filename);
		file.setAccount_no(accountno);
		file.setCaption(caption);
		file.setDescription(description);
		file.setHandler(Handler);
		file.setDate(pastdate);
		File file1 = new File("choosefile");
		file.setPath(file1.getAbsolutePath());
		employeeService.fileUpload(file);
		return "redirect:/getList";
	}
}
