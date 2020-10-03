package com.biz.iolist.mapper;

import java.util.List;

import com.biz.iolist.model.IoVO;

public interface IoDao {

	public List<IoVO> selectAll();
	public IoVO findBySeq(long seq);
	public int insert(IoVO vo);
	public int update(IoVO vo);
	public int delete(long seq);
	
	
}