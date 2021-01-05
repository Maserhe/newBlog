package service.impl;

import dao.FooterDao;
import dao.impl.FooterDaoImpl;
import entity.Footer;
import service.FooterService;

/**
 * @Auther: Maserhe
 * @Date: Created on 2020/12/18 15:24 星期一
 * @Description: dao.service
 * @version: 1.0
 * Copyright(c)2020-2025  All rights reserved.
 */
public class FooterServiceImpl implements FooterService {
    FooterDao footerDao=new FooterDaoImpl();

    @Override
    public Footer selFooter() throws Exception {
        return footerDao.selFooter();
    }

    @Override
    public int updFooter(Footer footer) throws Exception {
        return footerDao.updFooter(footer);
    }

    @Override
    public int insFooter(Footer footer) throws Exception {
        return footerDao.insFooter(footer);
    }
}
