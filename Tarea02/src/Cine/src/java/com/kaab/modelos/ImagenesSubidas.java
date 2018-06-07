/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kaab.modelos;

import java.io.File;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author kar
 */
public class ImagenesSubidas {
    
    private List<MultipartFile> files;
   
    
    public void setFiles(List<MultipartFile> f){
        this.files = f;
    }
    
    public List<MultipartFile> getFiles(){
        return this.files;
    }
}
