package com.test.util;

public class Pagination
{
	
	// 현재 페이지 번호, 
	private int page;	 			// 현재 페이지 번호
	private int range;				// 각 페이지 범위 시작 번호
	private int listCnt; 			// 전체 리스트 개수
	private int pageCnt;			// 전체 페이지 개수
	private int startPage;			// 각 페이지 범위 시작 번호
	private int endPage;			// 각 페이지 범위 끝 번호
	private int startList; 			// 각 페이지의 목록 시작 번호
	private int listSize = 10;		// 한 페이지당 보여질 리스트의 개수
	private int rangeSize = 5;		// 한 페이지 범위에 보여질 페이지 개수

	// 이전 페이지 여부, 다음 페이지 여부
	private boolean prev, next;
	
	
	public int getPage()
	{
		return page;
	}

	public void setPage(int page)
	{
		this.page = page;
	}

	public int getRange()
	{
		return range;
	}

	public void setRange(int range)
	{
		this.range = range;
	}

	public int getListCnt()
	{
		return listCnt;
	}

	public void setListCnt(int listCnt)
	{
		this.listCnt = listCnt;
	}

	public int getPageCnt()
	{
		return pageCnt;
	}

	public void setPageCnt(int pageCnt)
	{
		this.pageCnt = pageCnt;
	}

	public int getStartPage()
	{
		return startPage;
	}

	public void setStartPage(int startPage)
	{
		this.startPage = startPage;
	}

	public int getEndPage()
	{
		return endPage;
	}

	public void setEndPage(int endPage)
	{
		this.endPage = endPage;
	}

	public int getStartList()
	{
		return startList;
	}

	public void setStartList(int startList)
	{
		this.startList = startList;
	}

	public int getListSize()
	{
		return listSize;
	}

	public void setListSize(int listSize)
	{
		this.listSize = listSize;
	}

	public int getRangeSize()
	{
		return rangeSize;
	}

	public void setRangeSize(int rangeSize)
	{
		this.rangeSize = rangeSize;
	}

	public boolean isPrev()
	{
		return prev;
	}

	public void setPrev(boolean prev)
	{
		this.prev = prev;
	}

	public boolean isNext()
	{
		return next;
	}

	public void setNext(boolean next)
	{
		this.next = next;
	}
	
	public void pageInfo(int page, int range, int listCnt)
	{
		this.page = page;			// 현재 페이지 정보
		this.range = range;			// 현재 페이지 범위 정보
		this.listCnt = listCnt;		// 게시물의 총 개수
		
		// 전체 페이지 수
		this.pageCnt = (int)Math.ceil((double)listCnt/listSize);
		
		// 시작 페이지
		this.startPage = (range - 1) * rangeSize + 1;
		
		// 끝 페이지 ([다음]버튼 활성화 여부 판단하기 위해서)
		this.endPage = range * rangeSize;
		
		// 목록 시작번호
		this.startList = (page - 1) * listSize + 1;	
		
		// 이전 버튼 상태
		this.prev = range == 1 ? false : true;
		
		// 다음 버튼 상태
		this.next = endPage > pageCnt ? false : true;
		if (this.endPage > this.pageCnt) 
		{
			this.endPage = this.pageCnt;
			this.next = false;
		}
	}
}
