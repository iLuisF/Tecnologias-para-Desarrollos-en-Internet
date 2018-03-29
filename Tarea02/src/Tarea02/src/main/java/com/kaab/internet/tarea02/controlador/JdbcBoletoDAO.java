
package com.kaab.internet.tarea02.controlador;

import com.kaab.internet.tarea02.modelo.Boleto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.sql.DataSource;

/**
 *  Permite insertar y obtener un objeto boleto desde la base de datos.
 * 
 * @author Flores González Luis.
 */
public class JdbcBoletoDAO implements BoletoDao{
    
    private DataSource dataSource;
    
    public void setDataSource(DataSource dataSource){
        this.dataSource = dataSource;
    }

    /**
     * Inserta un boleto en la base de datos, este no contiene identificador
     * ya que se genera con auto incremento.
     * 
     * @param boleto a insertar.
     */
    @Override
    public void insert(Boleto boleto) {
        String sql = "INSERT INTO BOLETOS "
                + "(nombre, titulo_pelicula, precio, sala, asiento, cine, fecha_hora) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?)";
        Connection conn = null;

        try {
            conn = dataSource.getConnection();
            try (PreparedStatement preparedStatement = conn.prepareStatement(sql)) {
                //preparedStatement.setInt(1, boleto.getId());
                preparedStatement.setString(1, boleto.getNombre());
                preparedStatement.setString(2, boleto.getTituloPelicula());
                preparedStatement.setDouble(3, boleto.getPrecio());
                preparedStatement.setInt(4, boleto.getSala());
                preparedStatement.setString(5, boleto.getAsiento());
                preparedStatement.setString(6, boleto.getCine());
                preparedStatement.setTimestamp(7, boleto.getFechaHora());
                preparedStatement.executeUpdate();
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);

        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                }
            }
        }
    }

    /**
     * Dado un identificador, regresa el boleto correspondiente.
     * 
     * @param boletoId identificador del boleto requerido.
     * @return boleto desde la base de datos.
     */
    @Override
    public Boleto findByBoletoId(int boletoId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
       
}
