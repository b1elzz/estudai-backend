package br.com.fundatec.estudai.estudai.service;

import br.com.fundatec.estudai.estudai.dto.response.StudyStreakResponse;
import br.com.fundatec.estudai.estudai.entity.StudyStreak;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.mapper.StudyStreakMapper;
import br.com.fundatec.estudai.estudai.repository.StudyStreakRepository;
import br.com.fundatec.estudai.estudai.repository.QuestionAnswerRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class StudyStreakService {

    private final StudyStreakRepository studyStreakRepository;
    private final QuestionAnswerRepository questionAnswerRepository;
    private final StudyStreakMapper studyStreakMapper;

    public StudyStreakResponse getUserStreak(User user) {
        if (user == null) {
            return createEmptyStreakResponse();
        }

        StudyStreak streak = studyStreakRepository.findByUser(user)
                .orElseGet(() -> createNewStreak(user));

        return studyStreakMapper.toResponseDTO(streak);
    }

    @Transactional
    public void updateStreak(User user) {
        if (user == null) {
            return;
        }

        StudyStreak streak = studyStreakRepository.findByUser(user)
                .orElseGet(() -> createNewStreak(user));

        LocalDate today = LocalDate.now();
        LocalDate lastStudyDay = streak.getLastStudyDay();

        Long answersToday = questionAnswerRepository.countAnswersByUserAndDate(user, today);

        if (answersToday > 0) {
            if (lastStudyDay == null || lastStudyDay.isBefore(today)) {
                if (lastStudyDay != null && lastStudyDay.equals(today.minusDays(1))) {
                    streak.setConsecutiveDays(streak.getConsecutiveDays() + 1);
                } else if (lastStudyDay == null || lastStudyDay.isBefore(today.minusDays(1))) {
                    streak.setConsecutiveDays(1);
                }

                streak.setLastStudyDay(today);

                if (streak.getConsecutiveDays() > streak.getLongestStreak()) {
                    streak.setLongestStreak(streak.getConsecutiveDays());
                }

                studyStreakRepository.save(streak);
            }
        } else {
            if (lastStudyDay != null && lastStudyDay.isBefore(today.minusDays(1))) {
                streak.setConsecutiveDays(0);
                studyStreakRepository.save(streak);
            }
        }
    }

    @Transactional
    public void resetStreak(User user) {
        if (user == null) {
            return;
        }

        StudyStreak streak = studyStreakRepository.findByUser(user)
                .orElseGet(() -> createNewStreak(user));

        streak.setConsecutiveDays(0);
        streak.setLastStudyDay(null);

        studyStreakRepository.save(streak);
    }

    private StudyStreak createNewStreak(User user) {
        StudyStreak streak = new StudyStreak();
        streak.setUser(user);
        streak.setConsecutiveDays(0);
        streak.setLongestStreak(0);
        return studyStreakRepository.save(streak);
    }

    private StudyStreakResponse createEmptyStreakResponse() {
        StudyStreakResponse response = new StudyStreakResponse();
        response.setId(0L);
        response.setConsecutiveDays(0);
        response.setLongestStreak(0);
        response.setLastStudyDay(null);
        response.setCreatedAt(null);
        response.setUpdatedAt(null);
        return response;
    }
}