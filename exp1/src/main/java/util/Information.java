package util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class Information {
    public static String name;
    public static String age;
    public static String sex;
    static {
        try {
            Properties properties = new Properties();
            InputStream in = Information.class.getClassLoader().getResourceAsStream("information.properties");
            properties.load(in);
            name=properties.getProperty("name");
            age=properties.getProperty("age");
            sex=properties.getProperty("sex");
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
