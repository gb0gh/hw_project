package hw.git.com.vo;

public class ReportVo {
	private int board_num;//게시글 번호
	private String id;//아이디
	private int report;//신고횟수
	
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
	public int getReport() {
		return report;
	}
	public void setReport(int report) {
		this.report = report;
	}

}
