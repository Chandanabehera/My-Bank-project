﻿<%@ Page Title="" Language="C#" MasterPageFile="~/TopHeader.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Online_Banking_Transaction.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table align="center">
        <tr>
            <td colspan="4" align="center">
                <h4>Login</h4>
            </td>

        </tr>
         <tr>
              <td>
                  <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
              </td>
              <td>
                  <asp:TextBox ID="txtUsername" runat="server" Height="28px" Width="200px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtUsername"
                      SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
              </td>
              <td style="padding-right:40px;">
                  <asp:Button ID="Btnregister" runat="server" Text="Register" height="28px" OnClick="Btnregister_Click"  CausesValidation="false"/>

              </td>

       </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                 <asp:TextBox ID="txtpassword" runat="server" Height="28px" Width="200px" TextMode="Password"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtpassword"
     SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>

            </td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td colspan="4" style="padding-left:77px">
                <asp:Button ID="btnLogin" runat="server" Text="Login" Height="28px" OnClick="btnLogin_Click"/>

            </td>
        </tr>
        <tr>
             <td colspan="3">
                 <div id="error" runat="server" style="color:red"> </div>

                
             </td>
             
             <td>
                 <asp:LinkButton ID="lbForgotpassword" runat="server" Height="28px" CausesValidation="false" OnClick="lbForgotpassword_Click">Forgot Password</asp:LinkButton>
             </td>
            

        </tr>
    </table>
</asp:Content>
