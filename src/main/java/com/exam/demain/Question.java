package com.exam.demain;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;


/**
 * leve 难度
 * section 章节
 */
public class Question {
    private Integer id;
    private Integer type;
    private String title;
    private Map<String, String> choosees;
    private ArrayList<String> answer;
    private String answerstring;
    private int Score;
    private String leve;
    private String section;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getScore() {
        return Score;
    }

    public void setScore(int score) {
        Score = score;
    }

    public String getAnswerstring() {
        return answerstring;
    }

    public void setAnswerstring(String answerstring) {
        this.answerstring = answerstring;
    }

    public Map<String, String> getChoosees() {
        return choosees;
    }

    public void setChoosees(Map<String, String> choosees) {
        this.choosees = choosees;
    }

    public ArrayList<String> getAnswer() {
        return answer;
    }

    public void setAnswer(ArrayList<String> answer) {
        this.answer = answer;
    }

    public String getLeve() {
        return leve;
    }

    public void setLeve(String leve) {
        this.leve = leve;
    }

    public String getSection() {
        return section;
    }

    public void setSection(String section) {
        this.section = section;
    }


    @Override
    public String toString() {
        return "Question{" +
                "id=" + id +
                ", type=" + type +
                ", title='" + title + '\'' +
                ", choosees=" + choosees +
                ", answer=" + answer +
                ", answerstring='" + answerstring + '\'' +
                ", Score=" + Score +
                ", leve='" + leve + '\'' +
                ", section='" + section + '\'' +
                '}';
    }
}


