package com.cslg.entity;

public class CardId {
    private String cardId;
    private String birthday;

    public CardId(String cardId) {
        this.cardId = cardId;
        this.birthday = cardId.substring(6,10)+"-"+cardId.substring(10,12)+"-"+cardId.substring(12,14);
    }

    public String getCardId() {
        return cardId;
    }

    public void setCardId(String cardId) {
        this.cardId = cardId;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }
}
