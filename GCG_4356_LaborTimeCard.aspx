<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="LaborTimeCard.aspx.vb" Inherits="GSMobile.LaborTimeCard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Labor Time Card</title>
    <meta name="viewport" content="width=device-width,height=device-height, initial-scale=1.0"/>
</head>
<body>
    <form id="form1" runat="server" defaultbutton="cmdSubmit">
    <div>
        <table width="100%">
            <tr><td align="center"><asp:ImageButton ID="ImgGSLogo" runat="server" SkinID="GSLogoButton"  CausesValidation="False" PostBackUrl="~/Pages/MainMenu.aspx"/></td></tr>
            <tr><td>
                <table align="center">
                    <tr><td align="center" colspan="2" style=" background-color:#95C26C;">
                        <asp:Label ID="lblTransName" runat="server" Text="Labor Time Card" CssClass="TransName"></asp:Label>                 
                    </td></tr>
                    <tr id= "EmpName" runat="server"><td align="center" colspan="2" style=" background-color:#95C26C;">
                        <asp:Label ID="lblEmpNamelbl" runat="server" Text="Employee Name: " CssClass="TransName"></asp:Label> 
                        <asp:Label ID="lblEmpName" runat="server" Text="" CssClass="TransName"></asp:Label>                                                    
                    </td></tr>
                    <tr id="Job" runat="server">
                        <td><asp:Label ID="lblJob" runat="server" Text="Job"></asp:Label>
                            <asp:RequiredFieldValidator ID="valRFJob" runat="server" ControlToValidate="txtJob" ></asp:RequiredFieldValidator>
                        </td>
                        <td align="left"><asp:TextBox ID="txtJob" runat="server" CssClass="TextBox" 
                                AutoPostBack="True"></asp:TextBox></td>
                    </tr>
                    <tr id="Sfx" runat="server">
                        <td><asp:Label ID="lblSfx" runat="server" Text="Suffix"></asp:Label></td>
                        <td align="left"><asp:TextBox ID="txtSfx" runat="server" AutoPostBack="True" CssClass="TextBox"></asp:TextBox></td>
                    </tr>
                    <tr id="Seq" runat="server">
                        <td>
                            <asp:Label ID="lblSeq" runat="server" Text="Sequence"></asp:Label>
                            <asp:RequiredFieldValidator ID="valRFSeq" runat="server" ControlToValidate="dlstSeq" ></asp:RequiredFieldValidator>
                        </td>
                        <td align="left">
                            <asp:DropDownList ID="dlstSeq" runat="server" AutoPostBack="True" CssClass="DropDown"></asp:DropDownList>
                            <asp:Label ID="lblJobSfxValid" runat="server" SkinID="Valid" ></asp:Label>
                        </td>
                    </tr>
                    <tr id="JobSfxSeq" runat="server">
                        <td>
                            <asp:Label ID="lblJobSfxSeq" runat="server" Text="Consolidate Job, Sfx & Seq"></asp:Label>
                            <asp:RequiredFieldValidator ID="valRFJobSfxSeq" runat="server" ControlToValidate="txtJobSfxSeq" ></asp:RequiredFieldValidator>
                        </td>
                        <td align="left"><asp:TextBox ID="txtJobSfxSeq" runat="server" AutoPostBack="True" CssClass="TextBox"></asp:TextBox>
                            <asp:Label ID="lblJobSfxSeqValid" runat="server" SkinID="Valid" ></asp:Label>
                        </td>
                    </tr>
                    <tr id="WC" runat="server">
                        <td><asp:Label ID="lblWC" runat="server" Text="WorkCenter"></asp:Label>
                        <asp:RequiredFieldValidator ID="valRFWC" runat="server" ControlToValidate="txtWC" ></asp:RequiredFieldValidator>
                        </td>
                        <td align="left"><asp:TextBox ID="txtWC" runat="server" AutoPostBack="True" CssClass="TextBox"></asp:TextBox>
                        <asp:Label ID="lblWCValid" runat="server" SkinID="Valid"></asp:Label>
                        </td>
                    </tr>
                    <tr id="EmpNo" runat="server">
                        <td><asp:Label ID="lblEmpNo" runat="server" Text="Employee No."></asp:Label></td>
                        <td align="left"><asp:TextBox ID="txtEmpNo" runat="server" AutoPostBack="True" CssClass="TextBox"></asp:TextBox>
                            <asp:Label ID="lblEmpNoValid" runat="server" SkinID="Valid" ></asp:Label></td>
                    </tr>
                    <tr id="Date" runat="server">
                        <td><asp:Label ID="lblDate" runat="server" Text="Date(MM/DD/YY)"></asp:Label>
                        <asp:RequiredFieldValidator ID="valRFDate" runat="server" ControlToValidate="txtDate" ></asp:RequiredFieldValidator>
                        </td>
                        <td align="left"><asp:TextBox ID="txtDate" runat="server" AutoPostBack="true" CssClass="TextBox"></asp:TextBox>
                        <asp:Label ID="lblDateValid" runat="server" SkinID="Valid"></asp:Label>
                        </td>
                    </tr>
                    <tr id="StrtTime" runat="server">
                        <td><asp:Label ID="lblStrtTime" runat="server" Text="StartTime (HH:MM)"></asp:Label>
                            &nbsp;<asp:RequiredFieldValidator ID="valRFStrtTime" runat="server" ControlToValidate="txtStrtTime" ></asp:RequiredFieldValidator>
                        </td>
                        <td align="left"><asp:TextBox ID="txtStrtTime" runat="server" CssClass="TextBox" 
                                AutoPostBack="True"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="valREStrtTime" runat="server" ControlToValidate="txtStrtTime" 
                                ValidationExpression="^([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr id="StopTime" runat="server">
                        <td><asp:Label ID="lblStopTime" runat="server" Text="StopTime (HH:MM)"></asp:Label>
                            &nbsp;<asp:RequiredFieldValidator ID="valRFStopTime" runat="server" ControlToValidate="txtStopTime" ></asp:RequiredFieldValidator>
                        </td>
                        <td align="left"><asp:TextBox ID="txtStopTime" runat="server" CssClass="TextBox" 
                                AutoPostBack="True"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="valREStopTime" 
                                runat="server" ControlToValidate="txtStopTime" 
                                ValidationExpression="^([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr id="ClosedFlag" runat="server">
                        <td><asp:Label ID="lblClosedFlag" runat="server" Text="Closed Flag (Y/N)"></asp:Label></td>
                        <td align="left">
                            <asp:DropDownList ID="dlstClosedFlag" runat="server" CssClass="DropDown">
                            <asp:ListItem>Y</asp:ListItem>
                            <asp:ListItem Selected="True">N</asp:ListItem>
                            </asp:DropDownList>&nbsp;
                        </td>
                    </tr>
                    <tr id="GoodPieces" runat="server">
                        <td><asp:Label ID="lblGoodPieces" runat="server" Text="Good Pieces"></asp:Label></td>
                        <td align="left"><asp:TextBox ID="txtGoodPieces" runat="server" CssClass="TextBox"  Type="Number"></asp:TextBox>
                        </td>
                    </tr>
                    <tr id="ScrapPieces" runat="server">
                        <td><asp:Label ID="lblScrapPieces" runat="server" Text="Scrap Pieces"></asp:Label></td>
                        <td align="left"><asp:TextBox ID="txtScrapPieces" runat="server" CssClass="TextBox" Type="Number"></asp:TextBox></td>
                    </tr>
                    <tr id="ScrapCode" runat="server">
                        <td><asp:Label ID="lblScrapCode" runat="server" Text="Scrap Reason Code"></asp:Label></td>
                        <td align="left"><asp:TextBox ID="txtScrapCode" runat="server" CssClass="TextBox" required></asp:TextBox></td>
                    </tr>
                    <tr id="IndirectFlag" runat="server">
                        <td><asp:Label ID="lblIndirectFlag" runat="server" Text="Indirect Flag (D/I/S)"></asp:Label></td>
                        <td align="left"><asp:DropDownList ID="dlstIndirectFlag" runat="server" CssClass="DropDown">
                            <asp:ListItem>D</asp:ListItem>
                            <asp:ListItem>I</asp:ListItem>
                            <asp:ListItem>S</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr id="RateType" runat="server">
                        <td><asp:Label ID="lblRateType" runat="server" Text="Rate Type (R/O/2)"></asp:Label></td>
                        <td align="left">
                            <asp:DropDownList ID="dlstRateType" runat="server" CssClass="DropDown">
                            <asp:ListItem>R</asp:ListItem>
                            <asp:ListItem>O</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <%--<tr><td colspan="2">
                        <asp:Label ID="lblErr" runat="server"  SkinID="Valid" ></asp:Label></td></tr>--%>
                </table>
            </td></tr>
             <tr><td align="center">&nbsp;<asp:Label ID="lblErr" runat="server" SkinID="Valid"></asp:Label></td></tr>
            <tr><td align="center" ><br /><asp:Button ID="cmdSubmit" runat="server" Text="Submit" CssClass="cmdButton"/></td></tr>
            <tr><td align="center" ><br /><br /><asp:ImageButton ID="imgBtnHome" runat="server" CausesValidation="False" 
                    SkinID="HomeLogo" PostBackUrl="~/Pages/MainMenu.aspx"/></td></tr>
        </table>
    </div>
    </form>
</body>
</html>
