/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kaab.service;

import com.kaab.dao.BoletoDao;
import com.kaab.modelos.Boleto;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Ulises
 */
@Service
public class BoletoServiceImpl implements BoletoService {
    
    @Autowired
    private BoletoDao boletoDao;
    
    
    @Transactional
    public void insert(Boleto b) {
        boletoDao.insert(b);
    }

    @Transactional
    public Boleto findById(int id) {
        return boletoDao.findByBoletoId(id);
    }
    
    
    
}
