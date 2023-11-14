INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    1,
    'A',
    'C',
    '홍길동',
    '맥주'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    2,
    'A',
    'C',
    '이길동',
    '사케'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    3,
    'A',
    'C',
    '김길동',
    '소주'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    4,
    'A',
    'C',
    '최동준',
    '맥주'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    5,
    'A',
    'C',
    'james',
    '와인'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    6,
    'A',
    'C',
    '고길동',
    '소주'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
     7,
    'A',
    'C',
    '박길동',
    '맥주'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    8,
    'A',
    'C',
    'JIMI',
    '막걸리'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    9,
    'A',
    'C',
    '홍길순',
    '사케'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    10,
    'A',
    'C',
    '복순',
    '복분자주'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    11,
    'F',
    'C',
    'TOM',
    '오드 뚜왈렛'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    12,
    'F',
    'C',
    'BOB',
    '오드 퍼퓸'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    13,
    'F',
    'C',
    '남길동',
    '오드 빠르펭'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    14,
    'F',
    'C',
    '남길순',
    '오드코롱'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    15,
    'F',
    'C',
    '이길순',
    '샤워 코롱'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    16,
    'F',
    'C',
    'JACK',
    '오드 뚜왈렛'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    17,
    'F',
    'C',
    '장길동',
    '오드코롱'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    18,
    'F',
    'C',
    'JUN',
    '샤워 코롱'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    19,
    'F',
    'C',
    'SAM',
    '오드 뚜왈렛'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    20,
    'F',
    'C',
    '최동준',
    '오드 퍼퓸'
    
);
CREATE SEQUENCE SEQ_PDT_CATEG_NO;
CREATE SEQUENCE SEQ_PDT_NO;
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    1,
    'KH 맥주',
    4000,
    500,
    SYSDATE,
    'Y',
    '목 넘김이 좋은 밀 향 맥주',
    '홍길동님이 만드신 깊고 찐한 밀 향 맥주 알코올 도수는 4.5도입니다',
    '밀,알코올..',
    '배송일은 펀딩 확정 이후 5일뒤 배송 예정입니다',
    0,
    'N'
);
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    2,
    'KH 사케',
    15000,
    100,
    SYSDATE,
    'Y',
    '깔끔하고 상큼한 사케',
    '10년 장인 이길동님이 만드신 깔끔한 맛 사케입니다.',
    '물,쌀,누룩',
    '배송일은 펀딩 확정 이후 3일뒤 배송 예정입니다',
    0,
    'N'
);
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    3,
    'KH 소주',
    3000,
    1000,
    SYSDATE,
    'Y',
    '깔끔하고 삼겹살과 매우 잘 어울리는 소주 향',
    '알코올 도수는 23도이며 모든 음식과 잘 어울리지만 특히 삼겹살과 잘 어울리는 소주입니다.',
    '물,알코올,보리',
    '배송일은 펀딩 확정 이후 3일뒤 배송 예정입니다',
    0,
    'N'
);
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    4,
    '구로 맥주',
    4200,
    255,
    SYSDATE,
    'Y',
    '구로 전통 맥주',
    '알코올 도수는 5도입니다',
    '맥아, 물 ',
    '배송일은 펀딩 확정 이후 8일뒤 배송 예정입니다',
    0,
    'N'
);
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    5,
    'KH 와인',
    30000,
    50,
    SYSDATE,
    'Y',
    '레드 와인',
    '이탈리아에서 유명한 JAMES씨가 만든 수제 맥주입니다.알코올 도수는 9도이며 치즈와 잘 어울립니다.',
    '포도',
    '배송일은 펀딩 확정 이후 15일뒤 배송 예정입니다',
    0,
    'N'
);
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    6,
    '맛소',
    5000,
    200,
    SYSDATE,
    'Y',
    '목이 타들어가는듯한 짜릿함 ',
    '고길동님이 만드신 깊고 찐한 소주! 알코올 도수는 25도입니다',
    '물,알코올',
    '배송일은 펀딩 확정 이후 5일뒤 배송 예정입니다',
    0,
    'N'
);
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    7,
    '달빛 맥주',
    6000,
    300,
    SYSDATE,
    'Y',
    '찐하고 맛있는 맥주!',
    '알코올 도수는 5도입니다. 엄청 시원합니다.',
    '맥아',
    '배송일은 펀딩 확정 이후 5일뒤 배송 예정입니다',
    0,
    'N'
);
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    8,
    '막걸리나',
    3000,
    50,
    SYSDATE,
    'Y',
    '외국인이 만든 한국 전통 막걸리',
    'JIMI씨가 한국에와서 막걸리를 먹고 감명받아 만든 JIMI씨만의 특별한 막걸리',
    '쌀,알코올,물',
    '배송일은 펀딩 확정 이후 10일뒤 배송 예정입니다',
    0,
    'N'
);
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    9,
    '맛있는 사케',
    3000,
    20,
    SYSDATE,
    'Y',
    '뒷맛이 묵직한 사케',
    '알코올 도수는 11도이며 조금 무겁지만 깊은맛에 사케입니다.',
    '누룩,물,알코올',
    '배송일은 펀딩 확정 이후 5일뒤 배송 예정입니다',
    0,
    'N'
);
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    10,
    'KH 복분자',
    9000,
    80,
    SYSDATE,
    'Y',
    '찐하고 상큼한 복분자주',
    '가족끼리 마시기 좋아요.복분자는 복순씨가 직접 재배한 복분자입니다.',
    '복분자,알코올..',
    '배송일은 펀딩 확정 이후 10일뒤 배송 예정입니다',
    0,
    'N'
);
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    11,
    'KH 향수',
    70000,
    20,
    SYSDATE,
    'Y',
    '오드 뚜왈렛',
    '향이 오래가고 상큼한 향의 향수',
    '코코넛 오일,증류수,천연 색소',
    '배송일은 펀딩 확정 이후 15일뒤 배송 예정입니다',
    0,
    'N'
);
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    12,
    'GOOD PERFUME',
    40000,
    25,
    SYSDATE,
    'Y',
    '오드 퍼퓸',
    '향이 찐하며 우드 향 향수입니다.',
    '호호바 오일',
    '배송일은 펀딩 확정 이후 12일뒤 배송 예정입니다',
    0,
    'N'
);
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    13,
    'ORANGE PERFUME',
    35000,
    30,
    SYSDATE,
    'Y',
    '오드 빠르펭',
    '지속시간 대략 4시간이며 오렌지향 향수입니다. 상큼한 옷에 잘 어울리는 무거운 향입니다.',
    '감귤 오일',
    '배송일은 펀딩 확정 이후 7일뒤 배송 예정입니다',
    0,
    'N'
);
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    14,
    'HAHA PERFUME',
    90000,
    10,
    SYSDATE,
    'Y',
    '오드코롱',
    '향이 무거우며 지속시간은 대략 2시간 정도입니다.정장이나 어두운 색의 코디와 잘 어울립니다.',
    '천연 색소,호호바 오일',
    '배송일은 펀딩 확정 이후 12일뒤 배송 예정입니다',
    0,
    'N'
);
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    15,
    'LIGHT PERFUME',
    2500,
    100,
    SYSDATE,
    'Y',
    '샤워 코롱 ',
    '매우 가벼운 향이며 지속시간은 10시간입니다.',
    '코코넛 오일, 알코올',
    '배송일은 펀딩 확정 이후 10일뒤 배송 예정입니다',
    0,
    'N'
);
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    16,
    'TSP PERFUME',
    40000,
    30,
    SYSDATE,
    'Y',
    '오드 뚜왈렛',
    '',
    '호호바 오일',
    '배송일은 펀딩 확정 이후 12일뒤 배송 예정입니다',
    0,
    'N'
);
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    17,
    'HOHO PERFUME',
    75000,
    30,
    SYSDATE,
    'Y',
    '오드코롱',
    '상큼한 복숭아향 데일리 향수로 좋습니다.',
    '복숭아 향,코코넛 오일',
    '배송일은 펀딩 확정 이후 6일뒤 배송 예정입니다',
    0,
    'N'
);
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    18,
    'WOW PERFUME',
    55000,
    25,
    SYSDATE,
    'Y',
    '샤워 코롱',
    '코튼 향 상긋하며 지속시간이 깁니다.',
    '호호바 오일,코튼향',
    '배송일은 펀딩 확정 이후 8일뒤 배송 예정입니다',
    0,
    'N'
);
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    19,
    '한국 향수',
    10000,
    100,
    SYSDATE,
    'Y',
    '오드 뚜왈렛',
    '한국인들이라면 모두가 좋아할 향 . 우드 향.',
    '코코넛 오일, 증류수',
    '배송일은 펀딩 확정 이후 12일뒤 배송 예정입니다',
    0,
    'N'
);
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    20,
    'DDP PERFUME',
    25000,
    50,
    SYSDATE,
    'Y',
    '오드 퍼퓸',
    '남성에게 잘 어울리는 무겁고 찐한 향',
    '호호바 오일,증류수',
    '배송일은 펀딩 확정 이후 10일뒤 배송 예정입니다',
    0,
    'N'
);
CREATE SEQUENCE SEQ_PDT_OPTION_NO;
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PDT_OPTION_NO.NEXTVAL,
    1,
    '500ML',
    '4.5EJ'
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PDT_OPTION_NO.NEXTVAL,
    2,
    '750ML',
    '8.5도'
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PDT_OPTION_NO.NEXTVAL,
    3,
    '600ML',
    '23도'
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PDT_OPTION_NO.NEXTVAL,
    4,
    '500ML',
    '5도'
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PDT_OPTION_NO.NEXTVAL,
    5,
    '750ML',
    '9도'
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PDT_OPTION_NO.NEXTVAL,
    6,
    '500ML',
    '25도'
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PDT_OPTION_NO.NEXTVAL,
    7,
    '500ML',
    '5도'
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PDT_OPTION_NO.NEXTVAL,
    8,
    '450ML',
    '12도'
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PDT_OPTION_NO.NEXTVAL,
    9,
    '750ML',
    '11도'
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PDT_OPTION_NO.NEXTVAL,
    10,
    '450ML',
    '15도'
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PDT_OPTION_NO.NEXTVAL,
    11,
    '250ML',
    ''
    
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PDT_OPTION_NO.NEXTVAL,
    12,
    '250ML',
    ''
    
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PDT_OPTION_NO.NEXTVAL,
    13,
    '350ML',
    ''
    
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PDT_OPTION_NO.NEXTVAL,
    14,
    '200ML',
    ''
    
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PDT_OPTION_NO.NEXTVAL,
    15,
    '300ML',
    ''
    
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PDT_OPTION_NO.NEXTVAL,
    16,
    '300ML',
    ''
    
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PDT_OPTION_NO.NEXTVAL,
    17,
    '250ML',
    ''
    
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PDT_OPTION_NO.NEXTVAL,
    18,
    '350ML',
    ''
    
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PDT_OPTION_NO.NEXTVAL,
    19,
    '250ML',
    ''
    
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PDT_OPTION_NO.NEXTVAL,
    20,
    '200ML',
    ''
    
);
COMMIT;