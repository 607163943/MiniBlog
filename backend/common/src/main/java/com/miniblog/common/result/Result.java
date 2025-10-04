package com.miniblog.common.result;


import com.miniblog.common.constant.ServiceStatusCode;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Result {
    // 状态码
    private Integer code;
    //  数据
    private Object data;
    // 提示信息
    private String msg;

    public static Result success(Integer code,Object data,String msg) {
        return new Result(code, data, msg);
    }

    public static Result success(Object data,String msg) {
        return success(ServiceStatusCode.OK, data, msg);
    }

    public static Result success(Object data) {
        return success(data, "success");
    }

    public static Result success(String msg) {
        return success(null, msg);
    }

    public static Result success() {
        return success("success");
    }

    public static Result error(Integer code,String msg) {
        return new Result(code, null, msg);
    }

    public static Result error(Integer code) {
        return error(code, "error");
    }

    public static Result error(String msg) {
        return error(ServiceStatusCode.ERROR, msg);
    }
}
