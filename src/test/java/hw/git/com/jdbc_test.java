package hw.git.com;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import hw.git.com.vo.User_infoVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class jdbc_test {
	private static final Logger logger = LoggerFactory.getLogger(jdbc_test.class);
	
	@Autowired
	private SqlSessionTemplate sqlsession;
	
	@Test
	public void jdbc_test() {
		int a = sqlsession.selectOne("User.selectUser");
		
		logger.info("" + a);
	}
}
