.class public Lorg/jcodec/movtool/MetadataEditor;
.super Ljava/lang/Object;
.source "MetadataEditor.java"


# instance fields
.field public itunesMeta:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/jcodec/containers/mp4/boxes/MetaValue;",
            ">;"
        }
    .end annotation
.end field

.field public keyedMeta:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jcodec/containers/mp4/boxes/MetaValue;",
            ">;"
        }
    .end annotation
.end field

.field public source:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jcodec/containers/mp4/boxes/MetaValue;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/jcodec/containers/mp4/boxes/MetaValue;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/jcodec/movtool/MetadataEditor;->source:Ljava/io/File;

    .line 3
    iput-object p2, p0, Lorg/jcodec/movtool/MetadataEditor;->keyedMeta:Ljava/util/Map;

    .line 4
    iput-object p3, p0, Lorg/jcodec/movtool/MetadataEditor;->itunesMeta:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$000(Lorg/jcodec/movtool/MetadataEditor;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jcodec/movtool/MetadataEditor;->keyedMeta:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/jcodec/movtool/MetadataEditor;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jcodec/movtool/MetadataEditor;->itunesMeta:Ljava/util/Map;

    return-object p0
.end method

.method public static createFrom(Ljava/io/File;)Lorg/jcodec/movtool/MetadataEditor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-class v0, Lorg/jcodec/containers/mp4/boxes/MetaBox;

    invoke-static {p0}, Lorg/jcodec/common/JCodecUtil;->detectFormat(Ljava/io/File;)Lorg/jcodec/common/Format;

    move-result-object v1

    .line 2
    sget-object v2, Lorg/jcodec/common/Format;->MOV:Lorg/jcodec/common/Format;

    if-ne v1, v2, :cond_2

    .line 3
    invoke-static {p0}, Lorg/jcodec/containers/mp4/MP4Util;->parseFullMovie(Ljava/io/File;)Lorg/jcodec/containers/mp4/MP4Util$Movie;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lorg/jcodec/containers/mp4/MP4Util$Movie;->getMoov()Lorg/jcodec/containers/mp4/boxes/MovieBox;

    move-result-object v2

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MetaBox;->fourcc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->findFirst(Lorg/jcodec/containers/mp4/boxes/NodeBox;Ljava/lang/Class;Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object v2

    check-cast v2, Lorg/jcodec/containers/mp4/boxes/MetaBox;

    .line 5
    invoke-virtual {v1}, Lorg/jcodec/containers/mp4/MP4Util$Movie;->getMoov()Lorg/jcodec/containers/mp4/boxes/MovieBox;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "udta"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 6
    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MetaBox;->fourcc()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 7
    invoke-static {v1, v0, v3}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->findFirstPath(Lorg/jcodec/containers/mp4/boxes/NodeBox;Ljava/lang/Class;[Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object v0

    check-cast v0, Lorg/jcodec/containers/mp4/boxes/MetaBox;

    .line 8
    new-instance v1, Lorg/jcodec/movtool/MetadataEditor;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lorg/jcodec/containers/mp4/boxes/MetaBox;->getKeyedMeta()Ljava/util/Map;

    move-result-object v2

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0}, Lorg/jcodec/containers/mp4/boxes/MetaBox;->getItunesMeta()Ljava/util/Map;

    move-result-object v0

    :goto_1
    invoke-direct {v1, p0, v2, v0}, Lorg/jcodec/movtool/MetadataEditor;-><init>(Ljava/io/File;Ljava/util/Map;Ljava/util/Map;)V

    return-object v1

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported format: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getItunesMeta()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/jcodec/containers/mp4/boxes/MetaValue;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/jcodec/movtool/MetadataEditor;->itunesMeta:Ljava/util/Map;

    return-object p0
.end method

.method public getKeyedMeta()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jcodec/containers/mp4/boxes/MetaValue;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/jcodec/movtool/MetadataEditor;->keyedMeta:Ljava/util/Map;

    return-object p0
.end method

.method public save(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/jcodec/movtool/MetadataEditor$1;

    invoke-direct {v0, p0, p0}, Lorg/jcodec/movtool/MetadataEditor$1;-><init>(Lorg/jcodec/movtool/MetadataEditor;Lorg/jcodec/movtool/MetadataEditor;)V

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lorg/jcodec/movtool/RelocateMP4Editor;

    invoke-direct {p1}, Lorg/jcodec/movtool/RelocateMP4Editor;-><init>()V

    iget-object p0, p0, Lorg/jcodec/movtool/MetadataEditor;->source:Ljava/io/File;

    invoke-virtual {p1, p0, v0}, Lorg/jcodec/movtool/RelocateMP4Editor;->modifyOrRelocate(Ljava/io/File;Lorg/jcodec/movtool/MP4Edit;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lorg/jcodec/movtool/ReplaceMP4Editor;

    invoke-direct {p1}, Lorg/jcodec/movtool/ReplaceMP4Editor;-><init>()V

    iget-object p0, p0, Lorg/jcodec/movtool/MetadataEditor;->source:Ljava/io/File;

    invoke-virtual {p1, p0, v0}, Lorg/jcodec/movtool/ReplaceMP4Editor;->modifyOrReplace(Ljava/io/File;Lorg/jcodec/movtool/MP4Edit;)V

    :goto_0
    return-void
.end method
