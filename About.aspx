<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>This web page is a enviroment to register the habits that you usually do.</h3>
    <article>
        <h3>Register an habit</h3>
        <p>This is an form where you can set the habit name and the description and the frequency of this habit</p>
    </article>
    <article>
        <h3>Register commitment of the habit</h3>
        <p>You will register the commitment of the habit</p>
    </article>
    <article>
        <h3>Events of next habit</h3>
        <p>It will show you the next habit that you usually do on your dairy life</p>
    </article>
</asp:Content>
