package me.will.mysql.model;

import lombok.Data;

import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author willdu
 * @since 2019-07-23
 */
@Data
public class Student implements Serializable {
    private Integer id;

    private Integer no;

    private String name;


}
