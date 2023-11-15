package com.kh.ttp.productFile.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class ProductFile {
	private int pdtFileNo;
	private int pdtNo;
	private int pdtFileIndex;
	private String pdtFilePath;
	private String pdtFileOrigin;
	private String pdtFileUpload;

}
