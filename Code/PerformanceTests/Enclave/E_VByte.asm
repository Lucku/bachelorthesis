; mark_description "Intel(R) C++ Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 17.0.4.210 Build 20170411";
; mark_description "";
; mark_description "-c -Qm64 -IC:\\Program Files (x86)\\Intel\\IntelSGXSDK\\include -IC:\\Program Files (x86)\\Intel\\IntelSGXSD";
; mark_description "K\\include\\tlibc -IC:\\Program Files (x86)\\Intel\\IntelSGXSDK\\include\\libc++ -IC:\\Program Files (x86)\\";
; mark_description "Intel\\IntelSGXSDK\\include\\ipp -IC:\\Program Files (x86)\\IntelSWTools\\compilers_and_libraries_2017.2.187";
; mark_description "\\windows\\compiler\\include -Zi -nologo -W3 -Od -Oi -D __INTEL_COMPILER=1700 -D _WINDLL -EHs -EHc -MT -GS -";
; mark_description "Gy -Zc:wchar_t -Zc:forScope -FoPrerelease\\ -FdPrerelease\\vc140.pdb -TP -S";
	OPTION DOTNAME
_TEXT	SEGMENT      'CODE'
;	COMDAT enclaveVByteEncode
TXTST0:
_2__routine_start_enclaveVByteEncode_11:
; -- Begin  enclaveVByteEncode
;enclaveVByteEncode	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT enclaveVByteEncode
; mark_begin;

	PUBLIC enclaveVByteEncode
; --- enclaveVByteEncode(uint8_t *, size_t, uint8_t *, size_t)
enclaveVByteEncode	PROC 
; parameter 1(in): rcx
; parameter 2(inLength): rdx
; parameter 3(out): r8
; parameter 4(outLength): r9
.B1.1::                         ; Preds .B1.0
                                ; Execution count [0.00e+000]
L2::
                                                           ;4.89
$LN0:
        push      rbp                                           ;4.89
$LN1:
        sub       rsp, 80                                       ;4.89
$LN2:
        lea       rbp, QWORD PTR [32+rsp]                       ;4.89
$LN3:
        mov       QWORD PTR [64+rbp], rcx                       ;4.89
$LN4:
        mov       QWORD PTR [72+rbp], rdx                       ;4.89
$LN5:
        mov       QWORD PTR [80+rbp], r8                        ;4.89
$LN6:
        mov       QWORD PTR [88+rbp], r9                        ;4.89
$LN7:
        mov       rax, QWORD PTR [64+rbp]                       ;6.23
$LN8:
        mov       QWORD PTR [8+rbp], rax                        ;6.23
$LN9:
        mov       rax, QWORD PTR [72+rbp]                       ;7.24
$LN10:
        shr       rax, 2                                        ;7.24
$LN11:
        mov       QWORD PTR [16+rbp], rax                       ;7.24
$LN12:
        mov       rax, QWORD PTR [80+rbp]                       ;9.25
$LN13:
        mov       QWORD PTR [24+rbp], rax                       ;9.25
$LN14:
        mov       QWORD PTR [32+rbp], 0                         ;12.7
$LN15:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.2::                         ; Preds .B1.3 .B1.1
                                ; Execution count [0.00e+000]
$LN16:
        mov       rax, QWORD PTR [32+rbp]                       ;12.2
$LN17:
        mov       rdx, QWORD PTR [16+rbp]                       ;12.2
$LN18:
        cmp       rax, rdx                                      ;12.2
$LN19:
        jb        .B1.4         ; Prob 50%                      ;12.2
$LN20:
        jmp       .B1.13        ; Prob 100%                     ;12.2
$LN21:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.3::                         ; Preds .B1.5 .B1.7 .B1.9 .B1.11 .B1.12
                                ;      
                                ; Execution count [0.00e+000]
$LN22:
        mov       eax, 1                                        ;12.28
$LN23:
        add       rax, QWORD PTR [32+rbp]                       ;12.28
$LN24:
        mov       QWORD PTR [32+rbp], rax                       ;12.28
$LN25:
        jmp       .B1.2         ; Prob 100%                     ;12.28
$LN26:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.4::                         ; Preds .B1.2
                                ; Execution count [0.00e+000]
$LN27:
        mov       rax, QWORD PTR [32+rbp]                       ;14.22
$LN28:
        imul      rax, rax, 4                                   ;14.22
$LN29:
        add       rax, QWORD PTR [8+rbp]                        ;14.22
$LN30:
        mov       eax, DWORD PTR [rax]                          ;14.22
$LN31:
        mov       DWORD PTR [rbp], eax                          ;14.22
$LN32:
        mov       eax, DWORD PTR [rbp]                          ;16.3
$LN33:
        cmp       eax, 128                                      ;16.3
$LN34:
        jae       .B1.6         ; Prob 50%                      ;16.3
$LN35:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.5::                         ; Preds .B1.4
                                ; Execution count [0.00e+000]
$LN36:
        mov       eax, DWORD PTR [rbp]                          ;17.4
$LN37:
        and       eax, 127                                      ;17.4
$LN38:
        mov       rdx, QWORD PTR [80+rbp]                       ;17.4
$LN39:
        mov       BYTE PTR [rdx], al                            ;17.4
$LN40:
        mov       eax, 1                                        ;18.4
$LN41:
        add       rax, QWORD PTR [80+rbp]                       ;18.4
$LN42:
        mov       QWORD PTR [80+rbp], rax                       ;18.4
$LN43:
        jmp       .B1.3         ; Prob 100%                     ;18.4
$LN44:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.6::                         ; Preds .B1.4
                                ; Execution count [0.00e+000]
$LN45:
        mov       eax, DWORD PTR [rbp]                          ;20.8
$LN46:
        cmp       eax, 16384                                    ;20.8
$LN47:
        jae       .B1.8         ; Prob 50%                      ;20.8
$LN48:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.7::                         ; Preds .B1.6
                                ; Execution count [0.00e+000]
$LN49:
        mov       eax, DWORD PTR [rbp]                          ;21.4
$LN50:
        and       eax, 127                                      ;21.4
$LN51:
        or        eax, 128                                      ;21.4
$LN52:
        mov       rdx, QWORD PTR [80+rbp]                       ;21.4
$LN53:
        mov       BYTE PTR [rdx], al                            ;21.4
$LN54:
        mov       eax, 1                                        ;22.4
$LN55:
        add       rax, QWORD PTR [80+rbp]                       ;22.4
$LN56:
        mov       QWORD PTR [80+rbp], rax                       ;22.4
$LN57:
        mov       eax, DWORD PTR [rbp]                          ;23.4
$LN58:
        shr       eax, 7                                        ;23.4
$LN59:
        mov       rdx, QWORD PTR [80+rbp]                       ;23.4
$LN60:
        mov       BYTE PTR [rdx], al                            ;23.4
$LN61:
        mov       eax, 1                                        ;24.4
$LN62:
        add       rax, QWORD PTR [80+rbp]                       ;24.4
$LN63:
        mov       QWORD PTR [80+rbp], rax                       ;24.4
$LN64:
        jmp       .B1.3         ; Prob 100%                     ;24.4
$LN65:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.8::                         ; Preds .B1.6
                                ; Execution count [0.00e+000]
$LN66:
        mov       eax, DWORD PTR [rbp]                          ;26.8
$LN67:
        cmp       eax, 2097152                                  ;26.8
$LN68:
        jae       .B1.10        ; Prob 50%                      ;26.8
$LN69:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.9::                         ; Preds .B1.8
                                ; Execution count [0.00e+000]
$LN70:
        mov       eax, DWORD PTR [rbp]                          ;27.4
$LN71:
        and       eax, 127                                      ;27.4
$LN72:
        or        eax, 128                                      ;27.4
$LN73:
        mov       rdx, QWORD PTR [80+rbp]                       ;27.4
$LN74:
        mov       BYTE PTR [rdx], al                            ;27.4
$LN75:
        mov       eax, 1                                        ;28.4
$LN76:
        add       rax, QWORD PTR [80+rbp]                       ;28.4
$LN77:
        mov       QWORD PTR [80+rbp], rax                       ;28.4
$LN78:
        mov       eax, DWORD PTR [rbp]                          ;29.4
$LN79:
        shr       eax, 7                                        ;29.4
$LN80:
        and       eax, 127                                      ;29.4
$LN81:
        or        eax, 128                                      ;29.4
$LN82:
        mov       rdx, QWORD PTR [80+rbp]                       ;29.4
$LN83:
        mov       BYTE PTR [rdx], al                            ;29.4
$LN84:
        mov       eax, 1                                        ;30.4
$LN85:
        add       rax, QWORD PTR [80+rbp]                       ;30.4
$LN86:
        mov       QWORD PTR [80+rbp], rax                       ;30.4
$LN87:
        mov       eax, DWORD PTR [rbp]                          ;31.4
$LN88:
        shr       eax, 14                                       ;31.4
$LN89:
        mov       rdx, QWORD PTR [80+rbp]                       ;31.4
$LN90:
        mov       BYTE PTR [rdx], al                            ;31.4
$LN91:
        mov       eax, 1                                        ;32.4
$LN92:
        add       rax, QWORD PTR [80+rbp]                       ;32.4
$LN93:
        mov       QWORD PTR [80+rbp], rax                       ;32.4
$LN94:
        jmp       .B1.3         ; Prob 100%                     ;32.4
$LN95:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.10::                        ; Preds .B1.8
                                ; Execution count [0.00e+000]
$LN96:
        mov       eax, DWORD PTR [rbp]                          ;34.8
$LN97:
        cmp       eax, 268435456                                ;34.8
$LN98:
        jae       .B1.12        ; Prob 50%                      ;34.8
$LN99:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.11::                        ; Preds .B1.10
                                ; Execution count [0.00e+000]
$LN100:
        mov       eax, DWORD PTR [rbp]                          ;35.4
$LN101:
        and       eax, 127                                      ;35.4
$LN102:
        or        eax, 128                                      ;35.4
$LN103:
        mov       rdx, QWORD PTR [80+rbp]                       ;35.4
$LN104:
        mov       BYTE PTR [rdx], al                            ;35.4
$LN105:
        mov       eax, 1                                        ;36.4
$LN106:
        add       rax, QWORD PTR [80+rbp]                       ;36.4
$LN107:
        mov       QWORD PTR [80+rbp], rax                       ;36.4
$LN108:
        mov       eax, DWORD PTR [rbp]                          ;37.4
$LN109:
        shr       eax, 7                                        ;37.4
$LN110:
        and       eax, 127                                      ;37.4
$LN111:
        or        eax, 128                                      ;37.4
$LN112:
        mov       rdx, QWORD PTR [80+rbp]                       ;37.4
$LN113:
        mov       BYTE PTR [rdx], al                            ;37.4
$LN114:
        mov       eax, 1                                        ;38.4
$LN115:
        add       rax, QWORD PTR [80+rbp]                       ;38.4
$LN116:
        mov       QWORD PTR [80+rbp], rax                       ;38.4
$LN117:
        mov       eax, DWORD PTR [rbp]                          ;39.4
$LN118:
        shr       eax, 14                                       ;39.4
$LN119:
        and       eax, 127                                      ;39.4
$LN120:
        or        eax, 128                                      ;39.4
$LN121:
        mov       rdx, QWORD PTR [80+rbp]                       ;39.4
$LN122:
        mov       BYTE PTR [rdx], al                            ;39.4
$LN123:
        mov       eax, 1                                        ;40.4
$LN124:
        add       rax, QWORD PTR [80+rbp]                       ;40.4
$LN125:
        mov       QWORD PTR [80+rbp], rax                       ;40.4
$LN126:
        mov       eax, DWORD PTR [rbp]                          ;41.4
$LN127:
        shr       eax, 21                                       ;41.4
$LN128:
        mov       rdx, QWORD PTR [80+rbp]                       ;41.4
$LN129:
        mov       BYTE PTR [rdx], al                            ;41.4
$LN130:
        mov       eax, 1                                        ;42.4
$LN131:
        add       rax, QWORD PTR [80+rbp]                       ;42.4
$LN132:
        mov       QWORD PTR [80+rbp], rax                       ;42.4
$LN133:
        jmp       .B1.3         ; Prob 100%                     ;42.4
$LN134:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.12::                        ; Preds .B1.10
                                ; Execution count [0.00e+000]
$LN135:
        mov       eax, DWORD PTR [rbp]                          ;45.4
$LN136:
        and       eax, 127                                      ;45.4
$LN137:
        or        eax, 128                                      ;45.4
$LN138:
        mov       rdx, QWORD PTR [80+rbp]                       ;45.4
$LN139:
        mov       BYTE PTR [rdx], al                            ;45.4
$LN140:
        mov       eax, 1                                        ;46.4
$LN141:
        add       rax, QWORD PTR [80+rbp]                       ;46.4
$LN142:
        mov       QWORD PTR [80+rbp], rax                       ;46.4
$LN143:
        mov       eax, DWORD PTR [rbp]                          ;47.4
$LN144:
        shr       eax, 7                                        ;47.4
$LN145:
        and       eax, 127                                      ;47.4
$LN146:
        or        eax, 128                                      ;47.4
$LN147:
        mov       rdx, QWORD PTR [80+rbp]                       ;47.4
$LN148:
        mov       BYTE PTR [rdx], al                            ;47.4
$LN149:
        mov       eax, 1                                        ;48.4
$LN150:
        add       rax, QWORD PTR [80+rbp]                       ;48.4
$LN151:
        mov       QWORD PTR [80+rbp], rax                       ;48.4
$LN152:
        mov       eax, DWORD PTR [rbp]                          ;49.4
$LN153:
        shr       eax, 14                                       ;49.4
$LN154:
        and       eax, 127                                      ;49.4
$LN155:
        or        eax, 128                                      ;49.4
$LN156:
        mov       rdx, QWORD PTR [80+rbp]                       ;49.4
$LN157:
        mov       BYTE PTR [rdx], al                            ;49.4
$LN158:
        mov       eax, 1                                        ;50.4
$LN159:
        add       rax, QWORD PTR [80+rbp]                       ;50.4
$LN160:
        mov       QWORD PTR [80+rbp], rax                       ;50.4
$LN161:
        mov       eax, DWORD PTR [rbp]                          ;51.4
$LN162:
        shr       eax, 21                                       ;51.4
$LN163:
        and       eax, 127                                      ;51.4
$LN164:
        or        eax, 128                                      ;51.4
$LN165:
        mov       rdx, QWORD PTR [80+rbp]                       ;51.4
$LN166:
        mov       BYTE PTR [rdx], al                            ;51.4
$LN167:
        mov       eax, 1                                        ;52.4
$LN168:
        add       rax, QWORD PTR [80+rbp]                       ;52.4
$LN169:
        mov       QWORD PTR [80+rbp], rax                       ;52.4
$LN170:
        mov       eax, DWORD PTR [rbp]                          ;53.4
$LN171:
        shr       eax, 28                                       ;53.4
$LN172:
        mov       rdx, QWORD PTR [80+rbp]                       ;53.4
$LN173:
        mov       BYTE PTR [rdx], al                            ;53.4
$LN174:
        mov       eax, 1                                        ;54.4
$LN175:
        add       rax, QWORD PTR [80+rbp]                       ;54.4
$LN176:
        mov       QWORD PTR [80+rbp], rax                       ;54.4
$LN177:
        jmp       .B1.3         ; Prob 100%                     ;54.4
$LN178:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.13::                        ; Preds .B1.2
                                ; Execution count [0.00e+000]
$LN179:
        mov       rax, QWORD PTR [24+rbp]                       ;58.2
$LN180:
        neg       rax                                           ;58.2
$LN181:
        add       rax, QWORD PTR [80+rbp]                       ;58.2
$LN182:
        lea       rsp, QWORD PTR [48+rbp]                       ;58.2
$LN183:
        pop       rbp                                           ;58.2
$LN184:
        ret                                                     ;58.2
$LN185:
                                ; LOE
.B1.14::
$LN186:
; mark_end;
enclaveVByteEncode ENDP
$LNenclaveVByteEncode$187:
$LNenclaveVByteEncode$188:
;enclaveVByteEncode	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$enclaveVByteEncode
	ALIGN 004H
.unwind.enclaveVByteEncode.B1_B13	DD	620956161
	DD	2449801994
	DD	20481
;.xdata$enclaveVByteEncode	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$enclaveVByteEncode
	ALIGN 004H
.pdata.enclaveVByteEncode.B1_B13	DD	imagerel .B1.1
	DD	imagerel .B1.14
	DD	imagerel .unwind.enclaveVByteEncode.B1_B13
;.pdata$enclaveVByteEncode	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  enclaveVByteEncode
_TEXT	SEGMENT      'CODE'
;	COMDAT enclaveVByteDecode
TXTST1:
_2__routine_start_enclaveVByteDecode_12:
; -- Begin  enclaveVByteDecode
;enclaveVByteDecode	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT enclaveVByteDecode
; mark_begin;

	PUBLIC enclaveVByteDecode
; --- enclaveVByteDecode(uint8_t *, size_t, uint8_t *, size_t)
enclaveVByteDecode	PROC 
; parameter 1(in): rcx
; parameter 2(inLength): rdx
; parameter 3(out): r8
; parameter 4(outLength): r9
.B2.1::                         ; Preds .B2.0
                                ; Execution count [0.00e+000]
L8::
                                                           ;61.89
$LN189:
        push      rbp                                           ;61.89
$LN190:
        sub       rsp, 64                                       ;61.89
$LN191:
        lea       rbp, QWORD PTR [32+rsp]                       ;61.89
$LN192:
        mov       QWORD PTR [48+rbp], rcx                       ;61.89
$LN193:
        mov       QWORD PTR [56+rbp], rdx                       ;61.89
$LN194:
        mov       QWORD PTR [64+rbp], r8                        ;61.89
$LN195:
        mov       QWORD PTR [72+rbp], r9                        ;61.89
$LN196:
        mov       rax, QWORD PTR [64+rbp]                       ;63.18
$LN197:
        mov       QWORD PTR [rbp], rax                          ;63.18
$LN198:
        mov       rax, QWORD PTR [rbp]                          ;65.26
$LN199:
        mov       QWORD PTR [8+rbp], rax                        ;65.26
$LN200:
        mov       QWORD PTR [16+rbp], 0                         ;66.11
$LN201:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.2::                         ; Preds .B2.12 .B2.1
                                ; Execution count [0.00e+000]
$LN202:
        mov       rax, QWORD PTR [16+rbp]                       ;68.2
$LN203:
        mov       rdx, QWORD PTR [56+rbp]                       ;68.2
$LN204:
        cmp       rax, rdx                                      ;68.2
$LN205:
        jae       .B2.13        ; Prob 50%                      ;68.2
$LN206:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.3::                         ; Preds .B2.2
                                ; Execution count [0.00e+000]
$LN207:
        mov       rax, QWORD PTR [16+rbp]                       ;70.3
$LN208:
        add       rax, QWORD PTR [48+rbp]                       ;70.3
$LN209:
        movzx     eax, BYTE PTR [rax]                           ;70.3
$LN210:
        movzx     eax, al                                       ;70.3
$LN211:
        cmp       eax, 128                                      ;70.3
$LN212:
        jae       .B2.5         ; Prob 50%                      ;70.3
$LN213:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.4::                         ; Preds .B2.3
                                ; Execution count [0.00e+000]
$LN214:
        mov       rax, QWORD PTR [16+rbp]                       ;71.4
$LN215:
        add       rax, QWORD PTR [48+rbp]                       ;71.4
$LN216:
        movzx     eax, BYTE PTR [rax]                           ;71.4
$LN217:
        movzx     eax, al                                       ;71.4
$LN218:
        and       eax, 127                                      ;71.4
$LN219:
        mov       rdx, QWORD PTR [rbp]                          ;71.4
$LN220:
        mov       DWORD PTR [rdx], eax                          ;71.4
$LN221:
        mov       eax, 1                                        ;72.4
$LN222:
        add       rax, QWORD PTR [16+rbp]                       ;72.4
$LN223:
        mov       QWORD PTR [16+rbp], rax                       ;72.4
$LN224:
        jmp       .B2.12        ; Prob 100%                     ;72.4
$LN225:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.5::                         ; Preds .B2.3
                                ; Execution count [0.00e+000]
$LN226:
        mov       eax, 1                                        ;74.8
$LN227:
        add       rax, QWORD PTR [16+rbp]                       ;74.8
$LN228:
        add       rax, QWORD PTR [48+rbp]                       ;74.8
$LN229:
        movzx     eax, BYTE PTR [rax]                           ;74.8
$LN230:
        movzx     eax, al                                       ;74.8
$LN231:
        cmp       eax, 128                                      ;74.8
$LN232:
        jae       .B2.7         ; Prob 50%                      ;74.8
$LN233:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.6::                         ; Preds .B2.5
                                ; Execution count [0.00e+000]
$LN234:
        mov       rax, QWORD PTR [16+rbp]                       ;75.4
$LN235:
        add       rax, QWORD PTR [48+rbp]                       ;75.4
$LN236:
        movzx     eax, BYTE PTR [rax]                           ;75.4
$LN237:
        movzx     eax, al                                       ;75.4
$LN238:
        and       eax, 127                                      ;75.4
$LN239:
        mov       edx, 1                                        ;75.4
$LN240:
        add       rdx, QWORD PTR [16+rbp]                       ;75.4
$LN241:
        add       rdx, QWORD PTR [48+rbp]                       ;75.4
$LN242:
        movzx     edx, BYTE PTR [rdx]                           ;75.4
$LN243:
        movzx     edx, dl                                       ;75.4
$LN244:
        and       edx, 127                                      ;75.4
$LN245:
        shl       edx, 7                                        ;75.4
$LN246:
        or        eax, edx                                      ;75.4
$LN247:
        mov       rdx, QWORD PTR [rbp]                          ;75.4
$LN248:
        mov       DWORD PTR [rdx], eax                          ;75.4
$LN249:
        mov       eax, 2                                        ;76.4
$LN250:
        add       rax, QWORD PTR [16+rbp]                       ;76.4
$LN251:
        mov       QWORD PTR [16+rbp], rax                       ;76.4
$LN252:
        jmp       .B2.12        ; Prob 100%                     ;76.4
$LN253:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.7::                         ; Preds .B2.5
                                ; Execution count [0.00e+000]
$LN254:
        mov       eax, 2                                        ;78.8
$LN255:
        add       rax, QWORD PTR [16+rbp]                       ;78.8
$LN256:
        add       rax, QWORD PTR [48+rbp]                       ;78.8
$LN257:
        movzx     eax, BYTE PTR [rax]                           ;78.8
$LN258:
        movzx     eax, al                                       ;78.8
$LN259:
        cmp       eax, 128                                      ;78.8
$LN260:
        jae       .B2.9         ; Prob 50%                      ;78.8
$LN261:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.8::                         ; Preds .B2.7
                                ; Execution count [0.00e+000]
$LN262:
        mov       rax, QWORD PTR [16+rbp]                       ;79.4
$LN263:
        add       rax, QWORD PTR [48+rbp]                       ;79.4
$LN264:
        movzx     eax, BYTE PTR [rax]                           ;79.4
$LN265:
        movzx     eax, al                                       ;79.4
$LN266:
        and       eax, 127                                      ;79.4
$LN267:
        mov       edx, 1                                        ;79.4
$LN268:
        add       rdx, QWORD PTR [16+rbp]                       ;79.4
$LN269:
        add       rdx, QWORD PTR [48+rbp]                       ;79.4
$LN270:
        movzx     edx, BYTE PTR [rdx]                           ;79.4
$LN271:
        movzx     edx, dl                                       ;79.4
$LN272:
        and       edx, 127                                      ;79.4
$LN273:
        shl       edx, 7                                        ;79.4
$LN274:
        or        eax, edx                                      ;79.4
$LN275:
        mov       edx, 2                                        ;79.4
$LN276:
        add       rdx, QWORD PTR [16+rbp]                       ;79.4
$LN277:
        add       rdx, QWORD PTR [48+rbp]                       ;79.4
$LN278:
        movzx     edx, BYTE PTR [rdx]                           ;79.4
$LN279:
        movzx     edx, dl                                       ;79.4
$LN280:
        and       edx, 127                                      ;79.4
$LN281:
        shl       edx, 14                                       ;79.4
$LN282:
        or        eax, edx                                      ;79.4
$LN283:
        mov       rdx, QWORD PTR [rbp]                          ;79.4
$LN284:
        mov       DWORD PTR [rdx], eax                          ;79.4
$LN285:
        mov       eax, 3                                        ;80.4
$LN286:
        add       rax, QWORD PTR [16+rbp]                       ;80.4
$LN287:
        mov       QWORD PTR [16+rbp], rax                       ;80.4
$LN288:
        jmp       .B2.12        ; Prob 100%                     ;80.4
$LN289:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.9::                         ; Preds .B2.7
                                ; Execution count [0.00e+000]
$LN290:
        mov       eax, 3                                        ;82.8
$LN291:
        add       rax, QWORD PTR [16+rbp]                       ;82.8
$LN292:
        add       rax, QWORD PTR [48+rbp]                       ;82.8
$LN293:
        movzx     eax, BYTE PTR [rax]                           ;82.8
$LN294:
        movzx     eax, al                                       ;82.8
$LN295:
        cmp       eax, 128                                      ;82.8
$LN296:
        jae       .B2.11        ; Prob 50%                      ;82.8
$LN297:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.10::                        ; Preds .B2.9
                                ; Execution count [0.00e+000]
$LN298:
        mov       rax, QWORD PTR [16+rbp]                       ;83.4
$LN299:
        add       rax, QWORD PTR [48+rbp]                       ;83.4
$LN300:
        movzx     eax, BYTE PTR [rax]                           ;83.4
$LN301:
        movzx     eax, al                                       ;83.4
$LN302:
        and       eax, 127                                      ;83.4
$LN303:
        mov       edx, 1                                        ;83.4
$LN304:
        add       rdx, QWORD PTR [16+rbp]                       ;83.4
$LN305:
        add       rdx, QWORD PTR [48+rbp]                       ;83.4
$LN306:
        movzx     edx, BYTE PTR [rdx]                           ;83.4
$LN307:
        movzx     edx, dl                                       ;83.4
$LN308:
        and       edx, 127                                      ;83.4
$LN309:
        shl       edx, 7                                        ;83.4
$LN310:
        or        eax, edx                                      ;83.4
$LN311:
        mov       edx, 2                                        ;83.4
$LN312:
        add       rdx, QWORD PTR [16+rbp]                       ;83.4
$LN313:
        add       rdx, QWORD PTR [48+rbp]                       ;83.4
$LN314:
        movzx     edx, BYTE PTR [rdx]                           ;83.4
$LN315:
        movzx     edx, dl                                       ;83.4
$LN316:
        and       edx, 127                                      ;83.4
$LN317:
        shl       edx, 14                                       ;83.4
$LN318:
        or        eax, edx                                      ;83.4
$LN319:
        mov       edx, 2                                        ;83.4
$LN320:
        add       rdx, QWORD PTR [16+rbp]                       ;83.4
$LN321:
        add       rdx, QWORD PTR [48+rbp]                       ;83.4
$LN322:
        movzx     edx, BYTE PTR [rdx]                           ;83.4
$LN323:
        movzx     edx, dl                                       ;83.4
$LN324:
        and       edx, 127                                      ;83.4
$LN325:
        shl       edx, 21                                       ;83.4
$LN326:
        or        eax, edx                                      ;83.4
$LN327:
        mov       rdx, QWORD PTR [rbp]                          ;83.4
$LN328:
        mov       DWORD PTR [rdx], eax                          ;83.4
$LN329:
        mov       eax, 4                                        ;84.4
$LN330:
        add       rax, QWORD PTR [16+rbp]                       ;84.4
$LN331:
        mov       QWORD PTR [16+rbp], rax                       ;84.4
$LN332:
        jmp       .B2.12        ; Prob 100%                     ;84.4
$LN333:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.11::                        ; Preds .B2.9
                                ; Execution count [0.00e+000]
$LN334:
        mov       rax, QWORD PTR [16+rbp]                       ;87.4
$LN335:
        add       rax, QWORD PTR [48+rbp]                       ;87.4
$LN336:
        movzx     eax, BYTE PTR [rax]                           ;87.4
$LN337:
        movzx     eax, al                                       ;87.4
$LN338:
        and       eax, 127                                      ;87.4
$LN339:
        mov       edx, 1                                        ;87.4
$LN340:
        add       rdx, QWORD PTR [16+rbp]                       ;87.4
$LN341:
        add       rdx, QWORD PTR [48+rbp]                       ;87.4
$LN342:
        movzx     edx, BYTE PTR [rdx]                           ;87.4
$LN343:
        movzx     edx, dl                                       ;87.4
$LN344:
        and       edx, 127                                      ;87.4
$LN345:
        shl       edx, 7                                        ;87.4
$LN346:
        or        eax, edx                                      ;87.4
$LN347:
        mov       edx, 2                                        ;87.4
$LN348:
        add       rdx, QWORD PTR [16+rbp]                       ;87.4
$LN349:
        add       rdx, QWORD PTR [48+rbp]                       ;87.4
$LN350:
        movzx     edx, BYTE PTR [rdx]                           ;87.4
$LN351:
        movzx     edx, dl                                       ;87.4
$LN352:
        and       edx, 127                                      ;87.4
$LN353:
        shl       edx, 14                                       ;87.4
$LN354:
        or        eax, edx                                      ;87.4
$LN355:
        mov       edx, 2                                        ;87.4
$LN356:
        add       rdx, QWORD PTR [16+rbp]                       ;87.4
$LN357:
        add       rdx, QWORD PTR [48+rbp]                       ;87.4
$LN358:
        movzx     edx, BYTE PTR [rdx]                           ;87.4
$LN359:
        movzx     edx, dl                                       ;87.4
$LN360:
        and       edx, 127                                      ;87.4
$LN361:
        shl       edx, 21                                       ;87.4
$LN362:
        or        eax, edx                                      ;87.4
$LN363:
        mov       edx, 2                                        ;87.4
$LN364:
        add       rdx, QWORD PTR [16+rbp]                       ;87.4
$LN365:
        add       rdx, QWORD PTR [48+rbp]                       ;87.4
$LN366:
        movzx     edx, BYTE PTR [rdx]                           ;87.4
$LN367:
        movzx     edx, dl                                       ;87.4
$LN368:
        and       edx, 127                                      ;87.4
$LN369:
        shl       edx, 28                                       ;87.4
$LN370:
        or        eax, edx                                      ;87.4
$LN371:
        mov       rdx, QWORD PTR [rbp]                          ;87.4
$LN372:
        mov       DWORD PTR [rdx], eax                          ;87.4
$LN373:
        mov       eax, 5                                        ;88.4
$LN374:
        add       rax, QWORD PTR [16+rbp]                       ;88.4
$LN375:
        mov       QWORD PTR [16+rbp], rax                       ;88.4
$LN376:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.12::                        ; Preds .B2.4 .B2.6 .B2.8 .B2.10 .B2.11
                                ;      
                                ; Execution count [0.00e+000]
$LN377:
        mov       eax, 4                                        ;90.3
$LN378:
        add       rax, QWORD PTR [rbp]                          ;90.3
$LN379:
        mov       QWORD PTR [rbp], rax                          ;90.3
$LN380:
        jmp       .B2.2         ; Prob 100%                     ;90.3
$LN381:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.13::                        ; Preds .B2.2
                                ; Execution count [0.00e+000]
$LN382:
        mov       rax, QWORD PTR [8+rbp]                        ;93.2
$LN383:
        neg       rax                                           ;93.2
$LN384:
        add       rax, QWORD PTR [rbp]                          ;93.2
$LN385:
        sar       rax, 2                                        ;93.2
$LN386:
        imul      rax, rax, 4                                   ;93.2
$LN387:
        lea       rsp, QWORD PTR [32+rbp]                       ;93.2
$LN388:
        pop       rbp                                           ;93.2
$LN389:
        ret                                                     ;93.2
$LN390:
                                ; LOE
.B2.14::
$LN391:
; mark_end;
enclaveVByteDecode ENDP
$LNenclaveVByteDecode$392:
$LNenclaveVByteDecode$393:
;enclaveVByteDecode	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$enclaveVByteDecode
	ALIGN 004H
.unwind.enclaveVByteDecode.B1_B13	DD	620956161
	DD	1912931082
	DD	20481
;.xdata$enclaveVByteDecode	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$enclaveVByteDecode
	ALIGN 004H
.pdata.enclaveVByteDecode.B1_B13	DD	imagerel .B2.1
	DD	imagerel .B2.14
	DD	imagerel .unwind.enclaveVByteDecode.B1_B13
;.pdata$enclaveVByteDecode	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  enclaveVByteDecode
_TEXT	SEGMENT      'CODE'
;	COMDAT enclaveVByteEncodeEncrypted
TXTST2:
_2__routine_start_enclaveVByteEncodeEncrypted_13:
; -- Begin  enclaveVByteEncodeEncrypted
;enclaveVByteEncodeEncrypted	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT enclaveVByteEncodeEncrypted
; mark_begin;

	PUBLIC enclaveVByteEncodeEncrypted
; --- enclaveVByteEncodeEncrypted(uint8_t *, size_t, uint8_t *)
enclaveVByteEncodeEncrypted	PROC 
; parameter 1(in): rcx
; parameter 2(length): rdx
; parameter 3(out): r8
.B3.1::                         ; Preds .B3.0
                                ; Execution count [0.00e+000]
L14::
                                                          ;97.1
$LN394:
        push      rbp                                           ;97.1
$LN395:
        sub       rsp, 176                                      ;97.1
$LN396:
        lea       rbp, QWORD PTR [48+rsp]                       ;97.1
$LN397:
        mov       QWORD PTR [80+rbp], rsi                       ;97.1[spill]
$LN398:
        mov       QWORD PTR [72+rbp], rbx                       ;97.1[spill]
$LN399:
        mov       QWORD PTR [144+rbp], rcx                      ;97.1
$LN400:
        mov       QWORD PTR [152+rbp], rdx                      ;97.1
$LN401:
        mov       QWORD PTR [160+rbp], r8                       ;97.1
$LN402:
        mov       rax, QWORD PTR [__security_cookie]            ;97.1
$LN403:
        xor       rax, rbp                                      ;97.1
$LN404:
        mov       QWORD PTR [120+rbp], rax                      ;97.1
$LN405:
        lea       rax, QWORD PTR [88+rbp]                       ;98.28
$LN406:
        mov       rdx, 03837363534333231H                       ;98.28
$LN407:
        mov       QWORD PTR [rax], rdx                          ;98.28
$LN408:
        lea       rax, QWORD PTR [88+rbp]                       ;98.28
$LN409:
        add       rax, 8                                        ;98.28
$LN410:
        mov       rdx, 035343332313039H                         ;98.28
$LN411:
        mov       QWORD PTR [rax], rdx                          ;98.28
$LN412:
        lea       rax, QWORD PTR [104+rbp]                      ;99.29
$LN413:
        mov       rdx, 03837363534333231H                       ;99.29
$LN414:
        mov       QWORD PTR [rax], rdx                          ;99.29
$LN415:
        lea       rax, QWORD PTR [104+rbp]                      ;99.29
$LN416:
        add       rax, 8                                        ;99.29
$LN417:
        mov       rdx, 035343332313039H                         ;99.29
$LN418:
        mov       QWORD PTR [rax], rdx                          ;99.29
$LN419:
        mov       rax, QWORD PTR [152+rbp]                      ;101.23
$LN420:
        shr       rax, 2                                        ;101.23
$LN421:
        imul      rax, rax, 5                                   ;101.23
$LN422:
        mov       QWORD PTR [8+rbp], rax                        ;101.23
$LN423:
        mov       rax, QWORD PTR [8+rbp]                        ;102.19
$LN424:
        mov       rcx, rax                                      ;102.19
$LN425:
;       operator new(unsigned __int64)
        call      ??2@YAPEAX_K@Z                                ;102.19
$LN426:
                                ; LOE rax rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B3.8::                         ; Preds .B3.1
                                ; Execution count [0.00e+000]
$LN427:
        mov       QWORD PTR [16+rbp], rax                       ;102.19
$LN428:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B3.2::                         ; Preds .B3.8
                                ; Execution count [0.00e+000]
$LN429:
        mov       rax, QWORD PTR [16+rbp]                       ;102.19
$LN430:
        mov       QWORD PTR [24+rbp], rax                       ;102.19
$LN431:
        mov       rax, QWORD PTR [144+rbp]                      ;104.19
$LN432:
        mov       rdx, QWORD PTR [152+rbp]                      ;104.19
$LN433:
        mov       rcx, QWORD PTR [24+rbp]                       ;104.19
$LN434:
        mov       rbx, QWORD PTR [8+rbp]                        ;104.19
$LN435:
        mov       QWORD PTR [56+rbp], rcx                       ;104.19[spill]
$LN436:
        mov       rcx, rax                                      ;104.19
$LN437:
        mov       rax, QWORD PTR [56+rbp]                       ;104.19[spill]
$LN438:
        mov       r8, rax                                       ;104.19
$LN439:
        mov       r9, rbx                                       ;104.19
$LN440:
;       enclaveVByteEncode(uint8_t *, size_t, uint8_t *, size_t)
        call      enclaveVByteEncode                            ;104.19
$LN441:
                                ; LOE rax rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B3.9::                         ; Preds .B3.2
                                ; Execution count [0.00e+000]
$LN442:
        mov       QWORD PTR [32+rbp], rax                       ;104.19
$LN443:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B3.3::                         ; Preds .B3.9
                                ; Execution count [0.00e+000]
$LN444:
        mov       rax, QWORD PTR [32+rbp]                       ;104.19
$LN445:
        mov       QWORD PTR [40+rbp], rax                       ;104.19
$LN446:
        mov       rax, QWORD PTR [24+rbp]                       ;106.2
$LN447:
        mov       rdx, QWORD PTR [40+rbp]                       ;106.2
$LN448:
        mov       rcx, QWORD PTR [160+rbp]                      ;106.2
$LN449:
        lea       rbx, QWORD PTR [88+rbp]                       ;106.2
$LN450:
        mov       QWORD PTR [32+rsp], 16                        ;106.2
$LN451:
        lea       rsi, QWORD PTR [104+rbp]                      ;106.2
$LN452:
        mov       QWORD PTR [40+rsp], rsi                       ;106.2
$LN453:
        mov       QWORD PTR [64+rbp], rcx                       ;106.2[spill]
$LN454:
        mov       rcx, rax                                      ;106.2
$LN455:
        mov       rax, QWORD PTR [64+rbp]                       ;106.2[spill]
$LN456:
        mov       r8, rax                                       ;106.2
$LN457:
        mov       r9, rbx                                       ;106.2
$LN458:
;       encryptBytes(uint8_t *, size_t, uint8_t *, const uint8_t *, size_t, uint8_t *)
        call      encryptBytes                                  ;106.2
$LN459:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B3.10::                        ; Preds .B3.3
                                ; Execution count [0.00e+000]
$LN460:
        mov       DWORD PTR [rbp], eax                          ;106.2
$LN461:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B3.4::                         ; Preds .B3.10
                                ; Execution count [0.00e+000]
$LN462:
        mov       rax, QWORD PTR [24+rbp]                       ;108.2
$LN463:
        mov       rcx, rax                                      ;108.2
$LN464:
;       operator delete(void *)
        call      ??3@YAXPEAX@Z                                 ;108.2
$LN465:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B3.11::                        ; Preds .B3.4
                                ; Execution count [0.00e+000]
$LN466:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B3.5::                         ; Preds .B3.11
                                ; Execution count [0.00e+000]
$LN467:
        mov       eax, 16                                       ;110.2
$LN468:
        add       rax, QWORD PTR [40+rbp]                       ;110.2
$LN469:
        mov       QWORD PTR [48+rbp], rax                       ;110.2[spill]
$LN470:
        mov       rax, QWORD PTR [120+rbp]                      ;110.2
$LN471:
        xor       rax, rbp                                      ;110.2
$LN472:
        mov       rcx, rax                                      ;110.2
$LN473:
        call      __security_check_cookie                       ;110.2
$LN474:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B3.12::                        ; Preds .B3.5
                                ; Execution count [0.00e+000]
$LN475:
        mov       rax, QWORD PTR [48+rbp]                       ;110.2[spill]
$LN476:
        mov       rbx, QWORD PTR [72+rbp]                       ;110.2[spill]
$LN477:
        mov       rsi, QWORD PTR [80+rbp]                       ;110.2[spill]
$LN478:
        lea       rsp, QWORD PTR [128+rbp]                      ;110.2
$LN479:
        pop       rbp                                           ;110.2
$LN480:
        ret                                                     ;110.2
$LN481:
                                ; LOE
.B3.6::
$LN482:
; mark_end;
enclaveVByteEncodeEncrypted ENDP
$LNenclaveVByteEncodeEncrypted$483:
$LNenclaveVByteEncodeEncrypted$484:
;enclaveVByteEncodeEncrypted	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$enclaveVByteEncodeEncrypted
	ALIGN 004H
.unwind.enclaveVByteEncodeEncrypted.B1_B12	DD	889722113
	DD	996373
	DD	1074193
	DD	17302285
	DD	1342242838
;.xdata$enclaveVByteEncodeEncrypted	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$enclaveVByteEncodeEncrypted
	ALIGN 004H
.pdata.enclaveVByteEncodeEncrypted.B1_B12	DD	imagerel .B3.1
	DD	imagerel .B3.6
	DD	imagerel .unwind.enclaveVByteEncodeEncrypted.B1_B12
;.pdata$enclaveVByteEncodeEncrypted	ENDS
.pdata	ENDS
_RDATA	SEGMENT     READ  'DATA'
	ALIGN 004H
key.80.0	DD	875770417
	DD	943142453
	DD	842084409
	DD	3486771
iv.80.0	DD	875770417
	DD	943142453
	DD	842084409
	DD	3486771
_RDATA	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  enclaveVByteEncodeEncrypted
_TEXT	SEGMENT      'CODE'
;	COMDAT enclaveVByteDecodeEncrypted
TXTST3:
_2__routine_start_enclaveVByteDecodeEncrypted_14:
; -- Begin  enclaveVByteDecodeEncrypted
;enclaveVByteDecodeEncrypted	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT enclaveVByteDecodeEncrypted
; mark_begin;

	PUBLIC enclaveVByteDecodeEncrypted
; --- enclaveVByteDecodeEncrypted(uint8_t *, size_t, uint8_t *)
enclaveVByteDecodeEncrypted	PROC 
; parameter 1(in): rcx
; parameter 2(length): rdx
; parameter 3(out): r8
.B4.1::                         ; Preds .B4.0
                                ; Execution count [0.00e+000]
L20::
                                                          ;114.1
$LN485:
        push      rbp                                           ;114.1
$LN486:
        sub       rsp, 176                                      ;114.1
$LN487:
        lea       rbp, QWORD PTR [48+rsp]                       ;114.1
$LN488:
        mov       QWORD PTR [80+rbp], rsi                       ;114.1[spill]
$LN489:
        mov       QWORD PTR [72+rbp], rbx                       ;114.1[spill]
$LN490:
        mov       QWORD PTR [144+rbp], rcx                      ;114.1
$LN491:
        mov       QWORD PTR [152+rbp], rdx                      ;114.1
$LN492:
        mov       QWORD PTR [160+rbp], r8                       ;114.1
$LN493:
        mov       rax, QWORD PTR [__security_cookie]            ;114.1
$LN494:
        xor       rax, rbp                                      ;114.1
$LN495:
        mov       QWORD PTR [120+rbp], rax                      ;114.1
$LN496:
        mov       rax, QWORD PTR [152+rbp]                      ;115.23
$LN497:
        imul      rax, rax, 4                                   ;115.23
$LN498:
        mov       QWORD PTR [8+rbp], rax                        ;115.23
$LN499:
        mov       rax, QWORD PTR [152+rbp]                      ;117.16
$LN500:
        mov       rcx, rax                                      ;117.16
$LN501:
;       operator new(unsigned __int64)
        call      ??2@YAPEAX_K@Z                                ;117.16
$LN502:
                                ; LOE rax rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.8::                         ; Preds .B4.1
                                ; Execution count [0.00e+000]
$LN503:
        mov       QWORD PTR [16+rbp], rax                       ;117.16
$LN504:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.2::                         ; Preds .B4.8
                                ; Execution count [0.00e+000]
$LN505:
        mov       rax, QWORD PTR [16+rbp]                       ;117.16
$LN506:
        mov       QWORD PTR [24+rbp], rax                       ;117.16
$LN507:
        lea       rax, QWORD PTR [88+rbp]                       ;119.28
$LN508:
        mov       rdx, 03837363534333231H                       ;119.28
$LN509:
        mov       QWORD PTR [rax], rdx                          ;119.28
$LN510:
        lea       rax, QWORD PTR [88+rbp]                       ;119.28
$LN511:
        add       rax, 8                                        ;119.28
$LN512:
        mov       rdx, 035343332313039H                         ;119.28
$LN513:
        mov       QWORD PTR [rax], rdx                          ;119.28
$LN514:
        lea       rax, QWORD PTR [104+rbp]                      ;120.29
$LN515:
        mov       rdx, 03837363534333231H                       ;120.29
$LN516:
        mov       QWORD PTR [rax], rdx                          ;120.29
$LN517:
        lea       rax, QWORD PTR [104+rbp]                      ;120.29
$LN518:
        add       rax, 8                                        ;120.29
$LN519:
        mov       rdx, 035343332313039H                         ;120.29
$LN520:
        mov       QWORD PTR [rax], rdx                          ;120.29
$LN521:
        mov       rax, QWORD PTR [144+rbp]                      ;122.2
$LN522:
        mov       rdx, QWORD PTR [152+rbp]                      ;122.2
$LN523:
        mov       rcx, QWORD PTR [24+rbp]                       ;122.2
$LN524:
        lea       rbx, QWORD PTR [88+rbp]                       ;122.2
$LN525:
        mov       QWORD PTR [32+rsp], 16                        ;122.2
$LN526:
        lea       rsi, QWORD PTR [104+rbp]                      ;122.2
$LN527:
        mov       QWORD PTR [40+rsp], rsi                       ;122.2
$LN528:
        mov       QWORD PTR [56+rbp], rcx                       ;122.2[spill]
$LN529:
        mov       rcx, rax                                      ;122.2
$LN530:
        mov       rax, QWORD PTR [56+rbp]                       ;122.2[spill]
$LN531:
        mov       r8, rax                                       ;122.2
$LN532:
        mov       r9, rbx                                       ;122.2
$LN533:
;       decryptBytes(uint8_t *, size_t, uint8_t *, const uint8_t *, size_t, uint8_t *)
        call      decryptBytes                                  ;122.2
$LN534:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.9::                         ; Preds .B4.2
                                ; Execution count [0.00e+000]
$LN535:
        mov       DWORD PTR [rbp], eax                          ;122.2
$LN536:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.3::                         ; Preds .B4.9
                                ; Execution count [0.00e+000]
$LN537:
        mov       rax, QWORD PTR [24+rbp]                       ;124.19
$LN538:
        mov       rdx, QWORD PTR [152+rbp]                      ;124.19
$LN539:
        mov       rcx, QWORD PTR [160+rbp]                      ;124.19
$LN540:
        mov       rbx, QWORD PTR [8+rbp]                        ;124.19
$LN541:
        mov       QWORD PTR [64+rbp], rcx                       ;124.19[spill]
$LN542:
        mov       rcx, rax                                      ;124.19
$LN543:
        mov       rax, QWORD PTR [64+rbp]                       ;124.19[spill]
$LN544:
        mov       r8, rax                                       ;124.19
$LN545:
        mov       r9, rbx                                       ;124.19
$LN546:
;       enclaveVByteDecode(uint8_t *, size_t, uint8_t *, size_t)
        call      enclaveVByteDecode                            ;124.19
$LN547:
                                ; LOE rax rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.10::                        ; Preds .B4.3
                                ; Execution count [0.00e+000]
$LN548:
        mov       QWORD PTR [32+rbp], rax                       ;124.19
$LN549:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.4::                         ; Preds .B4.10
                                ; Execution count [0.00e+000]
$LN550:
        mov       rax, QWORD PTR [32+rbp]                       ;124.19
$LN551:
        mov       QWORD PTR [40+rbp], rax                       ;124.19
$LN552:
        mov       rax, QWORD PTR [24+rbp]                       ;126.2
$LN553:
        mov       rcx, rax                                      ;126.2
$LN554:
;       operator delete(void *)
        call      ??3@YAXPEAX@Z                                 ;126.2
$LN555:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.11::                        ; Preds .B4.4
                                ; Execution count [0.00e+000]
$LN556:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.5::                         ; Preds .B4.11
                                ; Execution count [0.00e+000]
$LN557:
        mov       rax, QWORD PTR [40+rbp]                       ;128.2
$LN558:
        mov       QWORD PTR [48+rbp], rax                       ;128.2[spill]
$LN559:
        mov       rax, QWORD PTR [120+rbp]                      ;128.2
$LN560:
        xor       rax, rbp                                      ;128.2
$LN561:
        mov       rcx, rax                                      ;128.2
$LN562:
        call      __security_check_cookie                       ;128.2
$LN563:
                                ; LOE rbp rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.12::                        ; Preds .B4.5
                                ; Execution count [0.00e+000]
$LN564:
        mov       rax, QWORD PTR [48+rbp]                       ;128.2[spill]
$LN565:
        mov       rbx, QWORD PTR [72+rbp]                       ;128.2[spill]
$LN566:
        mov       rsi, QWORD PTR [80+rbp]                       ;128.2[spill]
$LN567:
        lea       rsp, QWORD PTR [128+rbp]                      ;128.2
$LN568:
        pop       rbp                                           ;128.2
$LN569:
        ret                                                     ;128.2
$LN570:
                                ; LOE
.B4.6::
$LN571:
; mark_end;
enclaveVByteDecodeEncrypted ENDP
$LNenclaveVByteDecodeEncrypted$572:
$LNenclaveVByteDecodeEncrypted$573:
;enclaveVByteDecodeEncrypted	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$enclaveVByteDecodeEncrypted
	ALIGN 004H
.unwind.enclaveVByteDecodeEncrypted.B1_B12	DD	889722113
	DD	996373
	DD	1074193
	DD	17302285
	DD	1342242838
;.xdata$enclaveVByteDecodeEncrypted	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$enclaveVByteDecodeEncrypted
	ALIGN 004H
.pdata.enclaveVByteDecodeEncrypted.B1_B12	DD	imagerel .B4.1
	DD	imagerel .B4.6
	DD	imagerel .unwind.enclaveVByteDecodeEncrypted.B1_B12
;.pdata$enclaveVByteDecodeEncrypted	ENDS
.pdata	ENDS
_RDATA	SEGMENT     READ  'DATA'
key.81.0	DD	875770417
	DD	943142453
	DD	842084409
	DD	3486771
iv.81.0	DD	875770417
	DD	943142453
	DD	842084409
	DD	3486771
_RDATA	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  enclaveVByteDecodeEncrypted
_TEXT	SEGMENT      'CODE'
;	COMDAT enclaveVByte
TXTST4:
_2__routine_start_enclaveVByte_15:
; -- Begin  enclaveVByte
;enclaveVByte	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT enclaveVByte
; mark_begin;

	PUBLIC enclaveVByte
; --- enclaveVByte(uint8_t *, size_t, uint8_t *, size_t)
enclaveVByte	PROC 
; parameter 1(in): rcx
; parameter 2(inLength): rdx
; parameter 3(out): r8
; parameter 4(outLength): r9
.B5.1::                         ; Preds .B5.0
                                ; Execution count [0.00e+000]
L26::
                                                          ;131.83
$LN574:
        push      rbp                                           ;131.83
$LN575:
        sub       rsp, 112                                      ;131.83
$LN576:
        lea       rbp, QWORD PTR [32+rsp]                       ;131.83
$LN577:
        mov       QWORD PTR [72+rbp], rbx                       ;131.83[spill]
$LN578:
        mov       QWORD PTR [96+rbp], rcx                       ;131.83
$LN579:
        mov       QWORD PTR [104+rbp], rdx                      ;131.83
$LN580:
        mov       QWORD PTR [112+rbp], r8                       ;131.83
$LN581:
        mov       QWORD PTR [120+rbp], r9                       ;131.83
$LN582:
        mov       rax, QWORD PTR [104+rbp]                      ;133.23
$LN583:
        imul      rax, rax, 4                                   ;133.23
$LN584:
        mov       QWORD PTR [rbp], rax                          ;133.23
$LN585:
        mov       rax, QWORD PTR [rbp]                          ;135.19
$LN586:
        mov       rcx, rax                                      ;135.19
$LN587:
;       operator new(unsigned __int64)
        call      ??2@YAPEAX_K@Z                                ;135.19
$LN588:
                                ; LOE rax rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.8::                         ; Preds .B5.1
                                ; Execution count [0.00e+000]
$LN589:
        mov       QWORD PTR [8+rbp], rax                        ;135.19
$LN590:
                                ; LOE rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.2::                         ; Preds .B5.8
                                ; Execution count [0.00e+000]
$LN591:
        mov       rax, QWORD PTR [8+rbp]                        ;135.19
$LN592:
        mov       QWORD PTR [16+rbp], rax                       ;135.19
$LN593:
        mov       rax, QWORD PTR [96+rbp]                       ;137.17
$LN594:
        mov       rdx, QWORD PTR [104+rbp]                      ;137.17
$LN595:
        mov       rcx, QWORD PTR [16+rbp]                       ;137.17
$LN596:
        mov       rbx, QWORD PTR [rbp]                          ;137.17
$LN597:
        mov       QWORD PTR [56+rbp], rcx                       ;137.17[spill]
$LN598:
        mov       rcx, rax                                      ;137.17
$LN599:
        mov       rax, QWORD PTR [56+rbp]                       ;137.17[spill]
$LN600:
        mov       r8, rax                                       ;137.17
$LN601:
        mov       r9, rbx                                       ;137.17
$LN602:
;       enclaveVByteDecode(uint8_t *, size_t, uint8_t *, size_t)
        call      enclaveVByteDecode                            ;137.17
$LN603:
                                ; LOE rax rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.9::                         ; Preds .B5.2
                                ; Execution count [0.00e+000]
$LN604:
        mov       QWORD PTR [24+rbp], rax                       ;137.17
$LN605:
                                ; LOE rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.3::                         ; Preds .B5.9
                                ; Execution count [0.00e+000]
$LN606:
        mov       rax, QWORD PTR [24+rbp]                       ;137.17
$LN607:
        mov       QWORD PTR [32+rbp], rax                       ;137.17
$LN608:
        mov       rax, QWORD PTR [16+rbp]                       ;141.17
$LN609:
        mov       rdx, QWORD PTR [32+rbp]                       ;141.17
$LN610:
        mov       rcx, QWORD PTR [112+rbp]                      ;141.17
$LN611:
        mov       rbx, QWORD PTR [120+rbp]                      ;141.17
$LN612:
        mov       QWORD PTR [64+rbp], rcx                       ;141.17[spill]
$LN613:
        mov       rcx, rax                                      ;141.17
$LN614:
        mov       rax, QWORD PTR [64+rbp]                       ;141.17[spill]
$LN615:
        mov       r8, rax                                       ;141.17
$LN616:
        mov       r9, rbx                                       ;141.17
$LN617:
;       enclaveVByteEncode(uint8_t *, size_t, uint8_t *, size_t)
        call      enclaveVByteEncode                            ;141.17
$LN618:
                                ; LOE rax rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.10::                        ; Preds .B5.3
                                ; Execution count [0.00e+000]
$LN619:
        mov       QWORD PTR [40+rbp], rax                       ;141.17
$LN620:
                                ; LOE rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.4::                         ; Preds .B5.10
                                ; Execution count [0.00e+000]
$LN621:
        mov       rax, QWORD PTR [40+rbp]                       ;141.17
$LN622:
        mov       QWORD PTR [48+rbp], rax                       ;141.17
$LN623:
        mov       rax, QWORD PTR [16+rbp]                       ;143.2
$LN624:
        mov       rcx, rax                                      ;143.2
$LN625:
;       operator delete(void *)
        call      ??3@YAXPEAX@Z                                 ;143.2
$LN626:
                                ; LOE rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.11::                        ; Preds .B5.4
                                ; Execution count [0.00e+000]
$LN627:
                                ; LOE rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.5::                         ; Preds .B5.11
                                ; Execution count [0.00e+000]
$LN628:
        mov       rax, QWORD PTR [48+rbp]                       ;145.2
$LN629:
        mov       rbx, QWORD PTR [72+rbp]                       ;145.2[spill]
$LN630:
        lea       rsp, QWORD PTR [80+rbp]                       ;145.2
$LN631:
        pop       rbp                                           ;145.2
$LN632:
        ret                                                     ;145.2
$LN633:
                                ; LOE
.B5.6::
$LN634:
; mark_end;
enclaveVByte ENDP
$LNenclaveVByte$635:
$LNenclaveVByte$636:
;enclaveVByte	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$enclaveVByte
	ALIGN 004H
.unwind.enclaveVByte.B1_B5	DD	621088257
	DD	865294
	DD	3523543818
	DD	20481
;.xdata$enclaveVByte	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$enclaveVByte
	ALIGN 004H
.pdata.enclaveVByte.B1_B5	DD	imagerel .B5.1
	DD	imagerel .B5.6
	DD	imagerel .unwind.enclaveVByte.B1_B5
;.pdata$enclaveVByte	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  enclaveVByte
_DATA	SEGMENT      'DATA'
EXTRN	__security_cookie:BYTE
_DATA	ENDS
EXTRN	decryptBytes:PROC
EXTRN	encryptBytes:PROC
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
