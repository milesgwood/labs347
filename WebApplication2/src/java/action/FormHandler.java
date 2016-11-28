package action;

import com.opensymphony.xwork2.ActionSupport;

public class FormHandler extends ActionSupport {

    private int paramx;

    public String execute() {
        ++paramx;
        return SUCCESS;
    }

    public int getParamx() {
        return paramx;
    }

    public void setParamx(int paramx) {
        this.paramx = paramx;
    }
}
