package com.anit.dao.impl;

import org.springframework.stereotype.Repository;import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Query;

import javax.annotation.Resource;

import java.util.List;

import com.anit.dao.EmpDao;
import com.anit.model.FileUpload;
import com.anit.model.Profile;

@Repository("empDAO")
public class EmpDaoImp implements EmpDao {

	@Resource(name = "sessionFactory")
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	protected Session getSession() {
		return sessionFactory.openSession();
	}

	public boolean validateEmployee(String user_name, String pass_word) {
		Session session = sessionFactory.openSession();
		boolean userFound = false;
		// Query using Hibernate Query Language
		String SQL_QUERY = " from Employee as o where o.userName=? and o.password=?";
		Query query = session.createQuery(SQL_QUERY);
		query.setParameter(0, user_name);
		query.setParameter(1, pass_word);
		List list = query.list();

		if ((list != null) && (list.size() > 0)) {
			userFound = true;
		}
		session.close();
		return userFound;
	}

	@Override
	public void fileUpload(FileUpload upload) {
		Session session = sessionFactory.openSession();
		getSession().save(upload);
		session.close();

	}

	@Override
	public void profile(Profile pro) {
		Session session = sessionFactory.openSession();
		getSession().save(pro);
		session.close();
		System.out.println("Profile Upload success ful");
	}

	@Override
	public List<FileUpload> getFileList() {
		Session session = sessionFactory.openSession();
		String SQL_QUERY = "from FileUpload";
		Query query = session.createQuery(SQL_QUERY);
		List fileList = query.list();
		System.out.println("size of list is " + fileList.size());
		return fileList;
	}

	public List<Profile> getProfileList() {
		Session session = sessionFactory.openSession();
		String SQL_QUERY = "from Profile";
		Query query = session.createQuery(SQL_QUERY);
		List profileList = query.list();
		System.out.println("size of list is " + profileList.size());
		return profileList;
	}

	public List<FileUpload> searchFileByName(String filename) {
		Session session = sessionFactory.openSession();
		System.out.println("filename " + filename);
		String SQL_QUERY = "from FileUpload as o where o.filename=?";
		Query query = session.createQuery(SQL_QUERY);
		query.setParameter(0, filename);
		List fileList = query.list();
		System.out.println("size of list is " + fileList.size());
		return fileList;
	}

	public void deleteFile(int contractno) {
		Session session = sessionFactory.openSession();
		String SQL_QUERY = "delete from FileUpload as o where o.contractno=?";
		Query query = session.createQuery(SQL_QUERY);
		query.setParameter(0, contractno);
		query.executeUpdate();
	}

	@Override
	public void editFile(int contractno) {
		Session session = sessionFactory.openSession();
		System.out.println("You are in the logic section");
		String SQL_QUERY = "delete from FileUpload as o where o.contractno=?";
		Query query = session.createQuery(SQL_QUERY);
		query.setParameter(0, contractno);
		query.executeUpdate();
		System.out.println("Successful");
	}

	@Override
	public FileUpload getFile(int id) {
		return (FileUpload) getSession().get(FileUpload.class, id);
	}
	
}
