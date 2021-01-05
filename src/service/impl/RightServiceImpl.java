package service.impl;

import entity.Right;
import entity.Information;
import service.*;

/**
 * @Auther: Maserhe
 * @Date: Created on 2020/12/25 11:18 星期三
 * @Description: service.impl
 * @version: 1.0
 */
public class RightServiceImpl implements RightService {

    TagService tagService=new TagServiceImpl();
    BlogService blogService=new BlogServiceImpl();
    CategoryService categoryService=new CategoryServiceImpl();
    SiteService siteService=new SiteServiceImpl();
    InformationService informationService=new InformationServiceImpl();


    @Override
    public Right selRight() throws Exception {
        Information information = informationService.selInformation();
        Right right=new Right();
        try {

            right.setAvatar(information.getPhoto());
            right.setName(information.getName());
            right.setSentence(information.getSentence());

            right.setBlogCount(blogService.selAllBlogCount());
            right.setTagCount(tagService.selAllTagCount());
            right.setCategoryCount(categoryService.selAllCategoryCount());

            right.setGithub(information.getGithub());
            right.setEmail(information.getEmail());

            right.setNotice(siteService.selSite().getNotice());

            right.setBlogs(blogService.selRightBlog());
            right.setCategories(categoryService.selCategoryBlogCount());
            right.setTags(tagService.selAllTag());

        }catch (Exception e){

            System.err.println("-----------warning----------");
            System.err.println("Please configure the content of the blog and then visit the homepage of the blog.");
            System.err.println("-----------warning----------");
        }

        return right;

    }
}
