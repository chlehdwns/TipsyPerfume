package com.kh.ttp.community.board.model.vo;

import lombok.Data;

@Data
public class BoardVO {
	/*BOARD_NO
	USER_NO
	BOARD_TITLE
	BOARD_CONTENT
	BOARD_CREATE_DATE
	BOARD_MODIFY_DATE
	BOARD_CTGY_CODE
	BOARD_STATE
	BOARD_COUNT*/
	private int boardNo;
	private String boardTitle;
	private String boardContent;
	private String boardCreateDate;
	private String boardModifyDate;
	private String boardCtgyCode;
	private String boardState;
	private String count;
}
