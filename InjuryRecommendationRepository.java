package com.athlete.repositories;

import com.athlete.models.InjuryRecommendation;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface InjuryRecommendationRepository extends MongoRepository<InjuryRecommendation, String> {
}
