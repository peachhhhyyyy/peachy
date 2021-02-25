package peachy.md.service;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import peachy.md.domain.Member;
import peachy.md.mapper.MemberMapper;
import peachy.md.model.LoginCase;

@Service
@AllArgsConstructor
@Log4j
public class MemberServiceImpl implements MemberService {	
	@Resource
	private MemberMapper memberMapper;
	
	@Override
	public int loginS(Member member) {
		Member m = memberMapper.login(member);
		if(m == null) {
			return LoginCase.NO_ID;
		}else {
			String pwdDb = m.getPwd();
			if(pwdDb != null) pwdDb = pwdDb.trim();
			if(!member.getPwd().equals(pwdDb)) {
				return LoginCase.NO_PWD;
			}else {
				return LoginCase.PASS;
			}
		}
	}

	@Override
	public void registerS(Member member) {
		memberMapper.register(member);
	}
	@Override
	public Member selectS(Member member) {
		Member m = memberMapper.login(member);
		return m;
	}
}
