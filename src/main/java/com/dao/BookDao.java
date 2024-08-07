package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.configuration.HibernateConfiguration;
import com.entity.Book;

public class BookDao {
	public static boolean save(Book book){
		Session session = HibernateConfiguration.getSessionFactory().openSession();
		Transaction trans=session.beginTransaction();
		session.save(book);
		trans.commit();
		session.close();
		return false;
	}
	public static List<Book> getBooks(){
		Session session = HibernateConfiguration.getSessionFactory().openSession();
		return session.createQuery("From Book",Book.class).list();
		
	}
    public void deleteBook(int bid) {
        Transaction transaction = null;
        Session session = HibernateConfiguration.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            Book book = session.get(Book.class, bid);
            if (book != null) {
                session.delete(book);
                System.out.println("Book is deleted");
            }          
            transaction.commit();    
//            if (transaction != null) {
//                transaction.rollback();
//            }
          
    }
	public static boolean updateBook(Book book) {
		Session session = HibernateConfiguration.getSessionFactory().openSession();
		Transaction trans=session.beginTransaction();
		session.update(book);
		trans.commit();
		return false;
		
			
		
	}
    
}