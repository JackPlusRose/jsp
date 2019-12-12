package cn.cslg.action;

import com.opensymphony.xwork2.ActionContext;

public class NumbAction {
    private int count = 0;

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public NumbAction(int count) {
        this.count = count;
    }

    public NumbAction() {
    }

    public String execute() throws Exception{
        ActionContext ac = ActionContext.getContext();
        ac.getSession().put("numb",++count);
        return "success";
    }
}
