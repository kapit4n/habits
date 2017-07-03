<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
      
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>HABITS </h1><asp:LinkButton ID="btnRandom" runat="server" CssClass="btn btn-primary" OnClick="btnRandom_Click">
        <span aria-hidden="true" class="glyphicon glyphicon-plus"></span></asp:LinkButton>
        <p class="lead">Register all the habits that you usually do or you wanna develop them.</p>
    </div>
    <div class="row">
      <% for (int index = 0; index < habits.Count; index++) {
          string Id = habits[index].Id.ToString();
            %>
        <div class="col-md-4">
            <h2><% Response.Write(habits[index].Name); %></h2>
            <img  width="100" height="100" src="<% Response.Write(habits[index].Image); %>" alt="post img" class="pull-left img-responsive thumb margin10 img-thumbnail">
            <p>
                <% Response.Write(habits[index].Description); %><span class="badge"><% Response.Write(habits[index].getHabitTimeStr()); %></span>
            </p>
            <p>
                <a class="btn btn-default" href="HabitShow.aspx?Id=<% Response.Write(habits[index].Id); %>">Show</a>
                <a class="btn btn-default" href="HabitEdit.aspx?Id=<% Response.Write(habits[index].Id); %>">Edit</a>
                <a class="btn btn-default" href="Default.aspx?Id=<% Response.Write(habits[index].Id); %>">DONE</a>
            </p>
        </div>
      <%
          }
       %>
    </div>
</asp:Content>
