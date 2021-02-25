package peachy.md.mapper;

import peachy.md.domain.Member;

public interface MemberMapper {
	Member login(Member member);
	void register(Member member);
}