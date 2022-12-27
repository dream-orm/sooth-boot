package com.moxa.sooth.core.base.common.api.dto;

import lombok.Data;

import javax.servlet.http.HttpServletResponse;
import java.io.Serializable;


@Data
public class FileDownDTO implements Serializable {

    private static final long serialVersionUID = 6749126258686446019L;

    private String filePath;
    private String uploadpath;
    private String uploadType;
    private HttpServletResponse response;

    public FileDownDTO() {
    }

    public FileDownDTO(String filePath, String uploadpath, String uploadType, HttpServletResponse response) {
        this.filePath = filePath;
        this.uploadpath = uploadpath;
        this.uploadType = uploadType;
        this.response = response;
    }
}
