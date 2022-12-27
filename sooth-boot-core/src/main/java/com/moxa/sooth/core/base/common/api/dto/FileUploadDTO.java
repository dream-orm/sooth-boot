package com.moxa.sooth.core.base.common.api.dto;

import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

import java.io.Serializable;


@Data
public class FileUploadDTO implements Serializable {

    private static final long serialVersionUID = -4111953058578954386L;

    private MultipartFile file;

    private String bizPath;

    private String uploadType;

    private String customBucket;

    public FileUploadDTO() {

    }

    /**
     * 简单上传 构造器1
     *
     * @param file
     * @param bizPath
     * @param uploadType
     */
    public FileUploadDTO(MultipartFile file, String bizPath, String uploadType) {
        this.file = file;
        this.bizPath = bizPath;
        this.uploadType = uploadType;
    }

    /**
     * 申明桶 文件上传 构造器2
     *
     * @param file
     * @param bizPath
     * @param uploadType
     * @param customBucket
     */
    public FileUploadDTO(MultipartFile file, String bizPath, String uploadType, String customBucket) {
        this.file = file;
        this.bizPath = bizPath;
        this.uploadType = uploadType;
        this.customBucket = customBucket;
    }

}
