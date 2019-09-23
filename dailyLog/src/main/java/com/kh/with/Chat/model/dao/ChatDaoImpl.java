package com.kh.with.Chat.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.with.websocket.model.vo.Chat;
import com.kh.with.websocket.model.vo.ChatMember;
@Repository
public class ChatDaoImpl implements ChatDao {
	/*@Inject
	private SqlSession session;
	@Override
	public void createRoom(chatRoom vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert("Chat.createRoom" , vo);
	}

	@Override
	public chatRoom isRoom(chatRoom vo) throws Exception {
		chatRoom room = null;
		room = session.selectOne ("Chat.isRoom", vo);
		System.out.println("ss");
		System.out.println(room);
		
		return room;
	}

	@Override
	public void insertMessage(Text vo) throws Exception {
		session.insert( "Chat.insertMessage" , vo);
		
	}

	@Override
	public String getPartner(chatRoom vo) throws Exception {
			List<Text> text = session.selectList( "Chat.getPartner", vo);
		
		return text.get(0).getUserId();
	}

	@Override
	public String getProfile(String str) throws Exception {
		// TODO Auto-generated method stub
		 return session.selectOne( "Chat.getProfile" , str);
	}

	@Override
	public String getName(String str) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne( "Chat.getName" , str);
	}

	@Override
	public List<Text> getMessageList(String str) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList( "Chat.getMessageList" , str);
	}

	@Override
	public List<chatRoom> getRoomList(String str) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(  "Chat.getRoomList",str);
	}

	@Override
	public List<chatRoom> getRoomList2(String str) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList( "Chat.getRoomList2" , str);
	}

	@Override
	public Text getRecentMessage(String str) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne( "Chat.getRecentMessage" , str);
	}

	@Override
	public String getTutorId(String str) throws Exception {
		// TODO Auto-generated method stub
		 return session.selectOne( "Chat.getTutorId" , str) ;
	}

	@Override
	public List<chatRoom> getRoomListTutor(String str) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList( "Chat.getRoomListTutor" , str);
	}

	@Override
	public void updateReadTime(int class_no, String userId, String friId) throws Exception {
			HashMap<String, Object> map = new HashMap<String, Object> ();
		
		map.put("friId", friId);
		map.put("userId", userId);
		map.put("class_no", class_no);
		session.update( "Chat.updateReadTime" , map);
		
	}

	@Override
	public void updateReadTimeTutor(int class_no, String userId, String friId) throws Exception {
HashMap<String, Object> map = new HashMap<String, Object> ();
		
		map.put("friId", friId);
		map.put("userId", userId);
		map.put("class_no", class_no);
		session.update( "Chat.updateReadTimeTutor" , map);
	}

	@Override
	public int getUnReadCount(String friId, int class_no, String userId) throws Exception {
HashMap<String, Object> map = new HashMap<String, Object> ();
		
		map.put("friId", friId);
		map.put("userId", userId);
		map.put("class_no", class_no);
		
		
		return session.selectOne( "Chat.getUnReadCount" , map);
	}

	@Override
	public int getUnReadCountTutor(String friId, int class_no, String userId) throws Exception {

HashMap<String, Object> map = new HashMap<String, Object> ();
		
		map.put("friId", friId);
		map.put("userId", userId);
		map.put("class_no", class_no);
		
		
		return session.selectOne( "Chat.getUnReadCountTutor" , map);
	
	}

	@Override
	public int getAllCount(String str) {
HashMap<String, Object> map = new HashMap<String, Object> ();
		
		map.put("userId", str);
		map.put("friId", str);
		if(session.selectOne( "Chat.getAllCount" ,map) ==null) {
			return 0;
		}else {
			
			return session.selectOne(  "Chat.getAllCount" ,map);
		}
	}
*/@Autowired
SqlSession sqlSession;

private String ns = "FriendChat.";

@Override
public Chat  checkRoom(String name) throws Exception {
	return sqlSession.selectOne(ns+"getRoom", name);
}

@Override
public void createChatRoom(Chat dto) throws Exception {
	sqlSession.insert(ns+"createChatRoom", dto);
}

@Override
public List<Chat> getRoomList() throws Exception {
	return sqlSession.selectList(ns+"getRoomList");
}

@Override
public void addRoomMember(ChatMember mem) throws Exception {
	sqlSession.insert(ns+"addRoomMember",mem);
}

@Override
public ChatMember getRoomMember(ChatMember mem) throws Exception {
	return sqlSession.selectOne(ns+"getRoomMember", mem);
}

@Override
public List<ChatMember> sameRoomList(ChatMember mem) throws Exception {
	return sqlSession.selectList(ns+"sameRoomList",mem);
}

@Override
public void updateRoomMember(ChatMember mem) throws Exception {
	sqlSession.update(ns+"updateRoomMember", mem);
}

@Override
public void deleteRoomMember(ChatMember  mem) throws Exception {
	sqlSession.delete(ns+"deleteRoomMember", mem);
}

@Override
public void updateChatCountInc(Chat dto) throws Exception {
	sqlSession.update(ns+"updateChatCountInc", dto);
}

@Override
public void updateChatCountDec(Chat dto) throws Exception {
	sqlSession.update(ns+"updateChatCountDec", dto);
}

@Override
public void deleteChat() throws Exception {
	sqlSession.delete(ns+"deleteChat");
}

@Override
public List<Chat > searchRoomList(String name) throws Exception {
	return sqlSession.selectList(ns+"searchRoomList", name);
}

}
