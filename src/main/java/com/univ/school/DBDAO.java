package com.univ.school;

import java.util.List;
import java.util.Map;

public interface DBDAO {
	public List<Map<String, Object>> selectTest();
	public List<Map<String, Object>> selectTestMap(Map<String, Object> map);
}
