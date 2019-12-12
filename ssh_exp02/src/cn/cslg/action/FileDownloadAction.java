package cn.cslg.action;

import com.opensymphony.xwork2.ActionSupport;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

public class FileDownloadAction extends ActionSupport {
    private InputStream inputStream;
    private String fileName;

    public InputStream getInputStream() {
        return inputStream;
    }

    public void setInputStream(InputStream inputStream) {
        this.inputStream = inputStream;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public FileDownloadAction() {
    }

    public FileDownloadAction(InputStream inputStream, String fileName) {
        this.inputStream = inputStream;
        this.fileName = fileName;
    }

    public String execute() throws Exception {
        this.fileName = "cslg.png";
        String path = "C:/cslg.png";
        inputStream = new FileInputStream(new File(path));
        return SUCCESS;
    }
}
