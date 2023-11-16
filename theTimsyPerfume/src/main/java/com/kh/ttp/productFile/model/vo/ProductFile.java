package com.kh.ttp.productFile.model.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ProductFile {
	private int pdtFileNo;
	private int pdtNo;
	private int pdtFileIndex;
	private String pdtFilePath;
	private String pdtFileOrigin;
	private String pdtFileUpload;

}
