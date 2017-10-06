<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SurveyPage.aspx.cs" Inherits="Comp229_Assign02.SurveyPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <div>
        <h1>Fill and Win!</h1>
        <p>
            Please select your gender<br />
            <input type="radio" name="gender" value="male" checked> Male<br>
            <input type="radio" name="gender" value="female"> Female<br>
            <input type="radio" name="gender" value="other"> Other
        </p>
        <p>
            How many people were with you?
            <select id="Select3" runat="server" multiple="true">
                <option>Just me</option>
                <option>1</option>
                <option>2-3</option>
                <option>4-5</option>
                <option>>5</option>
            </select>
        </p>
        <p>
            What place in the restaurant do you like more?<br/>
            <select id="serverModel" runat="server" multiple="true">
                <option>Lounge</option>
                <option>Bar</option>
                <option>Patio</option>
            </select>
        </p>
        <p>
            Did you order meals?
            <select id="Select1" runat="server">
                <option></option>
                <option>Yes</option>
                <option>No</option>
            </select>
        </p>
        <p>
            Did you order drinks?
            <select id="Select2" runat="server">
                <option></option>
                <option>Yes</option>
                <option>No</option>
            </select>
        </p>
        <p>
            Are you planning to come back>
            <select id="Select4" runat="server">
                <option></option>
                <option>Yes</option>
                <option>No</option>
            </select>
        </p>
        <p>
            How satisfied are you with your visit><br />
            <input type="radio" name="survey" value="VerySat" checked> Very Satisfied<br />
            <input type="radio" name="survey" value="Sats"> Satisfied<br />
            <input type="radio" name="survey" value="Ok"> Ok<br />
            <input type="radio" name="survey" value="Disap"> Disappointed<br />
            <input type="radio" name="survey" value="VeryDisap"> Very Disappointed<br />
        </p>
        <p>
            Would you recommend Bruno's Chef Restaurant to a friends?
            <select id="likeDotNet" runat="server">
                <option></option>
                <option>Yes</option>
                <option>No</option>
            </select>
        </p>
       
        <p>
            Insert your email to receive the coupom<br />
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
    </div>


</asp:Content>
