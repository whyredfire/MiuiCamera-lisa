.class public final synthetic LOooO0O0/OooO0o/OooO00o/OooO0OO/OooO0Oo/OooO0o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;

.field private final synthetic OooO0O0:Landroid/hardware/camera2/CameraDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0o/OooO00o/OooO0OO/OooO0Oo/OooO0o0;->OooO00o:Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;

    iput-object p2, p0, LOooO0O0/OooO0o/OooO00o/OooO0OO/OooO0Oo/OooO0o0;->OooO0O0:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0o/OooO00o/OooO0OO/OooO0Oo/OooO0o0;->OooO00o:Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;

    iget-object p0, p0, LOooO0O0/OooO0o/OooO00o/OooO0OO/OooO0Oo/OooO0o0;->OooO0O0:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, p0}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->OooO0Oo(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method
