package com.cf.login.exception;

import com.cf.login.error.ErrorCode;

public class BusinessException extends RuntimeException {

    private static final long serialVersionUID = 1L;

    private String errorCode = ResConstant.STATUSERRORCODE.toString();

    private Integer httpStatus;

    private ErrorCode exErrorCode;

    public ErrorCode getExErrorCode() {
        return exErrorCode;
    }

    public void setExErrorCode(ErrorCode exErrorCode) {
        this.exErrorCode = exErrorCode;
    }

    public Integer getHttpStatus() {
        return httpStatus;
    }

    public void setHttpStatus(Integer httpStatus) {
        this.httpStatus = httpStatus;
    }

    public String getErrorCode() {
        return errorCode;
    }

    public void setErrorCode(Integer errorCode) {
        if (errorCode != null) {
            this.errorCode = errorCode.toString();
        }
    }

    public BusinessException(Integer errorCode, String message) {
        super(message);
        if (errorCode != null) {
            this.errorCode = errorCode.toString();
        }
    }

    public BusinessException(Integer httpStatus, Integer errorCode, String message) {
        super(message);
        this.httpStatus = httpStatus;
        if (errorCode != null) {
            this.errorCode = errorCode.toString();
        }
    }

    public BusinessException(Integer httpStatus, ErrorCode errorCode) {
        super(errorCode.getMessage());
        this.httpStatus = httpStatus;
        this.errorCode = errorCode.getCode();
    }


    public BusinessException(String message) {
        super(message);
    }

    public BusinessException(ErrorCode errorCode) {
        super(errorCode.getMessage());
        this.errorCode = errorCode.getCode();
    }

    public BusinessException(ErrorCode errorCode, String message) {
        super(message);
        this.errorCode = errorCode.getCode();
    }
}
