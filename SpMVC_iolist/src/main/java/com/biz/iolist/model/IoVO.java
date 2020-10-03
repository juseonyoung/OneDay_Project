package com.biz.iolist.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Builder
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
public class IoVO {

	
	private long seq; //number, pk
	
	private String io_date; //varchar2
	private String io_time; //varchar
	
	private boolean io_input; //char
	
	private String io_pname; //nvarchar, not null
	
	private int io_price; //number
	private int io_quan; //bumber
	private int io_total; //number
	
	private int output_sum;
	private int input_sum;
}
