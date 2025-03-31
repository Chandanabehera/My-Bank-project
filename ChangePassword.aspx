<%@ Page Title="" Language="C#" MasterPageFile="~/TopHeader.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Online_Banking_Transaction.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center">
        <tr>
            <td colspan="2" align="center">
                <h4>Change Password</h4>
            </td>
        </tr>
        <tr>
            <td style="width:160px">
                <asp:Label ID="Label1" runat="server" Text="New Password"></asp:Label>
                <asp:HiddenField ID="hdAnswer" runat="server" />
            </td>
            <td>
                <asp:TextBox ID="txtNewPassword" runat="server" Height="28px" Width="200px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red"
                     ControlToValidate="txtNewPassword" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                <div>

                     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                   ErrorMessage="minimum password length must be 6 character"
                           controlToValidate="txtNewPassword" ForeColor="Red"  SetFocusOnError="true" Display="Dynamic"
                               ValidationExpression="^[a-zA-Z0-9'@&#.\s]{6,15}$"></asp:RegularExpressionValidator>
                </div>
            </td>
        </tr>

           <tr>
             <td style="width:160px" >
                   <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
             </td>
          <td>
          <asp:TextBox ID="txtConfirmPassword" runat="server" Height="28px" Width="200px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" 
                ControlToValidate="txtConfirmpassword"
                  SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
        <div>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                            ErrorMessage="minimum password length must be 6 character"
             ControlToValidate ="txtConfirmpassword" ForeColor="Red"  SetFocusOnError="true" Display="Dynamic"
             ValidationExpression="^[a-zA-Z0-9'@&#.\s]{6,15}$"></asp:RegularExpressionValidator>
              <asp:CompareValidator ID="CompareValidator1" runat="server"
                  ErrorMessage="password not matched"
      ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ControlToValidate="txtConfirmPassword" ControlToCompare="txtNewPassword"></asp:CompareValidator>
          </div>
        </td>
      </tr>
         <tr>
             <td align="center">
                  <asp:Button ID="btnChangePassword" runat="server" Text="Change Password" Height="28px" Width="200px" OnClick="btnChangePassword_Click"
                      />
            </td>
          <td>
              <asp:Button ID="btnCancel" runat="server" Text="Cancel" Height="28px" Width="200px" OnClick="btnCancel_Click" CausesValidation="false" />
         </td>
      </tr>
       <tr>
           <td colspan="2">
          <div id="erro" runat="server" style="color:red">

         </div>
     </td>
 </tr>
  </table>
</asp:Content>
