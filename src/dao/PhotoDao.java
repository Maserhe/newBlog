package dao;

import entity.Photo;

/**
 * @Auther: Maserhe
 * @Date: Created on 2020/12/18 15:24 星期一
 * @Description: dao.impl
 * @version: 1.0
 * Copyright(c)2020-2025 All rights reserved.
 */
public interface PhotoDao {
    public int insPhoto(Photo photo) throws Exception;

    public int updPhoto(Photo photo) throws Exception;

    public Photo selPhoto(int id) throws Exception;
}
