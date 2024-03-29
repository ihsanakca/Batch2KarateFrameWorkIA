package utilities;

import com.github.javafaker.Faker;

import java.util.HashMap;
import java.util.Map;

public class NewUserDataGenerator {

    public static Map<String,Object> userDataGenerator(){
        Faker faker=new Faker();

        String name=faker.name().username();
        String email=name+"@test.com";
        String password ="Test12345678";
        String about="Nice job";
        String terms="33";

        Map<String,Object> newUser=new HashMap<>();

        newUser.put("name",name);
        newUser.put("email",email);
        newUser.put("password",password);
        newUser.put("about",about);
        newUser.put("terms",terms);

        return newUser;
    }
    public static String createUserWithString(){
        Faker faker=new Faker();
        String userName=faker.name().fullName();
        String userEmail=faker.internet().emailAddress();
        String password=faker.internet().password(8,16,true,true,true);


        return "body";
    }

}
