<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>This web page is a enviroment to register the habits that you usually do.</h3>
    <article style="display: block; height: 150px;">
        <h3><a href="#">Register an habit <span class="badge">5</span></a></h3>
        <img width="100" height="100" src="https://www.skipprichard.com/wp-content/uploads/2015/04/bigstock-build-habits-reminder-self-d-69348286-583x389.jpg" alt="post img" class="pull-left img-responsive thumb margin10 img-thumbnail">
        <p>This is an form where you can set the habit name and the description and the frequency of this habit</p>
    </article>
    <article style="display: block; height: 150px;">
        <h3><a href="#">Register commitment of the habit <span class="badge">15</span></a></h3>
        <img  width="100" height="100" src="https://res.cloudinary.com/dpcbzfiye/image/upload/w_1620,c_fill,dpr_auto,f_auto,q_auto,fl_progressive/v1485881412/ok4bymxsnpdrauwldrlk.jpg" alt="post img" class="pull-left img-responsive thumb margin10 img-thumbnail">
        <p>You will register the commitment of the habit</p>
    </article>
    <article style="display: block; height: 150px;">
        <h3><a href="#">Events of next habit <span class="badge">10</span></a></h3>
        <img  width="100" height="100"  src="https://0.s3.envato.com/files/139331154/prev.jpg" alt="post img" class="pull-left img-responsive thumb margin10 img-thumbnail">
        <p>It will show you the next habit that you usually do on your dairy life</p>
    </article>
</asp:Content>
