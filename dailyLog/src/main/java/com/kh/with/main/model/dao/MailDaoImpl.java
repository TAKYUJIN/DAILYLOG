/*
 * package com.kh.with.main.model.dao;
 * 
 * import java.util.HashMap; import java.util.Map;
 * 
 * import com.kh.with.main.model.vo.MailVo;
 * 
 * public class MailDaoImpl {
 * 
 * @Override public void createAuthKey(String FRI_ID,String STATUS_YN ) {
 * Map<String,Object>map =new HashMap<String,Object>();
 * 
 * map.put("FRI_ID", FRI_ID); map.put("STATUS_YN", STATUS_YN);
 * 
 * session.selectOne(namespace +".createAuthKey",map); }
 * 
 * @Override public void userAuth(String FRI_ID) throws Exception { // 인증키 일치시
 * DB칼럼(인증여부) false->true 로 변경 session.update(namespace + ".userAuth", FRI_ID);
 * } public void create(MailVo vo) { // TODO Auto-generated method stub
 * 
 * }
 * 
 * 
 * }
 */
