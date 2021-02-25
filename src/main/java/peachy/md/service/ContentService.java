package peachy.md.service;

import java.util.List;

import peachy.md.domain.Content;

public interface ContentService {
	List<Content> listS();
	void insertS(Content content);
	void deleteS(long seq);
	Content updateS(long seq);
	void updateOkS(Content content);
}