package com.guksi.dto;

public class BoardDto {
	private int numrow;
	private int board_no;
	private String id;
	private String board_content;
	private String pass;
	private String board_name;
	private String board_file;
	private String board_date;
	private int board_count;


	@Override
	public String toString() {
		return "BoardDto [numrow=" + numrow + ", board_no=" + board_no + ", id=" + id + ", board_content="
				+ board_content + ", pass=" + pass + ", board_name=" + board_name + ", board_file=" + board_file
				+ ", board_date=" + board_date + ", board_count=" + board_count + "]";
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((board_content == null) ? 0 : board_content.hashCode());
		result = prime * result + board_count;
		result = prime * result + ((board_date == null) ? 0 : board_date.hashCode());
		result = prime * result + ((board_file == null) ? 0 : board_file.hashCode());
		result = prime * result + ((board_name == null) ? 0 : board_name.hashCode());
		result = prime * result + board_no;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + numrow;
		result = prime * result + ((pass == null) ? 0 : pass.hashCode());
		return result;
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		BoardDto other = (BoardDto) obj;
		if (board_content == null) {
			if (other.board_content != null)
				return false;
		} else if (!board_content.equals(other.board_content))
			return false;
		if (board_count != other.board_count)
			return false;
		if (board_date == null) {
			if (other.board_date != null)
				return false;
		} else if (!board_date.equals(other.board_date))
			return false;
		if (board_file == null) {
			if (other.board_file != null)
				return false;
		} else if (!board_file.equals(other.board_file))
			return false;
		if (board_name == null) {
			if (other.board_name != null)
				return false;
		} else if (!board_name.equals(other.board_name))
			return false;
		if (board_no != other.board_no)
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (numrow != other.numrow)
			return false;
		if (pass == null) {
			if (other.pass != null)
				return false;
		} else if (!pass.equals(other.pass))
			return false;
		return true;
	}


	public int getNumrow() {
		return numrow;
	}


	public void setNumrow(int numrow) {
		this.numrow = numrow;
	}


	public int getBoard_no() {
		return board_no;
	}


	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getBoard_content() {
		return board_content;
	}


	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}


	public String getPass() {
		return pass;
	}


	public void setPass(String pass) {
		this.pass = pass;
	}


	public String getBoard_name() {
		return board_name;
	}


	public void setBoard_name(String board_name) {
		this.board_name = board_name;
	}


	public String getBoard_file() {
		return board_file;
	}


	public void setBoard_file(String board_file) {
		this.board_file = board_file;
	}


	public String getBoard_date() {
		return board_date;
	}


	public void setBoard_date(String board_date) {
		this.board_date = board_date;
	}


	public int getBoard_count() {
		return board_count;
	}


	public void setBoard_count(int board_count) {
		this.board_count = board_count;
	}


	public BoardDto() {
		// TODO Auto-generated constructor stub
	}
}
