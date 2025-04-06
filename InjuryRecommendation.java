package com.athlete.models;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.DBRef;
import org.springframework.data.mongodb.core.mapping.Document;
import lombok.*;

@Document(collection = "injury_recommendations")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class InjuryRecommendation {

    @Id
    private String id;

    @DBRef
    private Athlete athlete;  // Reference to another document (Athlete)

    private String injuryRiskLevel;
    private String suggestedActions;
}
