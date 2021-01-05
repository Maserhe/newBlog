package dao;

import entity.Footer;

/**
 * @Auther: Maserhe
 * @Date: Created on 2020/12/18 15:24 星期一
 * @Description: dao.impl
 * @version: 1.0
 * Copyright(c)2020-2025  All rights reserved.
 */
public interface  FooterDao {

    public Footer selFooter() throws  Exception;

    public int updFooter(Footer footer)throws  Exception;

    public int insFooter(Footer footer)throws Exception;
}
