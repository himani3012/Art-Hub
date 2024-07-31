<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="masterpage.aspx.cs" Inherits="ArtHub.masterpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="masterpage.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <%--<link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />--%>
    <style type="text/css">
        .auto-style1 {
            height: 729px;
            width: 60%;
            float: right;
        }
        
        .auto-style5 {
            height: 339px;
        }
        .auto-style6 {
            width: 461px;
            height: 324px;
            margin-left: 27px;
        }
        .auto-style9 {
            width: 448px;
            height: 326px;
            margin-left: 35px;
            margin-top: 0px;
        }
        .auto-style12 {
            width: 451px;
            height: 318px;
            margin-left: 37px;
            margin-top: 0px;
        }
        .auto-style13 {
            text-align: left;
            height: 66px;
        }
        .auto-style14 {
            height: 339px;
            width: 522px;
        }
        .auto-style15 {
            width: 522px;
            height: 66px;
        }
        .auto-style16 {
            width: 522px;
            height: 82px;
            text-align: center;
            font-size: large;
        }
        .auto-style17 {
            height: 82px;
            font-size: large;
            text-align: center;
        }
        .auto-style18 {
            font-size: xx-large;
            margin-bottom: 0px;
        }
        .auto-style20 {
            width: 522px;
            height: 82px;
            font-size: medium;
            text-align: center;
        }
        .auto-style21 {
            font-weight: normal;
        }
        .newStyle1 {
            font-style: inherit;
        }
        .newStyle2 {
            color: #996633;
        }
        .auto-style22 {
            color: #996633;
            font-size: large;
        }
        .newStyle3 {
            border: thin none #E6F0F0;
        }
        .newStyle4 {
            border-color: #E6F0F0;
        }
        .auto-style23 {
            width: 522px;
            height: 75px;
            font-size: medium;
            text-align: center;
        }
        .auto-style24 {
            width: 522px;
            height: 75px;
            text-align: center;
            font-size: large;
        }
        .auto-style25 {
            height: 75px;
            font-size: large;
            text-align: center;
        }
        .auto-style26 {
            width: 100%;
            margin-bottom: 304px;
            height: 1144px;
        }
        .auto-style27 {
            height: 655px;
        }
        .auto-style28 {
            width: 693px;
            height: 598px;
            margin-left: 70px;
            margin-top: 0px;
        }
        .auto-style29 {
            height: 655px;
            width: 854px;
        }
        .newStyle5 {
            font-style: inherit;
        }
        .newStyle6 {
            font-weight: normal;
        }
        .auto-style30 {
            font-weight: normal;
            height: 67px;
            margin-top: 22px;
        }
        .auto-style31 {
            font-weight: normal;
            height: 48px;
            font-size: large;
        }
        .auto-style33 {
            height: 567px;
            font-size: larger;
        }
        .newStyle7 {
            font-size: 76px;
        }
        .newStyle8 {
            background-color: #FFCCFF;
        }
        .newStyle9 {
            color: #333333;
        }
        .newStyle10 {
            font-size: 74px;
        }
        .auto-style34 {
            font-size: 74px;
            text-align: center;
            font-weight: normal;
            color: #666666;
        }
        .newStyle11 {
            border-collapse: collapse;
            border-spacing: 0px;
            table-layout: fixed;
        }
        .auto-style35 {
            border-color: #E6F0F0;
            width: 522px;
        }
        .auto-style36 {
            width: 415px;
            height: 322px;
            margin-left: 106px;
            margin-top: 131px;
        }
        .auto-style38 {
            font-weight: normal;
            height: 69px;
        }
        .desktop-1-mXD .auto-group-fuxj-NG7 {
        width: 128rem;
        height: 4.2rem;
        position: absolute;
        left: 0;
        top: 0;
        font-size: 1.2rem;
        font-weight: 400;
        line-height: 1.2125;
        color: #000000;
        font-family: Inter, 'Source Sans Pro';
        white-space: nowrap;
        display: flex;
        align-items: center;
        justify-content: center;
        background-color: #d2e3c8;
    }
.desktop-1-mXD .auto-group-s7id-oom .auto-group-fkkv-kxX {
    width: 78.5rem;
    height: 2.3rem;
    position: absolute;
    left: 3.7rem;
    top: 59rem;
    display: flex;
    align-items: center;
}

    .desktop-1-mXD .auto-group-s7id-oom .auto-group-fkkv-kxX .realism-and-photorealistic-paintings-HhZ {
        margin-right: 7rem;
        font-size: 1.8rem;
        font-weight: 700;
        line-height: 1.2575;
        color: #ffffff;
        font-family: Century Gothic, 'Source Sans Pro';
        white-space: nowrap;
        flex-shrink: 0;
    }

    .desktop-1-mXD .auto-group-s7id-oom .auto-group-fkkv-kxX .animal-and-bird-art-cjq {
        margin-right: 16.6rem;
        font-size: 1.8rem;
        font-weight: 700;
        line-height: 1.2575;
        color: #ffffff;
        font-family: Century Gothic, 'Source Sans Pro';
        white-space: nowrap;
        flex-shrink: 0;
    }

        .desktop-1-mXD .auto-group-s7id-oom .auto-group-fkkv-kxX .encaustic-art-MSX {
            font-size: 1.8rem;
            font-weight: 700;
            line-height: 1.2575;
            color: #ffffff;
            font-family: Century Gothic, 'Source Sans Pro';
            white-space: nowrap;
            flex-shrink: 0;
        }

    </style>
</head>
<body>
    
        <nav>
            <div class="logo">
     ArtHub
</div>
    <ul>
        <li><a href="#" >Shop</a></li>
        <li><a href="#" >Create</a></li>
        <li><a href="#" >Learn</a></li>
        <li><a href="#" >About us</a></li>
        <li><a href="login1.aspx" >Log In</a></li>
        <li> <form><input type="text" placeholder="search..." class="p1">&nbsp;&nbsp;<button type="submit" class="p1">Go</button></form></li>
    </ul>
        </nav>
    <section>
    <div class="artinfo">
        <img class="auto-style1" src="img/abstract-design-with-colorful-patterns-nature-leaf-generated-by-ai.jpg" alt="abc" />
    </div>
    
    </section>
    
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <img alt="" class="auto-style36" src="img/project1.jpg" /></p>
    
        <p>
            <br />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    
        <table class="newStyle11">
            <tr>
                <td class="auto-style35" style="background-color: #E6F0F0">
                    <img alt="" class="auto-style6" src="img/1b3ca871504ea41d5490e0ab0b88a23a.jpg" /></td>
                <td class="auto-style14" style="background-color: #E6F0F0">
                    <img alt="" class="auto-style9" src="img/1072911_2_s.jpg" /></td>
                <td class="auto-style5" style="background-color: #E6F0F0">
                    <img alt="" class="auto-style12" src="img/hobbys-erwachsene-malen-text-media2.jpg" /></td>
            </tr>
            <tr>
                <td class="auto-style15" style="background-color: #E6F0F0">
                    <h1 class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style21">&nbsp;&nbsp;&nbsp;&nbsp; Buy Art</span></h1>
                </td>
                <td class="auto-style15" style="background-color: #E6F0F0">
                    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style21">&nbsp;&nbsp;&nbsp; Customize Art</span></h1>
                </td>
                <td class="auto-style13" style="background-color: #E6F0F0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h1>&nbsp;&nbsp; <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><span class="auto-style21">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Learn Art&nbsp;</span></h1>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style20" style="background-color: #E6F0F0">&nbsp;<span class="auto-style22">Art shipped directly from artists&#39; studio to your home . Custom-built boxes fully insured .</span></td>
                <td class="auto-style16" style="background-color: #E6F0F0; color: #996633;">Turn your idea into a masterpiece painting for yourself or as a gift .</td>
                <td class="auto-style17" style="background-color: #E6F0F0; color: #996633;">Find your nearest artist and learn it quickly</td>
            </tr>
            <tr>
                <td class="auto-style23" style="background-color: #E6F0F0"><a href="buyart.aspx" class="square-link">Browse Art</a></td>
                <td class="auto-style24" style="background-color: #E6F0F0; color: #996633;"><a href="#" class="square-link">Learn more</a></td>
                <td class="auto-style25" style="background-color: #E6F0F0; color: #996633;"><a href="#" class="square-link">Learn more</a></td>
            </tr>
        </table>
        <table class="auto-style26">
            <tr>
                <td class="auto-style29">
                    <img alt="" class="auto-style28" src="img/palette-knife-birds.jpg" /></td>
                <td class="auto-style27">
                    <h2 class="newStyle6" style="box-sizing: inherit; margin: 0px; font-weight: 400; display: block; color: rgb(66, 62, 49); font-family: &quot;Orpheus Pro&quot;, serif; letter-spacing: -0.04em; font-size: 76px; line-height: 1.10526; max-width: 516px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">Discover your </h2>
                    <h2 class="newStyle6" style="box-sizing: inherit; margin: 0px; font-weight: 400; display: block; color: rgb(66, 62, 49); font-family: &quot;Orpheus Pro&quot;, serif; letter-spacing: -0.04em; font-size: 76px; line-height: 1.10526; max-width: 516px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">perfect art match</h2>
                    <h2 class="auto-style38" style="box-sizing: inherit; margin: 0px; font-weight: 400; display: block; color: rgb(66, 62, 49); font-family: &quot;Orpheus Pro&quot;, serif; letter-spacing: -0.04em; font-size: 76px; line-height: 1.10526; max-width: 516px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                        <span style="color: rgb(66, 62, 49); font-family: &quot;General Sans&quot;, sans-serif; font-size: 20px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Try the Art Connector™ quiz to find one-of-a-kind </span></h2>
                    <span style="color: rgb(66, 62, 49); font-family: &quot;General Sans&quot;, sans-serif; font-size: 20px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">artworks you&#39;ll love.</span><p class="auto-style30" style="box-sizing: inherit; font-weight: 400; display: block; color: rgb(66, 62, 49); font-family: &quot;Orpheus Pro&quot;, serif; letter-spacing: -0.04em; font-size: 76px; line-height: 1.10526; max-width: 516px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; margin-left: 0px; margin-right: 0px; margin-bottom: 0px;">
                        &nbsp;</p>
                    <p class="auto-style31" style="box-sizing: inherit; margin: 0px; font-weight: 400; display: block; color: rgb(66, 62, 49); font-family: &quot;Orpheus Pro&quot;, serif; letter-spacing: -0.04em; line-height: 1.10526; max-width: 516px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                       <a href="#" class="square-link">Take the Quiz</a> </p>
                </td>
            </tr>
            <tr class="newStyle8">
                <td class="auto-style33" colspan="2">
                    <h1 class="auto-style34">We believe that good art brings </h1>
                    <h1 class="auto-style34">people together, elevates living </h1>
                    <h1 class="auto-style34">spaces, and transforms lives .</h1>
                </td>
            </tr>
        </table>
  
<%--    <footer class="footer">
    <div class="container">
        <div class="row">
            <div class="footer-col">
            <h4>company</h4>
            <u1>
                <li><a href="#">about us</a></li>
                <li><a href="#">our service</a></li>
                <li><a href="#">privacy policy</a></li>
                <li><a href="#">affiliate program</a></li>
            </u1>
           </div>
    
        <div class="footer-col">
            <h4>get help</h4>
            <u1>
                <li><a href="#">FAQ</a></li>
                <li><a href="#">shipping</a></li>
                <li><a href="#">returns</a></li>
                <li><a href="#">order status</a></li>
                <li><a href="#">payment option</a></li>
            </u1>
        </div>
    
        <div class="footer-col">
            <h4>online shop</h4>
            <u1>
                <li><a href="#">watch</a></li>
                <li><a href="#">bag</a></li>
                <li><a href="#">shoes</a></li>
                <li><a href="#">dress</a></li>
            </u1>
        </div>
    
        <div class="footer-col">
            <h4>follow us</h4>
            <div class="social-links">
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-linkedin-in"></i></a>
           </div>
        </div>
      </div>
    </div>
</footer>--%>
<div class="desktop-1-mXD">
  <div class="auto-group-fkkv-kxX">
    <p class="realism-and-photorealistic-paintings-HhZ">Realism and Photorealistic Paintings</p>
    <p class="animal-and-bird-art-cjq">Animal and Bird Art</p>
    <p class="encaustic-art-MSX">Encaustic Art</p>
  </div>
  <div class="auto-group-1mp1-hFV">
    <p class="phone-2Yf">PHONE</p>
    <p class="e-mail-yD1">E-MAIL</p>
    <p class="social-media-Wij">SOCIAL MEDIA</p>
    <p class="terms-T8B">Terms</p>
  </div>
  <div class="auto-group-cved-CbZ">
    <p class="item-91-9988552233-Xdq">+91 9988552233</p>
    <p class="infoarthubcom-Fpj">info@arthub.com</p>
    <p class="privacy-CV5">Privacy</p>
  </div>
  <div class="auto-group-veqs-jju">
    <div class="auto-group-xiaq-s5R">
      <p class="modern-art-C7h">Modern Art</p>
      <p class="people-and-portrait-art-vpP">People and Portrait Art</p>
    </div>
    <div class="auto-group-xydf-U5D">Learn More</div>
  </div>
  <div class="auto-group-kqvm-kHd">
    <p class="expressionist-art-Gmm">Expressionist Art</p>
    <p class="flower-and-plant-art-DBD">Flower and Plant Art </p>
  </div>
</div>   
</body>
</html>



