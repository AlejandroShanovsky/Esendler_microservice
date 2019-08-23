package com.project.jotunheim.Esendler.dao.userDao;

import com.project.jotunheim.Esendler.dao.sequenceDao.SequenceDao;
import com.project.jotunheim.Esendler.entity.users.User;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImpl implements UserDao {

    private static final org.slf4j.Logger LOGGER = LoggerFactory.getLogger(UserDaoImpl.class);

    @Autowired
    private MongoOperations mongoOperations;

    @Autowired
    private SequenceDao sequenceDao;

    @Override
    public User getUserByEmail(String email) {
        Query query = new Query();
        Criteria criteria = Criteria.where("email").is(email);
        query.addCriteria(criteria);
        return mongoOperations.findOne(query, User.class);
    }

    @Override
    public User addUser(User user) {
        long id = sequenceDao.getNextSequnceId(User.COLLECTION_NAME);
        user.setId(id);
        LOGGER.info("UserDaoImpl -> method addUser -> user " + user.toString());
        mongoOperations.insert(user, User.COLLECTION_NAME);
        return user;
    }
}
