package peachy.md.domain;

import java.sql.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Content {
	private long seq;
	private String id;
	private String subject;
	private String description;
	private String code;
}