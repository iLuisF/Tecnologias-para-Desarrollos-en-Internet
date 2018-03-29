
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.kaab.internet.tarea02.controlador.BoletoDao;
import com.kaab.internet.tarea02.modelo.Boleto;
import java.sql.Timestamp;

/**
 * Clase para probar la conexión a la base de datos.
 * 
 * @author Flores González Luis.
 */
public class App {
    
    public static void main( String[] args ){
    	
        ApplicationContext context = new ClassPathXmlApplicationContext(""
                + "Spring-Module.xml");
    	         
        BoletoDao boletoDao = (BoletoDao) context.getBean("boletoDAO");
        Boleto boleto = new Boleto("prueba3", 
                "dasdsa", 
                17.15, 16, 
                "da", 
                "Cinepolis", 
                new Timestamp(System.currentTimeMillis()));
        boletoDao.insert(boleto);            
    }
}