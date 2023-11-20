package com.kh.ttp.community.board.model.vo;

import lombok.Data;

@Data
public class BoardVO {
	private int boardNo;
	private String boardWriter;
	private String boardTitle;
	private String boardContent;
	private String boardCreateDate;
	private String boardModifyDate;
	private String boardCtgyCode;
	private String boardState;
	private String boardCount;
}
