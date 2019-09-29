/*package com.kh.with.Chat.controller;
import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.json.Json;
import javax.json.JsonObject;
import javax.json.JsonWriter;
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.RemoteEndpoint.Basic;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;
 
 
@ServerEndpoint("/broadcasting")
 public class BroadSocket {
    private static Set<Session> clients = Collections.synchronizedSet(new HashSet<Session>());
    
    @OnMessage
    public void onMessage(String message, Session session) throws IOException {
        System.out.println(message+"message");
        synchronized(clients) {
            for(Session client : clients) {
            	System.out.println("clients"+clients);
                if(!client.equals(session)) {
                    client.getBasicRemote().sendText(message);
                }
            }
        }
    }
    
    @OnOpen
    public void onOpen(Session session) throws IOException {
        
        clients.add(session);
       
    	
    }
    
    @OnClose
    public void onClose(Session session) {
        clients.remove(session);
    }
}*/
 
package com.kh.with.Chat.controller;
 
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.URI;
import java.sql.Connection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.websocket.Extension;
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import com.kh.with.member.model.vo.Member;
 
 
  @ServerEndpoint("/broadcasting")
 
  public class BroadSocket   {
	 
	private static Map<Session,String> sessions = Collections.synchronizedMap(new HashMap<Session,String >());
  
	//BufferedOutputStream out=new BufferedOutputStream(socket.getOutputStream()); //output stream

	//BufferedReader in=new BufferedReader(new InputStreamReader(BroadSocket.getInputStream(),"EUC_KR"));
	@OnMessage
    public void onMessage(String message, Session session) throws IOException  {
        
		String userName = sessions.get(session);
		System.out.println(userName + " : " + message);
		
		synchronized (sessions) {
			Iterator<Session> it = sessions.keySet().iterator();
			while(it.hasNext()){
				Session currentSession = it.next();
				if(!currentSession.equals(session)){
					currentSession.getBasicRemote().sendText(userName + " : " + message);
				}
			}
		}
			
			
			
			
		
		
    }
	
	 

	/*@OnOpen
    public void onOpen(Session session) {
		System.out.println("bload websocket :: " + session);
		String chatMember = session.getQueryString();
		String chatMember1 = session.getQueryString();
		
		System.out.println("start 웹소켓 쿼리 : " + chatMember);
		System.out.println("start 웹소켓 쿼리 : " + chatMember1);
		
		
		
		
		String[] member = chatMember.split("=");
		 
		
		String[] member1 = chatMember1.split("=");
		
		//기존 사용자 리스트에 새로 연결 요청이 들어온 사용자를 추가한다
		sessions.put(session, member[1]);
		sessions.put(session, member1[1]);
		System.out.println("user map :: " + sessions.get(session));
		System.out.println(session);
		System.out.println(member1[1]+"ddd");
		System.out.println(member);
		sendNotice(member[1]+"님이 입장", session);
		sendlist(member1[1],session); 
		
    }*/
	
	@OnOpen
    public void onOpen(Session session) {
		System.out.println("bload websocket :: " + session);
		String chatMember = session.getQueryString();
		String chatMember1 = session.getQueryString();
		
		System.out.println("start 웹소켓 쿼리 : " + chatMember);
		System.out.println("start 웹소켓 쿼리 : " + chatMember1);
		
		
		
		
		String[] member = chatMember.split("=");
		 
		
		String[] member1 = chatMember1.split("=");
		
		//기존 사용자 리스트에 새로 연결 요청이 들어온 사용자를 추가한다
		sessions.put(session, member[1]);
		sessions.put(session, member1[1]);
		System.out.println("user map :: " + sessions.get(session));
		System.out.println(session);
		System.out.println(member1[1]+"ddd");
		System.out.println(member);
		sendNotice(member[1]+"님이 입장", session);
		sendlist(member1[1],session); 
		
    }
	 
	 private void sendlist(String message, Session session) {
		 	String nickName = "sendlist";
 		 
		 System.out.println(nickName + " : " );
		
		synchronized (sessions) {
			Iterator<Session> it = sessions.keySet().iterator();
			while(it.hasNext()){
				Session currentSession = it.next();
				try {
					currentSession.getBasicRemote().sendText(nickName + " : "+message );
					System.out.println(nickName + " nickName");
					System.out.println(nickName + " : ");
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		
	}


	public void sendNotice(String message,Session session){
		//Member m = (Member)((ServletRequest) session).getAttribute("loginUser");
		 String nickName = "DAILYLOG";
 		 
		 System.out.println(nickName + " : " + message);
		
		synchronized (sessions) {
			Iterator<Session> it = sessions.keySet().iterator();
			while(it.hasNext()){
				Session currentSession = it.next();
				try {
					currentSession.getBasicRemote().sendText(nickName + " : " + message);
					System.out.println(nickName + " nickName");
					System.out.println(nickName + " : " +message);
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	} 
	
 
	@OnClose
    public void onClose(Session session) {
	 
		 
 	String nickName = session.getQueryString();
 	String[] member = nickName.split("=");
 	
 	sessions.remove(session);
		sendNotice(member[1] + "님이 퇴장하셨습니다. 현재 사용자 " + sessions.size() + "명", session);
     
		
	 
    }
 
	
	
}





 



