package com.kh.with.Chat.controller;
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
}
 






 



