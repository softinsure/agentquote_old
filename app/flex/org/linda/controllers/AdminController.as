package org.linda.controllers
{
	import flash.events.Event;
	
	import mx.controls.Alert;
	import mx.events.ListEvent;
	
	import org.ludo.controllers.ActionController;
	import org.ludo.models.*;
	import org.ludo.utils.LudoUtils;
	import org.ludo.utils.PopUp;
	
	import org.ludo.utils.CurrentPage;
	
	public dynamic class AdminController extends ActionController
	{
		public static function userAddInit():void
		{
			//check if new user 
			var user:User = LudoUtils.modelController.getModelToUpdate("user") as User;
			if(user.id==0)
			{
				CurrentPage.title="Create User";
				//CurrentPage.ediatableByID("login",true);
				CurrentPage.setRequiredFlag("password",true);
				CurrentPage.setRequiredFlag("passwordConf",true);
				CurrentPage.setValidationByID("password","string|required=true");
			}
			else
			{
				CurrentPage.title="Update User";
				//CurrentPage.ediatableByID("login",false);				
				CurrentPage.setRequiredFlag("password",false);
				CurrentPage.setRequiredFlag("passwordConf",false);
				CurrentPage.setValidationByID("password","string|required=false");
				CurrentPage.setValidationByID("passwordConf","string|required=false");
			}
		}
		public static function agencyAddInit():void
		{
			var agency:Agency = LudoUtils.modelController.getModelToUpdate("agency") as Agency;
			if(agency.id==0)
			{
				CurrentPage.title="Create Agency";
			}
			else
			{
				CurrentPage.title="Update Agency";
			}
		}
		public static function agentAddInit():void
		{
			var agency:Agent = LudoUtils.modelController.getModelToUpdate("agent") as Agent;
			if(agency.id==0)
			{
				CurrentPage.title="Create Agent";
			}
			else
			{
				CurrentPage.title="Update Agent";
			}
		}
		/*
		public static function findAgencyID(event:Event):void
		{
			org.ludo.utils.PopUp.openPopupFinder("agencyname","adminsearch","agency_code",CurrentPage.getElmentByID("agency_code"));
		}
		public static function findAgentID(event:Event):void
		{
			PopUp.openPopupFinder("agentid","adminsearch","agent_code",CurrentPage.getElmentByID("agent_code"));
		}
		private static function setAgencyPopup(event:ListEvent):void
		{
			Alert.show(XMLList(event.itemRenderer.data).toXMLString());
		}
		*/
	}
}