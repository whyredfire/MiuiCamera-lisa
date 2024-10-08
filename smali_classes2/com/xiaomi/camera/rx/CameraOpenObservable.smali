.class public Lcom/xiaomi/camera/rx/CameraOpenObservable;
.super Lio/reactivex/Single;
.source "CameraOpenObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/rx/CameraOpenObservable$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Single<",
        "Lcom/android/camera/module/loader/camera2/Camera2Result;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraOpenObservable"


# instance fields
.field public final mCameraId:Ljava/lang/String;

.field public final mExclusions:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/camera/rx/CameraOpenObservable;->mCameraId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/camera/rx/CameraOpenObservable;->mExclusions:[Ljava/lang/String;

    return-void
.end method

.method public static varargs create(Ljava/lang/String;[Ljava/lang/String;)Lcom/xiaomi/camera/rx/CameraOpenObservable;
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/camera/rx/CameraOpenObservable;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/camera/rx/CameraOpenObservable;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Lcom/android/camera/module/loader/camera2/Camera2Result;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xiaomi/camera/rx/CameraOpenObservable$Listener;

    iget-object v1, p0, Lcom/xiaomi/camera/rx/CameraOpenObservable;->mCameraId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/xiaomi/camera/rx/CameraOpenObservable$Listener;-><init>(Ljava/lang/String;Lio/reactivex/SingleObserver;Lcom/xiaomi/camera/rx/CameraOpenObservable$1;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subscribeActual: openCamera: cid = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/camera/rx/CameraOpenObservable;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", listener = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CameraOpenObservable"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/xiaomi/camera/rx/CameraOpenObservable;->mCameraId:Ljava/lang/String;

    iget-object p0, p0, Lcom/xiaomi/camera/rx/CameraOpenObservable;->mExclusions:[Ljava/lang/String;

    invoke-static {p1, v0, v0, p0}, Lcom/xiaomi/camera/device/CameraService;->openCamera(Ljava/lang/String;Lcom/xiaomi/camera/device/callable/CallableListener;Lcom/xiaomi/camera/device/callable/OpenCameraListener;[Ljava/lang/String;)V

    return-void
.end method
