package hw.git.com.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class boardDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
}
