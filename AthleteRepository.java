package com.athlete.repositories;

import com.athlete.models.Athlete;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AthleteRepository extends MongoRepository<Athlete, String> {
}
