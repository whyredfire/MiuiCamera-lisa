.class public Lcom/android/camera/module/impl/component/FilmDreamImpl$1;
.super Landroid/os/CountDownTimer;
.source "FilmDreamImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/impl/component/FilmDreamImpl;->startRecordingTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

.field public final synthetic val$topAlert:Lcom/android/camera/protocol/protocols/TopAlert;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/impl/component/FilmDreamImpl;JJLcom/android/camera/protocol/protocols/TopAlert;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$1;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    iput-object p6, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$1;->val$topAlert:Lcom/android/camera/protocol/protocols/TopAlert;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "count down onFinish~"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTick(J)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, v0}, Lcom/android/camera/Util;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$1;->val$topAlert:Lcom/android/camera/protocol/protocols/TopAlert;

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/TopAlert;->updateRecordingTime(Ljava/lang/String;)V

    return-void
.end method
