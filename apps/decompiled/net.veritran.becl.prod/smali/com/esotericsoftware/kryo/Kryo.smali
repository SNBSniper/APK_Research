.class public Lcom/esotericsoftware/kryo/Kryo;
.super Ljava/lang/Object;
.source "Kryo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/Kryo$DefaultInstantiatorStrategy;,
        Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;
    }
.end annotation


# static fields
.field public static final NOT_NULL:B = 0x1t

.field private static final NO_REF:I = -0x2

.field public static final NULL:B = 0x0t

.field private static final REF:I = -0x1


# instance fields
.field private asmEnabled:Z

.field private autoReset:Z

.field private classLoader:Ljava/lang/ClassLoader;

.field private final classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

.field private context:Lcom/esotericsoftware/kryo/util/ObjectMap;

.field private copyDepth:I

.field private copyReferences:Z

.field private copyShallow:Z

.field private defaultSerializer:Lcom/esotericsoftware/kryo/factories/SerializerFactory;

.field private final defaultSerializers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private depth:I

.field private genericsScope:Lcom/esotericsoftware/kryo/Generics;

.field private graphContext:Lcom/esotericsoftware/kryo/util/ObjectMap;

.field private final lowPriorityDefaultSerializerCount:I

.field private maxDepth:I

.field private needsCopyReference:Ljava/lang/Object;

.field private nextRegisterID:I

.field private originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

.field private readObject:Ljava/lang/Object;

.field private final readReferenceIds:Lcom/esotericsoftware/kryo/util/IntArray;

.field private referenceResolver:Lcom/esotericsoftware/kryo/ReferenceResolver;

.field private references:Z

.field private registrationRequired:Z

.field private strategy:Lorg/objenesis/strategy/InstantiatorStrategy;

.field private streamFactory:Lcom/esotericsoftware/kryo/StreamFactory;

.field private volatile thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 132
    new-instance v0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;-><init>()V

    new-instance v1, Lcom/esotericsoftware/kryo/util/MapReferenceResolver;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/util/MapReferenceResolver;-><init>()V

    new-instance v2, Lcom/esotericsoftware/kryo/util/DefaultStreamFactory;

    invoke-direct {v2}, Lcom/esotericsoftware/kryo/util/DefaultStreamFactory;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/esotericsoftware/kryo/Kryo;-><init>(Lcom/esotericsoftware/kryo/ClassResolver;Lcom/esotericsoftware/kryo/ReferenceResolver;Lcom/esotericsoftware/kryo/StreamFactory;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/ClassResolver;Lcom/esotericsoftware/kryo/ReferenceResolver;)V
    .locals 1
    .param p1, "classResolver"    # Lcom/esotericsoftware/kryo/ClassResolver;
    .param p2, "referenceResolver"    # Lcom/esotericsoftware/kryo/ReferenceResolver;

    .prologue
    .line 143
    new-instance v0, Lcom/esotericsoftware/kryo/util/DefaultStreamFactory;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/DefaultStreamFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;-><init>(Lcom/esotericsoftware/kryo/ClassResolver;Lcom/esotericsoftware/kryo/ReferenceResolver;Lcom/esotericsoftware/kryo/StreamFactory;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/ClassResolver;Lcom/esotericsoftware/kryo/ReferenceResolver;Lcom/esotericsoftware/kryo/StreamFactory;)V
    .locals 5
    .param p1, "classResolver"    # Lcom/esotericsoftware/kryo/ClassResolver;
    .param p2, "referenceResolver"    # Lcom/esotericsoftware/kryo/ReferenceResolver;
    .param p3, "streamFactory"    # Lcom/esotericsoftware/kryo/StreamFactory;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/esotericsoftware/kryo/factories/ReflectionSerializerFactory;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/factories/ReflectionSerializerFactory;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->defaultSerializer:Lcom/esotericsoftware/kryo/factories/SerializerFactory;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->defaultSerializers:Ljava/util/ArrayList;

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->classLoader:Ljava/lang/ClassLoader;

    .line 107
    new-instance v0, Lcom/esotericsoftware/kryo/Kryo$DefaultInstantiatorStrategy;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/Kryo$DefaultInstantiatorStrategy;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->strategy:Lorg/objenesis/strategy/InstantiatorStrategy;

    .line 110
    const v0, 0x7fffffff

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->maxDepth:I

    .line 111
    iput-boolean v3, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    .line 116
    new-instance v0, Lcom/esotericsoftware/kryo/util/IntArray;

    invoke-direct {v0, v4}, Lcom/esotericsoftware/kryo/util/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->readReferenceIds:Lcom/esotericsoftware/kryo/util/IntArray;

    .line 117
    iput-boolean v3, p0, Lcom/esotericsoftware/kryo/Kryo;->copyReferences:Z

    .line 126
    iput-boolean v4, p0, Lcom/esotericsoftware/kryo/Kryo;->asmEnabled:Z

    .line 148
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "classResolver cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    .line 151
    invoke-interface {p1, p0}, Lcom/esotericsoftware/kryo/ClassResolver;->setKryo(Lcom/esotericsoftware/kryo/Kryo;)V

    .line 153
    iput-object p3, p0, Lcom/esotericsoftware/kryo/Kryo;->streamFactory:Lcom/esotericsoftware/kryo/StreamFactory;

    .line 154
    invoke-interface {p3, p0}, Lcom/esotericsoftware/kryo/StreamFactory;->setKryo(Lcom/esotericsoftware/kryo/Kryo;)V

    .line 156
    iput-object p2, p0, Lcom/esotericsoftware/kryo/Kryo;->referenceResolver:Lcom/esotericsoftware/kryo/ReferenceResolver;

    .line 157
    if-eqz p2, :cond_1

    .line 158
    invoke-interface {p2, p0}, Lcom/esotericsoftware/kryo/ReferenceResolver;->setKryo(Lcom/esotericsoftware/kryo/Kryo;)V

    .line 159
    iput-boolean v3, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z

    .line 162
    :cond_1
    const-class v0, [B

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ByteArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 163
    const-class v0, [C

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$CharArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 164
    const-class v0, [S

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ShortArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 165
    const-class v0, [I

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$IntArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 166
    const-class v0, [J

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$LongArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 167
    const-class v0, [F

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$FloatArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 168
    const-class v0, [D

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$DoubleArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 169
    const-class v0, [Z

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$BooleanArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 170
    const-class v0, [Ljava/lang/String;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$StringArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 171
    const-class v0, [Ljava/lang/Object;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 172
    const-class v0, Lcom/esotericsoftware/kryo/KryoSerializable;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$KryoSerializableSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 173
    const-class v0, Ljava/math/BigInteger;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BigIntegerSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 174
    const-class v0, Ljava/math/BigDecimal;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BigDecimalSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 175
    const-class v0, Ljava/lang/Class;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$ClassSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 176
    const-class v0, Ljava/util/Date;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$DateSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 177
    const-class v0, Ljava/lang/Enum;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$EnumSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 178
    const-class v0, Ljava/util/EnumSet;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$EnumSetSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 179
    const-class v0, Ljava/util/Currency;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CurrencySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 180
    const-class v0, Ljava/lang/StringBuffer;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$StringBufferSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 181
    const-class v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$StringBuilderSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 182
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CollectionsEmptyListSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 183
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CollectionsEmptyMapSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 184
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CollectionsEmptySetSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 185
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CollectionsSingletonListSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 186
    invoke-static {v2, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CollectionsSingletonMapSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 187
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CollectionsSingletonSetSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 188
    const-class v0, Ljava/util/TreeSet;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TreeSetSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 189
    const-class v0, Ljava/util/Collection;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 190
    const-class v0, Ljava/util/TreeMap;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TreeMapSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 191
    const-class v0, Ljava/util/Map;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/MapSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 192
    const-class v0, Ljava/util/TimeZone;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TimeZoneSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 193
    const-class v0, Ljava/util/Calendar;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CalendarSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 194
    const-class v0, Ljava/util/Locale;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 195
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->defaultSerializers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->lowPriorityDefaultSerializerCount:I

    .line 198
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$IntSerializer;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$IntSerializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    .line 199
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$StringSerializer;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$StringSerializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    .line 200
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$FloatSerializer;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$FloatSerializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    .line 201
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BooleanSerializer;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BooleanSerializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    .line 202
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$ByteSerializer;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$ByteSerializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    .line 203
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CharSerializer;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CharSerializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    .line 204
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$ShortSerializer;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$ShortSerializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    .line 205
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LongSerializer;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LongSerializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    .line 206
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$DoubleSerializer;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$DoubleSerializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    .line 207
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$VoidSerializer;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$VoidSerializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    .line 208
    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/ReferenceResolver;)V
    .locals 2
    .param p1, "referenceResolver"    # Lcom/esotericsoftware/kryo/ReferenceResolver;

    .prologue
    .line 138
    new-instance v0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;-><init>()V

    new-instance v1, Lcom/esotericsoftware/kryo/util/DefaultStreamFactory;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/util/DefaultStreamFactory;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/esotericsoftware/kryo/Kryo;-><init>(Lcom/esotericsoftware/kryo/ClassResolver;Lcom/esotericsoftware/kryo/ReferenceResolver;Lcom/esotericsoftware/kryo/StreamFactory;)V

    .line 139
    return-void
.end method

.method private beginObject()V
    .locals 3

    .prologue
    .line 954
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 955
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v0, :cond_1

    .line 956
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->thread:Ljava/lang/Thread;

    .line 960
    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->maxDepth:I

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max depth exceeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 957
    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 958
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Kryo must not be accessed concurrently by multiple threads."

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 961
    :cond_2
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    .line 962
    return-void
.end method


# virtual methods
.method public addDefaultSerializer(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "serializer"    # Lcom/esotericsoftware/kryo/Serializer;

    .prologue
    .line 230
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "type cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "serializer cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    :cond_1
    new-instance v0, Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;

    new-instance v1, Lcom/esotericsoftware/kryo/factories/PseudoSerializerFactory;

    invoke-direct {v1, p2}, Lcom/esotericsoftware/kryo/factories/PseudoSerializerFactory;-><init>(Lcom/esotericsoftware/kryo/Serializer;)V

    invoke-direct {v0, p1, v1}, Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;-><init>(Ljava/lang/Class;Lcom/esotericsoftware/kryo/factories/SerializerFactory;)V

    .line 233
    .local v0, "entry":Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;
    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->defaultSerializers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->defaultSerializers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/esotericsoftware/kryo/Kryo;->lowPriorityDefaultSerializerCount:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 234
    return-void
.end method

.method public addDefaultSerializer(Ljava/lang/Class;Lcom/esotericsoftware/kryo/factories/SerializerFactory;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "serializerFactory"    # Lcom/esotericsoftware/kryo/factories/SerializerFactory;

    .prologue
    .line 237
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "type cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "serializerFactory cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    :cond_1
    new-instance v0, Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;

    invoke-direct {v0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;-><init>(Ljava/lang/Class;Lcom/esotericsoftware/kryo/factories/SerializerFactory;)V

    .line 240
    .local v0, "entry":Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;
    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->defaultSerializers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->defaultSerializers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/esotericsoftware/kryo/Kryo;->lowPriorityDefaultSerializerCount:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 241
    return-void
.end method

.method public addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/esotericsoftware/kryo/Serializer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p2, "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/esotericsoftware/kryo/Serializer;>;"
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "type cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "serializerClass cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 322
    :cond_1
    new-instance v0, Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;

    new-instance v1, Lcom/esotericsoftware/kryo/factories/ReflectionSerializerFactory;

    invoke-direct {v1, p2}, Lcom/esotericsoftware/kryo/factories/ReflectionSerializerFactory;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, p1, v1}, Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;-><init>(Ljava/lang/Class;Lcom/esotericsoftware/kryo/factories/SerializerFactory;)V

    .line 323
    .local v0, "entry":Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;
    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->defaultSerializers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->defaultSerializers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/esotericsoftware/kryo/Kryo;->lowPriorityDefaultSerializerCount:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 324
    return-void
.end method

.method public copy(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 849
    .local p1, "object":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 867
    .end local p1    # "object":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    return-object p1

    .line 850
    .restart local p1    # "object":Ljava/lang/Object;, "TT;"
    :cond_1
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyShallow:Z

    if-nez v2, :cond_0

    .line 851
    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    .line 853
    :try_start_0
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    if-nez v2, :cond_2

    new-instance v2, Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-direct {v2}, Lcom/esotericsoftware/kryo/util/IdentityMap;-><init>()V

    iput-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    .line 854
    :cond_2
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-virtual {v2, p1}, Lcom/esotericsoftware/kryo/util/IdentityMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 855
    .local v1, "existingCopy":Ljava/lang/Object;
    if-eqz v1, :cond_4

    .line 867
    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_3
    move-object p1, v1

    goto :goto_0

    .line 857
    :cond_4
    :try_start_1
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyReferences:Z

    if-eqz v2, :cond_5

    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->needsCopyReference:Ljava/lang/Object;

    .line 859
    :cond_5
    instance-of v2, p1, Lcom/esotericsoftware/kryo/KryoCopyable;

    if-eqz v2, :cond_a

    .line 860
    check-cast p1, Lcom/esotericsoftware/kryo/KryoCopyable;

    .end local p1    # "object":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p0}, Lcom/esotericsoftware/kryo/KryoCopyable;->copy(Lcom/esotericsoftware/kryo/Kryo;)Ljava/lang/Object;

    move-result-object v0

    .line 863
    .local v0, "copy":Ljava/lang/Object;
    :goto_1
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->needsCopyReference:Ljava/lang/Object;

    if-eqz v2, :cond_6

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    .line 864
    :cond_6
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v2, :cond_7

    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    :cond_7
    const-string v2, "Copy"

    invoke-static {v2, v0}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 867
    :cond_8
    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-nez v2, :cond_9

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_9
    move-object p1, v0

    goto :goto_0

    .line 862
    .end local v0    # "copy":Ljava/lang/Object;
    .restart local p1    # "object":Ljava/lang/Object;, "TT;"
    :cond_a
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/esotericsoftware/kryo/Serializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .restart local v0    # "copy":Ljava/lang/Object;
    goto :goto_1

    .line 867
    .end local v0    # "copy":Ljava/lang/Object;
    .end local v1    # "existingCopy":Ljava/lang/Object;
    .end local p1    # "object":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v2

    iget v3, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-nez v3, :cond_b

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_b
    throw v2
.end method

.method public copy(Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;
    .locals 4
    .param p2, "serializer"    # Lcom/esotericsoftware/kryo/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/esotericsoftware/kryo/Serializer;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 875
    .local p1, "object":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 893
    .end local p1    # "object":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    return-object p1

    .line 876
    .restart local p1    # "object":Ljava/lang/Object;, "TT;"
    :cond_1
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyShallow:Z

    if-nez v2, :cond_0

    .line 877
    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    .line 879
    :try_start_0
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    if-nez v2, :cond_2

    new-instance v2, Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-direct {v2}, Lcom/esotericsoftware/kryo/util/IdentityMap;-><init>()V

    iput-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    .line 880
    :cond_2
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-virtual {v2, p1}, Lcom/esotericsoftware/kryo/util/IdentityMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 881
    .local v1, "existingCopy":Ljava/lang/Object;
    if-eqz v1, :cond_4

    .line 893
    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_3
    move-object p1, v1

    goto :goto_0

    .line 883
    :cond_4
    :try_start_1
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyReferences:Z

    if-eqz v2, :cond_5

    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->needsCopyReference:Ljava/lang/Object;

    .line 885
    :cond_5
    instance-of v2, p1, Lcom/esotericsoftware/kryo/KryoCopyable;

    if-eqz v2, :cond_a

    .line 886
    check-cast p1, Lcom/esotericsoftware/kryo/KryoCopyable;

    .end local p1    # "object":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p0}, Lcom/esotericsoftware/kryo/KryoCopyable;->copy(Lcom/esotericsoftware/kryo/Kryo;)Ljava/lang/Object;

    move-result-object v0

    .line 889
    .local v0, "copy":Ljava/lang/Object;
    :goto_1
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->needsCopyReference:Ljava/lang/Object;

    if-eqz v2, :cond_6

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    .line 890
    :cond_6
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v2, :cond_7

    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    :cond_7
    const-string v2, "Copy"

    invoke-static {v2, v0}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 893
    :cond_8
    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-nez v2, :cond_9

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_9
    move-object p1, v0

    goto :goto_0

    .line 888
    .end local v0    # "copy":Ljava/lang/Object;
    .restart local p1    # "object":Ljava/lang/Object;, "TT;"
    :cond_a
    :try_start_2
    invoke-virtual {p2, p0, p1}, Lcom/esotericsoftware/kryo/Serializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .restart local v0    # "copy":Ljava/lang/Object;
    goto :goto_1

    .line 893
    .end local v0    # "copy":Ljava/lang/Object;
    .end local v1    # "existingCopy":Ljava/lang/Object;
    .end local p1    # "object":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v2

    iget v3, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-nez v3, :cond_b

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_b
    throw v2
.end method

.method public copyShallow(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "object":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 901
    if-nez p1, :cond_1

    const/4 v1, 0x0

    .line 920
    .end local p1    # "object":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    return-object v1

    .line 902
    .restart local p1    # "object":Ljava/lang/Object;, "TT;"
    :cond_1
    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    .line 903
    iput-boolean v4, p0, Lcom/esotericsoftware/kryo/Kryo;->copyShallow:Z

    .line 905
    :try_start_0
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    if-nez v2, :cond_2

    new-instance v2, Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-direct {v2}, Lcom/esotericsoftware/kryo/util/IdentityMap;-><init>()V

    iput-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    .line 906
    :cond_2
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-virtual {v2, p1}, Lcom/esotericsoftware/kryo/util/IdentityMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 907
    .local v1, "existingCopy":Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 919
    iput-boolean v3, p0, Lcom/esotericsoftware/kryo/Kryo;->copyShallow:Z

    .line 920
    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    goto :goto_0

    .line 909
    :cond_3
    :try_start_1
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyReferences:Z

    if-eqz v2, :cond_4

    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->needsCopyReference:Ljava/lang/Object;

    .line 911
    :cond_4
    instance-of v2, p1, Lcom/esotericsoftware/kryo/KryoCopyable;

    if-eqz v2, :cond_9

    .line 912
    check-cast p1, Lcom/esotericsoftware/kryo/KryoCopyable;

    .end local p1    # "object":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p0}, Lcom/esotericsoftware/kryo/KryoCopyable;->copy(Lcom/esotericsoftware/kryo/Kryo;)Ljava/lang/Object;

    move-result-object v0

    .line 915
    .local v0, "copy":Ljava/lang/Object;
    :goto_1
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->needsCopyReference:Ljava/lang/Object;

    if-eqz v2, :cond_5

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    .line 916
    :cond_5
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v2, :cond_6

    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-ne v2, v4, :cond_7

    :cond_6
    const-string v2, "Shallow copy"

    invoke-static {v2, v0}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 919
    :cond_7
    iput-boolean v3, p0, Lcom/esotericsoftware/kryo/Kryo;->copyShallow:Z

    .line 920
    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_8
    move-object v1, v0

    goto :goto_0

    .line 914
    .end local v0    # "copy":Ljava/lang/Object;
    .restart local p1    # "object":Ljava/lang/Object;, "TT;"
    :cond_9
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/esotericsoftware/kryo/Serializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .restart local v0    # "copy":Ljava/lang/Object;
    goto :goto_1

    .line 919
    .end local v0    # "copy":Ljava/lang/Object;
    .end local v1    # "existingCopy":Ljava/lang/Object;
    .end local p1    # "object":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v2

    iput-boolean v3, p0, Lcom/esotericsoftware/kryo/Kryo;->copyShallow:Z

    .line 920
    iget v3, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-nez v3, :cond_a

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_a
    throw v2
.end method

.method public copyShallow(Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;
    .locals 5
    .param p2, "serializer"    # Lcom/esotericsoftware/kryo/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/esotericsoftware/kryo/Serializer;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p1, "object":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 928
    if-nez p1, :cond_1

    const/4 v1, 0x0

    .line 947
    .end local p1    # "object":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    return-object v1

    .line 929
    .restart local p1    # "object":Ljava/lang/Object;, "TT;"
    :cond_1
    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    .line 930
    iput-boolean v4, p0, Lcom/esotericsoftware/kryo/Kryo;->copyShallow:Z

    .line 932
    :try_start_0
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    if-nez v2, :cond_2

    new-instance v2, Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-direct {v2}, Lcom/esotericsoftware/kryo/util/IdentityMap;-><init>()V

    iput-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    .line 933
    :cond_2
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-virtual {v2, p1}, Lcom/esotericsoftware/kryo/util/IdentityMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 934
    .local v1, "existingCopy":Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 946
    iput-boolean v3, p0, Lcom/esotericsoftware/kryo/Kryo;->copyShallow:Z

    .line 947
    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    goto :goto_0

    .line 936
    :cond_3
    :try_start_1
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyReferences:Z

    if-eqz v2, :cond_4

    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->needsCopyReference:Ljava/lang/Object;

    .line 938
    :cond_4
    instance-of v2, p1, Lcom/esotericsoftware/kryo/KryoCopyable;

    if-eqz v2, :cond_9

    .line 939
    check-cast p1, Lcom/esotericsoftware/kryo/KryoCopyable;

    .end local p1    # "object":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p0}, Lcom/esotericsoftware/kryo/KryoCopyable;->copy(Lcom/esotericsoftware/kryo/Kryo;)Ljava/lang/Object;

    move-result-object v0

    .line 942
    .local v0, "copy":Ljava/lang/Object;
    :goto_1
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->needsCopyReference:Ljava/lang/Object;

    if-eqz v2, :cond_5

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    .line 943
    :cond_5
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v2, :cond_6

    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-ne v2, v4, :cond_7

    :cond_6
    const-string v2, "Shallow copy"

    invoke-static {v2, v0}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 946
    :cond_7
    iput-boolean v3, p0, Lcom/esotericsoftware/kryo/Kryo;->copyShallow:Z

    .line 947
    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_8
    move-object v1, v0

    goto :goto_0

    .line 941
    .end local v0    # "copy":Ljava/lang/Object;
    .restart local p1    # "object":Ljava/lang/Object;, "TT;"
    :cond_9
    :try_start_2
    invoke-virtual {p2, p0, p1}, Lcom/esotericsoftware/kryo/Serializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .restart local v0    # "copy":Ljava/lang/Object;
    goto :goto_1

    .line 946
    .end local v0    # "copy":Ljava/lang/Object;
    .end local v1    # "existingCopy":Ljava/lang/Object;
    .end local p1    # "object":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v2

    iput-boolean v3, p0, Lcom/esotericsoftware/kryo/Kryo;->copyShallow:Z

    .line 947
    iget v3, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-nez v3, :cond_a

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_a
    throw v2
.end method

.method public getAsmEnabled()Z
    .locals 1

    .prologue
    .line 1167
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->asmEnabled:Z

    return v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getClassResolver()Lcom/esotericsoftware/kryo/ClassResolver;
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    return-object v0
.end method

.method public getContext()Lcom/esotericsoftware/kryo/util/ObjectMap;
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->context:Lcom/esotericsoftware/kryo/util/ObjectMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/esotericsoftware/kryo/util/ObjectMap;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->context:Lcom/esotericsoftware/kryo/util/ObjectMap;

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->context:Lcom/esotericsoftware/kryo/util/ObjectMap;

    return-object v0
.end method

.method public getDefaultSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;
    .locals 7
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 329
    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "type cannot be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 331
    :cond_0
    const-class v5, Lcom/esotericsoftware/kryo/DefaultSerializer;

    invoke-virtual {p1, v5}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 332
    const-class v5, Lcom/esotericsoftware/kryo/DefaultSerializer;

    invoke-virtual {p1, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/esotericsoftware/kryo/DefaultSerializer;

    .line 333
    .local v1, "defaultSerializerAnnotation":Lcom/esotericsoftware/kryo/DefaultSerializer;
    invoke-interface {v1}, Lcom/esotericsoftware/kryo/DefaultSerializer;->value()Ljava/lang/Class;

    move-result-object v5

    invoke-static {p0, v5, p1}, Lcom/esotericsoftware/kryo/factories/ReflectionSerializerFactory;->makeSerializer(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v0

    .line 344
    .end local v1    # "defaultSerializerAnnotation":Lcom/esotericsoftware/kryo/DefaultSerializer;
    :goto_0
    return-object v0

    .line 336
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v5, p0, Lcom/esotericsoftware/kryo/Kryo;->defaultSerializers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "n":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 337
    iget-object v5, p0, Lcom/esotericsoftware/kryo/Kryo;->defaultSerializers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;

    .line 338
    .local v2, "entry":Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;
    iget-object v5, v2, Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;->type:Ljava/lang/Class;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 339
    iget-object v5, v2, Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;->serializerFactory:Lcom/esotericsoftware/kryo/factories/SerializerFactory;

    invoke-interface {v5, p0, p1}, Lcom/esotericsoftware/kryo/factories/SerializerFactory;->makeSerializer(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v0

    .line 340
    .local v0, "defaultSerializer":Lcom/esotericsoftware/kryo/Serializer;
    goto :goto_0

    .line 336
    .end local v0    # "defaultSerializer":Lcom/esotericsoftware/kryo/Serializer;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 344
    .end local v2    # "entry":Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->newDefaultSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v0

    goto :goto_0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 1079
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    return v0
.end method

.method public getGenericsScope()Lcom/esotericsoftware/kryo/Generics;
    .locals 1

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->genericsScope:Lcom/esotericsoftware/kryo/Generics;

    return-object v0
.end method

.method public getGraphContext()Lcom/esotericsoftware/kryo/util/ObjectMap;
    .locals 1

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->graphContext:Lcom/esotericsoftware/kryo/util/ObjectMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/esotericsoftware/kryo/util/ObjectMap;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->graphContext:Lcom/esotericsoftware/kryo/util/ObjectMap;

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->graphContext:Lcom/esotericsoftware/kryo/util/ObjectMap;

    return-object v0
.end method

.method public getInstantiatorStrategy()Lorg/objenesis/strategy/InstantiatorStrategy;
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->strategy:Lorg/objenesis/strategy/InstantiatorStrategy;

    return-object v0
.end method

.method public getNextRegistrationId()I
    .locals 2

    .prologue
    .line 431
    :goto_0
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->nextRegisterID:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    .line 432
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->nextRegisterID:I

    invoke-interface {v0, v1}, Lcom/esotericsoftware/kryo/ClassResolver;->getRegistration(I)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->nextRegisterID:I

    return v0

    .line 433
    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->nextRegisterID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->nextRegisterID:I

    goto :goto_0

    .line 435
    :cond_1
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    const-string v1, "No registration IDs are available."

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOriginalToCopyMap()Lcom/esotericsoftware/kryo/util/IdentityMap;
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    return-object v0
.end method

.method public getReferenceResolver()Lcom/esotericsoftware/kryo/ReferenceResolver;
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->referenceResolver:Lcom/esotericsoftware/kryo/ReferenceResolver;

    return-object v0
.end method

.method public getReferences()Z
    .locals 1

    .prologue
    .line 1029
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z

    return v0
.end method

.method public getRegistration(I)Lcom/esotericsoftware/kryo/Registration;
    .locals 1
    .param p1, "classID"    # I

    .prologue
    .line 469
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v0, p1}, Lcom/esotericsoftware/kryo/ClassResolver;->getRegistration(I)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    return-object v0
.end method

.method public getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 443
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "type cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 445
    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v1, p1}, Lcom/esotericsoftware/kryo/ClassResolver;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    .line 446
    .local v0, "registration":Lcom/esotericsoftware/kryo/Registration;
    if-nez v0, :cond_5

    .line 447
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 449
    const-class v1, Ljava/lang/reflect/InvocationHandler;

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    .line 456
    :cond_1
    :goto_0
    if-nez v0, :cond_5

    .line 457
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->registrationRequired:Z

    if-eqz v1, :cond_4

    .line 458
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class is not registered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nNote: To register this class use: kryo.register("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".class);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 450
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_3

    const-class v1, Ljava/lang/Enum;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 452
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    goto :goto_0

    .line 453
    :cond_3
    const-class v1, Ljava/util/EnumSet;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    const-class v2, Ljava/util/EnumSet;

    invoke-interface {v1, v2}, Lcom/esotericsoftware/kryo/ClassResolver;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    goto :goto_0

    .line 461
    :cond_4
    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v1, p1}, Lcom/esotericsoftware/kryo/ClassResolver;->registerImplicit(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    .line 464
    :cond_5
    return-object v0
.end method

.method public getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 476
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v0

    return-object v0
.end method

.method public getStreamFactory()Lcom/esotericsoftware/kryo/StreamFactory;
    .locals 1

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->streamFactory:Lcom/esotericsoftware/kryo/StreamFactory;

    return-object v0
.end method

.method public isFinal(Ljava/lang/Class;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 1110
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1111
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->getElementClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    .line 1112
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isRegistrationRequired()Z
    .locals 1

    .prologue
    .line 997
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->registrationRequired:Z

    return v0
.end method

.method protected newDefaultSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->defaultSerializer:Lcom/esotericsoftware/kryo/factories/SerializerFactory;

    invoke-interface {v0, p0, p1}, Lcom/esotericsoftware/kryo/factories/SerializerFactory;->makeSerializer(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1055
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1

    .line 1056
    .local v1, "registration":Lcom/esotericsoftware/kryo/Registration;
    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Registration;->getInstantiator()Lorg/objenesis/instantiator/ObjectInstantiator;

    move-result-object v0

    .line 1057
    .local v0, "instantiator":Lorg/objenesis/instantiator/ObjectInstantiator;
    if-nez v0, :cond_0

    .line 1058
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->newInstantiator(Ljava/lang/Class;)Lorg/objenesis/instantiator/ObjectInstantiator;

    move-result-object v0

    .line 1059
    invoke-virtual {v1, v0}, Lcom/esotericsoftware/kryo/Registration;->setInstantiator(Lorg/objenesis/instantiator/ObjectInstantiator;)V

    .line 1061
    :cond_0
    invoke-interface {v0}, Lorg/objenesis/instantiator/ObjectInstantiator;->newInstance()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method protected newInstantiator(Ljava/lang/Class;)Lorg/objenesis/instantiator/ObjectInstantiator;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->strategy:Lorg/objenesis/strategy/InstantiatorStrategy;

    invoke-interface {v0, p1}, Lorg/objenesis/strategy/InstantiatorStrategy;->newInstantiatorOf(Ljava/lang/Class;)Lorg/objenesis/instantiator/ObjectInstantiator;

    move-result-object v0

    return-object v0
.end method

.method public popGenericsScope()V
    .locals 2

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->genericsScope:Lcom/esotericsoftware/kryo/Generics;

    .line 1137
    .local v0, "oldScope":Lcom/esotericsoftware/kryo/Generics;
    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->genericsScope:Lcom/esotericsoftware/kryo/Generics;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->genericsScope:Lcom/esotericsoftware/kryo/Generics;

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Generics;->getParentScope()Lcom/esotericsoftware/kryo/Generics;

    move-result-object v1

    iput-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->genericsScope:Lcom/esotericsoftware/kryo/Generics;

    .line 1138
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/Generics;->resetParentScope()V

    .line 1139
    :cond_1
    return-void
.end method

.method public pushGenericsScope(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Generics;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "generics"    # Lcom/esotericsoftware/kryo/Generics;

    .prologue
    .line 1126
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v2, :cond_0

    const-string v2, "kryo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settting a new generics scope for class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->genericsScope:Lcom/esotericsoftware/kryo/Generics;

    .line 1128
    .local v0, "currentScope":Lcom/esotericsoftware/kryo/Generics;
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/Generics;->getParentScope()Lcom/esotericsoftware/kryo/Generics;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1129
    new-instance v1, Lcom/esotericsoftware/kryo/Generics;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/Generics;->getMappings()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/esotericsoftware/kryo/Generics;-><init>(Ljava/util/Map;)V

    .end local p2    # "generics":Lcom/esotericsoftware/kryo/Generics;
    .local v1, "generics":Lcom/esotericsoftware/kryo/Generics;
    move-object p2, v1

    .line 1131
    .end local v1    # "generics":Lcom/esotericsoftware/kryo/Generics;
    .restart local p2    # "generics":Lcom/esotericsoftware/kryo/Generics;
    :cond_1
    iput-object p2, p0, Lcom/esotericsoftware/kryo/Kryo;->genericsScope:Lcom/esotericsoftware/kryo/Generics;

    .line 1132
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->genericsScope:Lcom/esotericsoftware/kryo/Generics;

    invoke-virtual {v2, v0}, Lcom/esotericsoftware/kryo/Generics;->setParentScope(Lcom/esotericsoftware/kryo/Generics;)V

    .line 1133
    return-void
.end method

.method public readClass(Lcom/esotericsoftware/kryo/io/Input;)Lcom/esotericsoftware/kryo/Registration;
    .locals 2
    .param p1, "input"    # Lcom/esotericsoftware/kryo/io/Input;

    .prologue
    .line 639
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v0, p1}, Lcom/esotericsoftware/kryo/ClassResolver;->readClass(Lcom/esotericsoftware/kryo/io/Input;)Lcom/esotericsoftware/kryo/Registration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 643
    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_2
    throw v0
.end method

.method public readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;
    .locals 6
    .param p1, "input"    # Lcom/esotericsoftware/kryo/io/Input;

    .prologue
    const/4 v0, 0x0

    .line 749
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "input cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 750
    :cond_0
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Kryo;->beginObject()V

    .line 752
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->readClass(Lcom/esotericsoftware/kryo/io/Input;)Lcom/esotericsoftware/kryo/Registration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 753
    .local v1, "registration":Lcom/esotericsoftware/kryo/Registration;
    if-nez v1, :cond_2

    .line 768
    iget v4, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_1
    :goto_0
    return-object v0

    .line 754
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Registration;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 757
    .local v3, "type":Ljava/lang/Class;
    iget-boolean v4, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z

    if-eqz v4, :cond_7

    .line 758
    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5}, Lcom/esotericsoftware/kryo/Serializer;->setGenerics(Lcom/esotericsoftware/kryo/Kryo;[Ljava/lang/Class;)V

    .line 759
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v3, v4}, Lcom/esotericsoftware/kryo/Kryo;->readReferenceOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Z)I

    move-result v2

    .line 760
    .local v2, "stackSize":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->readObject:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 768
    iget v4, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    goto :goto_0

    .line 761
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v4

    invoke-virtual {v4, p0, p1, v3}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 762
    .local v0, "object":Ljava/lang/Object;
    iget-object v4, p0, Lcom/esotericsoftware/kryo/Kryo;->readReferenceIds:Lcom/esotericsoftware/kryo/util/IntArray;

    iget v4, v4, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-ne v2, v4, :cond_4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    .line 765
    .end local v2    # "stackSize":I
    :cond_4
    :goto_1
    sget-boolean v4, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v4, :cond_5

    sget-boolean v4, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    :cond_5
    const-string v4, "Read"

    invoke-static {v4, v0}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 768
    :cond_6
    iget v4, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    goto :goto_0

    .line 764
    .end local v0    # "object":Ljava/lang/Object;
    :cond_7
    :try_start_3
    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v4

    invoke-virtual {v4, p0, p1, v3}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .restart local v0    # "object":Ljava/lang/Object;
    goto :goto_1

    .line 768
    .end local v0    # "object":Ljava/lang/Object;
    .end local v1    # "registration":Lcom/esotericsoftware/kryo/Registration;
    .end local v3    # "type":Ljava/lang/Class;
    :catchall_0
    move-exception v4

    iget v5, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v5, :cond_8

    iget-boolean v5, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_8
    throw v4
.end method

.method public readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 649
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "input cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 650
    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "type cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 651
    :cond_1
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Kryo;->beginObject()V

    .line 654
    :try_start_0
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z

    if-eqz v2, :cond_7

    .line 655
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lcom/esotericsoftware/kryo/Kryo;->readReferenceOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Z)I

    move-result v1

    .line 656
    .local v1, "stackSize":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->readObject:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .end local v1    # "stackSize":I
    :cond_2
    :goto_0
    return-object v0

    .line 657
    .restart local v1    # "stackSize":I
    :cond_3
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v2

    invoke-virtual {v2, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 658
    .local v0, "object":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->readReferenceIds:Lcom/esotericsoftware/kryo/util/IntArray;

    iget v2, v2, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-ne v1, v2, :cond_4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    .line 661
    .end local v1    # "stackSize":I
    :cond_4
    :goto_1
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v2, :cond_5

    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    :cond_5
    const-string v2, "Read"

    invoke-static {v2, v0}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 664
    :cond_6
    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    goto :goto_0

    .line 660
    .end local v0    # "object":Ljava/lang/Object;, "TT;"
    :cond_7
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v2

    invoke-virtual {v2, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .restart local v0    # "object":Ljava/lang/Object;, "TT;"
    goto :goto_1

    .line 664
    .end local v0    # "object":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v2

    iget v3, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_8
    throw v2
.end method

.method public readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;
    .locals 4
    .param p1, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .param p3, "serializer"    # Lcom/esotericsoftware/kryo/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/esotericsoftware/kryo/Serializer;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 670
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "input cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 671
    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "type cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 672
    :cond_1
    if-nez p3, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "serializer cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 673
    :cond_2
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Kryo;->beginObject()V

    .line 676
    :try_start_0
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z

    if-eqz v2, :cond_8

    .line 677
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lcom/esotericsoftware/kryo/Kryo;->readReferenceOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Z)I

    move-result v1

    .line 678
    .local v1, "stackSize":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->readObject:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .end local v1    # "stackSize":I
    :cond_3
    :goto_0
    return-object v0

    .line 679
    .restart local v1    # "stackSize":I
    :cond_4
    :try_start_1
    invoke-virtual {p3, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 680
    .local v0, "object":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->readReferenceIds:Lcom/esotericsoftware/kryo/util/IntArray;

    iget v2, v2, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-ne v1, v2, :cond_5

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    .line 683
    .end local v1    # "stackSize":I
    :cond_5
    :goto_1
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v2, :cond_6

    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    :cond_6
    const-string v2, "Read"

    invoke-static {v2, v0}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 686
    :cond_7
    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    goto :goto_0

    .line 682
    .end local v0    # "object":Ljava/lang/Object;, "TT;"
    :cond_8
    :try_start_2
    invoke-virtual {p3, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .restart local v0    # "object":Ljava/lang/Object;, "TT;"
    goto :goto_1

    .line 686
    .end local v0    # "object":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v2

    iget v3, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_9
    throw v2
.end method

.method public readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p1, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 693
    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "input cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 694
    :cond_0
    if-nez p2, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "type cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 695
    :cond_1
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Kryo;->beginObject()V

    .line 698
    :try_start_0
    iget-boolean v3, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z

    if-eqz v3, :cond_7

    .line 699
    const/4 v3, 0x1

    invoke-virtual {p0, p1, p2, v3}, Lcom/esotericsoftware/kryo/Kryo;->readReferenceOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Z)I

    move-result v2

    .line 700
    .local v2, "stackSize":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->readObject:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    iget v3, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .end local v2    # "stackSize":I
    :cond_2
    :goto_0
    return-object v0

    .line 701
    .restart local v2    # "stackSize":I
    :cond_3
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v3

    invoke-virtual {v3, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 702
    .local v0, "object":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/esotericsoftware/kryo/Kryo;->readReferenceIds:Lcom/esotericsoftware/kryo/util/IntArray;

    iget v3, v3, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-ne v2, v3, :cond_4

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    .line 711
    .end local v2    # "stackSize":I
    :cond_4
    :goto_1
    sget-boolean v3, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v3, :cond_5

    sget-boolean v3, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-ne v3, v4, :cond_6

    :cond_5
    const-string v3, "Read"

    invoke-static {v3, v0}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 714
    :cond_6
    iget v3, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    goto :goto_0

    .line 704
    .end local v0    # "object":Ljava/lang/Object;, "TT;"
    :cond_7
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v1

    .line 705
    .local v1, "serializer":Lcom/esotericsoftware/kryo/Serializer;
    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Serializer;->getAcceptsNull()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->readByte()B

    move-result v3

    if-nez v3, :cond_a

    .line 706
    sget-boolean v3, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v3, :cond_8

    sget-boolean v3, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-ne v3, v4, :cond_9

    :cond_8
    const-string v3, "Read"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 714
    :cond_9
    iget v3, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    goto :goto_0

    .line 709
    :cond_a
    :try_start_3
    invoke-virtual {v1, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .restart local v0    # "object":Ljava/lang/Object;, "TT;"
    goto :goto_1

    .line 714
    .end local v0    # "object":Ljava/lang/Object;, "TT;"
    .end local v1    # "serializer":Lcom/esotericsoftware/kryo/Serializer;
    :catchall_0
    move-exception v3

    iget v4, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v4, :cond_b

    iget-boolean v4, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_b
    throw v3
.end method

.method public readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;
    .locals 4
    .param p1, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .param p3, "serializer"    # Lcom/esotericsoftware/kryo/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/esotericsoftware/kryo/Serializer;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 721
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "input cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 722
    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "type cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 723
    :cond_1
    if-nez p3, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "serializer cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 724
    :cond_2
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Kryo;->beginObject()V

    .line 727
    :try_start_0
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z

    if-eqz v2, :cond_8

    .line 728
    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v2}, Lcom/esotericsoftware/kryo/Kryo;->readReferenceOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Z)I

    move-result v1

    .line 729
    .local v1, "stackSize":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->readObject:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .end local v1    # "stackSize":I
    :cond_3
    :goto_0
    return-object v0

    .line 730
    .restart local v1    # "stackSize":I
    :cond_4
    :try_start_1
    invoke-virtual {p3, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 731
    .local v0, "object":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->readReferenceIds:Lcom/esotericsoftware/kryo/util/IntArray;

    iget v2, v2, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-ne v1, v2, :cond_5

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    .line 739
    .end local v1    # "stackSize":I
    :cond_5
    :goto_1
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v2, :cond_6

    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-ne v2, v3, :cond_7

    :cond_6
    const-string v2, "Read"

    invoke-static {v2, v0}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 742
    :cond_7
    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    goto :goto_0

    .line 733
    .end local v0    # "object":Ljava/lang/Object;, "TT;"
    :cond_8
    :try_start_2
    invoke-virtual {p3}, Lcom/esotericsoftware/kryo/Serializer;->getAcceptsNull()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->readByte()B

    move-result v2

    if-nez v2, :cond_b

    .line 734
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v2, :cond_9

    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-ne v2, v3, :cond_a

    :cond_9
    const-string v2, "Read"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 742
    :cond_a
    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    goto :goto_0

    .line 737
    :cond_b
    :try_start_3
    invoke-virtual {p3, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .restart local v0    # "object":Ljava/lang/Object;, "TT;"
    goto :goto_1

    .line 742
    .end local v0    # "object":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v2

    iget v3, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v3, :cond_c

    iget-boolean v3, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_c
    throw v2
.end method

.method readReferenceOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Z)I
    .locals 7
    .param p1, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "mayBeNull"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v2, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x1

    .line 775
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p2}, Lcom/esotericsoftware/kryo/util/Util;->getWrapperClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    .line 776
    :cond_0
    iget-object v3, p0, Lcom/esotericsoftware/kryo/Kryo;->referenceResolver:Lcom/esotericsoftware/kryo/ReferenceResolver;

    invoke-interface {v3, p2}, Lcom/esotericsoftware/kryo/ReferenceResolver;->useReferences(Ljava/lang/Class;)Z

    move-result v1

    .line 778
    .local v1, "referencesSupported":Z
    if-eqz p3, :cond_5

    .line 779
    invoke-virtual {p1, v4}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    .line 780
    .local v0, "id":I
    if-nez v0, :cond_4

    .line 781
    sget-boolean v3, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-ne v3, v4, :cond_2

    :cond_1
    const-string v3, "Read"

    invoke-static {v3, v6}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 782
    :cond_2
    iput-object v6, p0, Lcom/esotericsoftware/kryo/Kryo;->readObject:Ljava/lang/Object;

    .line 807
    .end local v0    # "id":I
    :cond_3
    :goto_0
    return v2

    .line 785
    .restart local v0    # "id":I
    :cond_4
    if-nez v1, :cond_7

    .line 786
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->readReferenceIds:Lcom/esotericsoftware/kryo/util/IntArray;

    invoke-virtual {v2, v5}, Lcom/esotericsoftware/kryo/util/IntArray;->add(I)V

    .line 787
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->readReferenceIds:Lcom/esotericsoftware/kryo/util/IntArray;

    iget v2, v2, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    goto :goto_0

    .line 790
    .end local v0    # "id":I
    :cond_5
    if-nez v1, :cond_6

    .line 791
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->readReferenceIds:Lcom/esotericsoftware/kryo/util/IntArray;

    invoke-virtual {v2, v5}, Lcom/esotericsoftware/kryo/util/IntArray;->add(I)V

    .line 792
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->readReferenceIds:Lcom/esotericsoftware/kryo/util/IntArray;

    iget v2, v2, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    goto :goto_0

    .line 794
    :cond_6
    invoke-virtual {p1, v4}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    .line 796
    .restart local v0    # "id":I
    :cond_7
    if-ne v0, v4, :cond_9

    .line 798
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->referenceResolver:Lcom/esotericsoftware/kryo/ReferenceResolver;

    invoke-interface {v2, p2}, Lcom/esotericsoftware/kryo/ReferenceResolver;->nextReadId(Ljava/lang/Class;)I

    move-result v0

    .line 799
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v2, :cond_8

    const-string v2, "kryo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read initial object reference "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    :cond_8
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->readReferenceIds:Lcom/esotericsoftware/kryo/util/IntArray;

    invoke-virtual {v2, v0}, Lcom/esotericsoftware/kryo/util/IntArray;->add(I)V

    .line 801
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->readReferenceIds:Lcom/esotericsoftware/kryo/util/IntArray;

    iget v2, v2, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    goto :goto_0

    .line 804
    :cond_9
    add-int/lit8 v0, v0, -0x2

    .line 805
    iget-object v3, p0, Lcom/esotericsoftware/kryo/Kryo;->referenceResolver:Lcom/esotericsoftware/kryo/ReferenceResolver;

    invoke-interface {v3, p2, v0}, Lcom/esotericsoftware/kryo/ReferenceResolver;->getReadObject(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/esotericsoftware/kryo/Kryo;->readObject:Ljava/lang/Object;

    .line 806
    sget-boolean v3, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "kryo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read object reference "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/esotericsoftware/kryo/Kryo;->readObject:Ljava/lang/Object;

    invoke-static {v5}, Lcom/esotericsoftware/kryo/util/Util;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public reference(Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 815
    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-lez v1, :cond_2

    .line 816
    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->needsCopyReference:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 817
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "object cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 818
    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->needsCopyReference:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/esotericsoftware/kryo/util/IdentityMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->needsCopyReference:Ljava/lang/Object;

    .line 825
    :cond_1
    :goto_0
    return-void

    .line 821
    :cond_2
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 822
    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->readReferenceIds:Lcom/esotericsoftware/kryo/util/IntArray;

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/util/IntArray;->pop()I

    move-result v0

    .line 823
    .local v0, "id":I
    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->referenceResolver:Lcom/esotericsoftware/kryo/ReferenceResolver;

    invoke-interface {v1, v0, p1}, Lcom/esotericsoftware/kryo/ReferenceResolver;->setReadObject(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public register(Lcom/esotericsoftware/kryo/Registration;)Lcom/esotericsoftware/kryo/Registration;
    .locals 5
    .param p1, "registration"    # Lcom/esotericsoftware/kryo/Registration;

    .prologue
    .line 417
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Registration;->getId()I

    move-result v1

    .line 418
    .local v1, "id":I
    if-gez v1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id must be > 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 420
    :cond_0
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Registration;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(I)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    .line 421
    .local v0, "existing":Lcom/esotericsoftware/kryo/Registration;
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/Registration;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Registration;->getType()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An existing registration with a different type already uses ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Registration;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nExisting registration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nUnable to set registration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;)V

    .line 426
    :cond_1
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v2, p1}, Lcom/esotericsoftware/kryo/ClassResolver;->register(Lcom/esotericsoftware/kryo/Registration;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v2

    return-object v2
.end method

.method public register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 363
    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v1, p1}, Lcom/esotericsoftware/kryo/ClassResolver;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    .line 364
    .local v0, "registration":Lcom/esotericsoftware/kryo/Registration;
    if-eqz v0, :cond_0

    .line 365
    .end local v0    # "registration":Lcom/esotericsoftware/kryo/Registration;
    :goto_0
    return-object v0

    .restart local v0    # "registration":Lcom/esotericsoftware/kryo/Registration;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->getDefaultSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    goto :goto_0
.end method

.method public register(Ljava/lang/Class;I)Lcom/esotericsoftware/kryo/Registration;
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "id"    # I

    .prologue
    .line 376
    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v1, p1}, Lcom/esotericsoftware/kryo/ClassResolver;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    .line 377
    .local v0, "registration":Lcom/esotericsoftware/kryo/Registration;
    if-eqz v0, :cond_0

    .line 378
    .end local v0    # "registration":Lcom/esotericsoftware/kryo/Registration;
    :goto_0
    return-object v0

    .restart local v0    # "registration":Lcom/esotericsoftware/kryo/Registration;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->getDefaultSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p2}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;I)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    goto :goto_0
.end method

.method public register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "serializer"    # Lcom/esotericsoftware/kryo/Serializer;

    .prologue
    .line 388
    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v1, p1}, Lcom/esotericsoftware/kryo/ClassResolver;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    .line 389
    .local v0, "registration":Lcom/esotericsoftware/kryo/Registration;
    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0, p2}, Lcom/esotericsoftware/kryo/Registration;->setSerializer(Lcom/esotericsoftware/kryo/Serializer;)V

    .line 393
    .end local v0    # "registration":Lcom/esotericsoftware/kryo/Registration;
    :goto_0
    return-object v0

    .restart local v0    # "registration":Lcom/esotericsoftware/kryo/Registration;
    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    new-instance v2, Lcom/esotericsoftware/kryo/Registration;

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->getNextRegistrationId()I

    move-result v3

    invoke-direct {v2, p1, p2, v3}, Lcom/esotericsoftware/kryo/Registration;-><init>(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;I)V

    invoke-interface {v1, v2}, Lcom/esotericsoftware/kryo/ClassResolver;->register(Lcom/esotericsoftware/kryo/Registration;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    goto :goto_0
.end method

.method public register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;I)Lcom/esotericsoftware/kryo/Registration;
    .locals 3
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "serializer"    # Lcom/esotericsoftware/kryo/Serializer;
    .param p3, "id"    # I

    .prologue
    .line 404
    if-gez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_0
    new-instance v0, Lcom/esotericsoftware/kryo/Registration;

    invoke-direct {v0, p1, p2, p3}, Lcom/esotericsoftware/kryo/Registration;-><init>(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;I)V

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/Kryo;->register(Lcom/esotericsoftware/kryo/Registration;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 832
    iput v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    .line 833
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->graphContext:Lcom/esotericsoftware/kryo/util/ObjectMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->graphContext:Lcom/esotericsoftware/kryo/util/ObjectMap;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->clear()V

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v0}, Lcom/esotericsoftware/kryo/ClassResolver;->reset()V

    .line 835
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z

    if-eqz v0, :cond_1

    .line 836
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->referenceResolver:Lcom/esotericsoftware/kryo/ReferenceResolver;

    invoke-interface {v0}, Lcom/esotericsoftware/kryo/ReferenceResolver;->reset()V

    .line 837
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->readObject:Ljava/lang/Object;

    .line 840
    :cond_1
    iput v1, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    .line 841
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/util/IdentityMap;->clear(I)V

    .line 843
    :cond_2
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_3

    const-string v0, "kryo"

    const-string v1, "Object graph complete."

    invoke-static {v0, v1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    :cond_3
    return-void
.end method

.method public setAsmEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1163
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->asmEnabled:Z

    .line 1164
    return-void
.end method

.method public setAutoReset(Z)V
    .locals 0
    .param p1, "autoReset"    # Z

    .prologue
    .line 1093
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    .line 1094
    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 975
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "classLoader cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 976
    :cond_0
    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->classLoader:Ljava/lang/ClassLoader;

    .line 977
    return-void
.end method

.method public setCopyReferences(Z)V
    .locals 0
    .param p1, "copyReferences"    # Z

    .prologue
    .line 1017
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->copyReferences:Z

    .line 1018
    return-void
.end method

.method public setDefaultSerializer(Lcom/esotericsoftware/kryo/factories/SerializerFactory;)V
    .locals 2
    .param p1, "serializer"    # Lcom/esotericsoftware/kryo/factories/SerializerFactory;

    .prologue
    .line 215
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serializer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->defaultSerializer:Lcom/esotericsoftware/kryo/factories/SerializerFactory;

    .line 217
    return-void
.end method

.method public setDefaultSerializer(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/esotericsoftware/kryo/Serializer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "serializer":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/esotericsoftware/kryo/Serializer;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serializer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    new-instance v0, Lcom/esotericsoftware/kryo/factories/ReflectionSerializerFactory;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/factories/ReflectionSerializerFactory;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->defaultSerializer:Lcom/esotericsoftware/kryo/factories/SerializerFactory;

    .line 225
    return-void
.end method

.method public setInstantiatorStrategy(Lorg/objenesis/strategy/InstantiatorStrategy;)V
    .locals 0
    .param p1, "strategy"    # Lorg/objenesis/strategy/InstantiatorStrategy;

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->strategy:Lorg/objenesis/strategy/InstantiatorStrategy;

    .line 1038
    return-void
.end method

.method public setMaxDepth(I)V
    .locals 2
    .param p1, "maxDepth"    # I

    .prologue
    .line 1099
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxDepth must be > 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1100
    :cond_0
    iput p1, p0, Lcom/esotericsoftware/kryo/Kryo;->maxDepth:I

    .line 1101
    return-void
.end method

.method public setReferenceResolver(Lcom/esotericsoftware/kryo/ReferenceResolver;)V
    .locals 3
    .param p1, "referenceResolver"    # Lcom/esotericsoftware/kryo/ReferenceResolver;

    .prologue
    .line 1022
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "referenceResolver cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1023
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z

    .line 1024
    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->referenceResolver:Lcom/esotericsoftware/kryo/ReferenceResolver;

    .line 1025
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_1

    const-string v0, "kryo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reference resolver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    :cond_1
    return-void
.end method

.method public setReferences(Z)Z
    .locals 3
    .param p1, "references"    # Z

    .prologue
    .line 1005
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z

    if-ne p1, v0, :cond_0

    .line 1009
    .end local p1    # "references":Z
    :goto_0
    return p1

    .line 1006
    .restart local p1    # "references":Z
    :cond_0
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z

    .line 1007
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->referenceResolver:Lcom/esotericsoftware/kryo/ReferenceResolver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/esotericsoftware/kryo/util/MapReferenceResolver;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/MapReferenceResolver;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->referenceResolver:Lcom/esotericsoftware/kryo/ReferenceResolver;

    .line 1008
    :cond_1
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_2

    const-string v0, "kryo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "References: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    :cond_2
    if-nez p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    move p1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setRegistrationRequired(Z)V
    .locals 3
    .param p1, "registrationRequired"    # Z

    .prologue
    .line 992
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->registrationRequired:Z

    .line 993
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    const-string v0, "kryo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registration required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    :cond_0
    return-void
.end method

.method public setStreamFactory(Lcom/esotericsoftware/kryo/StreamFactory;)V
    .locals 0
    .param p1, "streamFactory"    # Lcom/esotericsoftware/kryo/StreamFactory;

    .prologue
    .line 1150
    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->streamFactory:Lcom/esotericsoftware/kryo/StreamFactory;

    .line 1151
    return-void
.end method

.method public writeClass(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;
    .locals 2
    .param p1, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p2, "type"    # Ljava/lang/Class;

    .prologue
    .line 486
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "output cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v0, p1, p2}, Lcom/esotericsoftware/kryo/ClassResolver;->writeClass(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 490
    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_2
    throw v0
.end method

.method public writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 3
    .param p1, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 586
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "output cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 587
    :cond_0
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Kryo;->beginObject()V

    .line 589
    if-nez p2, :cond_2

    .line 590
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeClass(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 603
    :cond_1
    :goto_0
    return-void

    .line 593
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeClass(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    .line 594
    .local v0, "registration":Lcom/esotericsoftware/kryo/Registration;
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeReferenceOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 595
    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/esotericsoftware/kryo/Serializer;->setGenerics(Lcom/esotericsoftware/kryo/Kryo;[Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 601
    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    goto :goto_0

    .line 598
    :cond_3
    :try_start_2
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    :cond_4
    const-string v1, "Write"

    invoke-static {v1, p2}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 599
    :cond_5
    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 601
    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    goto :goto_0

    .end local v0    # "registration":Lcom/esotericsoftware/kryo/Registration;
    :catchall_0
    move-exception v1

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_6
    throw v1
.end method

.method public writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 2
    .param p1, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 496
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "output cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 497
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :cond_1
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Kryo;->beginObject()V

    .line 500
    :try_start_0
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeReferenceOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 501
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/esotericsoftware/kryo/Serializer;->setGenerics(Lcom/esotericsoftware/kryo/Kryo;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 509
    :cond_2
    :goto_0
    return-void

    .line 504
    :cond_3
    :try_start_1
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    :cond_4
    const-string v0, "Write"

    invoke-static {v0, p2}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 505
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 507
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_6
    throw v0
.end method

.method public writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)V
    .locals 2
    .param p1, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "serializer"    # Lcom/esotericsoftware/kryo/Serializer;

    .prologue
    .line 513
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "output cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serializer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_2
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Kryo;->beginObject()V

    .line 518
    :try_start_0
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeReferenceOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 519
    const/4 v0, 0x0

    invoke-virtual {p3, p0, v0}, Lcom/esotericsoftware/kryo/Serializer;->setGenerics(Lcom/esotericsoftware/kryo/Kryo;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 527
    :cond_3
    :goto_0
    return-void

    .line 522
    :cond_4
    :try_start_1
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    :cond_5
    const-string v0, "Write"

    invoke-static {v0, p2}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 523
    :cond_6
    invoke-virtual {p3, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 525
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_7
    throw v0
.end method

.method public writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)V
    .locals 2
    .param p1, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "serializer"    # Lcom/esotericsoftware/kryo/Serializer;

    .prologue
    const/4 v1, 0x1

    .line 559
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "output cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serializer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_1
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Kryo;->beginObject()V

    .line 563
    :try_start_0
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z

    if-eqz v0, :cond_3

    .line 564
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeReferenceOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 565
    const/4 v0, 0x0

    invoke-virtual {p3, p0, v0}, Lcom/esotericsoftware/kryo/Serializer;->setGenerics(Lcom/esotericsoftware/kryo/Kryo;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 581
    :cond_2
    :goto_0
    return-void

    .line 568
    :cond_3
    :try_start_1
    invoke-virtual {p3}, Lcom/esotericsoftware/kryo/Serializer;->getAcceptsNull()Z

    move-result v0

    if-nez v0, :cond_7

    .line 569
    if-nez p2, :cond_6

    .line 570
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-ne v0, v1, :cond_5

    :cond_4
    const-string v0, "Write"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 571
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 579
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    goto :goto_0

    .line 574
    :cond_6
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V

    .line 576
    :cond_7
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-ne v0, v1, :cond_9

    :cond_8
    const-string v0, "Write"

    invoke-static {v0, p2}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 577
    :cond_9
    invoke-virtual {p3, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 579
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_a
    throw v0
.end method

.method public writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 3
    .param p1, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "type"    # Ljava/lang/Class;

    .prologue
    const/4 v2, 0x1

    .line 532
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "output cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 533
    :cond_0
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Kryo;->beginObject()V

    .line 535
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v0

    .line 536
    .local v0, "serializer":Lcom/esotericsoftware/kryo/Serializer;
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z

    if-eqz v1, :cond_2

    .line 537
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeReferenceOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 538
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/esotericsoftware/kryo/Serializer;->setGenerics(Lcom/esotericsoftware/kryo/Kryo;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 554
    :cond_1
    :goto_0
    return-void

    .line 541
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/Serializer;->getAcceptsNull()Z

    move-result v1

    if-nez v1, :cond_6

    .line 542
    if-nez p2, :cond_5

    .line 543
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-ne v1, v2, :cond_4

    :cond_3
    const-string v1, "Write"

    invoke-static {v1, p2}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 544
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    goto :goto_0

    .line 547
    :cond_5
    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V

    .line 549
    :cond_6
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v1, :cond_7

    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-ne v1, v2, :cond_8

    :cond_7
    const-string v1, "Write"

    invoke-static {v1, p2}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 550
    :cond_8
    invoke-virtual {v0, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 552
    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    goto :goto_0

    .end local v0    # "serializer":Lcom/esotericsoftware/kryo/Serializer;
    :catchall_0
    move-exception v1

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_9
    throw v1
.end method

.method writeReferenceOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Z)Z
    .locals 5
    .param p1, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "mayBeNull"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 608
    if-nez p2, :cond_2

    .line 609
    sget-boolean v3, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-ne v3, v1, :cond_1

    :cond_0
    const-string v3, "Write"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 610
    :cond_1
    invoke-virtual {p1, v2, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    .line 632
    :goto_0
    return v1

    .line 613
    :cond_2
    iget-object v3, p0, Lcom/esotericsoftware/kryo/Kryo;->referenceResolver:Lcom/esotericsoftware/kryo/ReferenceResolver;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/esotericsoftware/kryo/ReferenceResolver;->useReferences(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 614
    if-eqz p3, :cond_3

    invoke-virtual {p1, v1, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    :cond_3
    move v1, v2

    .line 615
    goto :goto_0

    .line 619
    :cond_4
    iget-object v3, p0, Lcom/esotericsoftware/kryo/Kryo;->referenceResolver:Lcom/esotericsoftware/kryo/ReferenceResolver;

    invoke-interface {v3, p2}, Lcom/esotericsoftware/kryo/ReferenceResolver;->getWrittenId(Ljava/lang/Object;)I

    move-result v0

    .line 622
    .local v0, "id":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_6

    .line 623
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "kryo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Write object reference "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/esotericsoftware/kryo/util/Util;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :cond_5
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    goto :goto_0

    .line 629
    :cond_6
    iget-object v3, p0, Lcom/esotericsoftware/kryo/Kryo;->referenceResolver:Lcom/esotericsoftware/kryo/ReferenceResolver;

    invoke-interface {v3, p2}, Lcom/esotericsoftware/kryo/ReferenceResolver;->addWrittenObject(Ljava/lang/Object;)I

    move-result v0

    .line 630
    invoke-virtual {p1, v1, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    .line 631
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v1, :cond_7

    const-string v1, "kryo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Write initial object reference "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/esotericsoftware/kryo/util/Util;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move v1, v2

    .line 632
    goto/16 :goto_0
.end method
