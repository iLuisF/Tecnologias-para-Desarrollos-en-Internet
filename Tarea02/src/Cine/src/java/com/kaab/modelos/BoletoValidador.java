package com.kaab.modelos;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class BoletoValidador implements Validator {
  
    @Override
    public boolean supports(Class<?> type) {        
        return Boleto.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
        
        Boleto boleto = (Boleto) o;
        
        //Atributos obligatorios.
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nombre", "required.nombre", "El nombre es obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "tituloPelicula", "required.tituloPelicula", "El titulo es obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "precio", "required.precio", "El precio es obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "sala", "required.sala", "La sala es obligatoria.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "asiento", "required.asiento", "El asiento es obligatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "cine", "required.cine", "El cine es obligatorio.");
        //ValidationUtils.rejectIfEmptyOrWhitespace(errors, "files", "required.cine", "Foto de usuario obligatoria.");
        //ValidationUtils.rejectIfEmptyOrWhitespace(errors, "fechaHora", "field.nombre.required", "La fecha y hora es obligatoria.");     
        
    }

}
