package com.project.jotunheim.Esendler.entity.sequnce;

import lombok.Getter;
import lombok.Setter;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = Sequence.COLLECTION_NAME)
@Getter
@Setter
public class Sequence {

    public static final String COLLECTION_NAME = "sequnces";

    @Id
    private String id;
    private Long sequence;

}
