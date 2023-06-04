package com.hyunseo.spotify.member.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor // 기본생성자
@AllArgsConstructor // 모든 필드를 매개변수로 갖는 생성자
@Setter // setter 메소드들
@Getter // getter 메소드들
@ToString // toString 메소드
public class Member {
    private int memberNo; //MEMBER_NO NUMBER PRIMARY KEY,
    private String memberId; //MEMBER_ID VARCHAR2(20) NOT NULL,
    private String memberPwd; //MEMBER_PWD VARCHAR2(100) NOT NULL,
    private String memberName; //MEMBER_NAME VARCHAR2(18) NOT NULL,
    private String email; //EMAIL VARCHAR2(40) NOT NULL,
    private String phone; //PHONE VARCHAR2(13) NOT NULL,
    private Date memberEnrollDate; //MEMBER_ENROLL_DATE DATE DEFAULT SYSDATE,
    private String memberStaus; //MEMBER_STATUS CHAR(1) DEFAULT 'Y',
    private String favoriteGenre; //FAVORITE_GENRE VARCHAR2(100),
    private String favoriteArtist; //FAVORITE_ARTIST VARCHAR2(100)
}
