package service;

import entity.Information;

/**
 * @Auther: Maserhe
 * @Date: Created on 2020/12/18 15:24 星期一
 * @Description: dao.service
 * @version: 1.0
 * Copyright(c)2020-2025  All rights reserved.
 */
public interface InformationService {
    public Information selInformation() throws  Exception;

    public int updSite(Information information)throws  Exception;

    public int insInformation(Information information) throws Exception;
}
