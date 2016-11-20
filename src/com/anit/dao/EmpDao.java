package com.anit.dao;
import java.util.List;
import com.anit.model.*;

public interface EmpDao {
	
	/*public void add(Employee employee);
	public Employee getEmployee(Employee emp);*/
	public void fileUpload(FileUpload upload);
	public boolean validateEmployee(String user_name, String pass_word);
	public void profile(Profile pro);
	public List<FileUpload> getFileList();
	public List<Profile> getProfileList();
	public List<FileUpload> searchFileByName(String filename);
	public void deleteFile(int contractno);
	public void editFile(int contractno);
	public FileUpload getFile(int id);
}
