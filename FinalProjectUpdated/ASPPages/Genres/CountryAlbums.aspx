<%@ Page Title="" Language="C#" MasterPageFile="~/ASPPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="CountryAlbums.aspx.cs" Inherits="FinalProjectUpdated.ASPPages.Genres.Country" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheets/Genres/Country.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> אלבומי קאנטרי</h1>

     <div class="container">
     <div class="image-container">
         <div>
             <a href="<%= ResolveUrl("~/ASPPages/Artists/TaylorSwift/TaylorAlbums/Debut.aspx") %>">
                 <img src="../pictures/TaylorSwift.jpg" />
             </a>
             <div style="text-align: center; font-family: Calibri;">Taylor swift </div>
         </div>

         <div>
             <a href="<%= ResolveUrl("~/ASPPages/Artists/TaylorSwift/TaylorAlbums/Fearless.aspx") %>">
                 <img src="../pictures/fearless.jpg" />
             </a>
             <div style="text-align: center; font-family: Calibri;">Fearless (Taylor's Version) </div>
         </div>

         <div>
             <a href="<%= ResolveUrl("~/ASPPages/Artists/TaylorSwift/TaylorAlbums/SpeakNow.aspx") %>">
                 <img src="../pictures/SpeakNow.jpg" />
             </a>
             <div style="text-align: center; font-family: Calibri;">Speak Now (Taylor's Version) </div>
         </div>

     </div>

 </div>







</asp:Content>
