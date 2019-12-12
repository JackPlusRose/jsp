package cn.cslg.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

public class UploadAction extends ActionSupport {
    private String title;
    private File upload;
    private String uploadFileName;
    private String uploadContentType;
    private String savePath;

    public UploadAction() {
    }

    public UploadAction(String title, File upload, String uploadFileName, String uploadContentType, String savePath) {
        this.title = title;
        this.upload = upload;
        this.uploadFileName = uploadFileName;
        this.uploadContentType = uploadContentType;
        this.savePath = savePath;
    }

    public String getUploadContentType() {
        return uploadContentType;
    }

    public void setUploadContentType(String uploadContentType) {
        this.uploadContentType = uploadContentType;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public File getUpload() {
        return upload;
    }

    public void setUpload(File upload) {
        this.upload = upload;
    }

    public String getUploadFileName() {
        return uploadFileName;
    }

    public void setUploadFileName(String uploadFileName) {
        this.uploadFileName = uploadFileName;
    }

    public String getSavePath() {
        return ServletActionContext.getServletContext().getRealPath(savePath);
    }

    public void setSavePath(String savePath) {
        this.savePath = savePath;
    }
    public String execute()throws Exception{
        FileOutputStream fos = new FileOutputStream(getSavePath());
        System.out.println(uploadFileName);
        FileInputStream fis = new FileInputStream(upload);
        byte [] buffer = new byte[1024];
        int len = 0;
        while((len = fis.read(buffer)) > 0){
            fos.write(buffer,0,len);
        }
        fos.close();
        return "success";
    }
}
