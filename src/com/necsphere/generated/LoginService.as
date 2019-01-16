/*
* NEC Enterprise Communication Technologies, Inc.
* Copyright 2015
*/
package com.necsphere.generated
{
	import mx.rpc.AsyncToken;
	import mx.rpc.remoting.RemoteObject;
	
	public class LoginService extends RemoteObject
	{
		public static const LOGIN_REASON_NORMAL		: String	= "Normal";
		public static const LOGIN_REASON_RECONNECT	: String	= "NetworkReconnect";
		
		public function LoginService()
		{
			super("loginService");
		}
		
		public function authenticate(userCredentials:UserCredentials):AsyncToken
		{
			return (super.getOperation("authenticate")).send(userCredentials);
		}
		
		public function login(clientInfo:ClientInfo, signInReason:String, closeCurrentSession:Boolean=false, sessionIdToClose:uint=0):AsyncToken
		{
			return (super.getOperation("login")).send(clientInfo, signInReason, closeCurrentSession, sessionIdToClose);
		}
	}
}