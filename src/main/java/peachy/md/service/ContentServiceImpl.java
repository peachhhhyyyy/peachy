package peachy.md.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import peachy.md.domain.Content;
import peachy.md.domain.Member;
import peachy.md.mapper.ContentMapper;

@Service
@AllArgsConstructor
@Log4j
public class ContentServiceImpl implements ContentService {	
	@Resource
	private ContentMapper contentMapper;

	@Override
	public void insertS(Content content) {
		contentMapper.insert(content);
	}
	
	@Override
	public List<Content> listS() {
		return contentMapper.list();
	}
	
	@Override
	public void deleteS(long seq) {
		contentMapper.delete(seq);
	}

	@Override
	public Content updateS(long seq) {
		return contentMapper.update(seq);
	}

	@Override
	public void updateOkS(Content content) {
		contentMapper.updateOk(content);
	}
}
