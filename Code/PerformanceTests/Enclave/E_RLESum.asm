; mark_description "Intel(R) C++ Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 17.0.4.210 Build 20170411";
; mark_description "";
; mark_description "-c -Qm64 -IC:\\Program Files (x86)\\Intel\\IntelSGXSDK\\include -IC:\\Program Files (x86)\\Intel\\IntelSGXSD";
; mark_description "K\\include\\tlibc -IC:\\Program Files (x86)\\Intel\\IntelSGXSDK\\include\\libc++ -IC:\\Program Files (x86)\\";
; mark_description "Intel\\IntelSGXSDK\\include\\ipp -IC:\\Program Files (x86)\\IntelSWTools\\compilers_and_libraries_2017.2.187";
; mark_description "\\windows\\compiler\\include -Zi -nologo -W3 -Od -Oi -D __INTEL_COMPILER=1700 -D _WINDLL -EHs -EHc -MT -GS -";
; mark_description "Gy -Zc:wchar_t -Zc:forScope -FoPrerelease\\ -FdPrerelease\\vc140.pdb -TP -S";
	OPTION DOTNAME
_TEXT	SEGMENT      'CODE'
;	COMDAT enclaveRunLengthEncode
TXTST0:
_2__routine_start_enclaveRunLengthEncode_8:
; -- Begin  enclaveRunLengthEncode
;enclaveRunLengthEncode	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT enclaveRunLengthEncode
; mark_begin;

	PUBLIC enclaveRunLengthEncode
; --- enclaveRunLengthEncode(uint8_t *, size_t, uint8_t *, size_t)
enclaveRunLengthEncode	PROC 
; parameter 1(in): rcx
; parameter 2(inLength): rdx
; parameter 3(out): r8
; parameter 4(outLength): r9
.B1.1::                         ; Preds .B1.0
                                ; Execution count [0.00e+000]
L2::
                                                           ;4.1
$LN0:
        push      rbp                                           ;4.1
$LN1:
        sub       rsp, 112                                      ;4.1
$LN2:
        lea       rbp, QWORD PTR [32+rsp]                       ;4.1
$LN3:
        mov       QWORD PTR [96+rbp], rcx                       ;4.1
$LN4:
        mov       QWORD PTR [104+rbp], rdx                      ;4.1
$LN5:
        mov       QWORD PTR [112+rbp], r8                       ;4.1
$LN6:
        mov       QWORD PTR [120+rbp], r9                       ;4.1
$LN7:
        mov       rax, QWORD PTR [96+rbp]                       ;5.23
$LN8:
        mov       QWORD PTR [24+rbp], rax                       ;5.23
$LN9:
        mov       rax, QWORD PTR [104+rbp]                      ;6.25
$LN10:
        shr       rax, 2                                        ;6.25
$LN11:
        mov       QWORD PTR [32+rbp], rax                       ;6.25
$LN12:
        mov       rax, QWORD PTR [32+rbp]                       ;8.2
$LN13:
        test      rax, rax                                      ;8.2
$LN14:
        jne       .B1.3         ; Prob 50%                      ;8.2
$LN15:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.2::                         ; Preds .B1.1
                                ; Execution count [0.00e+000]
$LN16:
        mov       eax, 0                                        ;8.22
$LN17:
        lea       rsp, QWORD PTR [80+rbp]                       ;8.22
$LN18:
        pop       rbp                                           ;8.22
$LN19:
        ret                                                     ;8.22
$LN20:
                                ; LOE
.B1.3::                         ; Preds .B1.1
                                ; Execution count [0.00e+000]
$LN21:
        mov       eax, 4                                        ;10.28
$LN22:
        add       rax, QWORD PTR [24+rbp]                       ;10.28
$LN23:
        mov       QWORD PTR [40+rbp], rax                       ;10.28
$LN24:
        mov       rax, QWORD PTR [32+rbp]                       ;11.30
$LN25:
        imul      rax, rax, 4                                   ;11.30
$LN26:
        add       rax, QWORD PTR [24+rbp]                       ;11.30
$LN27:
        mov       QWORD PTR [48+rbp], rax                       ;11.30
$LN28:
        mov       rax, QWORD PTR [112+rbp]                      ;12.18
$LN29:
        mov       QWORD PTR [56+rbp], rax                       ;12.18
$LN30:
        mov       rax, QWORD PTR [56+rbp]                       ;13.34
$LN31:
        mov       QWORD PTR [64+rbp], rax                       ;13.34
$LN32:
        mov       rax, QWORD PTR [24+rbp]                       ;15.27
$LN33:
        mov       eax, DWORD PTR [rax]                          ;15.27
$LN34:
        mov       DWORD PTR [rbp], eax                          ;15.27
$LN35:
        mov       rax, QWORD PTR [24+rbp]                       ;16.36
$LN36:
        mov       QWORD PTR [72+rbp], rax                       ;16.36
$LN37:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.4::                         ; Preds .B1.7 .B1.3
                                ; Execution count [0.00e+000]
$LN38:
        mov       rax, QWORD PTR [40+rbp]                       ;18.2
$LN39:
        mov       rdx, QWORD PTR [48+rbp]                       ;18.2
$LN40:
        cmp       rax, rdx                                      ;18.2
$LN41:
        je        .B1.8         ; Prob 50%                      ;18.2
$LN42:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.5::                         ; Preds .B1.4
                                ; Execution count [0.00e+000]
$LN43:
        mov       rax, QWORD PTR [40+rbp]                       ;19.3
$LN44:
        mov       eax, DWORD PTR [rax]                          ;19.3
$LN45:
        mov       edx, DWORD PTR [rbp]                          ;19.3
$LN46:
        cmp       eax, edx                                      ;19.3
$LN47:
        je        .B1.7         ; Prob 50%                      ;19.3
$LN48:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.6::                         ; Preds .B1.5
                                ; Execution count [0.00e+000]
$LN49:
        mov       eax, DWORD PTR [rbp]                          ;21.4
$LN50:
        mov       DWORD PTR [12+rbp], eax                       ;21.4
$LN51:
        mov       rax, QWORD PTR [56+rbp]                       ;21.4
$LN52:
        mov       edx, DWORD PTR [12+rbp]                       ;21.4
$LN53:
        mov       DWORD PTR [rax], edx                          ;21.4
$LN54:
        mov       eax, 4                                        ;21.4
$LN55:
        add       rax, QWORD PTR [56+rbp]                       ;21.4
$LN56:
        mov       QWORD PTR [56+rbp], rax                       ;21.4
$LN57:
        mov       rax, QWORD PTR [72+rbp]                       ;22.4
$LN58:
        neg       rax                                           ;22.4
$LN59:
        add       rax, QWORD PTR [40+rbp]                       ;22.4
$LN60:
        sar       rax, 2                                        ;22.4
$LN61:
        mov       DWORD PTR [16+rbp], eax                       ;22.4
$LN62:
        mov       rax, QWORD PTR [56+rbp]                       ;22.4
$LN63:
        mov       edx, DWORD PTR [16+rbp]                       ;22.4
$LN64:
        mov       DWORD PTR [rax], edx                          ;22.4
$LN65:
        mov       eax, 4                                        ;22.4
$LN66:
        add       rax, QWORD PTR [56+rbp]                       ;22.4
$LN67:
        mov       QWORD PTR [56+rbp], rax                       ;22.4
$LN68:
        mov       rax, QWORD PTR [40+rbp]                       ;23.4
$LN69:
        mov       QWORD PTR [72+rbp], rax                       ;23.4
$LN70:
        mov       rax, QWORD PTR [72+rbp]                       ;24.4
$LN71:
        mov       eax, DWORD PTR [rax]                          ;24.4
$LN72:
        mov       DWORD PTR [rbp], eax                          ;24.4
$LN73:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.7::                         ; Preds .B1.6 .B1.5
                                ; Execution count [0.00e+000]
$LN74:
        mov       eax, 4                                        ;26.3
$LN75:
        add       rax, QWORD PTR [40+rbp]                       ;26.3
$LN76:
        mov       QWORD PTR [40+rbp], rax                       ;26.3
$LN77:
        jmp       .B1.4         ; Prob 100%                     ;26.3
$LN78:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.8::                         ; Preds .B1.4
                                ; Execution count [0.00e+000]
$LN79:
        mov       eax, DWORD PTR [rbp]                          ;29.2
$LN80:
        mov       DWORD PTR [4+rbp], eax                        ;29.2
$LN81:
        mov       rax, QWORD PTR [56+rbp]                       ;29.2
$LN82:
        mov       edx, DWORD PTR [4+rbp]                        ;29.2
$LN83:
        mov       DWORD PTR [rax], edx                          ;29.2
$LN84:
        mov       eax, 4                                        ;29.2
$LN85:
        add       rax, QWORD PTR [56+rbp]                       ;29.2
$LN86:
        mov       QWORD PTR [56+rbp], rax                       ;29.2
$LN87:
        mov       rax, QWORD PTR [72+rbp]                       ;30.2
$LN88:
        neg       rax                                           ;30.2
$LN89:
        add       rax, QWORD PTR [40+rbp]                       ;30.2
$LN90:
        sar       rax, 2                                        ;30.2
$LN91:
        mov       DWORD PTR [8+rbp], eax                        ;30.2
$LN92:
        mov       rax, QWORD PTR [56+rbp]                       ;30.2
$LN93:
        mov       edx, DWORD PTR [8+rbp]                        ;30.2
$LN94:
        mov       DWORD PTR [rax], edx                          ;30.2
$LN95:
        mov       eax, 4                                        ;30.2
$LN96:
        add       rax, QWORD PTR [56+rbp]                       ;30.2
$LN97:
        mov       QWORD PTR [56+rbp], rax                       ;30.2
$LN98:
        mov       rax, QWORD PTR [40+rbp]                       ;31.2
$LN99:
        mov       QWORD PTR [72+rbp], rax                       ;31.2
$LN100:
        mov       rax, QWORD PTR [72+rbp]                       ;32.2
$LN101:
        mov       eax, DWORD PTR [rax]                          ;32.2
$LN102:
        mov       DWORD PTR [rbp], eax                          ;32.2
$LN103:
        mov       rax, QWORD PTR [64+rbp]                       ;34.2
$LN104:
        neg       rax                                           ;34.2
$LN105:
        add       rax, QWORD PTR [56+rbp]                       ;34.2
$LN106:
        sar       rax, 2                                        ;34.2
$LN107:
        imul      rax, rax, 4                                   ;34.2
$LN108:
        lea       rsp, QWORD PTR [80+rbp]                       ;34.2
$LN109:
        pop       rbp                                           ;34.2
$LN110:
        ret                                                     ;34.2
$LN111:
                                ; LOE
.B1.9::
$LN112:
; mark_end;
enclaveRunLengthEncode ENDP
$LNenclaveRunLengthEncode$113:
$LNenclaveRunLengthEncode$114:
;enclaveRunLengthEncode	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$enclaveRunLengthEncode
	ALIGN 004H
.unwind.enclaveRunLengthEncode.B1_B8	DD	620956161
	DD	3523543818
	DD	20481
;.xdata$enclaveRunLengthEncode	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$enclaveRunLengthEncode
	ALIGN 004H
.pdata.enclaveRunLengthEncode.B1_B8	DD	imagerel .B1.1
	DD	imagerel .B1.9
	DD	imagerel .unwind.enclaveRunLengthEncode.B1_B8
;.pdata$enclaveRunLengthEncode	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  enclaveRunLengthEncode
_TEXT	SEGMENT      'CODE'
;	COMDAT enclaveRunLengthDecode
TXTST1:
_2__routine_start_enclaveRunLengthDecode_9:
; -- Begin  enclaveRunLengthDecode
;enclaveRunLengthDecode	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT enclaveRunLengthDecode
; mark_begin;

	PUBLIC enclaveRunLengthDecode
; --- enclaveRunLengthDecode(uint8_t *, size_t, uint8_t *, size_t)
enclaveRunLengthDecode	PROC 
; parameter 1(in): rcx
; parameter 2(inLength): rdx
; parameter 3(out): r8
; parameter 4(outLength): r9
.B2.1::                         ; Preds .B2.0
                                ; Execution count [0.00e+000]
L9::
                                                           ;39.1
$LN115:
        push      rbp                                           ;39.1
$LN116:
        sub       rsp, 96                                       ;39.1
$LN117:
        lea       rbp, QWORD PTR [32+rsp]                       ;39.1
$LN118:
        mov       QWORD PTR [80+rbp], rcx                       ;39.1
$LN119:
        mov       QWORD PTR [88+rbp], rdx                       ;39.1
$LN120:
        mov       QWORD PTR [96+rbp], r8                        ;39.1
$LN121:
        mov       QWORD PTR [104+rbp], r9                       ;39.1
$LN122:
        mov       rax, QWORD PTR [96+rbp]                       ;40.18
$LN123:
        mov       QWORD PTR [16+rbp], rax                       ;40.18
$LN124:
        mov       rax, QWORD PTR [88+rbp]                       ;41.25
$LN125:
        shr       rax, 2                                        ;41.25
$LN126:
        mov       QWORD PTR [24+rbp], rax                       ;41.25
$LN127:
        mov       rax, QWORD PTR [24+rbp]                       ;43.2
$LN128:
        cmp       rax, 2                                        ;43.2
$LN129:
        jae       .B2.3         ; Prob 50%                      ;43.2
$LN130:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.2::                         ; Preds .B2.1
                                ; Execution count [0.00e+000]
$LN131:
        mov       eax, 0                                        ;43.21
$LN132:
        lea       rsp, QWORD PTR [64+rbp]                       ;43.21
$LN133:
        pop       rbp                                           ;43.21
$LN134:
        ret                                                     ;43.21
$LN135:
                                ; LOE
.B2.3::                         ; Preds .B2.1
                                ; Execution count [0.00e+000]
$LN136:
        mov       rax, QWORD PTR [16+rbp]                       ;45.34
$LN137:
        mov       QWORD PTR [32+rbp], rax                       ;45.34
$LN138:
        mov       rax, QWORD PTR [80+rbp]                       ;46.23
$LN139:
        mov       QWORD PTR [40+rbp], rax                       ;46.23
$LN140:
        mov       QWORD PTR [48+rbp], 0                         ;47.16
$LN141:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.4::                         ; Preds .B2.5 .B2.3
                                ; Execution count [0.00e+000]
$LN142:
        mov       rax, QWORD PTR [48+rbp]                       ;47.2
$LN143:
        mov       rdx, QWORD PTR [24+rbp]                       ;47.2
$LN144:
        cmp       rax, rdx                                      ;47.2
$LN145:
        jb        .B2.6         ; Prob 50%                      ;47.2
$LN146:
        jmp       .B2.9         ; Prob 100%                     ;47.2
$LN147:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.5::                         ; Preds .B2.7
                                ; Execution count [0.00e+000]
$LN148:
        mov       eax, 2                                        ;47.36
$LN149:
        add       rax, QWORD PTR [48+rbp]                       ;47.36
$LN150:
        mov       QWORD PTR [48+rbp], rax                       ;47.36
$LN151:
        jmp       .B2.4         ; Prob 100%                     ;47.36
$LN152:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.6::                         ; Preds .B2.4
                                ; Execution count [0.00e+000]
$LN153:
        mov       rax, QWORD PTR [48+rbp]                       ;48.24
$LN154:
        imul      rax, rax, 4                                   ;48.24
$LN155:
        add       rax, QWORD PTR [40+rbp]                       ;48.24
$LN156:
        mov       eax, DWORD PTR [rax]                          ;48.24
$LN157:
        mov       DWORD PTR [rbp], eax                          ;48.24
$LN158:
        mov       eax, 1                                        ;49.28
$LN159:
        add       rax, QWORD PTR [48+rbp]                       ;49.28
$LN160:
        imul      rax, rax, 4                                   ;49.28
$LN161:
        add       rax, QWORD PTR [40+rbp]                       ;49.28
$LN162:
        mov       eax, DWORD PTR [rax]                          ;49.28
$LN163:
        mov       DWORD PTR [4+rbp], eax                        ;49.28
$LN164:
        mov       QWORD PTR [56+rbp], 0                         ;50.17
$LN165:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.7::                         ; Preds .B2.8 .B2.6
                                ; Execution count [0.00e+000]
$LN166:
        mov       rax, QWORD PTR [56+rbp]                       ;50.3
$LN167:
        mov       edx, DWORD PTR [4+rbp]                        ;50.3
$LN168:
        cmp       rax, rdx                                      ;50.3
$LN169:
        jae       .B2.5         ; Prob 50%                      ;50.3
$LN170:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.8::                         ; Preds .B2.7
                                ; Execution count [0.00e+000]
$LN171:
        mov       eax, DWORD PTR [rbp]                          ;51.4
$LN172:
        mov       DWORD PTR [8+rbp], eax                        ;51.4
$LN173:
        mov       rax, QWORD PTR [16+rbp]                       ;51.4
$LN174:
        mov       edx, DWORD PTR [8+rbp]                        ;51.4
$LN175:
        mov       DWORD PTR [rax], edx                          ;51.4
$LN176:
        mov       eax, 4                                        ;51.4
$LN177:
        add       rax, QWORD PTR [16+rbp]                       ;51.4
$LN178:
        mov       QWORD PTR [16+rbp], rax                       ;51.4
$LN179:
        mov       eax, 1                                        ;50.37
$LN180:
        add       rax, QWORD PTR [56+rbp]                       ;50.37
$LN181:
        mov       QWORD PTR [56+rbp], rax                       ;50.37
$LN182:
        jmp       .B2.7         ; Prob 100%                     ;50.37
$LN183:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.9::                         ; Preds .B2.4
                                ; Execution count [0.00e+000]
$LN184:
        mov       rax, QWORD PTR [32+rbp]                       ;54.2
$LN185:
        neg       rax                                           ;54.2
$LN186:
        add       rax, QWORD PTR [16+rbp]                       ;54.2
$LN187:
        sar       rax, 2                                        ;54.2
$LN188:
        imul      rax, rax, 4                                   ;54.2
$LN189:
        lea       rsp, QWORD PTR [64+rbp]                       ;54.2
$LN190:
        pop       rbp                                           ;54.2
$LN191:
        ret                                                     ;54.2
$LN192:
                                ; LOE
.B2.10::
$LN193:
; mark_end;
enclaveRunLengthDecode ENDP
$LNenclaveRunLengthDecode$194:
$LNenclaveRunLengthDecode$195:
;enclaveRunLengthDecode	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$enclaveRunLengthDecode
	ALIGN 004H
.unwind.enclaveRunLengthDecode.B1_B9	DD	620956161
	DD	2986672906
	DD	20481
;.xdata$enclaveRunLengthDecode	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$enclaveRunLengthDecode
	ALIGN 004H
.pdata.enclaveRunLengthDecode.B1_B9	DD	imagerel .B2.1
	DD	imagerel .B2.10
	DD	imagerel .unwind.enclaveRunLengthDecode.B1_B9
;.pdata$enclaveRunLengthDecode	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  enclaveRunLengthDecode
_TEXT	SEGMENT      'CODE'
;	COMDAT enclaveRunLengthEncodeAndSum
TXTST2:
_2__routine_start_enclaveRunLengthEncodeAndSum_10:
; -- Begin  enclaveRunLengthEncodeAndSum
;enclaveRunLengthEncodeAndSum	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT enclaveRunLengthEncodeAndSum
; mark_begin;

	PUBLIC enclaveRunLengthEncodeAndSum
; --- enclaveRunLengthEncodeAndSum(uint8_t *, size_t, uint8_t *)
enclaveRunLengthEncodeAndSum	PROC 
; parameter 1(in): rcx
; parameter 2(length): rdx
; parameter 3(out): r8
.B3.1::                         ; Preds .B3.0
                                ; Execution count [0.00e+000]
L16::
                                                          ;57.79
$LN196:
        push      rbp                                           ;57.79
$LN197:
        sub       rsp, 128                                      ;57.79
$LN198:
        lea       rbp, QWORD PTR [32+rsp]                       ;57.79
$LN199:
        mov       QWORD PTR [80+rbp], rbx                       ;57.79[spill]
$LN200:
        mov       QWORD PTR [112+rbp], rcx                      ;57.79
$LN201:
        mov       QWORD PTR [120+rbp], rdx                      ;57.79
$LN202:
        mov       QWORD PTR [128+rbp], r8                       ;57.79
$LN203:
        mov       rax, QWORD PTR [120+rbp]                      ;59.19
$LN204:
        shl       rax, 1                                        ;59.19
$LN205:
        mov       rcx, rax                                      ;59.19
$LN206:
;       operator new(unsigned __int64)
        call      ??2@YAPEAX_K@Z                                ;59.19
$LN207:
                                ; LOE rax rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B3.10::                        ; Preds .B3.1
                                ; Execution count [0.00e+000]
$LN208:
        mov       QWORD PTR [8+rbp], rax                        ;59.19
$LN209:
                                ; LOE rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B3.2::                         ; Preds .B3.10
                                ; Execution count [0.00e+000]
$LN210:
        mov       rax, QWORD PTR [8+rbp]                        ;59.19
$LN211:
        mov       QWORD PTR [16+rbp], rax                       ;59.19
$LN212:
        mov       rax, QWORD PTR [112+rbp]                      ;61.17
$LN213:
        mov       rdx, QWORD PTR [120+rbp]                      ;61.17
$LN214:
        mov       rcx, QWORD PTR [16+rbp]                       ;61.17
$LN215:
        mov       rbx, QWORD PTR [120+rbp]                      ;61.17
$LN216:
        shl       rbx, 1                                        ;61.17
$LN217:
        mov       QWORD PTR [72+rbp], rcx                       ;61.17[spill]
$LN218:
        mov       rcx, rax                                      ;61.17
$LN219:
        mov       rax, QWORD PTR [72+rbp]                       ;61.17[spill]
$LN220:
        mov       r8, rax                                       ;61.17
$LN221:
        mov       r9, rbx                                       ;61.17
$LN222:
;       enclaveRunLengthEncode(uint8_t *, size_t, uint8_t *, size_t)
        call      enclaveRunLengthEncode                        ;61.17
$LN223:
                                ; LOE rax rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B3.11::                        ; Preds .B3.2
                                ; Execution count [0.00e+000]
$LN224:
        mov       QWORD PTR [24+rbp], rax                       ;61.17
$LN225:
                                ; LOE rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B3.3::                         ; Preds .B3.11
                                ; Execution count [0.00e+000]
$LN226:
        mov       rax, QWORD PTR [24+rbp]                       ;61.17
$LN227:
        mov       QWORD PTR [32+rbp], rax                       ;61.17
$LN228:
        mov       QWORD PTR [40+rbp], 0                         ;63.17
$LN229:
        mov       rax, QWORD PTR [16+rbp]                       ;65.23
$LN230:
        mov       QWORD PTR [48+rbp], rax                       ;65.23
$LN231:
        mov       rax, QWORD PTR [32+rbp]                       ;66.25
$LN232:
        shr       rax, 2                                        ;66.25
$LN233:
        mov       QWORD PTR [56+rbp], rax                       ;66.25
$LN234:
        mov       QWORD PTR [64+rbp], 0                         ;67.16
$LN235:
                                ; LOE rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B3.4::                         ; Preds .B3.5 .B3.3
                                ; Execution count [0.00e+000]
$LN236:
        mov       rax, QWORD PTR [64+rbp]                       ;67.2
$LN237:
        mov       rdx, QWORD PTR [56+rbp]                       ;67.2
$LN238:
        cmp       rax, rdx                                      ;67.2
$LN239:
        jae       .B3.6         ; Prob 50%                      ;67.2
$LN240:
                                ; LOE rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B3.5::                         ; Preds .B3.4
                                ; Execution count [0.00e+000]
$LN241:
        mov       rax, QWORD PTR [64+rbp]                       ;68.24
$LN242:
        imul      rax, rax, 4                                   ;68.24
$LN243:
        add       rax, QWORD PTR [48+rbp]                       ;68.24
$LN244:
        mov       eax, DWORD PTR [rax]                          ;68.24
$LN245:
        mov       DWORD PTR [rbp], eax                          ;68.24
$LN246:
        mov       eax, 1                                        ;69.28
$LN247:
        add       rax, QWORD PTR [64+rbp]                       ;69.28
$LN248:
        imul      rax, rax, 4                                   ;69.28
$LN249:
        add       rax, QWORD PTR [48+rbp]                       ;69.28
$LN250:
        mov       eax, DWORD PTR [rax]                          ;69.28
$LN251:
        mov       DWORD PTR [4+rbp], eax                        ;69.28
$LN252:
        mov       eax, DWORD PTR [4+rbp]                        ;70.3
$LN253:
        mov       edx, DWORD PTR [rbp]                          ;70.3
$LN254:
        imul      rdx, rax                                      ;70.3
$LN255:
        add       rdx, QWORD PTR [40+rbp]                       ;70.3
$LN256:
        mov       QWORD PTR [40+rbp], rdx                       ;70.3
$LN257:
        mov       eax, 2                                        ;67.36
$LN258:
        add       rax, QWORD PTR [64+rbp]                       ;67.36
$LN259:
        mov       QWORD PTR [64+rbp], rax                       ;67.36
$LN260:
        jmp       .B3.4         ; Prob 100%                     ;67.36
$LN261:
                                ; LOE rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B3.6::                         ; Preds .B3.4
                                ; Execution count [0.00e+000]
$LN262:
        mov       rax, QWORD PTR [128+rbp]                      ;73.2
$LN263:
        mov       rdx, QWORD PTR [40+rbp]                       ;73.2
$LN264:
        mov       QWORD PTR [rax], rdx                          ;73.2
$LN265:
        mov       rax, QWORD PTR [16+rbp]                       ;75.2
$LN266:
        mov       rcx, rax                                      ;75.2
$LN267:
;       operator delete(void *)
        call      ??3@YAXPEAX@Z                                 ;75.2
$LN268:
                                ; LOE rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B3.12::                        ; Preds .B3.6
                                ; Execution count [0.00e+000]
$LN269:
                                ; LOE rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B3.7::                         ; Preds .B3.12
                                ; Execution count [0.00e+000]
$LN270:
        mov       eax, 8                                        ;77.2
$LN271:
        mov       rbx, QWORD PTR [80+rbp]                       ;77.2[spill]
$LN272:
        lea       rsp, QWORD PTR [96+rbp]                       ;77.2
$LN273:
        pop       rbp                                           ;77.2
$LN274:
        ret                                                     ;77.2
$LN275:
                                ; LOE
.B3.8::
$LN276:
; mark_end;
enclaveRunLengthEncodeAndSum ENDP
$LNenclaveRunLengthEncodeAndSum$277:
$LNenclaveRunLengthEncodeAndSum$278:
;enclaveRunLengthEncodeAndSum	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$enclaveRunLengthEncodeAndSum
	ALIGN 004H
.unwind.enclaveRunLengthEncodeAndSum.B1_B7	DD	621089025
	DD	930833
	DD	4060611341
	DD	20481
;.xdata$enclaveRunLengthEncodeAndSum	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$enclaveRunLengthEncodeAndSum
	ALIGN 004H
.pdata.enclaveRunLengthEncodeAndSum.B1_B7	DD	imagerel .B3.1
	DD	imagerel .B3.8
	DD	imagerel .unwind.enclaveRunLengthEncodeAndSum.B1_B7
;.pdata$enclaveRunLengthEncodeAndSum	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  enclaveRunLengthEncodeAndSum
_DATA	SEGMENT      'DATA'
_DATA	ENDS
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
