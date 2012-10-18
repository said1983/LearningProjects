﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Topics/Chapter02 - Master - themes - caching/Lesson01 - MasterPages/ClassicMaster.Master" AutoEventWireup="true" CodeBehind="SimpleDynamicDetailsView.aspx.cs" Inherits="Msts.Topics.Chapter12___Data_binding.Lesson03___Dynamic_Data.SimpleDynamicDetailsView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        Dynamic Data
    </h1>
    <h2>
        DetailsView
    </h2>
    <asp:DynamicDataManager runat="server" ID="dataManager" AutoLoadForeignKeys="true">
        <DataControls>
            <asp:DataControlReference ControlID="dv" />
        </DataControls>
    </asp:DynamicDataManager>
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <asp:UpdateProgress runat="server" DisplayAfter="0">
                <ProgressTemplate>
                    Processing...
                </ProgressTemplate>
            </asp:UpdateProgress>
            <asp:ValidationSummary runat="server" />
            <asp:DetailsView runat="server" ID="dv"
                DataKeyNames="job_id"
                ItemType="Msts.DataAccess.EFData.job"
                SelectMethod="dv_GetItem"
                AutoGenerateRows="true"
                UpdateMethod="dv_UpdateItem"
                AutoGenerateEditButton="true"
                DeleteMethod="dv_DeleteItem"
                AutoGenerateDeleteButton="true"
                InsertMethod="dv_InsertItem"
                AutoGenerateInsertButton="true">
            </asp:DetailsView>
            <asp:DynamicHyperLink runat="server" ID="cancel" NavigateUrl="~/Topics/Chapter12 - Data binding/Lesson03 - Dynamic Data/SimpleDynamicListView.aspx">
                Go back to list
            </asp:DynamicHyperLink>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>