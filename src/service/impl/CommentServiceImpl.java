package service.impl;

import dao.CommentDao;
import dao.impl.CommentDaoImpl;
import entity.Comment;
import service.CommentService;

/**
 * @Auther: Maserhe
 * @Date: Created on 2020/12/18 15:24 星期一
 * @Description: dao.service
 * @version: 1.0
 * Copyright(c)2020-2025  All rights reserved.
 */
public class CommentServiceImpl implements CommentService {

    CommentDao commentDao = new CommentDaoImpl();

    @Override
    public Comment selComment() throws Exception {
        return commentDao.selComment();
    }

    @Override
    public int updComment(Comment comment) throws Exception {
        return commentDao.updComment(comment);
    }

    @Override
    public int insComment(Comment comment) throws Exception {
        return commentDao.insComment(comment);
    }
}
