.class public synthetic LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOO$OooO00o;
.super Ljava/lang/Object;
.source "PolystarContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic OooO00o:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;->values()[LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOO$OooO00o;->OooO00o:[I

    :try_start_0
    sget-object v1, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;->OooO0O0:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooOOOO$OooO00o;->OooO00o:[I

    sget-object v1, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;->OooO0OO:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
