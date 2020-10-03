package com.biz.iolist.service;

import java.util.List;

import com.biz.iolist.model.IoVO;

public interface GenericService<VO, PK> {

	public List<IoVO> selectAll();
	public IoVO findBySeq(long seq);
	public int insert(IoVO vo);
	public int update(IoVO vo);
	public int delete(long seq);
}
