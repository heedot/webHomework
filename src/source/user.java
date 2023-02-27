package source;

public class user {

    public String name;
    public String password;
    public String email;

    user(String name, String password, String email) {
        this.name = name;
        this.password = password;
        this.email = email;
    }
    public String getName() {
        return name;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }
}
