package dao;

import entity.Description;

/**
 * @Auther: Maserhe
 * @Date: Created on 2020/12/18 15:24 星期一
 * @Description: dao.impl
 * @version: 1.0
 * Copyright(c)2020-2025 All rights reserved.
 */
public interface DescriptionDao {

    public Description selDescription() throws  Exception;

    public int updDescription(Description description)throws  Exception;

    public int insDescription(Description description)throws Exception;
}
