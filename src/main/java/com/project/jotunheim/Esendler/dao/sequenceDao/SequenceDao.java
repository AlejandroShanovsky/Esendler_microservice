package com.project.jotunheim.Esendler.dao.sequenceDao;


import com.project.jotunheim.Esendler.entity.sequnce.Sequence;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.FindAndModifyOptions;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;

@Repository
public class SequenceDao {

    @Autowired
    private MongoOperations mongoOperations;

    public Long getNextSequnceId(String key) {
        Query query = new Query(Criteria.where("id").is(key));

        Update update = new Update();
        update.inc("sequence", 1);

        FindAndModifyOptions options = new FindAndModifyOptions();
        options.returnNew(true);

        Sequence sequence = mongoOperations.findAndModify(query, update, options, Sequence.class);

        if (sequence == null) {
            Sequence newSequence = new Sequence();
            newSequence.setId(key);
            newSequence.setSequence(0L);
            mongoOperations.save(newSequence);
            return mongoOperations.findAndModify(query, update, options, Sequence.class).getSequence();
        }

        return sequence.getSequence();

    }
}
