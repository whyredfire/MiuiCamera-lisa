.class public Lcom/android/camera/resource/RequestHelper;
.super Ljava/lang/Object;
.source "RequestHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RequestHelper"


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "camera_requestutil_jni"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "RequestHelper"

    const-string v2, "load libcamera_requestutil_jni.so failed."

    .line 2
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native genSubtitleAccessAppID()[B
.end method

.method public static native genSubtitleAccessAppKey()[B
.end method

.method public static native genSubtitleAccessAppSecret()[B
.end method

.method public static native genSubtitleUrl()[B
.end method

.method public static native genTMAccessKey()[B
.end method

.method public static native generate(JJ)[B
.end method

.method public static getIdentityID()Ljava/lang/String;
    .locals 1

    const-string v0, "MIUICamera"

    return-object v0
.end method

.method public static getSubtitleAccessAppID()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/resource/RequestHelper;->genSubtitleAccessAppID()[B

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static getSubtitleAccessAppKey()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/resource/RequestHelper;->genSubtitleAccessAppKey()[B

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static getSubtitleAccessAppSecret()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/resource/RequestHelper;->genSubtitleAccessAppSecret()[B

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static getSubtitleUrl()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/resource/RequestHelper;->genSubtitleUrl()[B

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static getTMMusicAccessKey()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/resource/RequestHelper;->genTMAccessKey()[B

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static md5(JJ)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/android/camera/resource/RequestHelper;->generate(JJ)[B

    move-result-object p0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    array-length p2, p0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    aget-byte v0, p0, p3

    and-int/lit16 v0, v0, 0xff

    or-int/lit16 v0, v0, -0x100

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
