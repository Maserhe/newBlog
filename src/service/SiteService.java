package service;

import entity.Site;

/**
 * @Auther: Maserhe
 * @Date: Created on 2020/12/18 15:24 星期一
 * @Description: dao.service
 * @version: 1.0
 * Copyright(c)2020-2025  All rights reserved.
 */
public interface SiteService {

    public Site selSite() throws  Exception;

    public int updSite(Site site)throws  Exception;

    public int insSite(Site site) throws Exception;
}
