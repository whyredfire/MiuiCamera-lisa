.class public interface abstract Lcom/android/camera/protocol/protocols/live/LiveVVProcess;
.super Ljava/lang/Object;
.source "LiveVVProcess.java"

# interfaces
.implements Lcom/android/camera/protocol/BaseProtocol;


# direct methods
.method public static impl()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/protocols/live/LiveVVProcess;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/live/LiveVVProcess;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static impl2()Lcom/android/camera/protocol/protocols/live/LiveVVProcess;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/live/LiveVVProcess;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/live/LiveVVProcess;

    return-object v0
.end method


# virtual methods
.method public abstract getSaveContentValues()Landroid/content/ContentValues;
.end method

.method public abstract getSaveVideoFile()Lcom/android/camera/storage/mediastore/VideoFile;
.end method

.method public abstract onCombinePrepare(Landroid/content/ContentValues;)V
.end method

.method public abstract onKeyCodeCamera()V
.end method

.method public abstract onLiveSaveToLocalFinished(Landroid/net/Uri;Ljava/lang/String;)V
.end method

.method public abstract onRecordingFragmentUpdate(IJ)V
.end method

.method public abstract onRecordingNewFragmentStart(IJLcom/android/camera/fragment/vv/VVWorkspaceItem;)V
.end method

.method public abstract onResultCombineFinished(Z)V
.end method

.method public abstract onResultPreviewFinished(Z)V
.end method

.method public abstract prepare(Lcom/android/camera/fragment/vv/VVItem;Lcom/android/camera/fragment/vv/VVWorkspaceItem;)V
.end method

.method public abstract processingFinish()V
.end method

.method public abstract processingPause()V
.end method

.method public abstract processingPrepare()V
.end method

.method public abstract processingResume()V
.end method

.method public abstract processingStart()V
.end method

.method public abstract quit()V
.end method

.method public abstract showExitConfirm()V
.end method

.method public abstract updateRecordingTime(Ljava/lang/String;)V
.end method
