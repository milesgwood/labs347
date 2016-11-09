package bean;

import java.util.*;

public class UserList {
    
    private String[] userList = {
        "bakerjd", "dentonae", "fitzgemd", "groverf", "melonkd", 
        "powersie", "thomaswy", "williamdj", "youngpd", "zuckowbg"
    };
  
    public String[] getUsers() {
        return Arrays.copyOf(userList, userList.length);
    }
  
}