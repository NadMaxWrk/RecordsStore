<%@ Page Title="" Language="C#" MasterPageFile="~/ASPPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="ArtistsPage.aspx.cs" Inherits="FinalProjectUpdated.ASPPages.Artists.ArtistsPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .image-container {
            text-align: center;
            height: 80%;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

            .image-container img {
                width: 280px; /* Adjust image width as needed */
                height: auto; /* Maintain aspect ratio */
                margin: 80px; /* Adjust spacing between images */
                border-radius: 50%; /* Make the images circular */
                transition: transform 0.25s; /* Add smooth transition effect */
            }

                .image-container img:hover {
                    transform: scale(1.3); /* Enlarge the image slightly on hover */
                }

        .captions {
            text-align: center;
            font-family: Calibri;
            font-size: 35px;
        }
    </style>

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


