package br.com.fundatec.estudai.estudai.service;

import br.com.fundatec.estudai.estudai.dto.response.StudyStreakResponse;
import br.com.fundatec.estudai.estudai.entity.StudyStreak;
import br.com.fundatec.estudai.estudai.entity.User;
import br.com.fundatec.estudai.estudai.mapper.StudyStreakMapper;
import br.com.fundatec.estudai.estudai.repository.StudyStreakRepository;
import br.com.fundatec.estudai.estudai.repository.QuestionAnswerRepository;
import br.com.fundatec.estudai.estudai.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;

@Service
@RequiredArgsConstructor
public class StudyStreakService {

    private final StudyStreakRepository studyStreakRepository;
    private final QuestionAnswerRepository questionAnswerRepository;
    private final StudyStreakMapper studyStreakMapper;
    private final UserRepository userRepository;

    public StudyStreakResponse getUserStreak(User user) {
        if (user == null) {
            return createEmptyStreakResponse();
        }

        StudyStreak streak = studyStreakRepository.findByUser(user)
                .orElseGet(() -> createNewStreak(user));

        // Sincroniza streakDays do users com study_streaks
        if (user.getStreakDays() == null || !user.getStreakDays().equals(streak.getConsecutiveDays())) {
            updateUserStreakDays(user, streak.getConsecutiveDays());
        }

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

        // Se ainda não estudou hoje, atualiza o streak
        if (lastStudyDay == null || lastStudyDay.isBefore(today)) {
            if (lastStudyDay != null && lastStudyDay.equals(today.minusDays(1))) {
                // Estudou ontem, continua o streak
                streak.setConsecutiveDays(streak.getConsecutiveDays() + 1);
            } else {
                // Não estudou ontem ou é o primeiro dia, reseta ou inicia streak
                if (lastStudyDay != null && lastStudyDay.isBefore(today.minusDays(1))) {
                    // Perdeu o streak (não estudou ontem)
                    streak.setConsecutiveDays(1);
                } else {
                    // Primeiro dia de estudo
                    streak.setConsecutiveDays(1);
                }
            }

            streak.setLastStudyDay(today);

            if (streak.getConsecutiveDays() > streak.getLongestStreak()) {
                streak.setLongestStreak(streak.getConsecutiveDays());
            }

            studyStreakRepository.save(streak);
            
            // Update streakDays in users table
            updateUserStreakDays(user, streak.getConsecutiveDays());
        }
        // Se já estudou hoje, não faz nada (mantém o streak atual)
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
        
        // Update streakDays in users table
        updateUserStreakDays(user, 0);
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

    /**
     * Updates the streakDays field in the users table
     */
    private void updateUserStreakDays(User user, int streakDays) {
        user.setStreakDays(streakDays);
        userRepository.save(user);
    }
}