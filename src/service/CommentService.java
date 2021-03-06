package service;

import entity.Comment;

/**
 * @Auther: Maserhe
 * @Date: Created on 2020/12/18 15:24 星期一
 * @Description: dao.service
 * @version: 1.0
 * Copyright(c)2020-2025  All rights reserved.
 */
public interface CommentService {
    public Comment selComment() throws  Exception;

    public int updComment(Comment comment)throws  Exception;

    public int insComment(Comment comment)throws Exception;
}
