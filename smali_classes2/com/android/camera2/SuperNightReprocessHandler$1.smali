.class public Lcom/android/camera2/SuperNightReprocessHandler$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SuperNightReprocessHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/SuperNightReprocessHandler;->generateReprocessCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera2/SuperNightReprocessHandler;


# direct methods
.method public constructor <init>(Lcom/android/camera2/SuperNightReprocessHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/SuperNightReprocessHandler$1;->this$0:Lcom/android/camera2/SuperNightReprocessHandler;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureBufferLost:<JPEG>: frameNumber = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SNReprocessHandler"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera2/SuperNightReprocessHandler$1;->this$0:Lcom/android/camera2/SuperNightReprocessHandler;

    invoke-static {p1}, Lcom/android/camera2/SuperNightReprocessHandler;->access$000(Lcom/android/camera2/SuperNightReprocessHandler;)Lcom/android/camera2/MiCamera2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isSuperNightEnabled()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/camera2/SuperNightReprocessHandler$1;->this$0:Lcom/android/camera2/SuperNightReprocessHandler;

    invoke-static {p1}, Lcom/android/camera2/SuperNightReprocessHandler;->access$000(Lcom/android/camera2/SuperNightReprocessHandler;)Lcom/android/camera2/MiCamera2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getConfigManager()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera2/CameraConfigManager;->setAWBLock(Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera2/SuperNightReprocessHandler$1;->this$0:Lcom/android/camera2/SuperNightReprocessHandler;

    invoke-static {p1}, Lcom/android/camera2/SuperNightReprocessHandler;->access$000(Lcom/android/camera2/SuperNightReprocessHandler;)Lcom/android/camera2/MiCamera2;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/SuperNightReprocessHandler$1;->this$0:Lcom/android/camera2/SuperNightReprocessHandler;

    invoke-static {p0}, Lcom/android/camera2/SuperNightReprocessHandler;->access$100(Lcom/android/camera2/SuperNightReprocessHandler;)Lcom/android/camera2/MiCamera2ShotRawBurst;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureCompleted:<JPEG>: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SNReprocessHandler"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera2/SuperNightReprocessHandler$1;->this$0:Lcom/android/camera2/SuperNightReprocessHandler;

    invoke-static {p1}, Lcom/android/camera2/SuperNightReprocessHandler;->access$000(Lcom/android/camera2/SuperNightReprocessHandler;)Lcom/android/camera2/MiCamera2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isSuperNightEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/SuperNightReprocessHandler$1;->this$0:Lcom/android/camera2/SuperNightReprocessHandler;

    invoke-static {p1}, Lcom/android/camera2/SuperNightReprocessHandler;->access$000(Lcom/android/camera2/SuperNightReprocessHandler;)Lcom/android/camera2/MiCamera2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getConfigManager()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/camera2/CameraConfigManager;->setAWBLock(Z)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera2/SuperNightReprocessHandler$1;->this$0:Lcom/android/camera2/SuperNightReprocessHandler;

    invoke-static {p1}, Lcom/android/camera2/SuperNightReprocessHandler;->access$000(Lcom/android/camera2/SuperNightReprocessHandler;)Lcom/android/camera2/MiCamera2;

    move-result-object p1

    const/4 p2, 0x1

    iget-object p0, p0, Lcom/android/camera2/SuperNightReprocessHandler$1;->this$0:Lcom/android/camera2/SuperNightReprocessHandler;

    invoke-static {p0}, Lcom/android/camera2/SuperNightReprocessHandler;->access$100(Lcom/android/camera2/SuperNightReprocessHandler;)Lcom/android/camera2/MiCamera2ShotRawBurst;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureFailed:<JPEG>: reason = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SNReprocessHandler"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera2/SuperNightReprocessHandler$1;->this$0:Lcom/android/camera2/SuperNightReprocessHandler;

    invoke-static {p1}, Lcom/android/camera2/SuperNightReprocessHandler;->access$000(Lcom/android/camera2/SuperNightReprocessHandler;)Lcom/android/camera2/MiCamera2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isSuperNightEnabled()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/camera2/SuperNightReprocessHandler$1;->this$0:Lcom/android/camera2/SuperNightReprocessHandler;

    invoke-static {p1}, Lcom/android/camera2/SuperNightReprocessHandler;->access$000(Lcom/android/camera2/SuperNightReprocessHandler;)Lcom/android/camera2/MiCamera2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getConfigManager()Lcom/android/camera2/CameraConfigManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera2/CameraConfigManager;->setAWBLock(Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera2/SuperNightReprocessHandler$1;->this$0:Lcom/android/camera2/SuperNightReprocessHandler;

    invoke-static {p1}, Lcom/android/camera2/SuperNightReprocessHandler;->access$000(Lcom/android/camera2/SuperNightReprocessHandler;)Lcom/android/camera2/MiCamera2;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera2/SuperNightReprocessHandler$1;->this$0:Lcom/android/camera2/SuperNightReprocessHandler;

    invoke-static {p0}, Lcom/android/camera2/SuperNightReprocessHandler;->access$100(Lcom/android/camera2/SuperNightReprocessHandler;)Lcom/android/camera2/MiCamera2ShotRawBurst;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureStarted:<JPEG>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SNReprocessHandler"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method
