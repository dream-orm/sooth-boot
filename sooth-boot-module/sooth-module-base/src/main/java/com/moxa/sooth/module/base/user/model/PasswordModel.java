package com.moxa.sooth.module.base.user.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

@Data
public class PasswordModel {
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    private String oldPassword;
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    private String password;
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    private String confirmPassword;
}
