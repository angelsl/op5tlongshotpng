.class final Lcom/google/tagmanager/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/Base64$Base64DecoderException;
    }
.end annotation


# static fields
.field private static final ALPHABET:[B

.field private static final DECODABET:[B

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field private static final NEW_LINE:B = 0xat

.field private static final PADDING_BYTE:B = 0x3dt

.field private static final WEBSAFE_ALPHABET:[B

.field private static final WEBSAFE_DECODABET:[B

.field private static final WHITE_SPACE_ENC:B = -0x5t


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v7, 0x32

    const/16 v6, 0x31

    const/16 v5, 0x30

    const/4 v4, -0x5

    const/16 v3, -0x9

    .line 55
    const/16 v0, 0x40

    new-array v0, v0, [B

    const/16 v1, 0x41

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, 0x42

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    const/16 v1, 0x43

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    const/16 v1, 0x44

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    const/16 v1, 0x45

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    const/16 v1, 0x46

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    const/16 v1, 0x47

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    const/16 v1, 0x48

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    const/16 v1, 0x49

    const/16 v2, 0x8

    aput-byte v1, v0, v2

    const/16 v1, 0x4a

    const/16 v2, 0x9

    aput-byte v1, v0, v2

    const/16 v1, 0x4b

    const/16 v2, 0xa

    aput-byte v1, v0, v2

    const/16 v1, 0x4c

    const/16 v2, 0xb

    aput-byte v1, v0, v2

    const/16 v1, 0x4d

    const/16 v2, 0xc

    aput-byte v1, v0, v2

    const/16 v1, 0x4e

    const/16 v2, 0xd

    aput-byte v1, v0, v2

    const/16 v1, 0x4f

    const/16 v2, 0xe

    aput-byte v1, v0, v2

    const/16 v1, 0x50

    const/16 v2, 0xf

    aput-byte v1, v0, v2

    const/16 v1, 0x51

    const/16 v2, 0x10

    aput-byte v1, v0, v2

    const/16 v1, 0x52

    const/16 v2, 0x11

    aput-byte v1, v0, v2

    const/16 v1, 0x53

    const/16 v2, 0x12

    aput-byte v1, v0, v2

    const/16 v1, 0x54

    const/16 v2, 0x13

    aput-byte v1, v0, v2

    const/16 v1, 0x55

    const/16 v2, 0x14

    aput-byte v1, v0, v2

    const/16 v1, 0x56

    const/16 v2, 0x15

    aput-byte v1, v0, v2

    const/16 v1, 0x57

    const/16 v2, 0x16

    aput-byte v1, v0, v2

    const/16 v1, 0x58

    const/16 v2, 0x17

    aput-byte v1, v0, v2

    const/16 v1, 0x59

    const/16 v2, 0x18

    aput-byte v1, v0, v2

    const/16 v1, 0x5a

    const/16 v2, 0x19

    aput-byte v1, v0, v2

    const/16 v1, 0x61

    const/16 v2, 0x1a

    aput-byte v1, v0, v2

    const/16 v1, 0x62

    const/16 v2, 0x1b

    aput-byte v1, v0, v2

    const/16 v1, 0x63

    const/16 v2, 0x1c

    aput-byte v1, v0, v2

    const/16 v1, 0x64

    const/16 v2, 0x1d

    aput-byte v1, v0, v2

    const/16 v1, 0x65

    const/16 v2, 0x1e

    aput-byte v1, v0, v2

    const/16 v1, 0x66

    const/16 v2, 0x1f

    aput-byte v1, v0, v2

    const/16 v1, 0x67

    const/16 v2, 0x20

    aput-byte v1, v0, v2

    const/16 v1, 0x68

    const/16 v2, 0x21

    aput-byte v1, v0, v2

    const/16 v1, 0x69

    const/16 v2, 0x22

    aput-byte v1, v0, v2

    const/16 v1, 0x6a

    const/16 v2, 0x23

    aput-byte v1, v0, v2

    const/16 v1, 0x6b

    const/16 v2, 0x24

    aput-byte v1, v0, v2

    const/16 v1, 0x6c

    const/16 v2, 0x25

    aput-byte v1, v0, v2

    const/16 v1, 0x6d

    const/16 v2, 0x26

    aput-byte v1, v0, v2

    const/16 v1, 0x6e

    const/16 v2, 0x27

    aput-byte v1, v0, v2

    const/16 v1, 0x6f

    const/16 v2, 0x28

    aput-byte v1, v0, v2

    const/16 v1, 0x70

    const/16 v2, 0x29

    aput-byte v1, v0, v2

    const/16 v1, 0x71

    const/16 v2, 0x2a

    aput-byte v1, v0, v2

    const/16 v1, 0x72

    const/16 v2, 0x2b

    aput-byte v1, v0, v2

    const/16 v1, 0x73

    const/16 v2, 0x2c

    aput-byte v1, v0, v2

    const/16 v1, 0x74

    const/16 v2, 0x2d

    aput-byte v1, v0, v2

    const/16 v1, 0x75

    const/16 v2, 0x2e

    aput-byte v1, v0, v2

    const/16 v1, 0x76

    const/16 v2, 0x2f

    aput-byte v1, v0, v2

    const/16 v1, 0x77

    aput-byte v1, v0, v5

    const/16 v1, 0x78

    aput-byte v1, v0, v6

    const/16 v1, 0x79

    aput-byte v1, v0, v7

    const/16 v1, 0x7a

    const/16 v2, 0x33

    aput-byte v1, v0, v2

    const/16 v1, 0x34

    aput-byte v5, v0, v1

    const/16 v1, 0x35

    aput-byte v6, v0, v1

    const/16 v1, 0x36

    aput-byte v7, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x37

    aput-byte v1, v0, v2

    const/16 v1, 0x34

    const/16 v2, 0x38

    aput-byte v1, v0, v2

    const/16 v1, 0x35

    const/16 v2, 0x39

    aput-byte v1, v0, v2

    const/16 v1, 0x36

    const/16 v2, 0x3a

    aput-byte v1, v0, v2

    const/16 v1, 0x37

    const/16 v2, 0x3b

    aput-byte v1, v0, v2

    const/16 v1, 0x38

    const/16 v2, 0x3c

    aput-byte v1, v0, v2

    const/16 v1, 0x39

    const/16 v2, 0x3d

    aput-byte v1, v0, v2

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v1, v0, v2

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    aput-byte v1, v0, v2

    sput-object v0, Lcom/google/tagmanager/Base64;->ALPHABET:[B

    .line 73
    const/16 v0, 0x40

    new-array v0, v0, [B

    const/16 v1, 0x41

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, 0x42

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    const/16 v1, 0x43

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    const/16 v1, 0x44

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    const/16 v1, 0x45

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    const/16 v1, 0x46

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    const/16 v1, 0x47

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    const/16 v1, 0x48

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    const/16 v1, 0x49

    const/16 v2, 0x8

    aput-byte v1, v0, v2

    const/16 v1, 0x4a

    const/16 v2, 0x9

    aput-byte v1, v0, v2

    const/16 v1, 0x4b

    const/16 v2, 0xa

    aput-byte v1, v0, v2

    const/16 v1, 0x4c

    const/16 v2, 0xb

    aput-byte v1, v0, v2

    const/16 v1, 0x4d

    const/16 v2, 0xc

    aput-byte v1, v0, v2

    const/16 v1, 0x4e

    const/16 v2, 0xd

    aput-byte v1, v0, v2

    const/16 v1, 0x4f

    const/16 v2, 0xe

    aput-byte v1, v0, v2

    const/16 v1, 0x50

    const/16 v2, 0xf

    aput-byte v1, v0, v2

    const/16 v1, 0x51

    const/16 v2, 0x10

    aput-byte v1, v0, v2

    const/16 v1, 0x52

    const/16 v2, 0x11

    aput-byte v1, v0, v2

    const/16 v1, 0x53

    const/16 v2, 0x12

    aput-byte v1, v0, v2

    const/16 v1, 0x54

    const/16 v2, 0x13

    aput-byte v1, v0, v2

    const/16 v1, 0x55

    const/16 v2, 0x14

    aput-byte v1, v0, v2

    const/16 v1, 0x56

    const/16 v2, 0x15

    aput-byte v1, v0, v2

    const/16 v1, 0x57

    const/16 v2, 0x16

    aput-byte v1, v0, v2

    const/16 v1, 0x58

    const/16 v2, 0x17

    aput-byte v1, v0, v2

    const/16 v1, 0x59

    const/16 v2, 0x18

    aput-byte v1, v0, v2

    const/16 v1, 0x5a

    const/16 v2, 0x19

    aput-byte v1, v0, v2

    const/16 v1, 0x61

    const/16 v2, 0x1a

    aput-byte v1, v0, v2

    const/16 v1, 0x62

    const/16 v2, 0x1b

    aput-byte v1, v0, v2

    const/16 v1, 0x63

    const/16 v2, 0x1c

    aput-byte v1, v0, v2

    const/16 v1, 0x64

    const/16 v2, 0x1d

    aput-byte v1, v0, v2

    const/16 v1, 0x65

    const/16 v2, 0x1e

    aput-byte v1, v0, v2

    const/16 v1, 0x66

    const/16 v2, 0x1f

    aput-byte v1, v0, v2

    const/16 v1, 0x67

    const/16 v2, 0x20

    aput-byte v1, v0, v2

    const/16 v1, 0x68

    const/16 v2, 0x21

    aput-byte v1, v0, v2

    const/16 v1, 0x69

    const/16 v2, 0x22

    aput-byte v1, v0, v2

    const/16 v1, 0x6a

    const/16 v2, 0x23

    aput-byte v1, v0, v2

    const/16 v1, 0x6b

    const/16 v2, 0x24

    aput-byte v1, v0, v2

    const/16 v1, 0x6c

    const/16 v2, 0x25

    aput-byte v1, v0, v2

    const/16 v1, 0x6d

    const/16 v2, 0x26

    aput-byte v1, v0, v2

    const/16 v1, 0x6e

    const/16 v2, 0x27

    aput-byte v1, v0, v2

    const/16 v1, 0x6f

    const/16 v2, 0x28

    aput-byte v1, v0, v2

    const/16 v1, 0x70

    const/16 v2, 0x29

    aput-byte v1, v0, v2

    const/16 v1, 0x71

    const/16 v2, 0x2a

    aput-byte v1, v0, v2

    const/16 v1, 0x72

    const/16 v2, 0x2b

    aput-byte v1, v0, v2

    const/16 v1, 0x73

    const/16 v2, 0x2c

    aput-byte v1, v0, v2

    const/16 v1, 0x74

    const/16 v2, 0x2d

    aput-byte v1, v0, v2

    const/16 v1, 0x75

    const/16 v2, 0x2e

    aput-byte v1, v0, v2

    const/16 v1, 0x76

    const/16 v2, 0x2f

    aput-byte v1, v0, v2

    const/16 v1, 0x77

    aput-byte v1, v0, v5

    const/16 v1, 0x78

    aput-byte v1, v0, v6

    const/16 v1, 0x79

    aput-byte v1, v0, v7

    const/16 v1, 0x7a

    const/16 v2, 0x33

    aput-byte v1, v0, v2

    const/16 v1, 0x34

    aput-byte v5, v0, v1

    const/16 v1, 0x35

    aput-byte v6, v0, v1

    const/16 v1, 0x36

    aput-byte v7, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x37

    aput-byte v1, v0, v2

    const/16 v1, 0x34

    const/16 v2, 0x38

    aput-byte v1, v0, v2

    const/16 v1, 0x35

    const/16 v2, 0x39

    aput-byte v1, v0, v2

    const/16 v1, 0x36

    const/16 v2, 0x3a

    aput-byte v1, v0, v2

    const/16 v1, 0x37

    const/16 v2, 0x3b

    aput-byte v1, v0, v2

    const/16 v1, 0x38

    const/16 v2, 0x3c

    aput-byte v1, v0, v2

    const/16 v1, 0x39

    const/16 v2, 0x3d

    aput-byte v1, v0, v2

    const/16 v1, 0x2d

    const/16 v2, 0x3e

    aput-byte v1, v0, v2

    const/16 v1, 0x5f

    const/16 v2, 0x3f

    aput-byte v1, v0, v2

    sput-object v0, Lcom/google/tagmanager/Base64;->WEBSAFE_ALPHABET:[B

    .line 92
    const/16 v0, 0x80

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    const/4 v1, 0x1

    aput-byte v3, v0, v1

    const/4 v1, 0x2

    aput-byte v3, v0, v1

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    aput-byte v4, v0, v1

    const/16 v1, 0xa

    aput-byte v4, v0, v1

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    aput-byte v4, v0, v1

    const/16 v1, 0xe

    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    aput-byte v4, v0, v1

    const/16 v1, 0x21

    aput-byte v3, v0, v1

    const/16 v1, 0x22

    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x25

    aput-byte v3, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v3, v0, v1

    const/16 v1, 0x29

    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    aput-byte v3, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x2b

    aput-byte v1, v0, v2

    const/16 v1, 0x2c

    aput-byte v3, v0, v1

    const/16 v1, 0x2d

    aput-byte v3, v0, v1

    const/16 v1, 0x2e

    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x2f

    aput-byte v1, v0, v2

    const/16 v1, 0x34

    aput-byte v1, v0, v5

    const/16 v1, 0x35

    aput-byte v1, v0, v6

    const/16 v1, 0x36

    aput-byte v1, v0, v7

    const/16 v1, 0x37

    const/16 v2, 0x33

    aput-byte v1, v0, v2

    const/16 v1, 0x38

    const/16 v2, 0x34

    aput-byte v1, v0, v2

    const/16 v1, 0x39

    const/16 v2, 0x35

    aput-byte v1, v0, v2

    const/16 v1, 0x3a

    const/16 v2, 0x36

    aput-byte v1, v0, v2

    const/16 v1, 0x3b

    const/16 v2, 0x37

    aput-byte v1, v0, v2

    const/16 v1, 0x3c

    const/16 v2, 0x38

    aput-byte v1, v0, v2

    const/16 v1, 0x3d

    const/16 v2, 0x39

    aput-byte v1, v0, v2

    const/16 v1, 0x3a

    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/4 v1, -0x1

    const/16 v2, 0x3d

    aput-byte v1, v0, v2

    const/16 v1, 0x3e

    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    aput-byte v3, v0, v1

    const/16 v1, 0x40

    aput-byte v3, v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x41

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x42

    aput-byte v1, v0, v2

    const/4 v1, 0x2

    const/16 v2, 0x43

    aput-byte v1, v0, v2

    const/4 v1, 0x3

    const/16 v2, 0x44

    aput-byte v1, v0, v2

    const/4 v1, 0x4

    const/16 v2, 0x45

    aput-byte v1, v0, v2

    const/4 v1, 0x5

    const/16 v2, 0x46

    aput-byte v1, v0, v2

    const/4 v1, 0x6

    const/16 v2, 0x47

    aput-byte v1, v0, v2

    const/4 v1, 0x7

    const/16 v2, 0x48

    aput-byte v1, v0, v2

    const/16 v1, 0x8

    const/16 v2, 0x49

    aput-byte v1, v0, v2

    const/16 v1, 0x9

    const/16 v2, 0x4a

    aput-byte v1, v0, v2

    const/16 v1, 0xa

    const/16 v2, 0x4b

    aput-byte v1, v0, v2

    const/16 v1, 0xb

    const/16 v2, 0x4c

    aput-byte v1, v0, v2

    const/16 v1, 0xc

    const/16 v2, 0x4d

    aput-byte v1, v0, v2

    const/16 v1, 0xd

    const/16 v2, 0x4e

    aput-byte v1, v0, v2

    const/16 v1, 0xe

    const/16 v2, 0x4f

    aput-byte v1, v0, v2

    const/16 v1, 0xf

    const/16 v2, 0x50

    aput-byte v1, v0, v2

    const/16 v1, 0x10

    const/16 v2, 0x51

    aput-byte v1, v0, v2

    const/16 v1, 0x11

    const/16 v2, 0x52

    aput-byte v1, v0, v2

    const/16 v1, 0x12

    const/16 v2, 0x53

    aput-byte v1, v0, v2

    const/16 v1, 0x13

    const/16 v2, 0x54

    aput-byte v1, v0, v2

    const/16 v1, 0x14

    const/16 v2, 0x55

    aput-byte v1, v0, v2

    const/16 v1, 0x15

    const/16 v2, 0x56

    aput-byte v1, v0, v2

    const/16 v1, 0x16

    const/16 v2, 0x57

    aput-byte v1, v0, v2

    const/16 v1, 0x17

    const/16 v2, 0x58

    aput-byte v1, v0, v2

    const/16 v1, 0x18

    const/16 v2, 0x59

    aput-byte v1, v0, v2

    const/16 v1, 0x19

    const/16 v2, 0x5a

    aput-byte v1, v0, v2

    const/16 v1, 0x5b

    aput-byte v3, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5d

    aput-byte v3, v0, v1

    const/16 v1, 0x5e

    aput-byte v3, v0, v1

    const/16 v1, 0x5f

    aput-byte v3, v0, v1

    const/16 v1, 0x60

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x61

    aput-byte v1, v0, v2

    const/16 v1, 0x1b

    const/16 v2, 0x62

    aput-byte v1, v0, v2

    const/16 v1, 0x1c

    const/16 v2, 0x63

    aput-byte v1, v0, v2

    const/16 v1, 0x1d

    const/16 v2, 0x64

    aput-byte v1, v0, v2

    const/16 v1, 0x1e

    const/16 v2, 0x65

    aput-byte v1, v0, v2

    const/16 v1, 0x1f

    const/16 v2, 0x66

    aput-byte v1, v0, v2

    const/16 v1, 0x20

    const/16 v2, 0x67

    aput-byte v1, v0, v2

    const/16 v1, 0x21

    const/16 v2, 0x68

    aput-byte v1, v0, v2

    const/16 v1, 0x22

    const/16 v2, 0x69

    aput-byte v1, v0, v2

    const/16 v1, 0x23

    const/16 v2, 0x6a

    aput-byte v1, v0, v2

    const/16 v1, 0x24

    const/16 v2, 0x6b

    aput-byte v1, v0, v2

    const/16 v1, 0x25

    const/16 v2, 0x6c

    aput-byte v1, v0, v2

    const/16 v1, 0x26

    const/16 v2, 0x6d

    aput-byte v1, v0, v2

    const/16 v1, 0x27

    const/16 v2, 0x6e

    aput-byte v1, v0, v2

    const/16 v1, 0x28

    const/16 v2, 0x6f

    aput-byte v1, v0, v2

    const/16 v1, 0x29

    const/16 v2, 0x70

    aput-byte v1, v0, v2

    const/16 v1, 0x2a

    const/16 v2, 0x71

    aput-byte v1, v0, v2

    const/16 v1, 0x2b

    const/16 v2, 0x72

    aput-byte v1, v0, v2

    const/16 v1, 0x2c

    const/16 v2, 0x73

    aput-byte v1, v0, v2

    const/16 v1, 0x2d

    const/16 v2, 0x74

    aput-byte v1, v0, v2

    const/16 v1, 0x2e

    const/16 v2, 0x75

    aput-byte v1, v0, v2

    const/16 v1, 0x2f

    const/16 v2, 0x76

    aput-byte v1, v0, v2

    const/16 v1, 0x77

    aput-byte v5, v0, v1

    const/16 v1, 0x78

    aput-byte v6, v0, v1

    const/16 v1, 0x79

    aput-byte v7, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x7a

    aput-byte v1, v0, v2

    const/16 v1, 0x7b

    aput-byte v3, v0, v1

    const/16 v1, 0x7c

    aput-byte v3, v0, v1

    const/16 v1, 0x7d

    aput-byte v3, v0, v1

    const/16 v1, 0x7e

    aput-byte v3, v0, v1

    const/16 v1, 0x7f

    aput-byte v3, v0, v1

    sput-object v0, Lcom/google/tagmanager/Base64;->DECODABET:[B

    .line 127
    const/16 v0, 0x80

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    const/4 v1, 0x1

    aput-byte v3, v0, v1

    const/4 v1, 0x2

    aput-byte v3, v0, v1

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    aput-byte v4, v0, v1

    const/16 v1, 0xa

    aput-byte v4, v0, v1

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    aput-byte v4, v0, v1

    const/16 v1, 0xe

    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    aput-byte v4, v0, v1

    const/16 v1, 0x21

    aput-byte v3, v0, v1

    const/16 v1, 0x22

    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x25

    aput-byte v3, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v3, v0, v1

    const/16 v1, 0x29

    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    aput-byte v3, v0, v1

    const/16 v1, 0x2b

    aput-byte v3, v0, v1

    const/16 v1, 0x2c

    aput-byte v3, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x2d

    aput-byte v1, v0, v2

    const/16 v1, 0x2e

    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    aput-byte v3, v0, v1

    const/16 v1, 0x34

    aput-byte v1, v0, v5

    const/16 v1, 0x35

    aput-byte v1, v0, v6

    const/16 v1, 0x36

    aput-byte v1, v0, v7

    const/16 v1, 0x37

    const/16 v2, 0x33

    aput-byte v1, v0, v2

    const/16 v1, 0x38

    const/16 v2, 0x34

    aput-byte v1, v0, v2

    const/16 v1, 0x39

    const/16 v2, 0x35

    aput-byte v1, v0, v2

    const/16 v1, 0x3a

    const/16 v2, 0x36

    aput-byte v1, v0, v2

    const/16 v1, 0x3b

    const/16 v2, 0x37

    aput-byte v1, v0, v2

    const/16 v1, 0x3c

    const/16 v2, 0x38

    aput-byte v1, v0, v2

    const/16 v1, 0x3d

    const/16 v2, 0x39

    aput-byte v1, v0, v2

    const/16 v1, 0x3a

    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/4 v1, -0x1

    const/16 v2, 0x3d

    aput-byte v1, v0, v2

    const/16 v1, 0x3e

    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    aput-byte v3, v0, v1

    const/16 v1, 0x40

    aput-byte v3, v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x41

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x42

    aput-byte v1, v0, v2

    const/4 v1, 0x2

    const/16 v2, 0x43

    aput-byte v1, v0, v2

    const/4 v1, 0x3

    const/16 v2, 0x44

    aput-byte v1, v0, v2

    const/4 v1, 0x4

    const/16 v2, 0x45

    aput-byte v1, v0, v2

    const/4 v1, 0x5

    const/16 v2, 0x46

    aput-byte v1, v0, v2

    const/4 v1, 0x6

    const/16 v2, 0x47

    aput-byte v1, v0, v2

    const/4 v1, 0x7

    const/16 v2, 0x48

    aput-byte v1, v0, v2

    const/16 v1, 0x8

    const/16 v2, 0x49

    aput-byte v1, v0, v2

    const/16 v1, 0x9

    const/16 v2, 0x4a

    aput-byte v1, v0, v2

    const/16 v1, 0xa

    const/16 v2, 0x4b

    aput-byte v1, v0, v2

    const/16 v1, 0xb

    const/16 v2, 0x4c

    aput-byte v1, v0, v2

    const/16 v1, 0xc

    const/16 v2, 0x4d

    aput-byte v1, v0, v2

    const/16 v1, 0xd

    const/16 v2, 0x4e

    aput-byte v1, v0, v2

    const/16 v1, 0xe

    const/16 v2, 0x4f

    aput-byte v1, v0, v2

    const/16 v1, 0xf

    const/16 v2, 0x50

    aput-byte v1, v0, v2

    const/16 v1, 0x10

    const/16 v2, 0x51

    aput-byte v1, v0, v2

    const/16 v1, 0x11

    const/16 v2, 0x52

    aput-byte v1, v0, v2

    const/16 v1, 0x12

    const/16 v2, 0x53

    aput-byte v1, v0, v2

    const/16 v1, 0x13

    const/16 v2, 0x54

    aput-byte v1, v0, v2

    const/16 v1, 0x14

    const/16 v2, 0x55

    aput-byte v1, v0, v2

    const/16 v1, 0x15

    const/16 v2, 0x56

    aput-byte v1, v0, v2

    const/16 v1, 0x16

    const/16 v2, 0x57

    aput-byte v1, v0, v2

    const/16 v1, 0x17

    const/16 v2, 0x58

    aput-byte v1, v0, v2

    const/16 v1, 0x18

    const/16 v2, 0x59

    aput-byte v1, v0, v2

    const/16 v1, 0x19

    const/16 v2, 0x5a

    aput-byte v1, v0, v2

    const/16 v1, 0x5b

    aput-byte v3, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5d

    aput-byte v3, v0, v1

    const/16 v1, 0x5e

    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x5f

    aput-byte v1, v0, v2

    const/16 v1, 0x60

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x61

    aput-byte v1, v0, v2

    const/16 v1, 0x1b

    const/16 v2, 0x62

    aput-byte v1, v0, v2

    const/16 v1, 0x1c

    const/16 v2, 0x63

    aput-byte v1, v0, v2

    const/16 v1, 0x1d

    const/16 v2, 0x64

    aput-byte v1, v0, v2

    const/16 v1, 0x1e

    const/16 v2, 0x65

    aput-byte v1, v0, v2

    const/16 v1, 0x1f

    const/16 v2, 0x66

    aput-byte v1, v0, v2

    const/16 v1, 0x20

    const/16 v2, 0x67

    aput-byte v1, v0, v2

    const/16 v1, 0x21

    const/16 v2, 0x68

    aput-byte v1, v0, v2

    const/16 v1, 0x22

    const/16 v2, 0x69

    aput-byte v1, v0, v2

    const/16 v1, 0x23

    const/16 v2, 0x6a

    aput-byte v1, v0, v2

    const/16 v1, 0x24

    const/16 v2, 0x6b

    aput-byte v1, v0, v2

    const/16 v1, 0x25

    const/16 v2, 0x6c

    aput-byte v1, v0, v2

    const/16 v1, 0x26

    const/16 v2, 0x6d

    aput-byte v1, v0, v2

    const/16 v1, 0x27

    const/16 v2, 0x6e

    aput-byte v1, v0, v2

    const/16 v1, 0x28

    const/16 v2, 0x6f

    aput-byte v1, v0, v2

    const/16 v1, 0x29

    const/16 v2, 0x70

    aput-byte v1, v0, v2

    const/16 v1, 0x2a

    const/16 v2, 0x71

    aput-byte v1, v0, v2

    const/16 v1, 0x2b

    const/16 v2, 0x72

    aput-byte v1, v0, v2

    const/16 v1, 0x2c

    const/16 v2, 0x73

    aput-byte v1, v0, v2

    const/16 v1, 0x2d

    const/16 v2, 0x74

    aput-byte v1, v0, v2

    const/16 v1, 0x2e

    const/16 v2, 0x75

    aput-byte v1, v0, v2

    const/16 v1, 0x2f

    const/16 v2, 0x76

    aput-byte v1, v0, v2

    const/16 v1, 0x77

    aput-byte v5, v0, v1

    const/16 v1, 0x78

    aput-byte v6, v0, v1

    const/16 v1, 0x79

    aput-byte v7, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x7a

    aput-byte v1, v0, v2

    const/16 v1, 0x7b

    aput-byte v3, v0, v1

    const/16 v1, 0x7c

    aput-byte v3, v0, v1

    const/16 v1, 0x7d

    aput-byte v3, v0, v1

    const/16 v1, 0x7e

    aput-byte v3, v0, v1

    const/16 v1, 0x7f

    aput-byte v3, v0, v1

    sput-object v0, Lcom/google/tagmanager/Base64;->WEBSAFE_DECODABET:[B

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/Base64$Base64DecoderException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 448
    .local v0, "bytes":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/google/tagmanager/Base64;->decode([BII)[B

    move-result-object v1

    return-object v1
.end method

.method public static decode([B)[B
    .registers 3
    .param p0, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/Base64$Base64DecoderException;
        }
    .end annotation

    .prologue
    .line 473
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/tagmanager/Base64;->decode([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BII)[B
    .registers 4
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/Base64$Base64DecoderException;
        }
    .end annotation

    .prologue
    .line 502
    sget-object v0, Lcom/google/tagmanager/Base64;->DECODABET:[B

    invoke-static {p0, p1, p2, v0}, Lcom/google/tagmanager/Base64;->decode([BII[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static decode([BII[B)[B
    .registers 20
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "decodabet"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/Base64$Base64DecoderException;
        }
    .end annotation

    .prologue
    .line 532
    mul-int/lit8 v13, p2, 0x3

    div-int/lit8 v6, v13, 0x4

    .line 533
    .local v6, "len34":I
    add-int/lit8 v13, v6, 0x2

    new-array v8, v13, [B

    .line 534
    .local v8, "outBuff":[B
    const/4 v9, 0x0

    .line 536
    .local v9, "outBuffPosn":I
    const/4 v13, 0x4

    new-array v1, v13, [B

    .line 537
    .local v1, "b4":[B
    const/4 v2, 0x0

    .line 538
    .local v2, "b4Posn":I
    const/4 v4, 0x0

    .line 539
    .local v4, "i":I
    const/4 v11, 0x0

    .line 540
    .local v11, "sbiCrop":B
    const/4 v12, 0x0

    .line 541
    .local v12, "sbiDecode":B
    const/4 v10, 0x0

    .line 542
    .local v10, "paddingByteSeen":Z
    const/4 v4, 0x0

    move v3, v2

    .end local v2    # "b4Posn":I
    .local v3, "b4Posn":I
    :goto_13
    move/from16 v0, p2

    if-lt v4, v0, :cond_21

    .line 589
    if-nez v3, :cond_d5

    .line 597
    :goto_19
    new-array v7, v9, [B

    .line 598
    .local v7, "out":[B
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v8, v13, v7, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 599
    return-object v7

    .line 543
    .end local v7    # "out":[B
    :cond_21
    add-int v13, v4, p1

    aget-byte v13, p0, v13

    and-int/lit8 v13, v13, 0x7f

    int-to-byte v11, v13

    .line 544
    aget-byte v12, p3, v11

    .line 546
    const/4 v13, -0x5

    if-lt v12, v13, :cond_35

    .line 551
    const/4 v13, -0x1

    if-ge v12, v13, :cond_65

    move v2, v3

    .line 542
    .end local v3    # "b4Posn":I
    .restart local v2    # "b4Posn":I
    :cond_31
    :goto_31
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "b4Posn":I
    .restart local v3    # "b4Posn":I
    goto :goto_13

    .line 547
    :cond_35
    new-instance v13, Lcom/google/tagmanager/Base64$Base64DecoderException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Bad Base64 input character at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int v15, v4, p1

    aget-byte v15, p0, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "(decimal)"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/google/tagmanager/Base64$Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 552
    :cond_65
    const/16 v13, 0x3d

    if-eq v11, v13, :cond_7d

    .line 569
    if-nez v10, :cond_bb

    .line 574
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "b4Posn":I
    .restart local v2    # "b4Posn":I
    int-to-byte v13, v11

    aput-byte v13, v1, v3

    .line 575
    const/4 v13, 0x4

    if-ne v2, v13, :cond_31

    .line 576
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-static {v1, v13, v8, v9, v0}, Lcom/google/tagmanager/Base64;->decode4to3([BI[BI[B)I

    move-result v13

    add-int/2addr v9, v13

    .line 577
    const/4 v2, 0x0

    goto :goto_31

    .line 553
    .end local v2    # "b4Posn":I
    .restart local v3    # "b4Posn":I
    :cond_7d
    if-nez v10, :cond_92

    .line 558
    const/4 v13, 0x2

    if-lt v4, v13, :cond_94

    .line 562
    const/4 v10, 0x1

    .line 563
    add-int/lit8 v13, p2, -0x1

    add-int v13, v13, p1

    aget-byte v13, p0, v13

    and-int/lit8 v13, v13, 0x7f

    int-to-byte v5, v13

    .line 564
    .local v5, "lastByte":B
    const/16 v13, 0x3d

    if-ne v5, v13, :cond_ae

    :cond_90
    move v2, v3

    .line 569
    .end local v3    # "b4Posn":I
    .restart local v2    # "b4Posn":I
    goto :goto_31

    .end local v2    # "b4Posn":I
    .end local v5    # "lastByte":B
    .restart local v3    # "b4Posn":I
    :cond_92
    move v2, v3

    .line 554
    .end local v3    # "b4Posn":I
    .restart local v2    # "b4Posn":I
    goto :goto_31

    .line 559
    .end local v2    # "b4Posn":I
    .restart local v3    # "b4Posn":I
    :cond_94
    new-instance v13, Lcom/google/tagmanager/Base64$Base64DecoderException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Invalid padding byte found in position "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/google/tagmanager/Base64$Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 564
    .restart local v5    # "lastByte":B
    :cond_ae
    const/16 v13, 0xa

    if-eq v5, v13, :cond_90

    .line 565
    new-instance v13, Lcom/google/tagmanager/Base64$Base64DecoderException;

    const-string/jumbo v14, "encoded value has invalid trailing byte"

    invoke-direct {v13, v14}, Lcom/google/tagmanager/Base64$Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 570
    .end local v5    # "lastByte":B
    :cond_bb
    new-instance v13, Lcom/google/tagmanager/Base64$Base64DecoderException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Data found after trailing padding byte at index "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/google/tagmanager/Base64$Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 590
    :cond_d5
    const/4 v13, 0x1

    if-eq v3, v13, :cond_e6

    .line 593
    const/16 v13, 0x3d

    aput-byte v13, v1, v3

    .line 594
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-static {v1, v13, v8, v9, v0}, Lcom/google/tagmanager/Base64;->decode4to3([BI[BI[B)I

    move-result v13

    add-int/2addr v9, v13

    goto/16 :goto_19

    .line 591
    :cond_e6
    new-instance v13, Lcom/google/tagmanager/Base64$Base64DecoderException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "single trailing character at offset "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, p2, -0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/google/tagmanager/Base64$Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v13
.end method

.method private static decode4to3([BI[BI[B)I
    .registers 8
    .param p0, "source"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "destination"    # [B
    .param p3, "destOffset"    # I
    .param p4, "decodabet"    # [B

    .prologue
    const/16 v2, 0x3d

    .line 404
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    if-eq v1, v2, :cond_4e

    .line 411
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    if-eq v1, v2, :cond_6a

    .line 423
    aget-byte v1, p0, p1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v2, p4, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    aget-byte v2, p4, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x12

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    aget-byte v2, p4, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x18

    or-int v0, v1, v2

    .line 429
    .local v0, "outBuff":I
    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 430
    add-int/lit8 v1, p3, 0x1

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 431
    add-int/lit8 v1, p3, 0x2

    int-to-byte v2, v0

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 432
    const/4 v1, 0x3

    return v1

    .line 405
    .end local v0    # "outBuff":I
    :cond_4e
    aget-byte v1, p0, p1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v2, p4, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0xc

    or-int v0, v1, v2

    .line 409
    .restart local v0    # "outBuff":I
    ushr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 410
    const/4 v1, 0x1

    return v1

    .line 413
    .end local v0    # "outBuff":I
    :cond_6a
    aget-byte v1, p0, p1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v2, p4, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    aget-byte v2, p4, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x12

    or-int v0, v1, v2

    .line 418
    .restart local v0    # "outBuff":I
    ushr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 419
    add-int/lit8 v1, p3, 0x1

    ushr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 420
    const/4 v1, 0x2

    return v1
.end method

.method public static decodeWebSafe(Ljava/lang/String;)[B
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/Base64$Base64DecoderException;
        }
    .end annotation

    .prologue
    .line 459
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 460
    .local v0, "bytes":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/google/tagmanager/Base64;->decodeWebSafe([BII)[B

    move-result-object v1

    return-object v1
.end method

.method public static decodeWebSafe([B)[B
    .registers 3
    .param p0, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/Base64$Base64DecoderException;
        }
    .end annotation

    .prologue
    .line 486
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/tagmanager/Base64;->decodeWebSafe([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeWebSafe([BII)[B
    .registers 4
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/Base64$Base64DecoderException;
        }
    .end annotation

    .prologue
    .line 517
    sget-object v0, Lcom/google/tagmanager/Base64;->WEBSAFE_DECODABET:[B

    invoke-static {p0, p1, p2, v0}, Lcom/google/tagmanager/Base64;->decode([BII[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([B)Ljava/lang/String;
    .registers 5
    .param p0, "source"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 262
    array-length v0, p0

    sget-object v1, Lcom/google/tagmanager/Base64;->ALPHABET:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Lcom/google/tagmanager/Base64;->encode([BII[BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encode([BII[BZ)Ljava/lang/String;
    .registers 10
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "alphabet"    # [B
    .param p4, "doPadding"    # Z

    .prologue
    const/4 v4, 0x0

    .line 300
    const v2, 0x7fffffff

    invoke-static {p0, p1, p2, p3, v2}, Lcom/google/tagmanager/Base64;->encode([BII[BI)[B

    move-result-object v0

    .line 301
    .local v0, "outBuff":[B
    array-length v1, v0

    .line 305
    .local v1, "outLen":I
    :goto_9
    if-eqz p4, :cond_11

    .line 312
    :cond_b
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v4, v1}, Ljava/lang/String;-><init>([BII)V

    return-object v2

    .line 305
    :cond_11
    if-lez v1, :cond_b

    .line 306
    add-int/lit8 v2, v1, -0x1

    aget-byte v2, v0, v2

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_b

    .line 309
    add-int/lit8 v1, v1, -0x1

    goto :goto_9
.end method

.method public static encode([BZ)Ljava/lang/String;
    .registers 5
    .param p0, "source"    # [B
    .param p1, "doPadding"    # Z

    .prologue
    .line 273
    array-length v0, p0

    sget-object v1, Lcom/google/tagmanager/Base64;->ALPHABET:[B

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, p1}, Lcom/google/tagmanager/Base64;->encode([BII[BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII[BI)[B
    .registers 18
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "alphabet"    # [B
    .param p4, "maxLineLength"    # I

    .prologue
    .line 327
    add-int/lit8 v1, p2, 0x2

    div-int/lit8 v11, v1, 0x3

    .line 328
    .local v11, "lenDiv3":I
    mul-int/lit8 v10, v11, 0x4

    .line 329
    .local v10, "len43":I
    div-int v1, v10, p4

    add-int/2addr v1, v10

    new-array v4, v1, [B

    .line 332
    .local v4, "outBuff":[B
    const/4 v7, 0x0

    .line 333
    .local v7, "d":I
    const/4 v5, 0x0

    .line 334
    .local v5, "e":I
    add-int/lit8 v9, p2, -0x2

    .line 335
    .local v9, "len2":I
    const/4 v12, 0x0

    .line 336
    .local v12, "lineLength":I
    :goto_10
    if-lt v7, v9, :cond_15

    .line 358
    if-lt v7, p2, :cond_6d

    .line 371
    :goto_14
    return-object v4

    .line 341
    :cond_15
    add-int v1, v7, p1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, v7, 0x1

    add-int/2addr v2, p1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v7, 0x2

    add-int/2addr v2, p1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x18

    or-int v8, v1, v2

    .line 345
    .local v8, "inBuff":I
    ushr-int/lit8 v1, v8, 0x12

    aget-byte v1, p3, v1

    int-to-byte v1, v1

    aput-byte v1, v4, v5

    .line 346
    add-int/lit8 v1, v5, 0x1

    ushr-int/lit8 v2, v8, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p3, v2

    int-to-byte v2, v2

    aput-byte v2, v4, v1

    .line 347
    add-int/lit8 v1, v5, 0x2

    ushr-int/lit8 v2, v8, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p3, v2

    int-to-byte v2, v2

    aput-byte v2, v4, v1

    .line 348
    add-int/lit8 v1, v5, 0x3

    and-int/lit8 v2, v8, 0x3f

    aget-byte v2, p3, v2

    int-to-byte v2, v2

    aput-byte v2, v4, v1

    .line 350
    add-int/lit8 v12, v12, 0x4

    .line 351
    move/from16 v0, p4

    if-eq v12, v0, :cond_63

    .line 336
    :goto_5e
    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v5, v5, 0x4

    goto :goto_10

    .line 352
    :cond_63
    add-int/lit8 v1, v5, 0x4

    const/16 v2, 0xa

    aput-byte v2, v4, v1

    .line 353
    add-int/lit8 v5, v5, 0x1

    .line 354
    const/4 v12, 0x0

    goto :goto_5e

    .line 359
    .end local v8    # "inBuff":I
    :cond_6d
    add-int v2, v7, p1

    sub-int v3, p2, v7

    move-object v1, p0

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Lcom/google/tagmanager/Base64;->encode3to4([BII[BI[B)[B

    .line 361
    add-int/lit8 v12, v12, 0x4

    .line 362
    move/from16 v0, p4

    if-eq v12, v0, :cond_80

    .line 367
    :goto_7d
    add-int/lit8 v5, v5, 0x4

    goto :goto_14

    .line 364
    :cond_80
    add-int/lit8 v1, v5, 0x4

    const/16 v2, 0xa

    aput-byte v2, v4, v1

    .line 365
    add-int/lit8 v5, v5, 0x1

    goto :goto_7d
.end method

.method private static encode3to4([BII[BI[B)[B
    .registers 11
    .param p0, "source"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "numSigBytes"    # I
    .param p3, "destination"    # [B
    .param p4, "destOffset"    # I
    .param p5, "alphabet"    # [B

    .prologue
    const/16 v4, 0x3d

    const/4 v1, 0x0

    .line 222
    if-gtz p2, :cond_14

    move v3, v1

    :goto_6
    const/4 v2, 0x1

    if-gt p2, v2, :cond_1c

    move v2, v1

    :goto_a
    or-int/2addr v2, v3

    const/4 v3, 0x2

    if-gt p2, v3, :cond_25

    :goto_e
    or-int v0, v2, v1

    .line 227
    .local v0, "inBuff":I
    packed-switch p2, :pswitch_data_92

    .line 247
    return-object p3

    .line 222
    .end local v0    # "inBuff":I
    :cond_14
    aget-byte v2, p0, p1

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x8

    move v3, v2

    goto :goto_6

    :cond_1c
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x10

    goto :goto_a

    :cond_25
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x18

    goto :goto_e

    .line 229
    .restart local v0    # "inBuff":I
    :pswitch_2e
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, p5, v1

    int-to-byte v1, v1

    aput-byte v1, p3, p4

    .line 230
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p5, v2

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 231
    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p5, v2

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 232
    add-int/lit8 v1, p4, 0x3

    and-int/lit8 v2, v0, 0x3f

    aget-byte v2, p5, v2

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 233
    return-object p3

    .line 235
    :pswitch_55
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, p5, v1

    int-to-byte v1, v1

    aput-byte v1, p3, p4

    .line 236
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p5, v2

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 237
    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p5, v2

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 238
    add-int/lit8 v1, p4, 0x3

    aput-byte v4, p3, v1

    .line 239
    return-object p3

    .line 241
    :pswitch_77
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, p5, v1

    int-to-byte v1, v1

    aput-byte v1, p3, p4

    .line 242
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p5, v2

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 243
    add-int/lit8 v1, p4, 0x2

    aput-byte v4, p3, v1

    .line 244
    add-int/lit8 v1, p4, 0x3

    aput-byte v4, p3, v1

    .line 245
    return-object p3

    .line 227
    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_77
        :pswitch_55
        :pswitch_2e
    .end packed-switch
.end method

.method public static encodeWebSafe([BZ)Ljava/lang/String;
    .registers 5
    .param p0, "source"    # [B
    .param p1, "doPadding"    # Z

    .prologue
    .line 284
    array-length v0, p0

    sget-object v1, Lcom/google/tagmanager/Base64;->WEBSAFE_ALPHABET:[B

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, p1}, Lcom/google/tagmanager/Base64;->encode([BII[BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAlphabet()[B
    .registers 1

    .prologue
    .line 175
    sget-object v0, Lcom/google/tagmanager/Base64;->ALPHABET:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static getWebsafeAlphabet()[B
    .registers 1

    .prologue
    .line 182
    sget-object v0, Lcom/google/tagmanager/Base64;->WEBSAFE_ALPHABET:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
