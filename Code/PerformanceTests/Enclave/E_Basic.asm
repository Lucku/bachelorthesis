; mark_description "Intel(R) C++ Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 17.0.4.210 Build 20170411";
; mark_description "";
; mark_description "-c -Qm64 -IC:\\Program Files (x86)\\Intel\\IntelSGXSDK\\include -IC:\\Program Files (x86)\\Intel\\IntelSGXSD";
; mark_description "K\\include\\tlibc -IC:\\Program Files (x86)\\Intel\\IntelSGXSDK\\include\\libc++ -IC:\\Program Files (x86)\\";
; mark_description "Intel\\IntelSGXSDK\\include\\ipp -IC:\\Program Files (x86)\\IntelSWTools\\compilers_and_libraries_2017.2.187";
; mark_description "\\windows\\compiler\\include -Zi -nologo -W3 -Od -Oi -D __INTEL_COMPILER=1700 -D _WINDLL -EHs -EHc -MT -GS -";
; mark_description "Gy -Zc:wchar_t -Zc:forScope -FoPrerelease\\ -FdPrerelease\\vc140.pdb -TP -S";
	OPTION DOTNAME
_TEXT	SEGMENT      'CODE'
;	COMDAT enclaveIterate
TXTST0:
_2__routine_start_enclaveIterate_0:
; -- Begin  enclaveIterate
;enclaveIterate	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT enclaveIterate
; mark_begin;

	PUBLIC enclaveIterate
; --- enclaveIterate(uint8_t *, size_t, uint8_t *)
enclaveIterate	PROC 
; parameter 1(in): rcx
; parameter 2(length): rdx
; parameter 3(out): r8
.B1.1::                         ; Preds .B1.0
                                ; Execution count [0.00e+000]
L2::
                                                           ;7.65
$LN0:
        push      rbp                                           ;7.65
$LN1:
        sub       rsp, 48                                       ;7.65
$LN2:
        lea       rbp, QWORD PTR [32+rsp]                       ;7.65
$LN3:
        mov       QWORD PTR [32+rbp], rcx                       ;7.65
$LN4:
        mov       QWORD PTR [40+rbp], rdx                       ;7.65
$LN5:
        mov       QWORD PTR [48+rbp], r8                        ;7.65
$LN6:
        mov       DWORD PTR [rbp], 0                            ;9.22
$LN7:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.2::                         ; Preds .B1.3 .B1.1
                                ; Execution count [0.00e+000]
$LN8:
        mov       eax, DWORD PTR [rbp]                          ;9.2
$LN9:
        mov       rdx, QWORD PTR [40+rbp]                       ;9.2
$LN10:
        cmp       rax, rdx                                      ;9.2
$LN11:
        jae       .B1.4         ; Prob 50%                      ;9.2
$LN12:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.3::                         ; Preds .B1.2
                                ; Execution count [0.00e+000]
$LN13:
        mov       eax, DWORD PTR [rbp]                          ;11.3
$LN14:
        add       rax, QWORD PTR [32+rbp]                       ;11.3
$LN15:
        mov       edx, DWORD PTR [rbp]                          ;11.3
$LN16:
        add       rdx, QWORD PTR [48+rbp]                       ;11.3
$LN17:
        movzx     eax, BYTE PTR [rax]                           ;11.3
$LN18:
        mov       BYTE PTR [rdx], al                            ;11.3
$LN19:
        mov       eax, 1                                        ;9.39
$LN20:
        add       eax, DWORD PTR [rbp]                          ;9.39
$LN21:
        mov       DWORD PTR [rbp], eax                          ;9.39
$LN22:
        jmp       .B1.2         ; Prob 100%                     ;9.39
$LN23:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.4::                         ; Preds .B1.2
                                ; Execution count [0.00e+000]
$LN24:
        mov       eax, 0                                        ;14.2
$LN25:
        lea       rsp, QWORD PTR [16+rbp]                       ;14.2
$LN26:
        pop       rbp                                           ;14.2
$LN27:
        ret                                                     ;14.2
$LN28:
                                ; LOE
.B1.5::
$LN29:
; mark_end;
enclaveIterate ENDP
$LNenclaveIterate$30:
$LNenclaveIterate$31:
;enclaveIterate	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$enclaveIterate
	ALIGN 004H
.unwind.enclaveIterate.B1_B4	DD	620956161
	DD	1376060170
	DD	20481
;.xdata$enclaveIterate	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$enclaveIterate
	ALIGN 004H
.pdata.enclaveIterate.B1_B4	DD	imagerel .B1.1
	DD	imagerel .B1.5
	DD	imagerel .unwind.enclaveIterate.B1_B4
;.pdata$enclaveIterate	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  enclaveIterate
_TEXT	SEGMENT      'CODE'
;	COMDAT enclaveJustCopy
TXTST1:
_2__routine_start_enclaveJustCopy_1:
; -- Begin  enclaveJustCopy
;enclaveJustCopy	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT enclaveJustCopy
; mark_begin;

	PUBLIC enclaveJustCopy
; --- enclaveJustCopy(uint8_t *, size_t, uint8_t *)
enclaveJustCopy	PROC 
; parameter 1(in): rcx
; parameter 2(length): rdx
; parameter 3(out): r8
.B2.1::                         ; Preds .B2.0
                                ; Execution count [0.00e+000]
L8::
                                                           ;17.66
$LN32:
        push      rbp                                           ;17.66
$LN33:
        sub       rsp, 32                                       ;17.66
$LN34:
        lea       rbp, QWORD PTR [32+rsp]                       ;17.66
$LN35:
        mov       QWORD PTR [16+rbp], rcx                       ;17.66
$LN36:
        mov       QWORD PTR [24+rbp], rdx                       ;17.66
$LN37:
        mov       QWORD PTR [32+rbp], r8                        ;17.66
$LN38:
        mov       eax, 0                                        ;19.2
$LN39:
        lea       rsp, QWORD PTR [rbp]                          ;19.2
$LN40:
        pop       rbp                                           ;19.2
$LN41:
        ret                                                     ;19.2
$LN42:
                                ; LOE
.B2.2::
$LN43:
; mark_end;
enclaveJustCopy ENDP
$LNenclaveJustCopy$44:
$LNenclaveJustCopy$45:
;enclaveJustCopy	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$enclaveJustCopy
	ALIGN 004H
.unwind.enclaveJustCopy.B1_B1	DD	620956161
	DD	839189258
	DD	20481
;.xdata$enclaveJustCopy	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$enclaveJustCopy
	ALIGN 004H
.pdata.enclaveJustCopy.B1_B1	DD	imagerel .B2.1
	DD	imagerel .B2.2
	DD	imagerel .unwind.enclaveJustCopy.B1_B1
;.pdata$enclaveJustCopy	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  enclaveJustCopy
_TEXT	SEGMENT      'CODE'
;	COMDAT enclaveNoCopy
TXTST2:
_2__routine_start_enclaveNoCopy_2:
; -- Begin  enclaveNoCopy
;enclaveNoCopy	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT enclaveNoCopy
; mark_begin;

	PUBLIC enclaveNoCopy
; --- enclaveNoCopy(uint8_t *, size_t, uint8_t *)
enclaveNoCopy	PROC 
; parameter 1(in): rcx
; parameter 2(length): rdx
; parameter 3(out): r8
.B3.1::                         ; Preds .B3.0
                                ; Execution count [0.00e+000]
L14::
                                                          ;22.64
$LN46:
        push      rbp                                           ;22.64
$LN47:
        sub       rsp, 32                                       ;22.64
$LN48:
        lea       rbp, QWORD PTR [32+rsp]                       ;22.64
$LN49:
        mov       QWORD PTR [16+rbp], rcx                       ;22.64
$LN50:
        mov       QWORD PTR [24+rbp], rdx                       ;22.64
$LN51:
        mov       QWORD PTR [32+rbp], r8                        ;22.64
$LN52:
        mov       eax, 0                                        ;24.2
$LN53:
        lea       rsp, QWORD PTR [rbp]                          ;24.2
$LN54:
        pop       rbp                                           ;24.2
$LN55:
        ret                                                     ;24.2
$LN56:
                                ; LOE
.B3.2::
$LN57:
; mark_end;
enclaveNoCopy ENDP
$LNenclaveNoCopy$58:
$LNenclaveNoCopy$59:
;enclaveNoCopy	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$enclaveNoCopy
	ALIGN 004H
.unwind.enclaveNoCopy.B1_B1	DD	620956161
	DD	839189258
	DD	20481
;.xdata$enclaveNoCopy	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$enclaveNoCopy
	ALIGN 004H
.pdata.enclaveNoCopy.B1_B1	DD	imagerel .B3.1
	DD	imagerel .B3.2
	DD	imagerel .unwind.enclaveNoCopy.B1_B1
;.pdata$enclaveNoCopy	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  enclaveNoCopy
_TEXT	SEGMENT      'CODE'
;	COMDAT enclaveCompleteProcess
TXTST3:
_2__routine_start_enclaveCompleteProcess_3:
; -- Begin  enclaveCompleteProcess
;enclaveCompleteProcess	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT enclaveCompleteProcess
; mark_begin;

	PUBLIC enclaveCompleteProcess
; --- enclaveCompleteProcess(uint8_t *, size_t, uint8_t *)
enclaveCompleteProcess	PROC 
; parameter 1(in): rcx
; parameter 2(length): rdx
; parameter 3(out): r8
.B4.1::                         ; Preds .B4.0
                                ; Execution count [0.00e+000]
L20::
                                                          ;27.74
$LN60:
        push      rbp                                           ;27.74
$LN61:
        sub       rsp, 304                                      ;27.74
$LN62:
        lea       rbp, QWORD PTR [48+rsp]                       ;27.74
$LN63:
        mov       QWORD PTR [200+rbp], rsi                      ;27.74[spill]
$LN64:
        mov       QWORD PTR [192+rbp], rbx                      ;27.74[spill]
$LN65:
        mov       QWORD PTR [272+rbp], rcx                      ;27.74
$LN66:
        mov       QWORD PTR [280+rbp], rdx                      ;27.74
$LN67:
        mov       QWORD PTR [288+rbp], r8                       ;27.74
$LN68:
        mov       rax, QWORD PTR [__security_cookie]            ;27.74
$LN69:
        xor       rax, rbp                                      ;27.74
$LN70:
        mov       QWORD PTR [240+rbp], rax                      ;27.74
$LN71:
        lea       rax, QWORD PTR [208+rbp]                      ;30.28
$LN72:
        mov       rdx, 03837363534333231H                       ;30.28
$LN73:
        mov       QWORD PTR [rax], rdx                          ;30.28
$LN74:
        lea       rax, QWORD PTR [208+rbp]                      ;30.28
$LN75:
        add       rax, 8                                        ;30.28
$LN76:
        mov       rdx, 035343332313039H                         ;30.28
$LN77:
        mov       QWORD PTR [rax], rdx                          ;30.28
$LN78:
        lea       rax, QWORD PTR [224+rbp]                      ;31.29
$LN79:
        mov       rdx, 03837363534333231H                       ;31.29
$LN80:
        mov       QWORD PTR [rax], rdx                          ;31.29
$LN81:
        lea       rax, QWORD PTR [224+rbp]                      ;31.29
$LN82:
        add       rax, 8                                        ;31.29
$LN83:
        mov       rdx, 035343332313039H                         ;31.29
$LN84:
        mov       QWORD PTR [rax], rdx                          ;31.29
$LN85:
        mov       rax, QWORD PTR [280+rbp]                      ;35.16
$LN86:
        mov       rcx, rax                                      ;35.16
$LN87:
;       operator new(unsigned __int64)
        call      ??2@YAPEAX_K@Z                                ;35.16
$LN88:
                                ; LOE rax rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.17::                        ; Preds .B4.1
                                ; Execution count [0.00e+000]
$LN89:
        mov       QWORD PTR [8+rbp], rax                        ;35.16
$LN90:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.2::                         ; Preds .B4.17
                                ; Execution count [0.00e+000]
$LN91:
        mov       rax, QWORD PTR [8+rbp]                        ;35.16
$LN92:
        mov       QWORD PTR [16+rbp], rax                       ;35.16
$LN93:
        mov       rax, QWORD PTR [272+rbp]                      ;36.2
$LN94:
        mov       rdx, QWORD PTR [280+rbp]                      ;36.2
$LN95:
        mov       rcx, QWORD PTR [16+rbp]                       ;36.2
$LN96:
        lea       rbx, QWORD PTR [208+rbp]                      ;36.2
$LN97:
        mov       QWORD PTR [32+rsp], 16                        ;36.2
$LN98:
        lea       rsi, QWORD PTR [224+rbp]                      ;36.2
$LN99:
        mov       QWORD PTR [40+rsp], rsi                       ;36.2
$LN100:
        mov       QWORD PTR [152+rbp], rcx                      ;36.2[spill]
$LN101:
        mov       rcx, rax                                      ;36.2
$LN102:
        mov       rax, QWORD PTR [152+rbp]                      ;36.2[spill]
$LN103:
        mov       r8, rax                                       ;36.2
$LN104:
        mov       r9, rbx                                       ;36.2
$LN105:
;       decryptBytes(uint8_t *, size_t, uint8_t *, const uint8_t *, size_t, uint8_t *)
        call      decryptBytes                                  ;36.2
$LN106:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.18::                        ; Preds .B4.2
                                ; Execution count [0.00e+000]
$LN107:
        mov       DWORD PTR [rbp], eax                          ;36.2
$LN108:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.3::                         ; Preds .B4.18
                                ; Execution count [0.00e+000]
$LN109:
        mov       rax, QWORD PTR [280+rbp]                      ;40.23
$LN110:
        imul      rax, rax, 4                                   ;40.23
$LN111:
        mov       QWORD PTR [24+rbp], rax                       ;40.23
$LN112:
        mov       rax, QWORD PTR [24+rbp]                       ;41.19
$LN113:
        mov       rcx, rax                                      ;41.19
$LN114:
;       operator new(unsigned __int64)
        call      ??2@YAPEAX_K@Z                                ;41.19
$LN115:
                                ; LOE rax rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.19::                        ; Preds .B4.3
                                ; Execution count [0.00e+000]
$LN116:
        mov       QWORD PTR [32+rbp], rax                       ;41.19
$LN117:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.4::                         ; Preds .B4.19
                                ; Execution count [0.00e+000]
$LN118:
        mov       rax, QWORD PTR [32+rbp]                       ;41.19
$LN119:
        mov       QWORD PTR [40+rbp], rax                       ;41.19
$LN120:
        mov       rax, QWORD PTR [16+rbp]                       ;42.19
$LN121:
        mov       rdx, QWORD PTR [280+rbp]                      ;42.19
$LN122:
        mov       rcx, QWORD PTR [40+rbp]                       ;42.19
$LN123:
        mov       rbx, QWORD PTR [24+rbp]                       ;42.19
$LN124:
        mov       QWORD PTR [160+rbp], rcx                      ;42.19[spill]
$LN125:
        mov       rcx, rax                                      ;42.19
$LN126:
        mov       rax, QWORD PTR [160+rbp]                      ;42.19[spill]
$LN127:
        mov       r8, rax                                       ;42.19
$LN128:
        mov       r9, rbx                                       ;42.19
$LN129:
;       enclaveVByteDecode(uint8_t *, size_t, uint8_t *, size_t)
        call      enclaveVByteDecode                            ;42.19
$LN130:
                                ; LOE rax rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.20::                        ; Preds .B4.4
                                ; Execution count [0.00e+000]
$LN131:
        mov       QWORD PTR [48+rbp], rax                       ;42.19
$LN132:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.5::                         ; Preds .B4.20
                                ; Execution count [0.00e+000]
$LN133:
        mov       rax, QWORD PTR [48+rbp]                       ;42.19
$LN134:
        mov       QWORD PTR [56+rbp], rax                       ;42.19
$LN135:
        mov       rax, QWORD PTR [16+rbp]                       ;43.2
$LN136:
        mov       rcx, rax                                      ;43.2
$LN137:
;       operator delete(void *)
        call      ??3@YAXPEAX@Z                                 ;43.2
$LN138:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.21::                        ; Preds .B4.5
                                ; Execution count [0.00e+000]
$LN139:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.6::                         ; Preds .B4.21
                                ; Execution count [0.00e+000]
$LN140:
        mov       rax, QWORD PTR [56+rbp]                       ;47.23
$LN141:
        imul      rax, rax, 2                                   ;47.23
$LN142:
        mov       QWORD PTR [64+rbp], rax                       ;47.23
$LN143:
        mov       rax, QWORD PTR [64+rbp]                       ;48.21
$LN144:
        mov       rcx, rax                                      ;48.21
$LN145:
;       operator new(unsigned __int64)
        call      ??2@YAPEAX_K@Z                                ;48.21
$LN146:
                                ; LOE rax rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.22::                        ; Preds .B4.6
                                ; Execution count [0.00e+000]
$LN147:
        mov       QWORD PTR [72+rbp], rax                       ;48.21
$LN148:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.7::                         ; Preds .B4.22
                                ; Execution count [0.00e+000]
$LN149:
        mov       rax, QWORD PTR [72+rbp]                       ;48.21
$LN150:
        mov       QWORD PTR [80+rbp], rax                       ;48.21
$LN151:
        mov       rax, QWORD PTR [40+rbp]                       ;49.19
$LN152:
        mov       rdx, QWORD PTR [56+rbp]                       ;49.19
$LN153:
        mov       rcx, QWORD PTR [80+rbp]                       ;49.19
$LN154:
        mov       rbx, QWORD PTR [64+rbp]                       ;49.19
$LN155:
        mov       QWORD PTR [168+rbp], rcx                      ;49.19[spill]
$LN156:
        mov       rcx, rax                                      ;49.19
$LN157:
        mov       rax, QWORD PTR [168+rbp]                      ;49.19[spill]
$LN158:
        mov       r8, rax                                       ;49.19
$LN159:
        mov       r9, rbx                                       ;49.19
$LN160:
;       enclaveRunLengthEncode(uint8_t *, size_t, uint8_t *, size_t)
        call      enclaveRunLengthEncode                        ;49.19
$LN161:
                                ; LOE rax rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.23::                        ; Preds .B4.7
                                ; Execution count [0.00e+000]
$LN162:
        mov       QWORD PTR [88+rbp], rax                       ;49.19
$LN163:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.8::                         ; Preds .B4.23
                                ; Execution count [0.00e+000]
$LN164:
        mov       rax, QWORD PTR [88+rbp]                       ;49.19
$LN165:
        mov       QWORD PTR [96+rbp], rax                       ;49.19
$LN166:
        mov       rax, QWORD PTR [40+rbp]                       ;50.2
$LN167:
        mov       rcx, rax                                      ;50.2
$LN168:
;       operator delete(void *)
        call      ??3@YAXPEAX@Z                                 ;50.2
$LN169:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.24::                        ; Preds .B4.8
                                ; Execution count [0.00e+000]
$LN170:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.9::                         ; Preds .B4.24
                                ; Execution count [0.00e+000]
$LN171:
        mov       rax, QWORD PTR [96+rbp]                       ;54.23
$LN172:
        shr       rax, 2                                        ;54.23
$LN173:
        imul      rax, rax, 5                                   ;54.23
$LN174:
        mov       QWORD PTR [104+rbp], rax                      ;54.23
$LN175:
        mov       rax, QWORD PTR [104+rbp]                      ;55.19
$LN176:
        mov       rcx, rax                                      ;55.19
$LN177:
;       operator new(unsigned __int64)
        call      ??2@YAPEAX_K@Z                                ;55.19
$LN178:
                                ; LOE rax rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.25::                        ; Preds .B4.9
                                ; Execution count [0.00e+000]
$LN179:
        mov       QWORD PTR [112+rbp], rax                      ;55.19
$LN180:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.10::                        ; Preds .B4.25
                                ; Execution count [0.00e+000]
$LN181:
        mov       rax, QWORD PTR [112+rbp]                      ;55.19
$LN182:
        mov       QWORD PTR [120+rbp], rax                      ;55.19
$LN183:
        mov       rax, QWORD PTR [80+rbp]                       ;56.19
$LN184:
        mov       rdx, QWORD PTR [96+rbp]                       ;56.19
$LN185:
        mov       rcx, QWORD PTR [120+rbp]                      ;56.19
$LN186:
        mov       rbx, QWORD PTR [104+rbp]                      ;56.19
$LN187:
        mov       QWORD PTR [176+rbp], rcx                      ;56.19[spill]
$LN188:
        mov       rcx, rax                                      ;56.19
$LN189:
        mov       rax, QWORD PTR [176+rbp]                      ;56.19[spill]
$LN190:
        mov       r8, rax                                       ;56.19
$LN191:
        mov       r9, rbx                                       ;56.19
$LN192:
;       enclaveVByteEncode(uint8_t *, size_t, uint8_t *, size_t)
        call      enclaveVByteEncode                            ;56.19
$LN193:
                                ; LOE rax rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.26::                        ; Preds .B4.10
                                ; Execution count [0.00e+000]
$LN194:
        mov       QWORD PTR [128+rbp], rax                      ;56.19
$LN195:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.11::                        ; Preds .B4.26
                                ; Execution count [0.00e+000]
$LN196:
        mov       rax, QWORD PTR [128+rbp]                      ;56.19
$LN197:
        mov       QWORD PTR [136+rbp], rax                      ;56.19
$LN198:
        mov       rax, QWORD PTR [80+rbp]                       ;57.2
$LN199:
        mov       rcx, rax                                      ;57.2
$LN200:
;       operator delete(void *)
        call      ??3@YAXPEAX@Z                                 ;57.2
$LN201:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.27::                        ; Preds .B4.11
                                ; Execution count [0.00e+000]
$LN202:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.12::                        ; Preds .B4.27
                                ; Execution count [0.00e+000]
$LN203:
        mov       rax, QWORD PTR [120+rbp]                      ;61.2
$LN204:
        mov       rdx, QWORD PTR [136+rbp]                      ;61.2
$LN205:
        mov       rcx, QWORD PTR [288+rbp]                      ;61.2
$LN206:
        lea       rbx, QWORD PTR [208+rbp]                      ;61.2
$LN207:
        mov       QWORD PTR [32+rsp], 16                        ;61.2
$LN208:
        lea       rsi, QWORD PTR [224+rbp]                      ;61.2
$LN209:
        mov       QWORD PTR [40+rsp], rsi                       ;61.2
$LN210:
        mov       QWORD PTR [184+rbp], rcx                      ;61.2[spill]
$LN211:
        mov       rcx, rax                                      ;61.2
$LN212:
        mov       rax, QWORD PTR [184+rbp]                      ;61.2[spill]
$LN213:
        mov       r8, rax                                       ;61.2
$LN214:
        mov       r9, rbx                                       ;61.2
$LN215:
;       decryptBytes(uint8_t *, size_t, uint8_t *, const uint8_t *, size_t, uint8_t *)
        call      decryptBytes                                  ;61.2
$LN216:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.28::                        ; Preds .B4.12
                                ; Execution count [0.00e+000]
$LN217:
        mov       DWORD PTR [4+rbp], eax                        ;61.2
$LN218:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.13::                        ; Preds .B4.28
                                ; Execution count [0.00e+000]
$LN219:
        mov       rax, QWORD PTR [120+rbp]                      ;62.2
$LN220:
        mov       rcx, rax                                      ;62.2
$LN221:
;       operator delete(void *)
        call      ??3@YAXPEAX@Z                                 ;62.2
$LN222:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.29::                        ; Preds .B4.13
                                ; Execution count [0.00e+000]
$LN223:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.14::                        ; Preds .B4.29
                                ; Execution count [0.00e+000]
$LN224:
        mov       eax, 16                                       ;65.2
$LN225:
        add       rax, QWORD PTR [136+rbp]                      ;65.2
$LN226:
        mov       QWORD PTR [144+rbp], rax                      ;65.2[spill]
$LN227:
        mov       rax, QWORD PTR [240+rbp]                      ;65.2
$LN228:
        xor       rax, rbp                                      ;65.2
$LN229:
        mov       rcx, rax                                      ;65.2
$LN230:
        call      __security_check_cookie                       ;65.2
$LN231:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.30::                        ; Preds .B4.14
                                ; Execution count [0.00e+000]
$LN232:
        mov       rax, QWORD PTR [144+rbp]                      ;65.2[spill]
$LN233:
        mov       rbx, QWORD PTR [192+rbp]                      ;65.2[spill]
$LN234:
        mov       rsi, QWORD PTR [200+rbp]                      ;65.2[spill]
$LN235:
        lea       rsp, QWORD PTR [256+rbp]                      ;65.2
$LN236:
        pop       rbp                                           ;65.2
$LN237:
        ret                                                     ;65.2
$LN238:
                                ; LOE
.B4.15::
$LN239:
; mark_end;
enclaveCompleteProcess ENDP
$LNenclaveCompleteProcess$240:
$LNenclaveCompleteProcess$241:
;enclaveCompleteProcess	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$enclaveCompleteProcess
	ALIGN 004H
.unwind.enclaveCompleteProcess.B1_B30	DD	889723649
	DD	1979419
	DD	2057236
	DD	17302285
	DD	1342242854
;.xdata$enclaveCompleteProcess	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$enclaveCompleteProcess
	ALIGN 004H
.pdata.enclaveCompleteProcess.B1_B30	DD	imagerel .B4.1
	DD	imagerel .B4.15
	DD	imagerel .unwind.enclaveCompleteProcess.B1_B30
;.pdata$enclaveCompleteProcess	ENDS
.pdata	ENDS
_RDATA	SEGMENT     READ  'DATA'
	ALIGN 004H
key.69.0	DD	875770417
	DD	943142453
	DD	842084409
	DD	3486771
iv.69.0	DD	875770417
	DD	943142453
	DD	842084409
	DD	3486771
_RDATA	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  enclaveCompleteProcess
_TEXT	SEGMENT      'CODE'
;	COMDAT enclaveCrypto
TXTST4:
_2__routine_start_enclaveCrypto_4:
; -- Begin  enclaveCrypto
;enclaveCrypto	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT enclaveCrypto
; mark_begin;

	PUBLIC enclaveCrypto
; --- enclaveCrypto(uint8_t *, size_t, uint8_t *, size_t)
enclaveCrypto	PROC 
; parameter 1(in): rcx
; parameter 2(inLength): rdx
; parameter 3(out): r8
; parameter 4(outLength): r9
.B5.1::                         ; Preds .B5.0
                                ; Execution count [0.00e+000]
L26::
                                                          ;68.84
$LN242:
        push      rbp                                           ;68.84
$LN243:
        sub       rsp, 160                                      ;68.84
$LN244:
        lea       rbp, QWORD PTR [48+rsp]                       ;68.84
$LN245:
        mov       QWORD PTR [56+rbp], rsi                       ;68.84[spill]
$LN246:
        mov       QWORD PTR [48+rbp], rbx                       ;68.84[spill]
$LN247:
        mov       QWORD PTR [128+rbp], rcx                      ;68.84
$LN248:
        mov       QWORD PTR [136+rbp], rdx                      ;68.84
$LN249:
        mov       QWORD PTR [144+rbp], r8                       ;68.84
$LN250:
        mov       QWORD PTR [152+rbp], r9                       ;68.84
$LN251:
        mov       rax, QWORD PTR [__security_cookie]            ;68.84
$LN252:
        xor       rax, rbp                                      ;68.84
$LN253:
        mov       QWORD PTR [96+rbp], rax                       ;68.84
$LN254:
        mov       rax, QWORD PTR [136+rbp]                      ;70.16
$LN255:
        mov       rcx, rax                                      ;70.16
$LN256:
;       operator new(unsigned __int64)
        call      ??2@YAPEAX_K@Z                                ;70.16
$LN257:
                                ; LOE rax rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.8::                         ; Preds .B5.1
                                ; Execution count [0.00e+000]
$LN258:
        mov       QWORD PTR [8+rbp], rax                        ;70.16
$LN259:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.2::                         ; Preds .B5.8
                                ; Execution count [0.00e+000]
$LN260:
        mov       rax, QWORD PTR [8+rbp]                        ;70.16
$LN261:
        mov       QWORD PTR [16+rbp], rax                       ;70.16
$LN262:
        lea       rax, QWORD PTR [64+rbp]                       ;72.28
$LN263:
        mov       rdx, 03837363534333231H                       ;72.28
$LN264:
        mov       QWORD PTR [rax], rdx                          ;72.28
$LN265:
        lea       rax, QWORD PTR [64+rbp]                       ;72.28
$LN266:
        add       rax, 8                                        ;72.28
$LN267:
        mov       rdx, 035343332313039H                         ;72.28
$LN268:
        mov       QWORD PTR [rax], rdx                          ;72.28
$LN269:
        lea       rax, QWORD PTR [80+rbp]                       ;73.29
$LN270:
        mov       rdx, 03837363534333231H                       ;73.29
$LN271:
        mov       QWORD PTR [rax], rdx                          ;73.29
$LN272:
        lea       rax, QWORD PTR [80+rbp]                       ;73.29
$LN273:
        add       rax, 8                                        ;73.29
$LN274:
        mov       rdx, 035343332313039H                         ;73.29
$LN275:
        mov       QWORD PTR [rax], rdx                          ;73.29
$LN276:
        mov       rax, QWORD PTR [128+rbp]                      ;75.2
$LN277:
        mov       rdx, QWORD PTR [136+rbp]                      ;75.2
$LN278:
        mov       rcx, QWORD PTR [16+rbp]                       ;75.2
$LN279:
        lea       rbx, QWORD PTR [64+rbp]                       ;75.2
$LN280:
        mov       QWORD PTR [32+rsp], 16                        ;75.2
$LN281:
        lea       rsi, QWORD PTR [80+rbp]                       ;75.2
$LN282:
        mov       QWORD PTR [40+rsp], rsi                       ;75.2
$LN283:
        mov       QWORD PTR [32+rbp], rcx                       ;75.2[spill]
$LN284:
        mov       rcx, rax                                      ;75.2
$LN285:
        mov       rax, QWORD PTR [32+rbp]                       ;75.2[spill]
$LN286:
        mov       r8, rax                                       ;75.2
$LN287:
        mov       r9, rbx                                       ;75.2
$LN288:
;       decryptBytes(uint8_t *, size_t, uint8_t *, const uint8_t *, size_t, uint8_t *)
        call      decryptBytes                                  ;75.2
$LN289:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.9::                         ; Preds .B5.2
                                ; Execution count [0.00e+000]
$LN290:
        mov       DWORD PTR [rbp], eax                          ;75.2
$LN291:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.3::                         ; Preds .B5.9
                                ; Execution count [0.00e+000]
$LN292:
        mov       rax, QWORD PTR [16+rbp]                       ;79.2
$LN293:
        mov       rdx, QWORD PTR [136+rbp]                      ;79.2
$LN294:
        mov       rcx, QWORD PTR [144+rbp]                      ;79.2
$LN295:
        lea       rbx, QWORD PTR [64+rbp]                       ;79.2
$LN296:
        mov       QWORD PTR [32+rsp], 16                        ;79.2
$LN297:
        lea       rsi, QWORD PTR [80+rbp]                       ;79.2
$LN298:
        mov       QWORD PTR [40+rsp], rsi                       ;79.2
$LN299:
        mov       QWORD PTR [40+rbp], rcx                       ;79.2[spill]
$LN300:
        mov       rcx, rax                                      ;79.2
$LN301:
        mov       rax, QWORD PTR [40+rbp]                       ;79.2[spill]
$LN302:
        mov       r8, rax                                       ;79.2
$LN303:
        mov       r9, rbx                                       ;79.2
$LN304:
;       encryptBytes(uint8_t *, size_t, uint8_t *, const uint8_t *, size_t, uint8_t *)
        call      encryptBytes                                  ;79.2
$LN305:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.10::                        ; Preds .B5.3
                                ; Execution count [0.00e+000]
$LN306:
        mov       DWORD PTR [4+rbp], eax                        ;79.2
$LN307:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.4::                         ; Preds .B5.10
                                ; Execution count [0.00e+000]
$LN308:
        mov       rax, QWORD PTR [16+rbp]                       ;81.2
$LN309:
        mov       rcx, rax                                      ;81.2
$LN310:
;       operator delete(void *)
        call      ??3@YAXPEAX@Z                                 ;81.2
$LN311:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.11::                        ; Preds .B5.4
                                ; Execution count [0.00e+000]
$LN312:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.5::                         ; Preds .B5.11
                                ; Execution count [0.00e+000]
$LN313:
        mov       eax, 16                                       ;83.2
$LN314:
        add       rax, QWORD PTR [136+rbp]                      ;83.2
$LN315:
        mov       QWORD PTR [24+rbp], rax                       ;83.2[spill]
$LN316:
        mov       rax, QWORD PTR [96+rbp]                       ;83.2
$LN317:
        xor       rax, rbp                                      ;83.2
$LN318:
        mov       rcx, rax                                      ;83.2
$LN319:
        call      __security_check_cookie                       ;83.2
$LN320:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.12::                        ; Preds .B5.5
                                ; Execution count [0.00e+000]
$LN321:
        mov       rax, QWORD PTR [24+rbp]                       ;83.2[spill]
$LN322:
        mov       rbx, QWORD PTR [48+rbp]                       ;83.2[spill]
$LN323:
        mov       rsi, QWORD PTR [56+rbp]                       ;83.2[spill]
$LN324:
        lea       rsp, QWORD PTR [112+rbp]                      ;83.2
$LN325:
        pop       rbp                                           ;83.2
$LN326:
        ret                                                     ;83.2
$LN327:
                                ; LOE
.B5.6::
$LN328:
; mark_end;
enclaveCrypto ENDP
$LNenclaveCrypto$329:
$LNenclaveCrypto$330:
;enclaveCrypto	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$enclaveCrypto
	ALIGN 004H
.unwind.enclaveCrypto.B1_B12	DD	889722113
	DD	799765
	DD	877585
	DD	17302285
	DD	1342242836
;.xdata$enclaveCrypto	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$enclaveCrypto
	ALIGN 004H
.pdata.enclaveCrypto.B1_B12	DD	imagerel .B5.1
	DD	imagerel .B5.6
	DD	imagerel .unwind.enclaveCrypto.B1_B12
;.pdata$enclaveCrypto	ENDS
.pdata	ENDS
_RDATA	SEGMENT     READ  'DATA'
key.70.0	DD	875770417
	DD	943142453
	DD	842084409
	DD	3486771
iv.70.0	DD	875770417
	DD	943142453
	DD	842084409
	DD	3486771
_RDATA	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  enclaveCrypto
_TEXT	SEGMENT      'CODE'
;	COMDAT enclaveCryptoNoCopy
TXTST5:
_2__routine_start_enclaveCryptoNoCopy_5:
; -- Begin  enclaveCryptoNoCopy
;enclaveCryptoNoCopy	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT enclaveCryptoNoCopy
; mark_begin;

	PUBLIC enclaveCryptoNoCopy
; --- enclaveCryptoNoCopy(uint8_t *, size_t, uint8_t *)
enclaveCryptoNoCopy	PROC 
; parameter 1(in): rcx
; parameter 2(length): rdx
; parameter 3(out): r8
.B6.1::                         ; Preds .B6.0
                                ; Execution count [0.00e+000]
L32::
                                                          ;86.70
$LN331:
        push      rbp                                           ;86.70
$LN332:
        sub       rsp, 160                                      ;86.70
$LN333:
        lea       rbp, QWORD PTR [48+rsp]                       ;86.70
$LN334:
        mov       QWORD PTR [56+rbp], rsi                       ;86.70[spill]
$LN335:
        mov       QWORD PTR [48+rbp], rbx                       ;86.70[spill]
$LN336:
        mov       QWORD PTR [128+rbp], rcx                      ;86.70
$LN337:
        mov       QWORD PTR [136+rbp], rdx                      ;86.70
$LN338:
        mov       QWORD PTR [144+rbp], r8                       ;86.70
$LN339:
        mov       rax, QWORD PTR [__security_cookie]            ;86.70
$LN340:
        xor       rax, rbp                                      ;86.70
$LN341:
        mov       QWORD PTR [96+rbp], rax                       ;86.70
$LN342:
        mov       rax, QWORD PTR [136+rbp]                      ;88.16
$LN343:
        mov       rcx, rax                                      ;88.16
$LN344:
;       operator new(unsigned __int64)
        call      ??2@YAPEAX_K@Z                                ;88.16
$LN345:
                                ; LOE rax rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.8::                         ; Preds .B6.1
                                ; Execution count [0.00e+000]
$LN346:
        mov       QWORD PTR [8+rbp], rax                        ;88.16
$LN347:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.2::                         ; Preds .B6.8
                                ; Execution count [0.00e+000]
$LN348:
        mov       rax, QWORD PTR [8+rbp]                        ;88.16
$LN349:
        mov       QWORD PTR [16+rbp], rax                       ;88.16
$LN350:
        lea       rax, QWORD PTR [64+rbp]                       ;90.28
$LN351:
        mov       rdx, 03837363534333231H                       ;90.28
$LN352:
        mov       QWORD PTR [rax], rdx                          ;90.28
$LN353:
        lea       rax, QWORD PTR [64+rbp]                       ;90.28
$LN354:
        add       rax, 8                                        ;90.28
$LN355:
        mov       rdx, 035343332313039H                         ;90.28
$LN356:
        mov       QWORD PTR [rax], rdx                          ;90.28
$LN357:
        lea       rax, QWORD PTR [80+rbp]                       ;91.29
$LN358:
        mov       rdx, 03837363534333231H                       ;91.29
$LN359:
        mov       QWORD PTR [rax], rdx                          ;91.29
$LN360:
        lea       rax, QWORD PTR [80+rbp]                       ;91.29
$LN361:
        add       rax, 8                                        ;91.29
$LN362:
        mov       rdx, 035343332313039H                         ;91.29
$LN363:
        mov       QWORD PTR [rax], rdx                          ;91.29
$LN364:
        mov       rax, QWORD PTR [128+rbp]                      ;93.2
$LN365:
        mov       rdx, QWORD PTR [136+rbp]                      ;93.2
$LN366:
        mov       rcx, QWORD PTR [16+rbp]                       ;93.2
$LN367:
        lea       rbx, QWORD PTR [64+rbp]                       ;93.2
$LN368:
        mov       QWORD PTR [32+rsp], 16                        ;93.2
$LN369:
        lea       rsi, QWORD PTR [80+rbp]                       ;93.2
$LN370:
        mov       QWORD PTR [40+rsp], rsi                       ;93.2
$LN371:
        mov       QWORD PTR [32+rbp], rcx                       ;93.2[spill]
$LN372:
        mov       rcx, rax                                      ;93.2
$LN373:
        mov       rax, QWORD PTR [32+rbp]                       ;93.2[spill]
$LN374:
        mov       r8, rax                                       ;93.2
$LN375:
        mov       r9, rbx                                       ;93.2
$LN376:
;       decryptBytes(uint8_t *, size_t, uint8_t *, const uint8_t *, size_t, uint8_t *)
        call      decryptBytes                                  ;93.2
$LN377:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.9::                         ; Preds .B6.2
                                ; Execution count [0.00e+000]
$LN378:
        mov       DWORD PTR [rbp], eax                          ;93.2
$LN379:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.3::                         ; Preds .B6.9
                                ; Execution count [0.00e+000]
$LN380:
        mov       rax, QWORD PTR [16+rbp]                       ;97.2
$LN381:
        mov       rdx, QWORD PTR [136+rbp]                      ;97.2
$LN382:
        mov       rcx, QWORD PTR [144+rbp]                      ;97.2
$LN383:
        lea       rbx, QWORD PTR [64+rbp]                       ;97.2
$LN384:
        mov       QWORD PTR [32+rsp], 16                        ;97.2
$LN385:
        lea       rsi, QWORD PTR [80+rbp]                       ;97.2
$LN386:
        mov       QWORD PTR [40+rsp], rsi                       ;97.2
$LN387:
        mov       QWORD PTR [40+rbp], rcx                       ;97.2[spill]
$LN388:
        mov       rcx, rax                                      ;97.2
$LN389:
        mov       rax, QWORD PTR [40+rbp]                       ;97.2[spill]
$LN390:
        mov       r8, rax                                       ;97.2
$LN391:
        mov       r9, rbx                                       ;97.2
$LN392:
;       encryptBytes(uint8_t *, size_t, uint8_t *, const uint8_t *, size_t, uint8_t *)
        call      encryptBytes                                  ;97.2
$LN393:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.10::                        ; Preds .B6.3
                                ; Execution count [0.00e+000]
$LN394:
        mov       DWORD PTR [4+rbp], eax                        ;97.2
$LN395:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.4::                         ; Preds .B6.10
                                ; Execution count [0.00e+000]
$LN396:
        mov       rax, QWORD PTR [16+rbp]                       ;99.2
$LN397:
        mov       rcx, rax                                      ;99.2
$LN398:
;       operator delete(void *)
        call      ??3@YAXPEAX@Z                                 ;99.2
$LN399:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.11::                        ; Preds .B6.4
                                ; Execution count [0.00e+000]
$LN400:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.5::                         ; Preds .B6.11
                                ; Execution count [0.00e+000]
$LN401:
        mov       eax, 16                                       ;101.2
$LN402:
        add       rax, QWORD PTR [136+rbp]                      ;101.2
$LN403:
        mov       QWORD PTR [24+rbp], rax                       ;101.2[spill]
$LN404:
        mov       rax, QWORD PTR [96+rbp]                       ;101.2
$LN405:
        xor       rax, rbp                                      ;101.2
$LN406:
        mov       rcx, rax                                      ;101.2
$LN407:
        call      __security_check_cookie                       ;101.2
$LN408:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.12::                        ; Preds .B6.5
                                ; Execution count [0.00e+000]
$LN409:
        mov       rax, QWORD PTR [24+rbp]                       ;101.2[spill]
$LN410:
        mov       rbx, QWORD PTR [48+rbp]                       ;101.2[spill]
$LN411:
        mov       rsi, QWORD PTR [56+rbp]                       ;101.2[spill]
$LN412:
        lea       rsp, QWORD PTR [112+rbp]                      ;101.2
$LN413:
        pop       rbp                                           ;101.2
$LN414:
        ret                                                     ;101.2
$LN415:
                                ; LOE
.B6.6::
$LN416:
; mark_end;
enclaveCryptoNoCopy ENDP
$LNenclaveCryptoNoCopy$417:
$LNenclaveCryptoNoCopy$418:
;enclaveCryptoNoCopy	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$enclaveCryptoNoCopy
	ALIGN 004H
.unwind.enclaveCryptoNoCopy.B1_B12	DD	889722113
	DD	799765
	DD	877585
	DD	17302285
	DD	1342242836
;.xdata$enclaveCryptoNoCopy	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$enclaveCryptoNoCopy
	ALIGN 004H
.pdata.enclaveCryptoNoCopy.B1_B12	DD	imagerel .B6.1
	DD	imagerel .B6.6
	DD	imagerel .unwind.enclaveCryptoNoCopy.B1_B12
;.pdata$enclaveCryptoNoCopy	ENDS
.pdata	ENDS
_RDATA	SEGMENT     READ  'DATA'
key.71.0	DD	875770417
	DD	943142453
	DD	842084409
	DD	3486771
iv.71.0	DD	875770417
	DD	943142453
	DD	842084409
	DD	3486771
_RDATA	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  enclaveCryptoNoCopy
_DATA	SEGMENT      'DATA'
EXTRN	__security_cookie:BYTE
_DATA	ENDS
EXTRN	decryptBytes:PROC
EXTRN	encryptBytes:PROC
EXTRN	enclaveRunLengthEncode:PROC
EXTRN	enclaveVByteDecode:PROC
EXTRN	enclaveVByteEncode:PROC
EXTRN	??3@YAXPEAX@Z:PROC
EXTRN	??2@YAPEAX_K@Z:PROC
EXTRN	__security_check_cookie:PROC
EXTRN	__ImageBase:PROC
	INCLUDELIB <libmmt>
	INCLUDELIB <LIBCMT>
	INCLUDELIB <libirc>
	INCLUDELIB <svml_dispmt>
	INCLUDELIB <OLDNAMES>
	INCLUDELIB <libdecimal>
	END
