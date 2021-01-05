package dao;

import entity.Site;

/**
 * @Auther: Maserhe
 * @Date: Created on 2020/12/18 15:24 星期一
 * @Description: dao.impl
 * @version: 1.0
 * Copyright(c)2020-2025 All rights reserved.
 */
public interface SiteDao {

    public Site selSite() throws  Exception;

    public int updSite(Site site)throws  Exception;

    public int insSite(Site site) throws Exception;
}
