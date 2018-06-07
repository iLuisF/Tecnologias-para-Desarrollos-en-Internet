/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kaab.service;

import com.kaab.modelos.Boleto;

/**
 *
 * @author Ulises
 */
public interface BoletoService {
    
    public void insert(Boleto b);
    
    public Boleto findById(int id);

}
