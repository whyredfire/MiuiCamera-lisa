.class public Lcom/xiaomi/onetrack/api/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x4

.field public static final d:I = 0x8

.field public static final e:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/xiaomi/onetrack/Configuration;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/Configuration;->isGAIDEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/Configuration;->isIMSIEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/Configuration;->isIMEIEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x4

    .line 4
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/Configuration;->isExceptionCatcherEnable()Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x8

    .line 5
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/Configuration;->isOverrideMiuiRegionSetting()Z

    move-result p0

    if-eqz p0, :cond_5

    or-int/lit8 v0, v0, 0x10

    :cond_5
    return v0
.end method
