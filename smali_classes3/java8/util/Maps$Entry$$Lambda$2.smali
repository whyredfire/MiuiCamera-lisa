.class public final synthetic Ljava8/util/Maps$Entry$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field public static final instance:Ljava8/util/Maps$Entry$$Lambda$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/Maps$Entry$$Lambda$2;

    invoke-direct {v0}, Ljava8/util/Maps$Entry$$Lambda$2;-><init>()V

    sput-object v0, Ljava8/util/Maps$Entry$$Lambda$2;->instance:Ljava8/util/Maps$Entry$$Lambda$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Ljava8/util/Maps$Entry$$Lambda$2;->instance:Ljava8/util/Maps$Entry$$Lambda$2;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-static {p1, p2}, Ljava8/util/Maps$Entry;->lambda$comparingByValue$1065357e$1(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result p0

    return p0
.end method
