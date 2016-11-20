package com.anit.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.anit.dao.EmpDao;
import com.anit.model.FileUpload;
import com.anit.model.Profile;
import com.anit.service.EmployeeService;

@Service("employeeService")
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmpDao empdao;
	
	public void setEmpDao(EmpDao empdao){
		this.empdao = empdao;
	}

	@Transactional
	public boolean validateEmployee(String user_name, String pass_word) {
		System.out.println("In Service class...Check Login");
		return empdao.validateEmployee(user_name, pass_word);
	}

	@Transactional
	public void fileUpload(FileUpload upload) {
		empdao.fileUpload(upload);
	}
	
	@Transactional
	public void profile(Profile pro){
		empdao.profile(pro);
	}

	@Transactional
	public List<FileUpload> getFileList(){
		return empdao.getFileList(); 
	}
	
	@Transactional
	public List<Profile> getProfileList(){
		return empdao.getProfileList();
	}
	
	@Transactional
	public List<FileUpload> searchFileByName(String filename){
		return empdao.searchFileByName(filename);
	}

	@Override
	public void deleteFile(int contractno) {
		empdao.deleteFile(contractno);
		
	}

	@Override
	public void editFile(int contractno) {
		empdao.editFile(contractno);		
	}

	@Override
	public FileUpload getFile(int id) {
		return empdao.getFile(id);
	}
	
}
