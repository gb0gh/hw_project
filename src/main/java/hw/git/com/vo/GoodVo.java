package hw.git.com.vo;

import java.util.Date;

public class GoodVo {
	private int board_num;//게시글 번호
	private String id;//아이디
	private int good;//조와요
	
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getGood() {
		return good;
	}
	public void setGood(int good) {
		this.good = good;
	}
}
