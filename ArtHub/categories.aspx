<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="categories.aspx.cs" Inherits="ArtHub.categories" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
       
 .container {
    text-align: center;
    margin-top: 200px; /* Adjust vertical alignment */
}

h2 {
    font-size: 28px; /* Increase font size */
    font-family: Arial, sans-serif; /* Change font family */
}

.btn {
    background-color: #007bff; /* Change button color */
    border: none;
    color: white;
    padding: 20px 40px; /* Increase padding */
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 22px; /* Increase font size */
    margin: 20px; /* Increase margin */
    cursor: pointer;
    border-radius: 8px;
    transition: background-color 0.3s;
    box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
}

.btn:hover {
    background-color: #0056b3; /* Change button hover color */
}

.btn:focus {
    outline: none;
}

.btn:active {
    transform: translateY(2px);
}

.btn:disabled {
    background-color: #cccccc;
    color: #666666;
    cursor: not-allowed;
}

@media screen and (max-width: 768px) {
    .btn {
        padding: 16px 32px; /* Adjust padding for smaller screens */
        font-size: 18px; /* Adjust font size for smaller screens */
    }
}

}

        .auto-style1 {
            font-size: xx-large;
            font-weight: normal;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2 class="auto-style1"><strong>Select Your Category</strong></h2>
            <asp:Button ID="btnLearnStudent" runat="server" Text="Learn Student" CssClass="btn" OnClick="btnLearnStudent_Click"  />
            <asp:Button ID="btnSellArtwork" runat="server" Text="Sell Your Artwork" CssClass="btn" OnClick="btnSellArtwork_Click"  />
            <asp:Button ID="btnCustomizeArtwork" runat="server" Text="Make Customize Artwork" CssClass="btn" OnClick="btnCustomizeArtwork_Click" />
        </div>
    </form>
    
</body>
</html>
