package com.luv2code.hibernate.demo;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.luv2code.hibernate.demo.entity.Instructor;
import com.luv2code.hibernate.demo.entity.InstructorDetail;
import com.luv2code.hibernate.demo.entity.Student;

public class DeleteDemo {

	public static void main(String[] args) {

		// create session factory
		SessionFactory factory = new Configuration()
				.configure("hibernate.cfg.xml")
				.addAnnotatedClass(Instructor.class)
				.addAnnotatedClass(InstructorDetail.class)
				.buildSessionFactory();

		// create session
		Session session = factory.getCurrentSession();
		
		try {
			
			// start a transaction
			session.beginTransaction();
			
			// get instructor by id
			int theId = 2;
			Instructor tempInstructor = session.get(Instructor.class, theId);
			System.out.println("Found instructor: " + tempInstructor);
			
			// delete the instructor
			if (tempInstructor != null) {
				System.out.println("Deleting: " + tempInstructor);
				session.delete(tempInstructor); // NOTE: will ALSE delete details object because CascadeType.ALL
			}
			
			// commit transaction
			session.getTransaction().commit();
			System.out.println("Done");
			
		} finally {
			// close factory
			factory.close();
		}
	}

}
