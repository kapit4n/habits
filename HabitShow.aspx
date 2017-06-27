<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewHabit.aspx.cs" Inherits="NewHabit" MasterPageFile="~/Site.Master"  %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Habit Show</h2>
  <dl class="dl-vertical">
    <dd><img src="http://socialmetricspro.com/wp-content/uploads/2012/09/habit.jpg" width="200"/></dd>
    <dd>Bar</dd>
  </dl>
  <asp:Button id="editHabit" CssClass="btn btn-default" runat="server" Text="Edit"/>
</asp:Content>
