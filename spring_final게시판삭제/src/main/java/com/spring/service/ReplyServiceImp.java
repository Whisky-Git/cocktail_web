package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.ReplyMapper;
import com.spring.model.CocktailCriteria;
import com.spring.model.PageDTO;
import com.spring.model.ReplyDTO;
import com.spring.model.ReplyPageDTO;
import com.spring.model.UpdateReplyDTO;

@Service
public class ReplyServiceImp implements ReplyService {
	
	@Autowired
	private ReplyMapper replyMapper;
	
	/* 댓글등록 */
	@Override
	public int enrollReply(ReplyDTO dto) {
		
		int result = replyMapper.enrollReply(dto);
		
		setRating(dto.getCocktailNo());
		
		return result;
	}
	
	/* 댓글 존재 체크 */
	@Override
	public String checkReply(ReplyDTO dto) {
		
		Integer result = replyMapper.checkReply(dto);
		
		if(result == null) {
			return "0";
		} else {
			return "1";
		}
	}
	
	/* 댓글 페이징 */
	@Override
	public ReplyPageDTO replyList(CocktailCriteria cri) {
		ReplyPageDTO dto = new ReplyPageDTO();
		
		dto.setList(replyMapper.getReplyList(cri));
		dto.setPageInfo(new PageDTO(cri, replyMapper.getReplyTotal(cri.getCocktailNo())));
		
		return dto;
	}
	
	/* 댓글 수정 */
	@Override
	public int updateReply(ReplyDTO dto) {
		
		int result = replyMapper.updateReply(dto); 
		
		setRating(dto.getCocktailNo());
		
		return result;
	}
	
	/* 댓글 한개 정보 */
	@Override
	public ReplyDTO getUpdateReply(int replyId) {
		
		return replyMapper.getUpdateReply(replyId);
	}
	
	/* 댓글 삭제 */
	@Override
	public int deleteReply(ReplyDTO dto) {
		
		int result = replyMapper.deleteReply(dto.getReplyId()); 
		
		setRating(dto.getCocktailNo());
		
		return result;
	}
	
	/* 평균 평점 */
	public void setRating(int cocktailNo) {
		
		Double ratingAvg = replyMapper.getRatingAverage(cocktailNo);	
		
		if(ratingAvg == null) {
			ratingAvg = 0.0;
		}	
		
		ratingAvg = (double) (Math.round(ratingAvg*10));
		ratingAvg = ratingAvg / 10;
		
		UpdateReplyDTO urd = new UpdateReplyDTO();
		urd.setCocktailNo(cocktailNo);
		urd.setCocktailRating(ratingAvg);
		
		replyMapper.updateRating(urd);		
		
	}
}
