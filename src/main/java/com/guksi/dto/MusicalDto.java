package com.guksi.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

public class MusicalDto {
	
	private String title;
	private String musicalPic;
	private String poster;
	private String hall;
	private int numrow;
	@DateTimeFormat(iso = ISO.DATE, pattern = "yyyy-MM-dd")
	private Date startDate;
	@DateTimeFormat(iso = ISO.DATE, pattern = "yyyy-MM-dd")
	private Date endDate;
	private String casting;
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((casting == null) ? 0 : casting.hashCode());
		result = prime * result + ((endDate == null) ? 0 : endDate.hashCode());
		result = prime * result + ((hall == null) ? 0 : hall.hashCode());
		result = prime * result + ((musicalPic == null) ? 0 : musicalPic.hashCode());
		result = prime * result + ((poster == null) ? 0 : poster.hashCode());
		result = prime * result + ((startDate == null) ? 0 : startDate.hashCode());
		result = prime * result + ((title == null) ? 0 : title.hashCode());
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
		MusicalDto other = (MusicalDto) obj;
		if (casting == null) {
			if (other.casting != null)
				return false;
		} else if (!casting.equals(other.casting))
			return false;
		if (endDate == null) {
			if (other.endDate != null)
				return false;
		} else if (!endDate.equals(other.endDate))
			return false;
		if (hall == null) {
			if (other.hall != null)
				return false;
		} else if (!hall.equals(other.hall))
			return false;
		if (musicalPic == null) {
			if (other.musicalPic != null)
				return false;
		} else if (!musicalPic.equals(other.musicalPic))
			return false;
		if (poster == null) {
			if (other.poster != null)
				return false;
		} else if (!poster.equals(other.poster))
			return false;
		if (startDate == null) {
			if (other.startDate != null)
				return false;
		} else if (!startDate.equals(other.startDate))
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		return true;
	}
	
	@Override
	public String toString() {
		return "Musical [title=" + title + ", musicalPic=" + musicalPic + ", poster=" + poster + ", hall=" + hall
				+ ", startDate=" + startDate + ", endDate=" + endDate + ", casting=" + casting + "]";
	}
	public MusicalDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public MusicalDto(String title, String musicalPic, String poster, String hall, Date startDate, Date endDate,
			String casting) {
		super();
		this.title = title;
		this.musicalPic = musicalPic;
		this.poster = poster;
		this.hall = hall;
		this.startDate = startDate;
		this.endDate = endDate;
		this.casting = casting;
	}
	public int getNumrow() {
		return numrow;
	}
	public void setNumrow(int numrow) {
		this.numrow = numrow;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getMusicalPic() {
		return musicalPic;
	}
	public void setMusicalPic(String musicalPic) {
		this.musicalPic = musicalPic;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public String getHall() {
		return hall;
	}
	public void setHall(String hall) {
		this.hall = hall;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public String getCasting() {
		return casting;
	}
	public void setCasting(String casting) {
		this.casting = casting;
	}
	
	

}
