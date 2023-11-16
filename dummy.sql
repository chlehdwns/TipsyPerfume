INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    SEQ_PRODUCT_CATEGORY.NEXTVAL,
    'A',
    'C',
    '홍길동',
    '맥주'
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    SEQ_PRODUCT_CATEGORY.NEXTVAL,
    'A',
    'C',
    '이길동',
    '사케'
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    SEQ_PRODUCT_CATEGORY.NEXTVAL,
    'A',
    'C',
    '김길동',
    '소주'
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    SEQ_PRODUCT_CATEGORY.NEXTVAL,
    'A',
    'C',
    '최동준',
    '맥주'
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    SEQ_PRODUCT_CATEGORY.NEXTVAL,
    'A',
    'C',
    'james',
    '와인'
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    SEQ_PRODUCT_CATEGORY.NEXTVAL,
    'A',
    'C',
    '고길동',
    '소주'
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    SEQ_PRODUCT_CATEGORY.NEXTVAL,
    'A',
    'C',
    '박길동',
    '맥주'
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    SEQ_PRODUCT_CATEGORY.NEXTVAL,
    'A',
    'C',
    'JIMI',
    '막걸리'
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    SEQ_PRODUCT_CATEGORY.NEXTVAL,
    'A',
    'C',
    '홍길순',
    '사케'
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    SEQ_PRODUCT_CATEGORY.NEXTVAL,
    'A',
    'C',
    '복순',
    '복분자주'
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    SEQ_PRODUCT_CATEGORY.NEXTVAL,
    'F',
    'C',
    'TOM',
    '오드 뚜왈렛'
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    SEQ_PRODUCT_CATEGORY.NEXTVAL,
    'F',
    'C',
    'BOB',
    '오드 퍼퓸'
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    SEQ_PRODUCT_CATEGORY.NEXTVAL,
    'F',
    'C',
    '남길동',
    '오드 빠르펭'
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    SEQ_PRODUCT_CATEGORY.NEXTVAL,
    'F',
    'C',
    '남길순',
    '오드코롱'
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    SEQ_PRODUCT_CATEGORY.NEXTVAL,
    'F',
    'C',
    '이길순',
    '샤워 코롱'
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    SEQ_PRODUCT_CATEGORY.NEXTVAL,
    'F',
    'C',
    'JACK',
    '오드 뚜왈렛'
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    SEQ_PRODUCT_CATEGORY.NEXTVAL,
    'F',
    'C',
    '장길동',
    '오드코롱'
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    SEQ_PRODUCT_CATEGORY.NEXTVAL,
    'F',
    'C',
    'JUN',
    '샤워 코롱'
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    SEQ_PRODUCT_CATEGORY.NEXTVAL,
    'F',
    'C',
    'SAM',
    '오드 뚜왈렛'
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    SEQ_PRODUCT_CATEGORY.NEXTVAL,
    'F',
    'C',
    '최동준',
    '오드 퍼퓸'
);

INSERT INTO TB_PRODUCT(
    PDT_NO,
    PDT_CATEG_NO,
    PDT_NAME,
    PDT_PRICE,
    PDT_STOCK,
    PDT_INTRO,
    PDT_DESCRIPTION,
    PDT_INGREDIENT,
    PDT_SHIPPING,
    PDT_STATUS,
    PDT_GP_STATUS
) VALUES (
    SEQ_PRODUCT.nextval,
    1,
    'KH 맥주',
    4000,
    500,
    '목 넘김이 좋은 밀 향 맥주',
    '홍길동님이 만드신 깊고 찐한 밀 향 맥주 알코올 도수는 4.5도입니다',
    '밀,알코올..',
    '배송일은 펀딩 확정 이후 5일뒤 배송 예정입니다',
    'Y',
    'N'
);
INSERT INTO TB_PRODUCT_FILE(
    PDT_FILE_NO,
    PDT_NO,
    PDT_FILE_INDEX,
    PDT_FILE_PATH,
    PDT_FILE_ORIGIN,
    PDT_FILE_UPLOAD
) VALUES (
    SEQ_PRODUCT_FILE.NEXTVAL,
    SEQ_PRODUCT.CURRVAL,
    0,
    'resources/image/product/alcohol',
    'absolut_blue.png',
    'alcohol_1.png'
);

INSERT INTO TB_PRODUCT(
    PDT_NO,
    PDT_CATEG_NO,
    PDT_NAME,
    PDT_PRICE,
    PDT_STOCK,
    PDT_INTRO,
    PDT_DESCRIPTION,
    PDT_INGREDIENT,
    PDT_SHIPPING,
    PDT_STATUS,
    PDT_GP_STATUS
) VALUES (
    SEQ_PRODUCT.nextval,
    2,
    'KH 사케',
    15000,
    100,
    '깔끔하고 상큼한 사케',
    '10년 장인 이길동님이 만드신 깔끔한 맛 사케입니다.',
    '물,쌀,누룩',
    '배송일은 펀딩 확정 이후 3일뒤 배송 예정입니다',
    'Y',
    'N'
);
INSERT INTO TB_PRODUCT_FILE(
    PDT_FILE_NO,
    PDT_NO,
    PDT_FILE_INDEX,
    PDT_FILE_PATH,
    PDT_FILE_ORIGIN,
    PDT_FILE_UPLOAD
) VALUES (
    SEQ_PRODUCT_FILE.NEXTVAL,
    SEQ_PRODUCT.CURRVAL,
    0,
    'resources/image/product/alcohol',
    'absolut_blue.png',
    'alcohol_1.png'
);

INSERT INTO TB_PRODUCT(
    PDT_NO,
    PDT_CATEG_NO,
    PDT_NAME,
    PDT_PRICE,
    PDT_STOCK,
    PDT_INTRO,
    PDT_DESCRIPTION,
    PDT_INGREDIENT,
    PDT_SHIPPING,
    PDT_STATUS,
    PDT_GP_STATUS
) VALUES (
    SEQ_PRODUCT.nextval,
    3,
    'KH 소주',
    3000,
    1000,
    '깔끔하고 삼겹살과 매우 잘 어울리는 소주 향',
    '알코올 도수는 23도이며 모든 음식과 잘 어울리지만 특히 삼겹살과 잘 어울리는 소주입니다.',
    '물,알코올,보리',
    '배송일은 펀딩 확정 이후 3일뒤 배송 예정입니다',
    'Y',
    'N'
);
INSERT INTO TB_PRODUCT_FILE(
    PDT_FILE_NO,
    PDT_NO,
    PDT_FILE_INDEX,
    PDT_FILE_PATH,
    PDT_FILE_ORIGIN,
    PDT_FILE_UPLOAD
) VALUES (
    SEQ_PRODUCT_FILE.NEXTVAL,
    SEQ_PRODUCT.CURRVAL,
    0,
    'resources/image/product/alcohol',
    'absolut_blue.png',
    'alcohol_1.png'
);

INSERT INTO TB_PRODUCT(
    PDT_NO,
    PDT_CATEG_NO,
    PDT_NAME,
    PDT_PRICE,
    PDT_STOCK,
    PDT_INTRO,
    PDT_DESCRIPTION,
    PDT_INGREDIENT,
    PDT_SHIPPING,
    PDT_STATUS,
    PDT_GP_STATUS
) VALUES (
    SEQ_PRODUCT.nextval,
    4,
    '구로 맥주',
    4200,
    255,
    '구로 전통 맥주',
    '알코올 도수는 5도입니다',
    '맥아, 물 ',
    '배송일은 펀딩 확정 이후 8일뒤 배송 예정입니다',
    'Y',
    'N'
);
INSERT INTO TB_PRODUCT_FILE(
    PDT_FILE_NO,
    PDT_NO,
    PDT_FILE_INDEX,
    PDT_FILE_PATH,
    PDT_FILE_ORIGIN,
    PDT_FILE_UPLOAD
) VALUES (
    SEQ_PRODUCT_FILE.NEXTVAL,
    SEQ_PRODUCT.CURRVAL,
    0,
    'resources/image/product/alcohol',
    'absolut_blue.png',
    'alcohol_1.png'
);

INSERT INTO TB_PRODUCT(
    PDT_NO,
    PDT_CATEG_NO,
    PDT_NAME,
    PDT_PRICE,
    PDT_STOCK,
    PDT_INTRO,
    PDT_DESCRIPTION,
    PDT_INGREDIENT,
    PDT_SHIPPING,
    PDT_STATUS,
    PDT_GP_STATUS
) VALUES (
    SEQ_PRODUCT.nextval,
    5,
    'KH 와인',
    30000,
    50,
    '레드 와인',
    '이탈리아에서 유명한 JAMES씨가 만든 수제 맥주입니다.알코올 도수는 9도이며 치즈와 잘 어울립니다.',
    '포도',
    '배송일은 펀딩 확정 이후 15일뒤 배송 예정입니다',
    'Y',
    'N'
);
INSERT INTO TB_PRODUCT_FILE(
    PDT_FILE_NO,
    PDT_NO,
    PDT_FILE_INDEX,
    PDT_FILE_PATH,
    PDT_FILE_ORIGIN,
    PDT_FILE_UPLOAD
) VALUES (
    SEQ_PRODUCT_FILE.NEXTVAL,
    SEQ_PRODUCT.CURRVAL,
    0,
    'resources/image/product/alcohol',
    'absolut_blue.png',
    'alcohol_1.png'
);

INSERT INTO TB_PRODUCT(
    PDT_NO,
    PDT_CATEG_NO,
    PDT_NAME,
    PDT_PRICE,
    PDT_STOCK,
    PDT_INTRO,
    PDT_DESCRIPTION,
    PDT_INGREDIENT,
    PDT_SHIPPING,
    PDT_STATUS,
    PDT_GP_STATUS
) VALUES (
    SEQ_PRODUCT.nextval,
    6,
    '맛소',
    5000,
    200,
    '목이 타들어가는듯한 짜릿함 ',
    '고길동님이 만드신 깊고 찐한 소주! 알코올 도수는 25도입니다',
    '물,알코올',
    '배송일은 펀딩 확정 이후 5일뒤 배송 예정입니다',
    'Y',
    'N'
);
INSERT INTO TB_PRODUCT_FILE(
    PDT_FILE_NO,
    PDT_NO,
    PDT_FILE_INDEX,
    PDT_FILE_PATH,
    PDT_FILE_ORIGIN,
    PDT_FILE_UPLOAD
) VALUES (
    SEQ_PRODUCT_FILE.NEXTVAL,
    SEQ_PRODUCT.CURRVAL,
    0,
    'resources/image/product/alcohol',
    'absolut_blue.png',
    'alcohol_1.png'
);

INSERT INTO TB_PRODUCT(
    PDT_NO,
    PDT_CATEG_NO,
    PDT_NAME,
    PDT_PRICE,
    PDT_STOCK,
    PDT_INTRO,
    PDT_DESCRIPTION,
    PDT_INGREDIENT,
    PDT_SHIPPING,
    PDT_STATUS,
    PDT_GP_STATUS
) VALUES (
    SEQ_PRODUCT.nextval,
    7,
    '달빛 맥주',
    6000,
    300,
    '찐하고 맛있는 맥주!',
    '알코올 도수는 5도입니다. 엄청 시원합니다.',
    '맥아',
    '배송일은 펀딩 확정 이후 5일뒤 배송 예정입니다',
    'Y',
    'N'
);
INSERT INTO TB_PRODUCT_FILE(
    PDT_FILE_NO,
    PDT_NO,
    PDT_FILE_INDEX,
    PDT_FILE_PATH,
    PDT_FILE_ORIGIN,
    PDT_FILE_UPLOAD
) VALUES (
    SEQ_PRODUCT_FILE.NEXTVAL,
    SEQ_PRODUCT.CURRVAL,
    0,
    'resources/image/product/alcohol',
    'absolut_blue.png',
    'alcohol_1.png'
);

INSERT INTO TB_PRODUCT(
    PDT_NO,
    PDT_CATEG_NO,
    PDT_NAME,
    PDT_PRICE,
    PDT_STOCK,
    PDT_INTRO,
    PDT_DESCRIPTION,
    PDT_INGREDIENT,
    PDT_SHIPPING,
    PDT_STATUS,
    PDT_GP_STATUS
) VALUES (
    SEQ_PRODUCT.nextval,
    8,
    '막걸리나',
    3000,
    50,
    '외국인이 만든 한국 전통 막걸리',
    'JIMI씨가 한국에와서 막걸리를 먹고 감명받아 만든 JIMI씨만의 특별한 막걸리',
    '쌀,알코올,물',
    '배송일은 펀딩 확정 이후 10일뒤 배송 예정입니다',
    'Y',
    'N'
);
INSERT INTO TB_PRODUCT_FILE(
    PDT_FILE_NO,
    PDT_NO,
    PDT_FILE_INDEX,
    PDT_FILE_PATH,
    PDT_FILE_ORIGIN,
    PDT_FILE_UPLOAD
) VALUES (
    SEQ_PRODUCT_FILE.NEXTVAL,
    SEQ_PRODUCT.CURRVAL,
    0,
    'resources/image/product/alcohol',
    'absolut_blue.png',
    'alcohol_1.png'
);

INSERT INTO TB_PRODUCT(
    PDT_NO,
    PDT_CATEG_NO,
    PDT_NAME,
    PDT_PRICE,
    PDT_STOCK,
    PDT_INTRO,
    PDT_DESCRIPTION,
    PDT_INGREDIENT,
    PDT_SHIPPING,
    PDT_STATUS,
    PDT_GP_STATUS
) VALUES (
    SEQ_PRODUCT.nextval,
    9,
    '맛있는 사케',
    3000,
    20,
    '뒷맛이 묵직한 사케',
    '알코올 도수는 11도이며 조금 무겁지만 깊은맛에 사케입니다.',
    '누룩,물,알코올',
    '배송일은 펀딩 확정 이후 5일뒤 배송 예정입니다',
    'Y',
    'N'
);
INSERT INTO TB_PRODUCT_FILE(
    PDT_FILE_NO,
    PDT_NO,
    PDT_FILE_INDEX,
    PDT_FILE_PATH,
    PDT_FILE_ORIGIN,
    PDT_FILE_UPLOAD
) VALUES (
    SEQ_PRODUCT_FILE.NEXTVAL,
    SEQ_PRODUCT.CURRVAL,
    0,
    'resources/image/product/alcohol',
    'absolut_blue.png',
    'alcohol_1.png'
);

INSERT INTO TB_PRODUCT(
    PDT_NO,
    PDT_CATEG_NO,
    PDT_NAME,
    PDT_PRICE,
    PDT_STOCK,
    PDT_INTRO,
    PDT_DESCRIPTION,
    PDT_INGREDIENT,
    PDT_SHIPPING,
    PDT_STATUS,
    PDT_GP_STATUS
) VALUES (
    SEQ_PRODUCT.nextval,
    10,
    'KH 복분자',
    9000,
    80,
    '찐하고 상큼한 복분자주',
    '가족끼리 마시기 좋아요.복분자는 복순씨가 직접 재배한 복분자입니다.',
    '복분자,알코올..',
    '배송일은 펀딩 확정 이후 10일뒤 배송 예정입니다',
    'Y',
    'N'
);
INSERT INTO TB_PRODUCT_FILE(
    PDT_FILE_NO,
    PDT_NO,
    PDT_FILE_INDEX,
    PDT_FILE_PATH,
    PDT_FILE_ORIGIN,
    PDT_FILE_UPLOAD
) VALUES (
    SEQ_PRODUCT_FILE.NEXTVAL,
    SEQ_PRODUCT.CURRVAL,
    0,
    'resources/image/product/alcohol',
    'absolut_blue.png',
    'alcohol_1.png'
);

INSERT INTO TB_PRODUCT(
    PDT_NO,
    PDT_CATEG_NO,
    PDT_NAME,
    PDT_PRICE,
    PDT_STOCK,
    PDT_INTRO,
    PDT_DESCRIPTION,
    PDT_INGREDIENT,
    PDT_SHIPPING,
    PDT_STATUS,
    PDT_GP_STATUS
) VALUES (
    SEQ_PRODUCT.nextval,
    11,
    'KH 향수',
    70000,
    20,
    '오드 뚜왈렛',
    '향이 오래가고 상큼한 향의 향수',
    '코코넛 오일,증류수,천연 색소',
    '배송일은 펀딩 확정 이후 15일뒤 배송 예정입니다',
    'Y',
    'N'
);
INSERT INTO TB_PRODUCT_FILE(
    PDT_FILE_NO,
    PDT_NO,
    PDT_FILE_INDEX,
    PDT_FILE_PATH,
    PDT_FILE_ORIGIN,
    PDT_FILE_UPLOAD
) VALUES (
    SEQ_PRODUCT_FILE.NEXTVAL,
    SEQ_PRODUCT.CURRVAL,
    0,
    'resources/image/product/perfume',
    'yvessaint.jpg',
    'perfume_1.jpg'
);

INSERT INTO TB_PRODUCT(
    PDT_NO,
    PDT_CATEG_NO,
    PDT_NAME,
    PDT_PRICE,
    PDT_STOCK,
    PDT_INTRO,
    PDT_DESCRIPTION,
    PDT_INGREDIENT,
    PDT_SHIPPING,
    PDT_STATUS,
    PDT_GP_STATUS
) VALUES (
    SEQ_PRODUCT.nextval,
    12,
    'GOOD PERFUME',
    40000,
    25,
    '오드 퍼퓸',
    '향이 찐하며 우드 향 향수입니다.',
    '호호바 오일',
    '배송일은 펀딩 확정 이후 12일뒤 배송 예정입니다',
    'Y',
    'N'
);
INSERT INTO TB_PRODUCT_FILE(
    PDT_FILE_NO,
    PDT_NO,
    PDT_FILE_INDEX,
    PDT_FILE_PATH,
    PDT_FILE_ORIGIN,
    PDT_FILE_UPLOAD
) VALUES (
    SEQ_PRODUCT_FILE.NEXTVAL,
    SEQ_PRODUCT.CURRVAL,
    0,
    'resources/image/product/perfume',
    'yvessaint.jpg',
    'perfume_1.jpg'
);

INSERT INTO TB_PRODUCT(
    PDT_NO,
    PDT_CATEG_NO,
    PDT_NAME,
    PDT_PRICE,
    PDT_STOCK,
    PDT_INTRO,
    PDT_DESCRIPTION,
    PDT_INGREDIENT,
    PDT_SHIPPING,
    PDT_STATUS,
    PDT_GP_STATUS
) VALUES (
    SEQ_PRODUCT.nextval,
    13,
    'ORANGE PERFUME',
    35000,
    30,
    '오드 빠르펭',
    '지속시간 대략 4시간이며 오렌지향 향수입니다. 상큼한 옷에 잘 어울리는 무거운 향입니다.',
    '감귤 오일',
    '배송일은 펀딩 확정 이후 7일뒤 배송 예정입니다',
    'Y',
    'N'
);
INSERT INTO TB_PRODUCT_FILE(
    PDT_FILE_NO,
    PDT_NO,
    PDT_FILE_INDEX,
    PDT_FILE_PATH,
    PDT_FILE_ORIGIN,
    PDT_FILE_UPLOAD
) VALUES (
    SEQ_PRODUCT_FILE.NEXTVAL,
    SEQ_PRODUCT.CURRVAL,
    0,
    'resources/image/product/perfume',
    'yvessaint.jpg',
    'perfume_1.jpg'
);

INSERT INTO TB_PRODUCT(
    PDT_NO,
    PDT_CATEG_NO,
    PDT_NAME,
    PDT_PRICE,
    PDT_STOCK,
    PDT_INTRO,
    PDT_DESCRIPTION,
    PDT_INGREDIENT,
    PDT_SHIPPING,
    PDT_STATUS,
    PDT_GP_STATUS
) VALUES (
    SEQ_PRODUCT.nextval,
    14,
    'HAHA PERFUME',
    90000,
    10,
    '오드코롱',
    '향이 무거우며 지속시간은 대략 2시간 정도입니다.정장이나 어두운 색의 코디와 잘 어울립니다.',
    '천연 색소,호호바 오일',
    '배송일은 펀딩 확정 이후 12일뒤 배송 예정입니다',
    'Y',
    'N'
);
INSERT INTO TB_PRODUCT_FILE(
    PDT_FILE_NO,
    PDT_NO,
    PDT_FILE_INDEX,
    PDT_FILE_PATH,
    PDT_FILE_ORIGIN,
    PDT_FILE_UPLOAD
) VALUES (
    SEQ_PRODUCT_FILE.NEXTVAL,
    SEQ_PRODUCT.CURRVAL,
    0,
    'resources/image/product/perfume',
    'yvessaint.jpg',
    'perfume_1.jpg'
);

INSERT INTO TB_PRODUCT(
    PDT_NO,
    PDT_CATEG_NO,
    PDT_NAME,
    PDT_PRICE,
    PDT_STOCK,
    PDT_INTRO,
    PDT_DESCRIPTION,
    PDT_INGREDIENT,
    PDT_SHIPPING,
    PDT_STATUS,
    PDT_GP_STATUS
) VALUES (
    SEQ_PRODUCT.nextval,
    15,
    'LIGHT PERFUME',
    2500,
    100,
    '샤워 코롱 ',
    '매우 가벼운 향이며 지속시간은 10시간입니다.',
    '코코넛 오일, 알코올',
    '배송일은 펀딩 확정 이후 10일뒤 배송 예정입니다',
    'Y',
    'N'
);
INSERT INTO TB_PRODUCT_FILE(
    PDT_FILE_NO,
    PDT_NO,
    PDT_FILE_INDEX,
    PDT_FILE_PATH,
    PDT_FILE_ORIGIN,
    PDT_FILE_UPLOAD
) VALUES (
    SEQ_PRODUCT_FILE.NEXTVAL,
    SEQ_PRODUCT.CURRVAL,
    0,
    'resources/image/product/perfume',
    'yvessaint.jpg',
    'perfume_1.jpg'
);

INSERT INTO TB_PRODUCT(
    PDT_NO,
    PDT_CATEG_NO,
    PDT_NAME,
    PDT_PRICE,
    PDT_STOCK,
    PDT_INTRO,
    PDT_DESCRIPTION,
    PDT_INGREDIENT,
    PDT_SHIPPING,
    PDT_STATUS,
    PDT_GP_STATUS
) VALUES (
    SEQ_PRODUCT.nextval,
    16,
    'TSP PERFUME',
    40000,
    30,
    '오드 뚜왈렛',
    '',
    '호호바 오일',
    '배송일은 펀딩 확정 이후 12일뒤 배송 예정입니다',
    'Y',
    'N'
);
INSERT INTO TB_PRODUCT_FILE(
    PDT_FILE_NO,
    PDT_NO,
    PDT_FILE_INDEX,
    PDT_FILE_PATH,
    PDT_FILE_ORIGIN,
    PDT_FILE_UPLOAD
) VALUES (
    SEQ_PRODUCT_FILE.NEXTVAL,
    SEQ_PRODUCT.CURRVAL,
    0,
    'resources/image/product/perfume',
    'yvessaint.jpg',
    'perfume_1.jpg'
);

INSERT INTO TB_PRODUCT(
    PDT_NO,
    PDT_CATEG_NO,
    PDT_NAME,
    PDT_PRICE,
    PDT_STOCK,
    PDT_INTRO,
    PDT_DESCRIPTION,
    PDT_INGREDIENT,
    PDT_SHIPPING,
    PDT_STATUS,
    PDT_GP_STATUS
) VALUES (
    SEQ_PRODUCT.nextval,
    17,
    'HOHO PERFUME',
    75000,
    30,
    '오드코롱',
    '상큼한 복숭아향 데일리 향수로 좋습니다.',
    '복숭아 향,코코넛 오일',
    '배송일은 펀딩 확정 이후 6일뒤 배송 예정입니다',
    'Y',
    'N'
);
INSERT INTO TB_PRODUCT_FILE(
    PDT_FILE_NO,
    PDT_NO,
    PDT_FILE_INDEX,
    PDT_FILE_PATH,
    PDT_FILE_ORIGIN,
    PDT_FILE_UPLOAD
) VALUES (
    SEQ_PRODUCT_FILE.NEXTVAL,
    SEQ_PRODUCT.CURRVAL,
    0,
    'resources/image/product/perfume',
    'yvessaint.jpg',
    'perfume_1.jpg'
);

INSERT INTO TB_PRODUCT(
    PDT_NO,
    PDT_CATEG_NO,
    PDT_NAME,
    PDT_PRICE,
    PDT_STOCK,
    PDT_INTRO,
    PDT_DESCRIPTION,
    PDT_INGREDIENT,
    PDT_SHIPPING,
    PDT_STATUS,
    PDT_GP_STATUS
) VALUES (
    SEQ_PRODUCT.nextval,
    18,
    'WOW PERFUME',
    55000,
    25,
    '샤워 코롱',
    '코튼 향 상긋하며 지속시간이 깁니다.',
    '호호바 오일,코튼향',
    '배송일은 펀딩 확정 이후 8일뒤 배송 예정입니다',
    'Y',
    'N'
);
INSERT INTO TB_PRODUCT_FILE(
    PDT_FILE_NO,
    PDT_NO,
    PDT_FILE_INDEX,
    PDT_FILE_PATH,
    PDT_FILE_ORIGIN,
    PDT_FILE_UPLOAD
) VALUES (
    SEQ_PRODUCT_FILE.NEXTVAL,
    SEQ_PRODUCT.CURRVAL,
    0,
    'resources/image/product/perfume',
    'yvessaint.jpg',
    'perfume_1.jpg'
);

INSERT INTO TB_PRODUCT(
    PDT_NO,
    PDT_CATEG_NO,
    PDT_NAME,
    PDT_PRICE,
    PDT_STOCK,
    PDT_INTRO,
    PDT_DESCRIPTION,
    PDT_INGREDIENT,
    PDT_SHIPPING,
    PDT_STATUS,
    PDT_GP_STATUS
) VALUES (
    SEQ_PRODUCT.nextval,
    19,
    '한국 향수',
    10000,
    100,
    '오드 뚜왈렛',
    '한국인들이라면 모두가 좋아할 향 . 우드 향.',
    '코코넛 오일, 증류수',
    '배송일은 펀딩 확정 이후 12일뒤 배송 예정입니다',
    'Y',
    'N'
);
INSERT INTO TB_PRODUCT_FILE(
    PDT_FILE_NO,
    PDT_NO,
    PDT_FILE_INDEX,
    PDT_FILE_PATH,
    PDT_FILE_ORIGIN,
    PDT_FILE_UPLOAD
) VALUES (
    SEQ_PRODUCT_FILE.NEXTVAL,
    SEQ_PRODUCT.CURRVAL,
    0,
    'resources/image/product/perfume',
    'yvessaint.jpg',
    'perfume_1.jpg'
);

INSERT INTO TB_PRODUCT(
    PDT_NO,
    PDT_CATEG_NO,
    PDT_NAME,
    PDT_PRICE,
    PDT_STOCK,
    PDT_INTRO,
    PDT_DESCRIPTION,
    PDT_INGREDIENT,
    PDT_SHIPPING,
    PDT_STATUS,
    PDT_GP_STATUS
) VALUES (
    SEQ_PRODUCT.nextval,
    20,
    'DDP PERFUME',
    25000,
    50,
    '오드 퍼퓸',
    '남성에게 잘 어울리는 무겁고 찐한 향',
    '호호바 오일,증류수',
    '배송일은 펀딩 확정 이후 10일뒤 배송 예정입니다',
    'Y',
    'N'
);
INSERT INTO TB_PRODUCT_FILE(
    PDT_FILE_NO,
    PDT_NO,
    PDT_FILE_INDEX,
    PDT_FILE_PATH,
    PDT_FILE_ORIGIN,
    PDT_FILE_UPLOAD
) VALUES (
    SEQ_PRODUCT_FILE.NEXTVAL,
    SEQ_PRODUCT.CURRVAL,
    0,
    'resources/image/product/perfume',
    'yvessaint.jpg',
    'perfume_1.jpg'
);

INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PRODUCT_OPTION.NEXTVAL,
    1,
    '500ML',
    '4.5EJ'
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PRODUCT_OPTION.NEXTVAL,
    2,
    '750ML',
    '8.5도'
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PRODUCT_OPTION.NEXTVAL,
    3,
    '600ML',
    '23도'
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PRODUCT_OPTION.NEXTVAL,
    4,
    '500ML',
    '5도'
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PRODUCT_OPTION.NEXTVAL,
    5,
    '750ML',
    '9도'
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PRODUCT_OPTION.NEXTVAL,
    6,
    '500ML',
    '25도'
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PRODUCT_OPTION.NEXTVAL,
    7,
    '500ML',
    '5도'
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PRODUCT_OPTION.NEXTVAL,
    8,
    '450ML',
    '12도'
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PRODUCT_OPTION.NEXTVAL,
    9,
    '750ML',
    '11도'
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PRODUCT_OPTION.NEXTVAL,
    10,
    '450ML',
    '15도'
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PRODUCT_OPTION.NEXTVAL,
    11,
    '250ML',
    ''
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PRODUCT_OPTION.NEXTVAL,
    12,
    '250ML',
    ''
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PRODUCT_OPTION.NEXTVAL,
    13,
    '350ML',
    ''
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PRODUCT_OPTION.NEXTVAL,
    14,
    '200ML',
    ''
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PRODUCT_OPTION.NEXTVAL,
    15,
    '300ML',
    ''
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PRODUCT_OPTION.NEXTVAL,
    16,
    '300ML',
    ''
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PRODUCT_OPTION.NEXTVAL,
    17,
    '250ML',
    ''
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PRODUCT_OPTION.NEXTVAL,
    18,
    '350ML',
    ''
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PRODUCT_OPTION.NEXTVAL,
    19,
    '250ML',
    ''
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PRODUCT_OPTION.NEXTVAL,
    20,
    '200ML',
    ''
);
COMMIT;

INSERT INTO TB_USER(
    USER_NO,
    USER_EMAIL,
    NICKNAME,
    USER_PWD,
    USER_NAME,
    STATUS,
    MEMBER_TYPE,
    BUSINESS_REG,
    ADULT_STATUS,
    BIRTH_DATE
) VALUES (
    SEQ_USER.NEXTVAL,
    'admin@admin.com',
    '관리자',
    '1234',
    '관리자',  
    'Y',
    'A',
    'Y' ,
    'Y',
    '20231114'
);
INSERT INTO
TB_RECEIVER(
    RECEIVER_NO,
    USER_NO,
    RECEIVER_NAME,
    PHONE,
    ADDRESS,
    ADDRESS_DETAIL,
    POSTAL_CODE,
    PLACE_ALIAS,
    PRIMARY_STATUS
) VALUES (
    SEQ_RECEIVER.NEXTVAL,
    SEQ_USER.CURRVAL,
    '관리자',
    '010-1111-2222',
    '서울특별시 중구 남대문로 120 그레이츠 청계(구 대일빌딩) ',  
    '2F, 3F',
    '00000',
    '학원' ,
    'Y'
);

INSERT INTO TB_USER(
    USER_NO,
    USER_EMAIL,
    NICKNAME,
    USER_PWD,
    USER_NAME,
    STATUS,
    MEMBER_TYPE,
    BUSINESS_REG,
    ADULT_STATUS,
    BIRTH_DATE
) VALUES (
    SEQ_USER.NEXTVAL,
    'sales@sales.com',
    '판매자',
    '1234',
    '판매자',  
    'Y',
    'S',
    'Y' ,
    'Y',
    '20231114'
);

COMMIT;

INSERT INTO TB_REVIEW(REVIEW_NO,USER_NO,REVIEW_SCORE,REVIEW_CONTENT,PDT_NO
) VALUES (
    SEQ_REVIEW.NEXTVAL,
    1,
    5,
    '추석전주에 한 주문이라 연휴 중간에 껴서 배송이 너무 늦어질까 조마조마했습니다 다행히 딱10일 걸리고 잘 받았네요.',
    4
);
INSERT INTO TB_REVIEW_FILE(REVIEW_FILE_NO,REVIEW_FILE_ORIGIN,REVIEW_FILE_UPLOAD,REVIEW_FILE_PATH,REVIEW_FILE_INDEX,REVIEW_NO
) VALUES (SEQ_REVIEW_FILE.NEXTVAL,'pic1.png','review_1.png','resources/image/community/review',0,SEQ_REVIEW.CURRVAL);
INSERT INTO TB_REVIEW_FILE(REVIEW_FILE_NO,REVIEW_FILE_ORIGIN,REVIEW_FILE_UPLOAD,REVIEW_FILE_PATH,REVIEW_FILE_INDEX,REVIEW_NO
) VALUES (SEQ_REVIEW_FILE.NEXTVAL,'pic2.jpg','review_2.jpg','resources/image/community/review',1,SEQ_REVIEW.CURRVAL);
INSERT INTO TB_REVIEW_FILE(REVIEW_FILE_NO,REVIEW_FILE_ORIGIN,REVIEW_FILE_UPLOAD,REVIEW_FILE_PATH,REVIEW_FILE_INDEX,REVIEW_NO
) VALUES (SEQ_REVIEW_FILE.NEXTVAL,'pic3.jpg','review_3.jpg','resources/image/community/review',2,SEQ_REVIEW.CURRVAL);

INSERT INTO TB_REVIEW(REVIEW_NO,USER_NO,REVIEW_SCORE,REVIEW_CONTENT,PDT_NO
) VALUES (
    SEQ_REVIEW.NEXTVAL,
    1,
    5,
    '술과 타바코 그리고 바닐라의 환상적인 조합.
반지하 오래된 고목 가구로 된 테이블바에서
Harry James 재즈뮤지션과 맥컬린 한 잔 하는
분위기의 향인 것 같아요!!',
    4
);
INSERT INTO TB_REVIEW_FILE(REVIEW_FILE_NO,REVIEW_FILE_ORIGIN,REVIEW_FILE_UPLOAD,REVIEW_FILE_PATH,REVIEW_FILE_INDEX,REVIEW_NO
) VALUES (SEQ_REVIEW_FILE.NEXTVAL,'pic2.jpg','review_2.jpg','resources/image/community/review',0,SEQ_REVIEW.CURRVAL);
INSERT INTO TB_REVIEW_FILE(REVIEW_FILE_NO,REVIEW_FILE_ORIGIN,REVIEW_FILE_UPLOAD,REVIEW_FILE_PATH,REVIEW_FILE_INDEX,REVIEW_NO
) VALUES (SEQ_REVIEW_FILE.NEXTVAL,'pic1.png','review_1.png','resources/image/community/review',1,SEQ_REVIEW.CURRVAL);
INSERT INTO TB_REVIEW_FILE(REVIEW_FILE_NO,REVIEW_FILE_ORIGIN,REVIEW_FILE_UPLOAD,REVIEW_FILE_PATH,REVIEW_FILE_INDEX,REVIEW_NO
) VALUES (SEQ_REVIEW_FILE.NEXTVAL,'pic3.jpg','review_3.jpg','resources/image/community/review',2,SEQ_REVIEW.CURRVAL);

INSERT INTO TB_REVIEW(REVIEW_NO,USER_NO,REVIEW_SCORE,REVIEW_CONTENT,PDT_NO
) VALUES (
    SEQ_REVIEW.NEXTVAL,
    1,
    5,
    '잘 받았습니다 ㅎㅎ 벌써 4번째인지 5번째 구매네요.',
    4
);
INSERT INTO TB_REVIEW_FILE(REVIEW_FILE_NO,REVIEW_FILE_ORIGIN,REVIEW_FILE_UPLOAD,REVIEW_FILE_PATH,REVIEW_FILE_INDEX,REVIEW_NO
) VALUES (SEQ_REVIEW_FILE.NEXTVAL,'pic3.jpg','review_3.jpg','resources/image/community/review',0,SEQ_REVIEW.CURRVAL);
INSERT INTO TB_REVIEW_FILE(REVIEW_FILE_NO,REVIEW_FILE_ORIGIN,REVIEW_FILE_UPLOAD,REVIEW_FILE_PATH,REVIEW_FILE_INDEX,REVIEW_NO
) VALUES (SEQ_REVIEW_FILE.NEXTVAL,'pic2.jpg','review_2.jpg','resources/image/community/review',1,SEQ_REVIEW.CURRVAL);
INSERT INTO TB_REVIEW_FILE(REVIEW_FILE_NO,REVIEW_FILE_ORIGIN,REVIEW_FILE_UPLOAD,REVIEW_FILE_PATH,REVIEW_FILE_INDEX,REVIEW_NO
) VALUES (SEQ_REVIEW_FILE.NEXTVAL,'pic1.png','review_1.png','resources/image/community/review',2,SEQ_REVIEW.CURRVAL);

COMMIT;