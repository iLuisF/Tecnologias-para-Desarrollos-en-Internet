
package com.kaab.dao;

import com.kaab.form.BoletoPOJO;
import com.kaab.modelos.Boleto;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * Permite insertar y obtener un objeto boleto desde la base de datos.
 *
 * @author Flores González Luis.
 */
@Repository
public class BoletoDAOimpl implements BoletoDao {
    
    @Autowired
    private SessionFactory sessionFactory;
    
    @Override
    public void insert(Boleto boleto) {
        sessionFactory.getCurrentSession().save(boleto);
    }

    @Override
    public Boleto findByBoletoId(int boletoId) {
        return (Boleto) sessionFactory.getCurrentSession().load(Boleto.class, boletoId);
    }

}
