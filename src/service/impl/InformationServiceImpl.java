package service.impl;

import dao.InformationDao;
import dao.impl.InformationDaoImpl;
import entity.Information;
import service.InformationService;

/**
 * @Auther: Maserhe
 * @Date: Created on 2020/12/18 15:24 星期一
 * @Description: dao.service
 * @version: 1.0
 * Copyright(c)2020-2025  All rights reserved.
 */
public class InformationServiceImpl implements InformationService {
    InformationDao informationDao=new InformationDaoImpl();
    @Override
    public Information selInformation() throws Exception {
        return informationDao.selInformation();
    }

    @Override
    public int updSite(Information information) throws Exception {
        return informationDao.updInformation(information);
    }

    @Override
    public int insInformation(Information information) throws Exception {
        return informationDao.insInformation(information);
    }
}
