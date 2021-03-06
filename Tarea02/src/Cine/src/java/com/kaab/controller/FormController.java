package com.kaab.controller;

import com.kaab.modelos.Boleto;
import com.kaab.modelos.BoletoValidador;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.kaab.modelos.ImagenesSubidas;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.multipart.MultipartFile;


@Controller
public class FormController {

    private BoletoValidador boletoValidador;

    public FormController() {
        this.boletoValidador = new BoletoValidador();
    }

    @RequestMapping(value="form.htm", method = RequestMethod.GET)
    public ModelAndView form() {
        
        ModelAndView mav = new ModelAndView();        
        mav.setViewName("form");        
        //Se ponen datos constantes, segun los requerimientos.    
        mav.addObject("boleto", new Boleto(null, "Interstellar", 73, 2, "A1", "Cinemex parque lindavista", null));
        return mav;
    }

    //recibimos y validamos los datos de nuestro formulario
    @RequestMapping(value="form.htm", method = RequestMethod.POST)
    public ModelAndView form(@ModelAttribute("boleto") Boleto boleto, BindingResult result, SessionStatus status) {
        this.boletoValidador.validate(boleto, result);
        if (result.hasErrors()) {
            //Los datos son incorrectos segun las validaciones.
            ModelAndView mav = new ModelAndView();
            mav.setViewName("form");
            mav.addObject("boleto", new Boleto());
            return mav;
        } else {
            //Conectamos a la base de datos.
            DriverManagerDataSource dataSource = new DriverManagerDataSource();
            dataSource.setDriverClassName("com.mysql.jdbc.Driver");
            dataSource.setUrl("jdbc:mysql://localhost:3306/cine");
            dataSource.setUsername("root");
            dataSource.setPassword("1234");
            //Insetamos en la base de datos.
            JdbcBoletoDAO jdbcBoletoDAO = new JdbcBoletoDAO();
            jdbcBoletoDAO.setDataSource(dataSource);
            jdbcBoletoDAO.insert(boleto);
            //Mostramos que fue un exito la insercción de los datos.
            ModelAndView mav = new ModelAndView();
            mav.setViewName("exito");
            mav.addObject("nombre", boleto.getNombre());
            
            return mav;
        }
    }
    

    @RequestMapping("/download/{fileName}")
    public String download(@PathVariable("fileName") String fileName,
                            HttpServletResponse response 
                            /*HttpServletRequest request*/){
        try{
            response.setHeader("Content-Disposition", "inline;filename=\"" + fileName + "\"");
            OutputStream out = response.getOutputStream();
            //String dataDirectory = request.getServletContext().getRealPath("/img/");
            Path file = Paths.get("/home/kar/tecnologias/Tecnologias-para-Desarrollos-en-Internet/Tarea02/src/Cine/web/img/", "interestelar");
            response.setContentType("jpg");
            Files.copy(file, out);
            out.flush();
        }catch(IOException e){
           e.printStackTrace();
        }
        return null;
    }


    @RequestMapping(value = "save.htm", method = RequestMethod.POST)
    public String save(@ModelAttribute("uploadForm") ImagenesSubidas imgs, Model map){
        
        List<MultipartFile> files = imgs.getFiles();
        List<String> fileNames = new ArrayList<String>();
        
	if(files != null) {
            for (MultipartFile multipartFile : files) {
                String fileName = multipartFile.getOriginalFilename();
       		fileNames.add(fileName);
                System.out.println(fileName);
            }
        }else{
            System.out.println("HOLAAAAAAAAAA");
        }      
        map.addAttribute("files", fileNames);
	return "file_upload_success";
    }
    
    
    


}
