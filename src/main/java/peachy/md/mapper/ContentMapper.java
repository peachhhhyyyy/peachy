package peachy.md.mapper;

import java.util.List;

import peachy.md.domain.Content;

public interface ContentMapper {
	List<Content> list();
	void insert(Content content);
	void delete(long seq);
	Content update(long seq);
	void updateOk(Content content);
}