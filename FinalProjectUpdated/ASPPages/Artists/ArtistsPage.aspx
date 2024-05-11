<%@ Page Title="" Language="C#" MasterPageFile="~/ASPPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="ArtistsPage.aspx.cs" Inherits="FinalProjectUpdated.ASPPages.Artists.ArtistsPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheets/Artists/AllArtistrs.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="image-container">
        <div>
            <a href="LanaDelRey/LanaDelReyAlbumsPage.aspx">
                <img src="../pictures/ArtistsPictures/LanaPic.jpg" />
            </a>
            <div class="captions">לנה דל ריי</div>
        </div>
        <div>
            <a href="HarryStyles/HarryStylesAlbumsPage.aspx">
                <img src="../pictures/ArtistsPictures/HarryPic.jpg" />
            </a>
            <div class="captions">הארי סטיילס</div>
        </div>
        <div>
            <a href="TaylorSwift/TaylorSwiftAlbumsPage.aspx">
                <img src="../pictures/ArtistsPictures/TaylorPic.jpg" />
            </a>
            <div class="captions">טיילור סוויפט</div>
        </div>
        <div>
            <a href="BillieEilish/BillieEilishAlbumsPage.aspx">
                <img src="../pictures/ArtistsPictures/BilliePic.jpg" />

            </a>
            <div class="captions">בילי אייליש</div>
        </div>
       
    </div>
</asp:Content>


