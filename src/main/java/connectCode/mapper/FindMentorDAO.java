package connectCode.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import connectCode.model.FindMentorDTO;
import connectCode.model.FindMentorInfoDTO;

public interface FindMentorDAO {

	int getTotal(FindMentorDTO dto);

	List<FindMentorDTO> getMentorList(FindMentorDTO dto);

	int getReviewcount(int mentor_no);

	List<String> getMentoringPayment(int mentor_no);

	int getCheckedBookmark(@Param("member_no") int member_no,@Param("mentor_no")  int mentor_no);

	FindMentorDTO getMentorProfile(int mentor_no);

	List<FindMentorInfoDTO> getCareerList(int mentor_no);

	List<FindMentorInfoDTO> getEducationList(int mentor_no);

	List<FindMentorInfoDTO> getLicenseList(int mentor_no);

	List<FindMentorInfoDTO> getPayment(int mentor_no);

	List<FindMentorInfoDTO> getReviewList(int mentor_no);

	String getDayAndTime(int mentor_no);

	List<String> getReservedTime(@Param("reserve_date") String reserve_date,@Param("mentor_no") int mentor_no);

	FindMentorDTO getMentorInfo(int mentor_no);

}