package com.univ.school;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	SqlSession session;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	//페이지 이동할 때 사용
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		//리턴받을 jsp에서 데이터를 같이 보냄
		
		return "/start/home";
		//String 리턴 시 views 안의 home.jsp로 리턴
	}
	
	@RequestMapping(value = "pass.json")
//	public @ResponseBody JSONArray passJson(@RequestParam Map<String,Object> map){
	public @ResponseBody Map<String,Object> passJson(@RequestParam Map<String,Object> map){
	//@RequestParam Map<String, Object>는 form에서 받는다고 생각
	//@ResponseBody Json 데이터 리턴할 때 씀
	//@RequestBody 매개변수 앞에 적으면 ajax 쓸 때 받을 데이터
		System.out.println("password");
		System.out.println("map : " + map);

//		Map<String, Object> rsMap = new HashMap<String, Object>();
		
		DBDAO dao = session.getMapper(DBDAO.class);
		Map<String,Object> returnMap = new HashMap<String,Object>();
		
		List<Map<String,Object>> rsmap = dao.selectTestMap(map);
		if(rsmap.size() > 0) {
			returnMap.put("resultCnt", 1);
			returnMap.put("result", "로그인 성공");
		}else {
			returnMap.put("resultCnt", 0);
			returnMap.put("result", "로그인 실패");
		}
//		System.out.println("dao.selectTestMap(rsMap) : " + dao.selectTestMap(map));
//		System.out.println("rsMap : " + rsMap);
		

//		return JsonUtil.getJsonArrayFromList(dao.selectTestMap(map));
		return returnMap;
	}
	
	@RequestMapping(value = "/main.html", method = RequestMethod.GET)
	public String boardList(Locale locale, Model model) {
		logger.info("게시판목록 {}.", locale);
		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("serverTime", formattedDate );
		//리턴받을 jsp에서 데이터를 같이 보냄
		
		return "/board/boardList";
		//String 리턴 시 views 안의 home.jsp로 리턴
	}
	
	//웹에서 페이지는 냅두고 데이터를 처리하고 싶을 때 ex) 로그인화면에서 데이터만 서버로 주고받을때
	@RequestMapping(value = "test.json")
	public @ResponseBody JSONArray testJson(@RequestParam Map<String,Object> map){
	//@RequestParam Map<String, Object>는 form에서 받는다고 생각
	//@ResponseBody Json 데이터 리턴할 때 씀
	//@RequestBody 매개변수 앞에 적으면 ajax 쓸 때 받을 데이터
		System.out.println("test.json");
		System.out.println("map : " + map);

		Map<String, Object> rsMap = new HashMap<String, Object>();
		rsMap.put("test", "result");
		rsMap.put("ID", 7);

		DBDAO dao = session.getMapper(DBDAO.class);

		System.out.println("dao.selectTestMap(rsMap) : " + dao.selectTestMap(rsMap));
		System.out.println("rsMap : " + rsMap);

		return JsonUtil.getJsonArrayFromList(dao.selectTestMap(map));

//		logboardDAO dao = sqlSession.getMapper(logboardDAO.class);
//		Map<String, Object> retMap = new HashMap<String , Object>();
//		
//		System.out.println("map @@@ "+ map);
//		
//		map.put("start", Integer.valueOf((String) map.get("rows")) * Integer.valueOf((String) map.get("page")));
//		map.put("end", Integer.valueOf((String) map.get("rows")) + Integer.valueOf((String) map.get("rows")) * Integer.valueOf((String) map.get("page")));
//
//		List<Map<String, Object>> resultData = dao.selectBoardList(map);
//		List<Map<String, Object>> total = dao.selectBoardList(new HashMap<String, Object>());
//		int inttotal = total.size();
//		
//		JSONArray jsonarr = getJsonArrayFromList(resultData);
//		retMap.put("rows", jsonarr);
//		retMap.put("page", map.get("page"));
//		retMap.put("total", inttotal/Integer.valueOf((String)map.get("rows")));
//		
//		JSONObject retobj = getJsonStringFromMap(retMap);
//		System.out.println("retobj" + retobj);
	}
	
	//페이지를 이동하며 데이터도 주고받고 싶을 때 ex) 게시글 조회 시 조회 페이지로 이동하며 게시글 키를 전달 등
	//@RequestParam Map<String,Object> smap 여기서 데이터를 받음
	//form 방식 사용
	
//	@RequestMapping(value = "lb_viewDetail.html", method = RequestMethod.GET)
//	public ModelAndView viewDetail(Locale locale, Model model, @RequestParam Map<String,Object> smap) {
//		ModelAndView mv = new ModelAndView();
//		logboardDAO dao = sqlSession.getMapper(logboardDAO.class);
//		Map<String, Object> map = new HashMap<String , Object>();
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		String formattedDate = dateFormat.format(date);
//		
//		mv.addObject("tbl_type", smap.get("tbl_type"));
//		mv.addObject("seq", smap.get("seq"));
//		
//		if(smap.get("seq") == null || smap.get("seq") == "") {
//			
//		}else {
//			mv.addObject("detailData", dao.detailBoardView(smap));
//		}
//		
//		return mv;
//	}
	
}
