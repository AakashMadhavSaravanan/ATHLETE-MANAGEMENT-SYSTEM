package com.athlete.services;

import com.athlete.models.Athlete;
import com.athlete.repositories.AthleteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AthleteService {
    @Autowired
    private AthleteRepository athleteRepository;

    public List<Athlete> getAllAthletes() {
        return athleteRepository.findAll();
    }

    public Athlete addAthlete(Athlete athlete) {
        return athleteRepository.save(athlete);
    }
}
