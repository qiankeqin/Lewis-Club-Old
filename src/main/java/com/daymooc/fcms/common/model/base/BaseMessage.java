package com.daymooc.fcms.common.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseMessage<M extends BaseMessage<M>> extends Model<M> implements IBean {

	public void setId(java.lang.Integer id) {
		set("id", id);
	}

	public java.lang.Integer getId() {
		return get("id");
	}

	public void setUser(java.lang.Integer user) {
		set("user", user);
	}

	public java.lang.Integer getUser() {
		return get("user");
	}

	public void setFriend(java.lang.Integer friend) {
		set("friend", friend);
	}

	public java.lang.Integer getFriend() {
		return get("friend");
	}

	public void setSender(java.lang.Integer sender) {
		set("sender", sender);
	}

	public java.lang.Integer getSender() {
		return get("sender");
	}

	public void setReceiver(java.lang.Integer receiver) {
		set("receiver", receiver);
	}

	public java.lang.Integer getReceiver() {
		return get("receiver");
	}

	public void setType(java.lang.Integer type) {
		set("type", type);
	}

	public java.lang.Integer getType() {
		return get("type");
	}

	public void setContent(java.lang.String content) {
		set("content", content);
	}

	public java.lang.String getContent() {
		return get("content");
	}

	public void setCreateAt(java.util.Date createAt) {
		set("createAt", createAt);
	}

	public java.util.Date getCreateAt() {
		return get("createAt");
	}

}
