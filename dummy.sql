INSERT INTO
    TB_USER(
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
            )
VALUES (
        SEQ_USER.NEXTVAL,
        'admin@admin.com',
        '������',
        '1234',
        '������',  
        'Y',
        'A',
        'Y' ,
        'Y',
        '20231114');


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
    )
VALUES (
    SEQ_RECEIVER.NEXTVAL,
    '3',
    '������',
    '010-1111-2222',
    '����Ư���� �߱� ���빮�� 120 �׷����� û��(�� ���Ϻ���) ',  
    '2F, 3F',
    '00000',
    '�п�' ,
    'Y'
    );






INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    1,
    'A',
    'C',
    'ȫ�浿',
    '����'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    2,
    'A',
    'C',
    '�̱浿',
    '����'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    3,
    'A',
    'C',
    '��浿',
    '����'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    4,
    'A',
    'C',
    '�ֵ���',
    '����'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    5,
    'A',
    'C',
    'james',
    '����'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    6,
    'A',
    'C',
    '��浿',
    '����'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
     7,
    'A',
    'C',
    '�ڱ浿',
    '����'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    8,
    'A',
    'C',
    'JIMI',
    '���ɸ�'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    9,
    'A',
    'C',
    'ȫ���',
    '����'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    10,
    'A',
    'C',
    '����',
    '��������'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    11,
    'F',
    'C',
    'TOM',
    '���� �ѿз�'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    12,
    'F',
    'C',
    'BOB',
    '���� ��Ǿ'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    13,
    'F',
    'C',
    '���浿',
    '���� ������'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    14,
    'F',
    'C',
    '�����',
    '�����ڷ�'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    15,
    'F',
    'C',
    '�̱��',
    '���� �ڷ�'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    16,
    'F',
    'C',
    'JACK',
    '���� �ѿз�'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    17,
    'F',
    'C',
    '��浿',
    '�����ڷ�'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    18,
    'F',
    'C',
    'JUN',
    '���� �ڷ�'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    19,
    'F',
    'C',
    'SAM',
    '���� �ѿз�'
    
);
INSERT INTO TB_PRODUCT_CATEGORY VALUES(
    20,
    'F',
    'C',
    '�ֵ���',
    '���� ��Ǿ'
    
);
CREATE SEQUENCE SEQ_PDT_CATEG_NO;
CREATE SEQUENCE SEQ_PDT_NO;
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    1,
    'KH ����',
    4000,
    500,
    SYSDATE,
    'Y',
    '�� �ѱ��� ���� �� �� ����',
    'ȫ�浿���� ����� ��� ���� �� �� ���� ���ڿ� ������ 4.5���Դϴ�',
    '��,���ڿ�..',
    '������� �ݵ� Ȯ�� ���� 5�ϵ� ��� �����Դϴ�',
    0,
    'N'
);
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    2,
    'KH ����',
    15000,
    100,
    SYSDATE,
    'Y',
    '����ϰ� ��ŭ�� ����',
    '10�� ���� �̱浿���� ����� ����� �� �����Դϴ�.',
    '��,��,����',
    '������� �ݵ� Ȯ�� ���� 3�ϵ� ��� �����Դϴ�',
    0,
    'N'
);
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    3,
    'KH ����',
    3000,
    1000,
    SYSDATE,
    'Y',
    '����ϰ� ����� �ſ� �� ��︮�� ���� ��',
    '���ڿ� ������ 23���̸� ��� ���İ� �� ��︮���� Ư�� ����� �� ��︮�� �����Դϴ�.',
    '��,���ڿ�,����',
    '������� �ݵ� Ȯ�� ���� 3�ϵ� ��� �����Դϴ�',
    0,
    'N'
);
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    4,
    '���� ����',
    4200,
    255,
    SYSDATE,
    'Y',
    '���� ���� ����',
    '���ڿ� ������ 5���Դϴ�',
    '�ƾ�, �� ',
    '������� �ݵ� Ȯ�� ���� 8�ϵ� ��� �����Դϴ�',
    0,
    'N'
);
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    5,
    'KH ����',
    30000,
    50,
    SYSDATE,
    'Y',
    '���� ����',
    '��Ż���ƿ��� ������ JAMES���� ���� ���� �����Դϴ�.���ڿ� ������ 9���̸� ġ��� �� ��︳�ϴ�.',
    '����',
    '������� �ݵ� Ȯ�� ���� 15�ϵ� ��� �����Դϴ�',
    0,
    'N'
);
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    6,
    '����',
    5000,
    200,
    SYSDATE,
    'Y',
    '���� Ÿ���µ��� ¥���� ',
    '��浿���� ����� ��� ���� ����! ���ڿ� ������ 25���Դϴ�',
    '��,���ڿ�',
    '������� �ݵ� Ȯ�� ���� 5�ϵ� ��� �����Դϴ�',
    0,
    'N'
);
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    7,
    '�޺� ����',
    6000,
    300,
    SYSDATE,
    'Y',
    '���ϰ� ���ִ� ����!',
    '���ڿ� ������ 5���Դϴ�. ��û �ÿ��մϴ�.',
    '�ƾ�',
    '������� �ݵ� Ȯ�� ���� 5�ϵ� ��� �����Դϴ�',
    0,
    'N'
);
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    8,
    '���ɸ���',
    3000,
    50,
    SYSDATE,
    'Y',
    '�ܱ����� ���� �ѱ� ���� ���ɸ�',
    'JIMI���� �ѱ����ͼ� ���ɸ��� �԰� ����޾� ���� JIMI������ Ư���� ���ɸ�',
    '��,���ڿ�,��',
    '������� �ݵ� Ȯ�� ���� 10�ϵ� ��� �����Դϴ�',
    0,
    'N'
);
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    9,
    '���ִ� ����',
    3000,
    20,
    SYSDATE,
    'Y',
    '�޸��� ������ ����',
    '���ڿ� ������ 11���̸� ���� �������� �������� �����Դϴ�.',
    '����,��,���ڿ�',
    '������� �ݵ� Ȯ�� ���� 5�ϵ� ��� �����Դϴ�',
    0,
    'N'
);
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    10,
    'KH ������',
    9000,
    80,
    SYSDATE,
    'Y',
    '���ϰ� ��ŭ�� ��������',
    '�������� ���ñ� ���ƿ�.�����ڴ� �������� ���� ����� �������Դϴ�.',
    '������,���ڿ�..',
    '������� �ݵ� Ȯ�� ���� 10�ϵ� ��� �����Դϴ�',
    0,
    'N'
);
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    11,
    'KH ���',
    70000,
    20,
    SYSDATE,
    'Y',
    '���� �ѿз�',
    '���� �������� ��ŭ�� ���� ���',
    '���ڳ� ����,������,õ�� ����',
    '������� �ݵ� Ȯ�� ���� 15�ϵ� ��� �����Դϴ�',
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
    '���� ��Ǿ',
    '���� ���ϸ� ��� �� ����Դϴ�.',
    'ȣȣ�� ����',
    '������� �ݵ� Ȯ�� ���� 12�ϵ� ��� �����Դϴ�',
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
    '���� ������',
    '���ӽð� �뷫 4�ð��̸� �������� ����Դϴ�. ��ŭ�� �ʿ� �� ��︮�� ���ſ� ���Դϴ�.',
    '���� ����',
    '������� �ݵ� Ȯ�� ���� 7�ϵ� ��� �����Դϴ�',
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
    '�����ڷ�',
    '���� ���ſ�� ���ӽð��� �뷫 2�ð� �����Դϴ�.�����̳� ��ο� ���� �ڵ�� �� ��︳�ϴ�.',
    'õ�� ����,ȣȣ�� ����',
    '������� �ݵ� Ȯ�� ���� 12�ϵ� ��� �����Դϴ�',
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
    '���� �ڷ� ',
    '�ſ� ������ ���̸� ���ӽð��� 10�ð��Դϴ�.',
    '���ڳ� ����, ���ڿ�',
    '������� �ݵ� Ȯ�� ���� 10�ϵ� ��� �����Դϴ�',
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
    '���� �ѿз�',
    '',
    'ȣȣ�� ����',
    '������� �ݵ� Ȯ�� ���� 12�ϵ� ��� �����Դϴ�',
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
    '�����ڷ�',
    '��ŭ�� �������� ���ϸ� ����� �����ϴ�.',
    '������ ��,���ڳ� ����',
    '������� �ݵ� Ȯ�� ���� 6�ϵ� ��� �����Դϴ�',
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
    '���� �ڷ�',
    '��ư �� ����ϸ� ���ӽð��� ��ϴ�.',
    'ȣȣ�� ����,��ư��',
    '������� �ݵ� Ȯ�� ���� 8�ϵ� ��� �����Դϴ�',
    0,
    'N'
);
INSERT INTO TB_PRODUCT VALUES(
    SEQ_PDT_NO.nextval,
    19,
    '�ѱ� ���',
    10000,
    100,
    SYSDATE,
    'Y',
    '���� �ѿз�',
    '�ѱ��ε��̶�� ��ΰ� ������ �� . ��� ��.',
    '���ڳ� ����, ������',
    '������� �ݵ� Ȯ�� ���� 12�ϵ� ��� �����Դϴ�',
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
    '���� ��Ǿ',
    '�������� �� ��︮�� ���̰� ���� ��',
    'ȣȣ�� ����,������',
    '������� �ݵ� Ȯ�� ���� 10�ϵ� ��� �����Դϴ�',
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
    '8.5��'
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PDT_OPTION_NO.NEXTVAL,
    3,
    '600ML',
    '23��'
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PDT_OPTION_NO.NEXTVAL,
    4,
    '500ML',
    '5��'
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PDT_OPTION_NO.NEXTVAL,
    5,
    '750ML',
    '9��'
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PDT_OPTION_NO.NEXTVAL,
    6,
    '500ML',
    '25��'
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PDT_OPTION_NO.NEXTVAL,
    7,
    '500ML',
    '5��'
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PDT_OPTION_NO.NEXTVAL,
    8,
    '450ML',
    '12��'
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PDT_OPTION_NO.NEXTVAL,
    9,
    '750ML',
    '11��'
);
INSERT INTO TB_PRODUCT_OPTION VALUES(
    SEQ_PDT_OPTION_NO.NEXTVAL,
    10,
    '450ML',
    '15��'
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