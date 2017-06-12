; mark_description "Intel(R) C++ Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 17.0.4.210 Build 20170411";
; mark_description "";
; mark_description "-c -Qm64 -IC:\\Program Files (x86)\\Intel\\IntelSGXSDK\\include -IC:\\Program Files (x86)\\Intel\\IntelSGXSD";
; mark_description "K\\include\\tlibc -IC:\\Program Files (x86)\\Intel\\IntelSGXSDK\\include\\libc++ -IC:\\Program Files (x86)\\";
; mark_description "Intel\\IntelSGXSDK\\include\\ipp -IC:\\Program Files (x86)\\IntelSWTools\\compilers_and_libraries_2017.2.187";
; mark_description "\\windows\\compiler\\include -Zi -nologo -W3 -Od -Oi -D __INTEL_COMPILER=1700 -D _WINDLL -EHs -EHc -MT -GS -";
; mark_description "Gy -Zc:wchar_t -Zc:forScope -FoPrerelease\\ -FdPrerelease\\vc140.pdb -TP -S";
	OPTION DOTNAME
_TEXT	SEGMENT      'CODE'
;	COMDAT encryptBytes
TXTST0:
_2__routine_start_encryptBytes_6:
; -- Begin  encryptBytes
;encryptBytes	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT encryptBytes
; mark_begin;

	PUBLIC encryptBytes
; --- encryptBytes(uint8_t *, size_t, uint8_t *, const uint8_t *, size_t, uint8_t *)
encryptBytes	PROC 
; parameter 1(input): rcx
; parameter 2(length): rdx
; parameter 3(output): r8
; parameter 4(key): r9
; parameter 5(keyLength): 128 + rbp
; parameter 6(iv): 136 + rbp
.B1.1::                         ; Preds .B1.0
                                ; Execution count [0.00e+000]
L2::
                                                           ;5.117
$LN0:
        push      rbp                                           ;5.117
$LN1:
        sub       rsp, 128                                      ;5.117
$LN2:
        lea       rbp, QWORD PTR [48+rsp]                       ;5.117
$LN3:
        mov       QWORD PTR [64+rbp], rsi                       ;5.117[spill]
$LN4:
        mov       QWORD PTR [56+rbp], rbx                       ;5.117[spill]
$LN5:
        mov       QWORD PTR [96+rbp], rcx                       ;5.117
$LN6:
        mov       QWORD PTR [104+rbp], rdx                      ;5.117
$LN7:
        mov       QWORD PTR [112+rbp], r8                       ;5.117
$LN8:
        mov       QWORD PTR [120+rbp], r9                       ;5.117
$LN9:
        lea       rax, QWORD PTR [rbp]                          ;8.2
$LN10:
        mov       rcx, rax                                      ;8.2
$LN11:
;       ippsAESGetSize(int *)
        call      ippsAESGetSize                                ;8.2
$LN12:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.9::                         ; Preds .B1.1
                                ; Execution count [0.00e+000]
$LN13:
        mov       DWORD PTR [4+rbp], eax                        ;8.2
$LN14:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.2::                         ; Preds .B1.9
                                ; Execution count [0.00e+000]
$LN15:
        mov       eax, DWORD PTR [rbp]                          ;9.20
$LN16:
        movsxd    rax, eax                                      ;9.20
$LN17:
        mov       rcx, rax                                      ;9.20
$LN18:
;       operator new(unsigned __int64)
        call      ??2@YAPEAX_K@Z                                ;9.20
$LN19:
                                ; LOE rax rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.10::                        ; Preds .B1.2
                                ; Execution count [0.00e+000]
$LN20:
        mov       QWORD PTR [24+rbp], rax                       ;9.20
$LN21:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.3::                         ; Preds .B1.10
                                ; Execution count [0.00e+000]
$LN22:
        mov       rax, QWORD PTR [24+rbp]                       ;9.20
$LN23:
        mov       QWORD PTR [32+rbp], rax                       ;9.20
$LN24:
        mov       rax, QWORD PTR [120+rbp]                      ;11.2
$LN25:
        mov       edx, DWORD PTR [128+rbp]                      ;11.2
$LN26:
        mov       rcx, QWORD PTR [32+rbp]                       ;11.2
$LN27:
        mov       ebx, DWORD PTR [rbp]                          ;11.2
$LN28:
        mov       QWORD PTR [40+rbp], rcx                       ;11.2[spill]
$LN29:
        mov       rcx, rax                                      ;11.2
$LN30:
        mov       rax, QWORD PTR [40+rbp]                       ;11.2[spill]
$LN31:
        mov       r8, rax                                       ;11.2
$LN32:
        mov       r9d, ebx                                      ;11.2
$LN33:
;       ippsAESInit(const Ipp8u *, int, IppsAESSpec *, int)
        call      ippsAESInit                                   ;11.2
$LN34:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.11::                        ; Preds .B1.3
                                ; Execution count [0.00e+000]
$LN35:
        mov       DWORD PTR [8+rbp], eax                        ;11.2
$LN36:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.4::                         ; Preds .B1.11
                                ; Execution count [0.00e+000]
$LN37:
        mov       rax, QWORD PTR [96+rbp]                       ;13.19
$LN38:
        mov       rdx, QWORD PTR [112+rbp]                      ;13.19
$LN39:
        mov       ecx, DWORD PTR [104+rbp]                      ;13.19
$LN40:
        mov       rbx, QWORD PTR [32+rbp]                       ;13.19
$LN41:
        mov       rsi, QWORD PTR [136+rbp]                      ;13.19
$LN42:
        mov       QWORD PTR [32+rsp], rsi                       ;13.19
$LN43:
        mov       DWORD PTR [40+rsp], 64                        ;13.19
$LN44:
        mov       DWORD PTR [48+rbp], ecx                       ;13.19[spill]
$LN45:
        mov       rcx, rax                                      ;13.19
$LN46:
        mov       eax, DWORD PTR [48+rbp]                       ;13.19[spill]
$LN47:
        mov       r8d, eax                                      ;13.19
$LN48:
        mov       r9, rbx                                       ;13.19
$LN49:
;       ippsAESEncryptCTR(const Ipp8u *, Ipp8u *, int, const IppsAESSpec *, Ipp8u *, int)
        call      ippsAESEncryptCTR                             ;13.19
$LN50:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.12::                        ; Preds .B1.4
                                ; Execution count [0.00e+000]
$LN51:
        mov       DWORD PTR [12+rbp], eax                       ;13.19
$LN52:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.5::                         ; Preds .B1.12
                                ; Execution count [0.00e+000]
$LN53:
        mov       eax, DWORD PTR [12+rbp]                       ;13.19
$LN54:
        mov       DWORD PTR [16+rbp], eax                       ;13.19
$LN55:
        mov       rax, QWORD PTR [32+rbp]                       ;15.2
$LN56:
        mov       rcx, rax                                      ;15.2
$LN57:
;       operator delete(void *)
        call      ??3@YAXPEAX@Z                                 ;15.2
$LN58:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.13::                        ; Preds .B1.5
                                ; Execution count [0.00e+000]
$LN59:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.6::                         ; Preds .B1.13
                                ; Execution count [0.00e+000]
$LN60:
        mov       eax, DWORD PTR [16+rbp]                       ;17.2
$LN61:
        mov       rbx, QWORD PTR [56+rbp]                       ;17.2[spill]
$LN62:
        mov       rsi, QWORD PTR [64+rbp]                       ;17.2[spill]
$LN63:
        lea       rsp, QWORD PTR [80+rbp]                       ;17.2
$LN64:
        pop       rbp                                           ;17.2
$LN65:
        ret                                                     ;17.2
$LN66:
                                ; LOE
.B1.7::
$LN67:
; mark_end;
encryptBytes ENDP
$LNencryptBytes$68:
$LNencryptBytes$69:
;encryptBytes	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$encryptBytes
	ALIGN 004H
.unwind.encryptBytes.B1_B6	DD	889656577
	DD	865301
	DD	943121
	DD	4060611341
	DD	20481
;.xdata$encryptBytes	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$encryptBytes
	ALIGN 004H
.pdata.encryptBytes.B1_B6	DD	imagerel .B1.1
	DD	imagerel .B1.7
	DD	imagerel .unwind.encryptBytes.B1_B6
;.pdata$encryptBytes	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  encryptBytes
_TEXT	SEGMENT      'CODE'
;	COMDAT decryptBytes
TXTST1:
_2__routine_start_decryptBytes_7:
; -- Begin  decryptBytes
;decryptBytes	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT decryptBytes
; mark_begin;

	PUBLIC decryptBytes
; --- decryptBytes(uint8_t *, size_t, uint8_t *, const uint8_t *, size_t, uint8_t *)
decryptBytes	PROC 
; parameter 1(input): rcx
; parameter 2(length): rdx
; parameter 3(output): r8
; parameter 4(key): r9
; parameter 5(keyLength): 128 + rbp
; parameter 6(iv): 136 + rbp
.B2.1::                         ; Preds .B2.0
                                ; Execution count [0.00e+000]
L8::
                                                           ;20.117
$LN70:
        push      rbp                                           ;20.117
$LN71:
        sub       rsp, 128                                      ;20.117
$LN72:
        lea       rbp, QWORD PTR [48+rsp]                       ;20.117
$LN73:
        mov       QWORD PTR [64+rbp], rsi                       ;20.117[spill]
$LN74:
        mov       QWORD PTR [56+rbp], rbx                       ;20.117[spill]
$LN75:
        mov       QWORD PTR [96+rbp], rcx                       ;20.117
$LN76:
        mov       QWORD PTR [104+rbp], rdx                      ;20.117
$LN77:
        mov       QWORD PTR [112+rbp], r8                       ;20.117
$LN78:
        mov       QWORD PTR [120+rbp], r9                       ;20.117
$LN79:
        lea       rax, QWORD PTR [rbp]                          ;23.2
$LN80:
        mov       rcx, rax                                      ;23.2
$LN81:
;       ippsAESGetSize(int *)
        call      ippsAESGetSize                                ;23.2
$LN82:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.9::                         ; Preds .B2.1
                                ; Execution count [0.00e+000]
$LN83:
        mov       DWORD PTR [4+rbp], eax                        ;23.2
$LN84:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.2::                         ; Preds .B2.9
                                ; Execution count [0.00e+000]
$LN85:
        mov       eax, DWORD PTR [rbp]                          ;24.20
$LN86:
        movsxd    rax, eax                                      ;24.20
$LN87:
        mov       rcx, rax                                      ;24.20
$LN88:
;       operator new(unsigned __int64)
        call      ??2@YAPEAX_K@Z                                ;24.20
$LN89:
                                ; LOE rax rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.10::                        ; Preds .B2.2
                                ; Execution count [0.00e+000]
$LN90:
        mov       QWORD PTR [24+rbp], rax                       ;24.20
$LN91:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.3::                         ; Preds .B2.10
                                ; Execution count [0.00e+000]
$LN92:
        mov       rax, QWORD PTR [24+rbp]                       ;24.20
$LN93:
        mov       QWORD PTR [32+rbp], rax                       ;24.20
$LN94:
        mov       rax, QWORD PTR [120+rbp]                      ;26.2
$LN95:
        mov       edx, DWORD PTR [128+rbp]                      ;26.2
$LN96:
        mov       rcx, QWORD PTR [32+rbp]                       ;26.2
$LN97:
        mov       ebx, DWORD PTR [rbp]                          ;26.2
$LN98:
        mov       QWORD PTR [40+rbp], rcx                       ;26.2[spill]
$LN99:
        mov       rcx, rax                                      ;26.2
$LN100:
        mov       rax, QWORD PTR [40+rbp]                       ;26.2[spill]
$LN101:
        mov       r8, rax                                       ;26.2
$LN102:
        mov       r9d, ebx                                      ;26.2
$LN103:
;       ippsAESInit(const Ipp8u *, int, IppsAESSpec *, int)
        call      ippsAESInit                                   ;26.2
$LN104:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.11::                        ; Preds .B2.3
                                ; Execution count [0.00e+000]
$LN105:
        mov       DWORD PTR [8+rbp], eax                        ;26.2
$LN106:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.4::                         ; Preds .B2.11
                                ; Execution count [0.00e+000]
$LN107:
        mov       rax, QWORD PTR [96+rbp]                       ;28.19
$LN108:
        mov       rdx, QWORD PTR [112+rbp]                      ;28.19
$LN109:
        mov       ecx, DWORD PTR [104+rbp]                      ;28.19
$LN110:
        mov       rbx, QWORD PTR [32+rbp]                       ;28.19
$LN111:
        mov       rsi, QWORD PTR [136+rbp]                      ;28.19
$LN112:
        mov       QWORD PTR [32+rsp], rsi                       ;28.19
$LN113:
        mov       DWORD PTR [40+rsp], 64                        ;28.19
$LN114:
        mov       DWORD PTR [48+rbp], ecx                       ;28.19[spill]
$LN115:
        mov       rcx, rax                                      ;28.19
$LN116:
        mov       eax, DWORD PTR [48+rbp]                       ;28.19[spill]
$LN117:
        mov       r8d, eax                                      ;28.19
$LN118:
        mov       r9, rbx                                       ;28.19
$LN119:
;       ippsAESDecryptCTR(const Ipp8u *, Ipp8u *, int, const IppsAESSpec *, Ipp8u *, int)
        call      ippsAESDecryptCTR                             ;28.19
$LN120:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.12::                        ; Preds .B2.4
                                ; Execution count [0.00e+000]
$LN121:
        mov       DWORD PTR [12+rbp], eax                       ;28.19
$LN122:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.5::                         ; Preds .B2.12
                                ; Execution count [0.00e+000]
$LN123:
        mov       eax, DWORD PTR [12+rbp]                       ;28.19
$LN124:
        mov       DWORD PTR [16+rbp], eax                       ;28.19
$LN125:
        mov       rax, QWORD PTR [32+rbp]                       ;30.2
$LN126:
        mov       rcx, rax                                      ;30.2
$LN127:
;       operator delete(void *)
        call      ??3@YAXPEAX@Z                                 ;30.2
$LN128:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.13::                        ; Preds .B2.5
                                ; Execution count [0.00e+000]
$LN129:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.6::                         ; Preds .B2.13
                                ; Execution count [0.00e+000]
$LN130:
        mov       eax, DWORD PTR [16+rbp]                       ;32.2
$LN131:
        mov       rbx, QWORD PTR [56+rbp]                       ;32.2[spill]
$LN132:
        mov       rsi, QWORD PTR [64+rbp]                       ;32.2[spill]
$LN133:
        lea       rsp, QWORD PTR [80+rbp]                       ;32.2
$LN134:
        pop       rbp                                           ;32.2
$LN135:
        ret                                                     ;32.2
$LN136:
                                ; LOE
.B2.7::
$LN137:
; mark_end;
decryptBytes ENDP
$LNdecryptBytes$138:
$LNdecryptBytes$139:
;decryptBytes	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$decryptBytes
	ALIGN 004H
.unwind.decryptBytes.B1_B6	DD	889656577
	DD	865301
	DD	943121
	DD	4060611341
	DD	20481
;.xdata$decryptBytes	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$decryptBytes
	ALIGN 004H
.pdata.decryptBytes.B1_B6	DD	imagerel .B2.1
	DD	imagerel .B2.7
	DD	imagerel .unwind.decryptBytes.B1_B6
;.pdata$decryptBytes	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  decryptBytes
_DATA	SEGMENT      'DATA'
_DATA	ENDS
EXTRN	ippsAESDecryptCTR:PROC
EXTRN	ippsAESEncryptCTR:PROC
EXTRN	ippsAESInit:PROC
EXTRN	ippsAESGetSize:PROC
EXTRN	??3@YAXPEAX@Z:PROC
EXTRN	??2@YAPEAX_K@Z:PROC
EXTRN	__ImageBase:PROC
	INCLUDELIB <libmmt>
	INCLUDELIB <LIBCMT>
	INCLUDELIB <libirc>
	INCLUDELIB <svml_dispmt>
	INCLUDELIB <OLDNAMES>
	INCLUDELIB <libdecimal>
	END
