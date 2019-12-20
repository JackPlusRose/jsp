package cn.cslg.dao;

import cn.cslg.main.UserBean;
import cn.cslg.util.HibernateSessionFactory;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.swing.*;
import java.util.List;

public class LoginRegisterDao {
    private Session session;
    private Transaction transaction;
    private Query query;
    HibernateSessionFactory getSession;
    public LoginRegisterDao(){
    }
    public String  saveInfo(UserBean info){
        String mess="error";
        getSession=new HibernateSessionFactory();
        session=HibernateSessionFactory.getSession();
        try{
            transaction=session.beginTransaction();
            session.save(info);
            transaction.commit();
            mess="success";
            return mess;
        }catch(Exception e){
            message("RegisterInfo.error:"+e);
            e.printStackTrace();
            return null;
        }
    }
    public List queryInfo(String type,Object value){
        getSession=new HibernateSessionFactory();
        session=getSession.getSession();
        try{
            String hqlsql="from UserBean as u where u.userName=?";
            query=session.createQuery(hqlsql);
            query.setParameter(0, value);
            List list=query.list();
            transaction=session.beginTransaction();
            transaction.commit();
            return list;
        }catch(Exception e){
            message("LoginRegisterInfo类中有异常，异常ĸ?:"+e);
            e.printStackTrace();
            return null;
        }
    }
    public void message(String mess){
        int type= JOptionPane.YES_NO_OPTION;
        String title="提示信息";
        JOptionPane.showMessageDialog(null, mess, title, type);
    }


}
