package com.anit.service;

import java.util.List;
import com.anit.model.Employee;
import com.anit.model.FileUpload;
import com.anit.model.Profile;


public interface EmployeeService {
	/*public void add(Employee employee);
	public Employee getEmployee(Employee emp);*/
	public List<FileUpload> getFileList();
	public boolean validateEmployee(String user_name, String pass_word);
	public void fileUpload(FileUpload upload);
	public void profile(Profile pro);
	public List<Profile> getProfileList();
	public List<FileUpload> searchFileByName(String filename);
	public void deleteFile(int contractno);
	public void editFile(int contractno);
	public FileUpload getFile(int id);
	
}
