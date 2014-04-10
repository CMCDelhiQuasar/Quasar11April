package com.cmcdelhi.quasar.student;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.cmcdelhi.quasar.util.log.Log;

public class QuasarConnectionManager {

	private static volatile QuasarConnectionManager quasarConnectionManager;
	private Session session;

	private QuasarConnectionManager() throws HibernateException {
		SessionFactory sessionFactory = new Configuration().configure()
				.buildSessionFactory();
		Log.i("Session Factory Created");
		session = sessionFactory.openSession();
		Log.i("Session Opened");
		session.beginTransaction();
		Log.i("Transation Begin");

	}

	public static QuasarConnectionManager getInstance() {
		if (quasarConnectionManager == null) {
			synchronized (QuasarConnectionManager.class) {
				if (quasarConnectionManager == null) {
					quasarConnectionManager = new QuasarConnectionManager();
					Log.i("new QUASAR ConnectionManger Object created ");
				}
			}
		} else {
			Log.i("Old QUASAR ConnectionManger object returned ");
		}
		return quasarConnectionManager;

	}

	public Session getSession() {
		return session;
	}

	public boolean commitSession() throws HibernateException {
		if (session != null) {
			session.getTransaction().commit();
			Log.i("Tranasction Coomited ");
			session.close();
			Log.i("Session Closed ");
			return true;
		} else {
			return false;
		}

	}

	public boolean save(Object ob) throws HibernateException {
		if (session != null) {
			session.save(ob);
			Log.i("Object Svaed  ");
			return true;
		} else {
			return false;
		}

	}

}
