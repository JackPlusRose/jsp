package cn.cslg.dao;

import cn.cslg.main.StudentBean;
import cn.cslg.util.HibernateSessionFactory;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.swing.*;
import java.util.List;

public class StudentDao {
    private Transaction transaction;
    private Session session;
    private Query query;
    public StudentDao(){
    }
    public boolean  saveInfo(StudentBean info){
        try{
            session=HibernateSessionFactory.getSession();
            transaction=session.beginTransaction();
            session.save(info);
            transaction.commit();
            session.close();
            return true;
        }catch(Exception e){
            message("saveInfo.error:"+e);
            e.printStackTrace();
            return false;
        }
    }
    public List findInfo(String type,Object value){
        session=HibernateSessionFactory.getSession();
        try{
            transaction=session.beginTransaction();
            String queryString="from StudentBean as model where model."+type+"=?";
            query=session.createQuery(queryString);
            query.setParameter(0, value);
            List list=query.list();
            transaction.commit();
            session.close();
            return list;
        }catch(Exception e){
            message("findInfo.error:"+e);
            e.printStackTrace();
            return null;
        }
    }
    public List findAllInfo(){
        session=HibernateSessionFactory.getSession();
        try{
            transaction=session.beginTransaction();
            String queryString="from StudentBean";
            query=session.createQuery(queryString);
            List list=query.list();
            transaction.commit();
            session.close();
            return list;
        }catch(Exception e){
            message("findInfo.error:"+e);
            e.printStackTrace();
            return null;
        }
    }
    public boolean deleteInfo(String id){
        try{
            session= HibernateSessionFactory.getSession();
            transaction=session.beginTransaction();
            StudentBean info=new StudentBean();
            info=(StudentBean)session.get(StudentBean.class, id);
            session.delete(info);
            transaction.commit();
            session.close();
            return true;
        }catch(Exception e){
            message("deleteInfo.error:"+e);
            e.printStackTrace();
            return false;
        }
    }
    public boolean updateInfo(StudentBean info){
        try{
            session=HibernateSessionFactory.getSession();
            transaction=session.beginTransaction();
            session.update(info);
            transaction.commit();
            session.close();
            return true;
        }catch(Exception e){
            message("updateInfo.error:"+e);
            e.printStackTrace();
            return false;
        }
    }
    public void message(String mess){
        int type= JOptionPane.YES_NO_OPTION;
        String title="提示信息";
        JOptionPane.showMessageDialog(null, mess, title, type);
    }


}
