package com.project.jotunheim.Esendler.entity.users;

import com.project.jotunheim.Esendler.entity.role.Role;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import java.util.Set;

@Document(collection = User.COLLECTION_NAME)
@Getter
@Setter
@ToString
public class User {
    public static final String COLLECTION_NAME = "users";

    @Id
    private Long id;
    private String nickName;
    private String email;
    private String password;
    private Set<Role> roles;
}
