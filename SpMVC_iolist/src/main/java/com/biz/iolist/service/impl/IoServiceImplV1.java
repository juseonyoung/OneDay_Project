package com.biz.iolist.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.biz.iolist.mapper.IoDao;
import com.biz.iolist.model.IoVO;
import com.biz.iolist.service.IoService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@Qualifier("serviceV1")
public class IoServiceImplV1 implements IoService {
	
	@Autowired
	private IoDao ioDao;
	
	@Override
	public List<IoVO> selectAll() {
		
		List<IoVO> iolist = ioDao.selectAll();
		
		// dao 통해서 DB에 있는 데이터 IoVO (리스트타입)
		return iolist;
	}

	@Override
	public IoVO findBySeq(long seq) { //seq 대조하는 역할 delete, detail, update할때
	
		return ioDao.findBySeq(seq);  // seq가 있는 ioDao 가져와서 
	}

	@Override
	public int insert(IoVO vo) {
		
		int ret =ioDao.insert(vo);
		log.debug("실패", ret);
		return ret;
	}

	@Override
	public int update(IoVO vo) {
		int ret = ioDao.update(vo); //vo에 정보담아서
		return ret;
		
	}

	@Override
	public int delete(long seq) {
		int ret = ioDao.delete(seq);
		return ret;
	}

	
}
	
	
