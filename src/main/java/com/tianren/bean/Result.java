package com.tianren.bean;

/**
 * User: Lee
 * Date: 2018/4/3 0003
 * Time: 上午 9:42
 * Desc: 神兽保佑代码无bug
 */
public class Result<T> {
    private Boolean result;
    private T data;
    private String message;

    public Result(Boolean result, T data, String message) {
        this.result = result;
        this.data = data;
        this.message = message;
    }

    public Boolean getResult() {
        return result;
    }

    public void setResult(Boolean result) {
        this.result = result;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
