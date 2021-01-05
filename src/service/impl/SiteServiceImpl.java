package service.impl;

import dao.SiteDao;
import dao.impl.SiteDaoImpl;
import entity.Site;
import service.SiteService;

/**
 * @Auther: Maserhe
 * @Date: Created on 2020/12/18 15:24 星期一
 * @Description: dao.service
 * @version: 1.0
 * Copyright(c)2020-2025  All rights reserved.
 */
public class SiteServiceImpl implements SiteService {

    SiteDao siteDao=new SiteDaoImpl();

    @Override
    public Site selSite() throws Exception {
        return siteDao.selSite();
    }

    @Override
    public int updSite(Site site) throws Exception {
        return siteDao.updSite(site);
    }

    @Override
    public int insSite(Site site) throws Exception {
        return siteDao.insSite(site);
    }
}
