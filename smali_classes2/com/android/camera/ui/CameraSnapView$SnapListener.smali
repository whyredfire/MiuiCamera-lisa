.class public interface abstract Lcom/android/camera/ui/CameraSnapView$SnapListener;
.super Ljava/lang/Object;
.source "CameraSnapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/CameraSnapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SnapListener"
.end annotation


# virtual methods
.method public abstract canMultiCaptureByRunningCondition()Z
.end method

.method public abstract canMultiCaptureByStableCondition()Ljava/lang/Boolean;
.end method

.method public abstract canSnap()Z
.end method

.method public onSnapCancelOut()V
    .locals 0

    return-void
.end method

.method public abstract onSnapClick()V
.end method

.method public abstract onSnapDragging()V
.end method

.method public onSnapForceUp()V
    .locals 0

    return-void
.end method

.method public abstract onSnapLongPress()V
.end method

.method public abstract onSnapLongPressCancelIn()V
.end method

.method public abstract onSnapLongPressCancelOut()V
.end method

.method public abstract onSnapPrepare()V
.end method

.method public abstract onTrackSnapMissTaken(J)V
.end method

.method public abstract onTrackSnapTaken(J)V
.end method

.method public recordTouchDownTime()V
    .locals 0

    return-void
.end method
