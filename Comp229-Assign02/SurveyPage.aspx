<%@ Page Title="Survey" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SurveyPage.aspx.cs" Inherits="Comp229_Assign02.SurveyPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="survey" />
        <h1>Fill and Win!</h1>
        <p>
            <strong>Please select your gender</strong><br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
            <asp:ListItem>Other</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
            ControlToValidate="RadioButtonList1" ErrorMessage="Please Select a Gender" />
        </p>
        <p>
            <strong>How many people were with you?</strong><br />
            <select id="Select3" runat="server" multiple="true" required>
                <option>Only me</option>
                <option>1</option>
                <option>2-3</option>
                <option>4-5</option>
                <option>>5</option>
            </select>
        </p>
        <p>
            <strong>What place in the restaurant do you like more?</strong><br/>
            <select id="serverModel" runat="server" multiple="true" required>
                <option>Lounge</option>
                <option>Bar</option>
                <option>Patio</option>
            </select>
        </p>
        <p>
            <strong>Did you order meals?</strong><br />
            <select id="Select1" runat="server">
                <option></option>
                <option>Yes</option>
                <option>No</option>
            </select>
        </p>
        <p>
            <strong>Did you order drinks?</strong><br />
            <select id="Select2" runat="server">
                <option></option>
                <option>Yes</option>
                <option>No</option>
            </select>
        </p>
        <p>
            <strong>Are you planning to come back></strong><br />
            <select id="Select4" runat="server">
                <option></option>
                <option>Yes</option>
                <option>No</option>
            </select>
        </p>
        <p>
            <strong>How satisfied are you with your visit?></strong><br />
            <asp:RadioButtonList ID="RadioButtonList2" runat="server">
            <asp:ListItem>Very Satisfied</asp:ListItem>
            <asp:ListItem>Satisfied</asp:ListItem>
            <asp:ListItem>Ok</asp:ListItem>
            <asp:ListItem>Disappointed</asp:ListItem>
            <asp:ListItem>Very Disappointed</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
            ControlToValidate="RadioButtonList2" ErrorMessage="Please Select an Option" />
        </p>
        <p>
            <strong>Would you recommend Bruno's Chef Restaurant to a friends?</strong><br />
            <select id="likeDotNet" runat="server">
                <option></option>
                <option>Yes</option>
                <option>No</option>
            </select>
        </p>
        <p>
            <strong>Insert your email to receive the coupom</strong><br />
            <asp:TextBox ID="EmailTextBox" runat="server" TextMode="SingleLine" />
            <asp:RequiredFieldValidator ID="EmailTextBox_RequiredFieldValidator"
                ControlToValidate="EmailTextBox" Display="Dynamic" runat="server" 
                ErrorMessage="Email is required." />
            <asp:RegularExpressionValidator ID="validateEmail" runat="server" 
                ErrorMessage="Invalid email."
                ControlToValidate="EmailTextBox" 
                ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" />
        </p>
        <p>
            <button id="confirmButton" onserverclick="confirmButton_click" runat="server">Confirm</button>
        </p>
        <p>
            <asp:Label runat="server" ID="feedbackLabel"></asp:Label>
        </p>
    <div />

</asp:Content>
