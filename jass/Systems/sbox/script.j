library sbox
    /*
        readonly integer array sbox
        readonly integer array rsbox
        
        
        For use with block cipher encryption
        
           | 0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
        ---|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|
        00 |63 7c 77 7b f2 6b 6f c5 30 01 67 2b fe d7 ab 76 
        10 |ca 82 c9 7d fa 59 47 f0 ad d4 a2 af 9c a4 72 c0 
        20 |b7 fd 93 26 36 3f f7 cc 34 a5 e5 f1 71 d8 31 15 
        30 |04 c7 23 c3 18 96 05 9a 07 12 80 e2 eb 27 b2 75 
        40 |09 83 2c 1a 1b 6e 5a a0 52 3b d6 b3 29 e3 2f 84 
        50 |53 d1 00 ed 20 fc b1 5b 6a cb be 39 4a 4c 58 cf 
        60 |d0 ef aa fb 43 4d 33 85 45 f9 02 7f 50 3c 9f a8 
        70 |51 a3 40 8f 92 9d 38 f5 bc b6 da 21 10 ff f3 d2 
        80 |cd 0c 13 ec 5f 97 44 17 c4 a7 7e 3d 64 5d 19 73 
        90 |60 81 4f dc 22 2a 90 88 46 ee b8 14 de 5e 0b db 
        a0 |e0 32 3a 0a 49 06 24 5c c2 d3 ac 62 91 95 e4 79 
        b0 |e7 c8 37 6d 8d d5 4e a9 6c 56 f4 ea 65 7a ae 08 
        c0 |ba 78 25 2e 1c a6 b4 c6 e8 dd 74 1f 4b bd 8b 8a 
        d0 |70 3e b5 66 48 03 f6 0e 61 35 57 b9 86 c1 1d 9e 
        e0 |e1 f8 98 11 69 d9 8e 94 9b 1e 87 e9 ce 55 28 df 
        f0 |8c a1 89 0d bf e6 42 68 41 99 2d 0f b0 54 bb 16 
    */

    private module sboxm
        private static integer array data
        
        static constant method operator [] takes integer val returns integer
            return data[val]
        endmethod
        
        private static method onInit takes nothing returns nothing
            set data[0x0] = 0x63
            set data[0x1] = 0x7c
            set data[0x2] = 0x77
            set data[0x3] = 0x7b
            set data[0x4] = 0xf2
            set data[0x5] = 0x6b
            set data[0x6] = 0x6f
            set data[0x7] = 0xc5
            set data[0x8] = 0x30
            set data[0x9] = 0x1
            set data[0xa] = 0x67
            set data[0xb] = 0x2b
            set data[0xc] = 0xfe
            set data[0xd] = 0xd7
            set data[0xe] = 0xab
            set data[0xf] = 0x76
            set data[0x10] = 0xca
            set data[0x11] = 0x82
            set data[0x12] = 0xc9
            set data[0x13] = 0x7d
            set data[0x14] = 0xfa
            set data[0x15] = 0x59
            set data[0x16] = 0x47
            set data[0x17] = 0xf0
            set data[0x18] = 0xad
            set data[0x19] = 0xd4
            set data[0x1a] = 0xa2
            set data[0x1b] = 0xaf
            set data[0x1c] = 0x9c
            set data[0x1d] = 0xa4
            set data[0x1e] = 0x72
            set data[0x1f] = 0xc0
            set data[0x20] = 0xb7
            set data[0x21] = 0xfd
            set data[0x22] = 0x93
            set data[0x23] = 0x26
            set data[0x24] = 0x36
            set data[0x25] = 0x3f
            set data[0x26] = 0xf7
            set data[0x27] = 0xcc
            set data[0x28] = 0x34
            set data[0x29] = 0xa5
            set data[0x2a] = 0xe5
            set data[0x2b] = 0xf1
            set data[0x2c] = 0x71
            set data[0x2d] = 0xd8
            set data[0x2e] = 0x31
            set data[0x2f] = 0x15
            set data[0x30] = 0x4
            set data[0x31] = 0xc7
            set data[0x32] = 0x23
            set data[0x33] = 0xc3
            set data[0x34] = 0x18
            set data[0x35] = 0x96
            set data[0x36] = 0x5
            set data[0x37] = 0x9a
            set data[0x38] = 0x7
            set data[0x39] = 0x12
            set data[0x3a] = 0x80
            set data[0x3b] = 0xe2
            set data[0x3c] = 0xeb
            set data[0x3d] = 0x27
            set data[0x3e] = 0xb2
            set data[0x3f] = 0x75
            set data[0x40] = 0x9
            set data[0x41] = 0x83
            set data[0x42] = 0x2c
            set data[0x43] = 0x1a
            set data[0x44] = 0x1b
            set data[0x45] = 0x6e
            set data[0x46] = 0x5a
            set data[0x47] = 0xa0
            set data[0x48] = 0x52
            set data[0x49] = 0x3b
            set data[0x4a] = 0xd6
            set data[0x4b] = 0xb3
            set data[0x4c] = 0x29
            set data[0x4d] = 0xe3
            set data[0x4e] = 0x2f
            set data[0x4f] = 0x84
            set data[0x50] = 0x53
            set data[0x51] = 0xd1
            set data[0x52] = 0x0
            set data[0x53] = 0xed
            set data[0x54] = 0x20
            set data[0x55] = 0xfc
            set data[0x56] = 0xb1
            set data[0x57] = 0x5b
            set data[0x58] = 0x6a
            set data[0x59] = 0xcb
            set data[0x5a] = 0xbe
            set data[0x5b] = 0x39
            set data[0x5c] = 0x4a
            set data[0x5d] = 0x4c
            set data[0x5e] = 0x58
            set data[0x5f] = 0xcf
            set data[0x60] = 0xd0
            set data[0x61] = 0xef
            set data[0x62] = 0xaa
            set data[0x63] = 0xfb
            set data[0x64] = 0x43
            set data[0x65] = 0x4d
            set data[0x66] = 0x33
            set data[0x67] = 0x85
            set data[0x68] = 0x45
            set data[0x69] = 0xf9
            set data[0x6a] = 0x2
            set data[0x6b] = 0x7f
            set data[0x6c] = 0x50
            set data[0x6d] = 0x3c
            set data[0x6e] = 0x9f
            set data[0x6f] = 0xa8
            set data[0x70] = 0x51
            set data[0x71] = 0xa3
            set data[0x72] = 0x40
            set data[0x73] = 0x8f
            set data[0x74] = 0x92
            set data[0x75] = 0x9d
            set data[0x76] = 0x38
            set data[0x77] = 0xf5
            set data[0x78] = 0xbc
            set data[0x79] = 0xb6
            set data[0x7a] = 0xda
            set data[0x7b] = 0x21
            set data[0x7c] = 0x10
            set data[0x7d] = 0xff
            set data[0x7e] = 0xf3
            set data[0x7f] = 0xd2
            set data[0x80] = 0xcd
            set data[0x81] = 0xc
            set data[0x82] = 0x13
            set data[0x83] = 0xec
            set data[0x84] = 0x5f
            set data[0x85] = 0x97
            set data[0x86] = 0x44
            set data[0x87] = 0x17
            set data[0x88] = 0xc4
            set data[0x89] = 0xa7
            set data[0x8a] = 0x7e
            set data[0x8b] = 0x3d
            set data[0x8c] = 0x64
            set data[0x8d] = 0x5d
            set data[0x8e] = 0x19
            set data[0x8f] = 0x73
            set data[0x90] = 0x60
            set data[0x91] = 0x81
            set data[0x92] = 0x4f
            set data[0x93] = 0xdc
            set data[0x94] = 0x22
            set data[0x95] = 0x2a
            set data[0x96] = 0x90
            set data[0x97] = 0x88
            set data[0x98] = 0x46
            set data[0x99] = 0xee
            set data[0x9a] = 0xb8
            set data[0x9b] = 0x14
            set data[0x9c] = 0xde
            set data[0x9d] = 0x5e
            set data[0x9e] = 0xb
            set data[0x9f] = 0xdb
            set data[0xa0] = 0xe0
            set data[0xa1] = 0x32
            set data[0xa2] = 0x3a
            set data[0xa3] = 0xa
            set data[0xa4] = 0x49
            set data[0xa5] = 0x6
            set data[0xa6] = 0x24
            set data[0xa7] = 0x5c
            set data[0xa8] = 0xc2
            set data[0xa9] = 0xd3
            set data[0xaa] = 0xac
            set data[0xab] = 0x62
            set data[0xac] = 0x91
            set data[0xad] = 0x95
            set data[0xae] = 0xe4
            set data[0xaf] = 0x79
            set data[0xb0] = 0xe7
            set data[0xb1] = 0xc8
            set data[0xb2] = 0x37
            set data[0xb3] = 0x6d
            set data[0xb4] = 0x8d
            set data[0xb5] = 0xd5
            set data[0xb6] = 0x4e
            set data[0xb7] = 0xa9
            set data[0xb8] = 0x6c
            set data[0xb9] = 0x56
            set data[0xba] = 0xf4
            set data[0xbb] = 0xea
            set data[0xbc] = 0x65
            set data[0xbd] = 0x7a
            set data[0xbe] = 0xae
            set data[0xbf] = 0x8
            set data[0xc0] = 0xba
            set data[0xc1] = 0x78
            set data[0xc2] = 0x25
            set data[0xc3] = 0x2e
            set data[0xc4] = 0x1c
            set data[0xc5] = 0xa6
            set data[0xc6] = 0xb4
            set data[0xc7] = 0xc6
            set data[0xc8] = 0xe8
            set data[0xc9] = 0xdd
            set data[0xca] = 0x74
            set data[0xcb] = 0x1f
            set data[0xcc] = 0x4b
            set data[0xcd] = 0xbd
            set data[0xce] = 0x8b
            set data[0xcf] = 0x8a
            set data[0xd0] = 0x70
            set data[0xd1] = 0x3e
            set data[0xd2] = 0xb5
            set data[0xd3] = 0x66
            set data[0xd4] = 0x48
            set data[0xd5] = 0x3
            set data[0xd6] = 0xf6
            set data[0xd7] = 0xe
            set data[0xd8] = 0x61
            set data[0xd9] = 0x35
            set data[0xda] = 0x57
            set data[0xdb] = 0xb9
            set data[0xdc] = 0x86
            set data[0xdd] = 0xc1
            set data[0xde] = 0x1d
            set data[0xdf] = 0x9e
            set data[0xe0] = 0xe1
            set data[0xe1] = 0xf8
            set data[0xe2] = 0x98
            set data[0xe3] = 0x11
            set data[0xe4] = 0x69
            set data[0xe5] = 0xd9
            set data[0xe6] = 0x8e
            set data[0xe7] = 0x94
            set data[0xe8] = 0x9b
            set data[0xe9] = 0x1e
            set data[0xea] = 0x87
            set data[0xeb] = 0xe9
            set data[0xec] = 0xce
            set data[0xed] = 0x55
            set data[0xee] = 0x28
            set data[0xef] = 0xdf
            set data[0xf0] = 0x8c
            set data[0xf1] = 0xa1
            set data[0xf2] = 0x89
            set data[0xf3] = 0xd
            set data[0xf4] = 0xbf
            set data[0xf5] = 0xe6
            set data[0xf6] = 0x42
            set data[0xf7] = 0x68
            set data[0xf8] = 0x41
            set data[0xf9] = 0x99
            set data[0xfa] = 0x2d
            set data[0xfb] = 0xf
            set data[0xfc] = 0xb0
            set data[0xfd] = 0x54
            set data[0xfe] = 0xbb
            set data[0xff] = 0x16
        endmethod
    endmodule

    private module rsboxm
        private static integer array data
        
        static constant method operator [] takes integer val returns integer
            return data[val]
        endmethod
        
        private static method onInit takes nothing returns nothing
            set data[0x63] = 0x0
            set data[0x7c] = 0x1
            set data[0x77] = 0x2
            set data[0x7b] = 0x3
            set data[0xf2] = 0x4
            set data[0x6b] = 0x5
            set data[0x6f] = 0x6
            set data[0xc5] = 0x7
            set data[0x30] = 0x8
            set data[0x1] = 0x9
            set data[0x67] = 0xa
            set data[0x2b] = 0xb
            set data[0xfe] = 0xc
            set data[0xd7] = 0xd
            set data[0xab] = 0xe
            set data[0x76] = 0xf
            set data[0xca] = 0x10
            set data[0x82] = 0x11
            set data[0xc9] = 0x12
            set data[0x7d] = 0x13
            set data[0xfa] = 0x14
            set data[0x59] = 0x15
            set data[0x47] = 0x16
            set data[0xf0] = 0x17
            set data[0xad] = 0x18
            set data[0xd4] = 0x19
            set data[0xa2] = 0x1a
            set data[0xaf] = 0x1b
            set data[0x9c] = 0x1c
            set data[0xa4] = 0x1d
            set data[0x72] = 0x1e
            set data[0xc0] = 0x1f
            set data[0xb7] = 0x20
            set data[0xfd] = 0x21
            set data[0x93] = 0x22
            set data[0x26] = 0x23
            set data[0x36] = 0x24
            set data[0x3f] = 0x25
            set data[0xf7] = 0x26
            set data[0xcc] = 0x27
            set data[0x34] = 0x28
            set data[0xa5] = 0x29
            set data[0xe5] = 0x2a
            set data[0xf1] = 0x2b
            set data[0x71] = 0x2c
            set data[0xd8] = 0x2d
            set data[0x31] = 0x2e
            set data[0x15] = 0x2f
            set data[0x4] = 0x30
            set data[0xc7] = 0x31
            set data[0x23] = 0x32
            set data[0xc3] = 0x33
            set data[0x18] = 0x34
            set data[0x96] = 0x35
            set data[0x5] = 0x36
            set data[0x9a] = 0x37
            set data[0x7] = 0x38
            set data[0x12] = 0x39
            set data[0x80] = 0x3a
            set data[0xe2] = 0x3b
            set data[0xeb] = 0x3c
            set data[0x27] = 0x3d
            set data[0xb2] = 0x3e
            set data[0x75] = 0x3f
            set data[0x9] = 0x40
            set data[0x83] = 0x41
            set data[0x2c] = 0x42
            set data[0x1a] = 0x43
            set data[0x1b] = 0x44
            set data[0x6e] = 0x45
            set data[0x5a] = 0x46
            set data[0xa0] = 0x47
            set data[0x52] = 0x48
            set data[0x3b] = 0x49
            set data[0xd6] = 0x4a
            set data[0xb3] = 0x4b
            set data[0x29] = 0x4c
            set data[0xe3] = 0x4d
            set data[0x2f] = 0x4e
            set data[0x84] = 0x4f
            set data[0x53] = 0x50
            set data[0xd1] = 0x51
            set data[0x0] = 0x52
            set data[0xed] = 0x53
            set data[0x20] = 0x54
            set data[0xfc] = 0x55
            set data[0xb1] = 0x56
            set data[0x5b] = 0x57
            set data[0x6a] = 0x58
            set data[0xcb] = 0x59
            set data[0xbe] = 0x5a
            set data[0x39] = 0x5b
            set data[0x4a] = 0x5c
            set data[0x4c] = 0x5d
            set data[0x58] = 0x5e
            set data[0xcf] = 0x5f
            set data[0xd0] = 0x60
            set data[0xef] = 0x61
            set data[0xaa] = 0x62
            set data[0xfb] = 0x63
            set data[0x43] = 0x64
            set data[0x4d] = 0x65
            set data[0x33] = 0x66
            set data[0x85] = 0x67
            set data[0x45] = 0x68
            set data[0xf9] = 0x69
            set data[0x2] = 0x6a
            set data[0x7f] = 0x6b
            set data[0x50] = 0x6c
            set data[0x3c] = 0x6d
            set data[0x9f] = 0x6e
            set data[0xa8] = 0x6f
            set data[0x51] = 0x70
            set data[0xa3] = 0x71
            set data[0x40] = 0x72
            set data[0x8f] = 0x73
            set data[0x92] = 0x74
            set data[0x9d] = 0x75
            set data[0x38] = 0x76
            set data[0xf5] = 0x77
            set data[0xbc] = 0x78
            set data[0xb6] = 0x79
            set data[0xda] = 0x7a
            set data[0x21] = 0x7b
            set data[0x10] = 0x7c
            set data[0xff] = 0x7d
            set data[0xf3] = 0x7e
            set data[0xd2] = 0x7f
            set data[0xcd] = 0x80
            set data[0xc] = 0x81
            set data[0x13] = 0x82
            set data[0xec] = 0x83
            set data[0x5f] = 0x84
            set data[0x97] = 0x85
            set data[0x44] = 0x86
            set data[0x17] = 0x87
            set data[0xc4] = 0x88
            set data[0xa7] = 0x89
            set data[0x7e] = 0x8a
            set data[0x3d] = 0x8b
            set data[0x64] = 0x8c
            set data[0x5d] = 0x8d
            set data[0x19] = 0x8e
            set data[0x73] = 0x8f
            set data[0x60] = 0x90
            set data[0x81] = 0x91
            set data[0x4f] = 0x92
            set data[0xdc] = 0x93
            set data[0x22] = 0x94
            set data[0x2a] = 0x95
            set data[0x90] = 0x96
            set data[0x88] = 0x97
            set data[0x46] = 0x98
            set data[0xee] = 0x99
            set data[0xb8] = 0x9a
            set data[0x14] = 0x9b
            set data[0xde] = 0x9c
            set data[0x5e] = 0x9d
            set data[0xb] = 0x9e
            set data[0xdb] = 0x9f
            set data[0xe0] = 0xa0
            set data[0x32] = 0xa1
            set data[0x3a] = 0xa2
            set data[0xa] = 0xa3
            set data[0x49] = 0xa4
            set data[0x6] = 0xa5
            set data[0x24] = 0xa6
            set data[0x5c] = 0xa7
            set data[0xc2] = 0xa8
            set data[0xd3] = 0xa9
            set data[0xac] = 0xaa
            set data[0x62] = 0xab
            set data[0x91] = 0xac
            set data[0x95] = 0xad
            set data[0xe4] = 0xae
            set data[0x79] = 0xaf
            set data[0xe7] = 0xb0
            set data[0xc8] = 0xb1
            set data[0x37] = 0xb2
            set data[0x6d] = 0xb3
            set data[0x8d] = 0xb4
            set data[0xd5] = 0xb5
            set data[0x4e] = 0xb6
            set data[0xa9] = 0xb7
            set data[0x6c] = 0xb8
            set data[0x56] = 0xb9
            set data[0xf4] = 0xba
            set data[0xea] = 0xbb
            set data[0x65] = 0xbc
            set data[0x7a] = 0xbd
            set data[0xae] = 0xbe
            set data[0x8] = 0xbf
            set data[0xba] = 0xc0
            set data[0x78] = 0xc1
            set data[0x25] = 0xc2
            set data[0x2e] = 0xc3
            set data[0x1c] = 0xc4
            set data[0xa6] = 0xc5
            set data[0xb4] = 0xc6
            set data[0xc6] = 0xc7
            set data[0xe8] = 0xc8
            set data[0xdd] = 0xc9
            set data[0x74] = 0xca
            set data[0x1f] = 0xcb
            set data[0x4b] = 0xcc
            set data[0xbd] = 0xcd
            set data[0x8b] = 0xce
            set data[0x8a] = 0xcf
            set data[0x70] = 0xd0
            set data[0x3e] = 0xd1
            set data[0xb5] = 0xd2
            set data[0x66] = 0xd3
            set data[0x48] = 0xd4
            set data[0x3] = 0xd5
            set data[0xf6] = 0xd6
            set data[0xe] = 0xd7
            set data[0x61] = 0xd8
            set data[0x35] = 0xd9
            set data[0x57] = 0xda
            set data[0xb9] = 0xdb
            set data[0x86] = 0xdc
            set data[0xc1] = 0xdd
            set data[0x1d] = 0xde
            set data[0x9e] = 0xdf
            set data[0xe1] = 0xe0
            set data[0xf8] = 0xe1
            set data[0x98] = 0xe2
            set data[0x11] = 0xe3
            set data[0x69] = 0xe4
            set data[0xd9] = 0xe5
            set data[0x8e] = 0xe6
            set data[0x94] = 0xe7
            set data[0x9b] = 0xe8
            set data[0x1e] = 0xe9
            set data[0x87] = 0xea
            set data[0xe9] = 0xeb
            set data[0xce] = 0xec
            set data[0x55] = 0xed
            set data[0x28] = 0xee
            set data[0xdf] = 0xef
            set data[0x8c] = 0xf0
            set data[0xa1] = 0xf1
            set data[0x89] = 0xf2
            set data[0xd] = 0xf3
            set data[0xbf] = 0xf4
            set data[0xe6] = 0xf5
            set data[0x42] = 0xf6
            set data[0x68] = 0xf7
            set data[0x41] = 0xf8
            set data[0x99] = 0xf9
            set data[0x2d] = 0xfa
            set data[0xf] = 0xfb
            set data[0xb0] = 0xfc
            set data[0x54] = 0xfd
            set data[0xbb] = 0xfe
            set data[0x16] = 0xff
        endmethod
    endmodule

    struct sbox extends array
        implement sboxm
    endstruct
    struct rsbox extends array
        implement rsboxm
    endstruct
endlibrary