.class public Lcom/xiaomi/idm/trans/IDMTrans;
.super Ljava/lang/Object;
.source "IDMTrans.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/trans/IDMTrans$IDMTransCallback;
    }
.end annotation


# instance fields
.field public mCb:Lcom/xiaomi/idm/trans/IDMTrans$IDMTransCallback;

.field public mCreateRet:I

.field public mHandle:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "idmtrans"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/idm/trans/IDMTrans;->IDMTransCreate(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/idm/trans/IDMTrans;->mCreateRet:I

    return-void
.end method


# virtual methods
.method public native IDMTransCreate(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public native IDMTransDisconnect(Ljava/lang/String;I)I
.end method

.method public native IDMTransRelease()I
.end method

.method public native IDMTransSend(Ljava/lang/String;I[BJ)I
.end method

.method public native IDMTransStart()I
.end method

.method public native IDMTransStop()I
.end method

.method public getCreateRet()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/idm/trans/IDMTrans;->mCreateRet:I

    return p0
.end method

.method public onReceiveData(Ljava/lang/String;II[B)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/idm/trans/IDMTrans;->mCb:Lcom/xiaomi/idm/trans/IDMTrans$IDMTransCallback;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/xiaomi/idm/trans/IDMTrans$IDMTransCallback;->onReceiveData(Ljava/lang/String;II[B)V

    :cond_0
    return-void
.end method

.method public onReceiveStatus(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/idm/trans/IDMTrans;->mCb:Lcom/xiaomi/idm/trans/IDMTrans$IDMTransCallback;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/xiaomi/idm/trans/IDMTrans$IDMTransCallback;->onReceiveStatus(Ljava/lang/String;IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/xiaomi/idm/trans/IDMTrans$IDMTransCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/idm/trans/IDMTrans;->mCb:Lcom/xiaomi/idm/trans/IDMTrans$IDMTransCallback;

    return-void
.end method
