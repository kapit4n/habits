<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HabitList.aspx.cs" Inherits="HabitList" MasterPageFile="~/Site.Master"  %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
      <% for (int index = 0; index < habits.Count; index++) {
          string Id = habits[index].Id.ToString();
            %>
        <div class="col-md-12">
            <h2><% Response.Write(habits[index].Name); %></h2>
            <img  width="100" height="100" src="<% Response.Write(habits[index].Image); %>" alt="post img" class="pull-left img-responsive thumb margin10 img-thumbnail">
            <p>
                <% Response.Write(habits[index].Description); %><span class="badge"><% Response.Write(habits[index].getHabitTimeStr()); %></span>
            </p>
            <p>
                <a class="btn btn-default" href="HabitShow.aspx?Id=<% Response.Write(habits[index].Id); %>">Show</a>
                <a class="btn btn-default" href="HabitEdit.aspx?Id=<% Response.Write(habits[index].Id); %>">Edit</a>
                <%if (habits[index].Done) { %>
                  <a class="btn btn-default" href="HabitList.aspx?Id=<% Response.Write(habits[index].Id); %>&action=undo">UNDO</a>
                <%} %>
                <%else { %>
                  <a class="btn btn-default" href="HabitList.aspx?Id=<% Response.Write(habits[index].Id); %>&action=done">DONE</a>
                <%} %>
            </p>
        </div>
      <%
          }
       %>
    </div>
</asp:Content>
