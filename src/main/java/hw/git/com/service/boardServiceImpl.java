package hw.git.com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hw.git.com.dao.boardDAO;


@Service
public class boardServiceImpl implements boardService{
	@Autowired
	private boardDAO boardDao;

}
