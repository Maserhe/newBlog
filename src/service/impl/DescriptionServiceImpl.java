package service.impl;

import dao.DescriptionDao;
import dao.impl.DescriptionDaoImpl;
import entity.Description;
import service.DescriptionService;

/**
 * @Auther: Maserhe
 * @Date: Created on 2020/12/18 15:24 星期一
 * @Description: dao.service
 * @version: 1.0
 * Copyright(c)2020-2025  All rights reserved.
 */
public class DescriptionServiceImpl implements DescriptionService {

    DescriptionDao descriptionDao = new DescriptionDaoImpl();

    @Override
    public Description selDescription() throws Exception {
        return descriptionDao.selDescription();
    }

    @Override
    public int updDescription(Description description) throws Exception {
        return descriptionDao.updDescription(description);
    }

    @Override
    public int insDescription(Description description) throws Exception {
        return descriptionDao.insDescription(description);
    }
}
