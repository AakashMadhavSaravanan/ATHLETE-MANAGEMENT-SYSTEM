package com.athlete.models;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import lombok.*;

@Document(collection = "career_guidance")  // MongoDB collection name
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CareerGuidance {

    @Id
    private String id;  // MongoDB uses String (ObjectId)

    private String sport;
    private String jobRole;
    private String eligibilityCriteria;
}
