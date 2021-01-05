package service.impl;

import dao.PhotoDao;
import dao.impl.PhotoDaoImpl;
import entity.Photo;
import service.PhotoService;

/**
 * @Auther: Maserhe
 * @Date: Created on 2020/12/18 15:24 星期一
 * @Description: dao.service
 * @version: 1.0
 * Copyright(c)2020-2025  All rights reserved.
 */
public class PhotoServiceImpl implements PhotoService {

    PhotoDao photoDao=new PhotoDaoImpl();

    @Override
    public int insPhoto(Photo photo) throws Exception {
        return photoDao.insPhoto(photo);
    }

    @Override
    public int updPhoto(Photo photo) throws Exception {
        return photoDao.updPhoto(photo);
    }

    @Override
    public Photo selPhoto(int id) throws Exception {
        return photoDao.selPhoto(id);
    }
}
