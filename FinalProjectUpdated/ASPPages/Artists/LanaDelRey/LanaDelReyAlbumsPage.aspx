<%@ Page Title="" Language="C#" MasterPageFile="~/ASPPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="LanaDelReyAlbumsPage.aspx.cs" Inherits="FinalProjectUpdated.ASPPages.LanaDelRey.LanaDelReyAlbumsPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="../../StyleSheets/Artists/LDRStyles/LDRalbums.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="image-container">
            <div>
                <a href="LDRalbums/BornToDie.aspx">
                    <img src="../../pictures/AlbumsPictures/BornToDIe.jpg" />
                </a>
                <div style="text-align: center; font-family: Calibri;">Born To Die</div>
            </div>

            <div>
                <a href="LDRalbums/Ultraviolence.aspx">
                    <img src="../../pictures/AlbumsPictures/Ultraviolence.jpg" />
                </a>
                <div style="text-align: center; font-family: Calibri;">Ultraviolence</div>
            </div>

            <div>
                <a href="LDRalbums/Honeymoon.aspx">
                    <img src="../../pictures/AlbumsPictures/honeymoon.jpg" />
                </a>
                <div style="text-align: center; font-family: Calibri;">Honeymoon</div>
            </div>

            <div>
                <a href="LDRalbums/LustForLife.aspx">
                    <img src="../../pictures/AlbumsPictures/LustForLife.jpg" />
                </a>
                <div style="text-align: center; font-family: Calibri;">Lust For Life</div>
            </div>

        </div>
        <div class="image-container">
            <div>
                <a href="LDRalbums/NFR.aspx">
                    <img src="../../pictures/AlbumsPictures/NFR.jpg" />
                </a>
                <div style="text-align: center; font-family: Calibri;">Norman Fucking Rockwell!</div>
            </div>

            <div>
                <a href="LDRalbums/COTCC.aspx">
                    <img src="../../pictures/AlbumsPictures/COTCC.jpg" />
                </a>
                <div style="text-align: center; font-family: Calibri;">Chemtrails Over The Country Club</div>
            </div>

            <div>
                <a href="LDRalbums/BlueBanisters.aspx">
                    <img style="border: solid; border-color: black;" src="../../pictures/AlbumsPictures/BlueBanisters.jpg" />
                </a>
                <div style="text-align: center; font-family: Calibri;">Blue Banisters</div>
            </div>

            <div>
                <a href="LDRalbums/DYKTTATUOB.aspx">
                    <img src="../../pictures/AlbumsPictures/didyouknowtheresatunnel.jpg" />
                </a>
                <div style="text-align: center; font-family: Calibri;">Did you know that there's <br /> a tunnel under ocean blvd</div>
            </div>
            
        </div>
    </div>

</asp:Content>
