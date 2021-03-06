﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Topics/Chapter02 - Master - themes - caching/Lesson01 - MasterPages/ClassicMaster.Master" AutoEventWireup="true" CodeBehind="SimpleDynamicDataGridView.aspx.cs" Inherits="Msts.Topics.Chapter12___Data_binding.Lesson03___Dynamic_Data.SimpleDynamicDataGridView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        Dynamic Data
    </h1>
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <asp:UpdateProgress runat="server" DisplayAfter="0">
                <ProgressTemplate>
                    Processing...
                </ProgressTemplate>
            </asp:UpdateProgress>
            <asp:ValidationSummary runat="server" />
            <asp:GridView runat="server" ID="gv"
                DataKeyNames="job_id"
                ItemType="Msts.DataAccess.EFData.job"
                SelectMethod="gv_GetData"
                UpdateMethod="gv_UpdateItem"
                DeleteMethod="gv_DeleteItem"
                AllowPaging="true" AllowSorting="true"
                AutoGenerateColumns="true"
                AutoGenerateEditButton="true" AutoGenerateDeleteButton="true">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:DynamicHyperLink runat="server" ID="editLink" Action="Edit"
                                NavigateUrl='<%#: string.Format("~/Topics/Chapter12 - Data binding/Lesson03 - Dynamic Data/SimpleDynamicFormView.aspx?job_id={0}", Item.job_id) %>'>
                                Edit - FormView
                            </asp:DynamicHyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
