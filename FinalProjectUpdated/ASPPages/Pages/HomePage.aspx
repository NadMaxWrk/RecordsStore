<%@ Page Title="" Language="C#" MasterPageFile="~/ASPPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="FinalProjectUpdated.ASPPages.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheets/Pages/StyleSheetHomePage.css" rel="stylesheet" />
    <script src="../JavaScriptFiles/HomeArtistsCarousel.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="carousel">
    <div class="slide">
      <img src="../pictures/ArtistsPictures/HarryPic.jpg" />
        <div class="caption">Caption for Image 1</div>
    </div>
    <div class="slide">
      <img src="../pictures/ArtistsPictures/HarryPic.jpg" />
        <div class="caption">Caption for Image 2</div>
    </div>
    <div class="slide">
      <img src="../pictures/ArtistsPictures/HarryPic.jpg" />
        <div class="caption">Caption for Image 3</div>
    </div>
    <div class="slide">
      <img src="../pictures/ArtistsPictures/HarryPic.jpg" />
        <div class="caption">Caption for Image 4</div>
    </div>
</div>
<button class="prev-arrow">Previous</button>
<button class="next-arrow">Next</button>


</asp:Content>
