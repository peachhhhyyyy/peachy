package peachy.md.service;

import peachy.md.domain.Member;

public interface MemberService {
	int loginS(Member member);
	Member selectS(Member member);
	void registerS(Member member);
}