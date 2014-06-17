/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model.dao;

import java.util.List;
import com.model.bean.Persona;
import org.hibernate.*;

/**
 *
 * @author Hugo
 */
public class PersonaDAO {

    //Metodo para insertar un objeto como tupla Persona en la BD
    public void insertar(Persona persona) {
        SessionFactory sessionFactory = null;
        Session session = null;
        Transaction transaction = null;

        try {
            sessionFactory = HibernateUtil.getSessionFactory();
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();
            session.save(persona);
            transaction.commit();
            session.close();
        } catch (Exception e) {
            transaction.rollback();
            e.getMessage();
            throw new RuntimeException("No se pudo insertar");
        }

    }

    /* para hacer consilta, tenemos dos clases Query y Criteria*/
    public List<Persona> leer() {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();

//        String sql ="select * from Persona";
//        Criteria criteria = session.createCriteria(Persona.class,sql);
//        List<Persona> listaCriteria = criteria.list();
        Query query = session.createQuery("from Persona");
        List<Persona> lista = query.list();
        return lista;
    }

    /*Metodo para rescatar tuplas de una tabla*/
    public Persona buscar(int id) {
        SessionFactory sesioFactory = HibernateUtil.getSessionFactory();
        Session session = sesioFactory.openSession();
        Persona persona = (Persona) session.get(Persona.class, id);
        return persona;
    }

    public void eliminar(int id) {
        SessionFactory sessionFactory = null;
        Session session = null;
        Transaction transaction = null;

        try {
            sessionFactory = HibernateUtil.getSessionFactory();
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();
            Persona persona = (Persona) session.get(Persona.class, id);
            session.delete(persona);
            transaction.commit();
            session.close();

        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("Error al eliminar");
        }
    }

    /*Actualizar Contacto*/
    public void actualizar(Persona persona) {
        SessionFactory sessionFactory = null;
        Session session = null;
        Transaction transaction = null;

        try {
            sessionFactory = HibernateUtil.getSessionFactory();
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();
            Persona personaBuscada = (Persona) session.get(Persona.class, persona.getId());
            personaBuscada.setRut(persona.getRut());
            personaBuscada.setNombre(persona.getNombre());
            personaBuscada.setFijo(persona.getFijo());
            personaBuscada.setCelular(persona.getCelular());
            personaBuscada.setEmail(persona.getEmail());
            session.update(personaBuscada);
            transaction.commit();
            session.close();
        } catch (Exception e) {
            transaction.rollback();
            e.printStackTrace();
            throw new RuntimeException("No se pudo actualizar el nuevo contacto");
        }

    }
}
