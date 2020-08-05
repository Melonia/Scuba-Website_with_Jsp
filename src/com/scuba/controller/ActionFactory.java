package com.scuba.controller;

import com.scuba.controller.action.Action;
import com.scuba.controller.action.Board1ListAction;
import com.scuba.controller.action.Board1WriteAction;
import com.scuba.controller.action.Board2ListAction;
import com.scuba.controller.action.Board2WriteAction;
import com.scuba.controller.action.Board2WriteFormAction;
import com.scuba.controller.action.Board3ListAction;
import com.scuba.controller.action.Board3WriteAction;
import com.scuba.controller.action.Board3WriteFormAction;
import com.scuba.controller.action.Board4ListAction;
import com.scuba.controller.action.Board4WriteAction;
import com.scuba.controller.action.Board4WriteFormAction;
import com.scuba.controller.action.BulletinListAction;
import com.scuba.controller.action.BulletinWriteAction;
import com.scuba.controller.action.LogoutAction;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();
	
	private ActionFactory() {
		super();
	}
	
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory:"+command);
		if(command.equals("board1_list")) {
			action = new Board1ListAction();
		}
		if(command.equals("board1_write")) {
			action = new Board1WriteAction();
		}
		if(command.equals("board2_list")) {
			action = new Board2ListAction();
		}
		if(command.equals("board2_write_form")) {
			action = new Board2WriteFormAction();
		}
		if(command.equals("board2_write")) {
			action = new Board2WriteAction();
		}
		if(command.equals("logout")){
			action = new LogoutAction();
		}
		if(command.equals("board3_write_form")) {
			action = new Board3WriteFormAction();
		}
		if(command.equals("board3_write")) {
			action = new Board3WriteAction();
		}
		if(command.equals("board3_list")) {
			action = new Board3ListAction();
		}
		if(command.equals("board4_list")) {
			action = new Board4ListAction();
		}
		if(command.equals("board4_write_form")) {
			action = new Board4WriteFormAction();
		}
		if(command.equals("board4_write")) {
			action = new Board4WriteAction();
		}
		if(command.equals("bulletin_write")) {
			action = new BulletinWriteAction();
		}
		if(command.equals("bulletin_list")) {
			action = new BulletinListAction();
		}
		return action;
	}
}
