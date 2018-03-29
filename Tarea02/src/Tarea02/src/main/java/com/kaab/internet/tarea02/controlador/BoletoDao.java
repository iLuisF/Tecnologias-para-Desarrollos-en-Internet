
package com.kaab.internet.tarea02.controlador;

import com.kaab.internet.tarea02.modelo.Boleto;

/**
 * Data Access Object (DAO). Identifica las operaciones necesarias para
 * insertar y encontrar un objecto boleto en la base de datos.
 * 
 * @author Flores González Luis.
 */
public interface BoletoDao {
    
    /**
     * Inserta un boleto en la base de datos, este no contiene identificador
     * ya que se genera con auto incremento.
     * 
     * @param boleto a insertar.
     */
    public void insert(Boleto boleto);
    
    /**
     * Dado un identificador, regresa el boleto correspondiente.
     * 
     * @param boletoId identificador del boleto requerido.
     * @return boleto desde la base de datos.
     */
    public Boleto findByBoletoId(int boletoId);    
}
