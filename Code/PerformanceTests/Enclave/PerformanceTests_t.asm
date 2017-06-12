; mark_description "Intel(R) C++ Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 17.0.4.210 Build 20170411";
; mark_description "";
; mark_description "-c -Qm64 -IC:\\Program Files (x86)\\Intel\\IntelSGXSDK\\include -IC:\\Program Files (x86)\\Intel\\IntelSGXSD";
; mark_description "K\\include\\tlibc -IC:\\Program Files (x86)\\Intel\\IntelSGXSDK\\include\\libc++ -IC:\\Program Files (x86)\\";
; mark_description "Intel\\IntelSGXSDK\\include\\ipp -IC:\\Program Files (x86)\\IntelSWTools\\compilers_and_libraries_2017.2.187";
; mark_description "\\windows\\compiler\\include -Zi -nologo -W3 -Od -Oi -D __INTEL_COMPILER=1700 -D _WINDLL -EHs -EHc -MT -GS -";
; mark_description "Gy -Zc:wchar_t -Zc:forScope -FoPrerelease\\ -FdPrerelease\\vc140.pdb -TC -S";
	OPTION DOTNAME
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_enclaveJustCopy
TXTST0:
_2__routine_start_sgx_enclaveJustCopy_0:
; -- Begin  sgx_enclaveJustCopy
;sgx_enclaveJustCopy	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_enclaveJustCopy
; mark_begin;

; --- sgx_enclaveJustCopy(void *)
sgx_enclaveJustCopy	PROC PRIVATE
; parameter 1(pms): rcx
.B1.1::                         ; Preds .B1.0
                                ; Execution count [0.00e+000]
L2::
                                                           ;179.1
$LN0:
        push      rbp                                           ;179.1
$LN1:
        sub       rsp, 192                                      ;179.1
$LN2:
        lea       rbp, QWORD PTR [32+rsp]                       ;179.1
$LN3:
        mov       QWORD PTR [152+rbp], rdi                      ;179.1[spill]
$LN4:
        mov       QWORD PTR [144+rbp], rsi                      ;179.1[spill]
$LN5:
        mov       QWORD PTR [176+rbp], rcx                      ;179.1
$LN6:
        mov       rax, QWORD PTR [176+rbp]                      ;180.27
$LN7:
        mov       QWORD PTR [16+rbp], rax                       ;180.27
$LN8:
        mov       DWORD PTR [rbp], 0                            ;181.22
$LN9:
        mov       rax, QWORD PTR [16+rbp]                       ;182.19
$LN10:
        mov       rax, QWORD PTR [8+rax]                        ;182.19
$LN11:
        mov       QWORD PTR [24+rbp], rax                       ;182.19
$LN12:
        mov       rax, QWORD PTR [16+rbp]                       ;183.21
$LN13:
        mov       rax, QWORD PTR [16+rax]                       ;183.21
$LN14:
        mov       QWORD PTR [32+rbp], rax                       ;183.21
$LN15:
        mov       rax, QWORD PTR [32+rbp]                       ;184.17
$LN16:
        mov       QWORD PTR [40+rbp], rax                       ;184.17
$LN17:
        mov       QWORD PTR [48+rbp], 0                         ;185.18
$LN18:
        mov       rax, QWORD PTR [16+rbp]                       ;186.20
$LN19:
        mov       rax, QWORD PTR [24+rax]                       ;186.20
$LN20:
        mov       QWORD PTR [56+rbp], rax                       ;186.20
$LN21:
        mov       rax, QWORD PTR [32+rbp]                       ;187.18
$LN22:
        mov       QWORD PTR [64+rbp], rax                       ;187.18
$LN23:
        mov       QWORD PTR [72+rbp], 0                         ;188.19
$LN24:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.2::                         ; Preds .B1.5 .B1.1
                                ; Execution count [0.00e+000]
$LN25:
        mov       rax, QWORD PTR [176+rbp]                      ;190.2
$LN26:
        test      rax, rax                                      ;190.2
$LN27:
        je        .B1.6         ; Prob 50%                      ;190.2
$LN28:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.3::                         ; Preds .B1.2
                                ; Execution count [0.00e+000]
$LN29:
        mov       rax, QWORD PTR [176+rbp]                      ;190.2
$LN30:
        mov       edx, 32                                       ;190.2
$LN31:
        mov       rcx, rax                                      ;190.2
$LN32:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;190.2
$LN33:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.37::                        ; Preds .B1.3
                                ; Execution count [0.00e+000]
$LN34:
        mov       DWORD PTR [4+rbp], eax                        ;190.2
$LN35:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.4::                         ; Preds .B1.37
                                ; Execution count [0.00e+000]
$LN36:
        mov       eax, DWORD PTR [4+rbp]                        ;190.2
$LN37:
        test      eax, eax                                      ;190.2
$LN38:
        je        .B1.6         ; Prob 50%                      ;190.2
$LN39:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.5::                         ; Preds .B1.4
                                ; Execution count [0.00e+000]
$LN40:
        mov       eax, 0                                        ;190.2
$LN41:
        test      eax, eax                                      ;190.2
$LN42:
        jne       .B1.2         ; Prob 0%                       ;190.2
$LN43:
        jmp       .B1.7         ; Prob 100%                     ;190.2
$LN44:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.6::                         ; Preds .B1.2 .B1.4
                                ; Execution count [0.00e+000]
$LN45:
        mov       eax, 2                                        ;190.2
$LN46:
        mov       rsi, QWORD PTR [144+rbp]                      ;190.2[spill]
$LN47:
        mov       rdi, QWORD PTR [152+rbp]                      ;190.2[spill]
$LN48:
        lea       rsp, QWORD PTR [160+rbp]                      ;190.2
$LN49:
        pop       rbp                                           ;190.2
$LN50:
        ret                                                     ;190.2
$LN51:
                                ; LOE
.B1.7::                         ; Preds .B1.10 .B1.5
                                ; Execution count [0.00e+000]
$LN52:
        mov       rax, QWORD PTR [24+rbp]                       ;191.2
$LN53:
        test      rax, rax                                      ;191.2
$LN54:
        je        .B1.10        ; Prob 50%                      ;191.2
$LN55:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.8::                         ; Preds .B1.7
                                ; Execution count [0.00e+000]
$LN56:
        mov       rax, QWORD PTR [24+rbp]                       ;191.2
$LN57:
        mov       rdx, QWORD PTR [40+rbp]                       ;191.2
$LN58:
        mov       rcx, rax                                      ;191.2
$LN59:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;191.2
$LN60:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.38::                        ; Preds .B1.8
                                ; Execution count [0.00e+000]
$LN61:
        mov       DWORD PTR [8+rbp], eax                        ;191.2
$LN62:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.9::                         ; Preds .B1.38
                                ; Execution count [0.00e+000]
$LN63:
        mov       eax, DWORD PTR [8+rbp]                        ;191.2
$LN64:
        test      eax, eax                                      ;191.2
$LN65:
        je        .B1.11        ; Prob 50%                      ;191.2
$LN66:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.10::                        ; Preds .B1.9 .B1.7
                                ; Execution count [0.00e+000]
$LN67:
        mov       eax, 0                                        ;191.2
$LN68:
        test      eax, eax                                      ;191.2
$LN69:
        jne       .B1.7         ; Prob 0%                       ;191.2
$LN70:
        jmp       .B1.12        ; Prob 100%                     ;191.2
$LN71:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.11::                        ; Preds .B1.9
                                ; Execution count [0.00e+000]
$LN72:
        mov       eax, 2                                        ;191.2
$LN73:
        mov       rsi, QWORD PTR [144+rbp]                      ;191.2[spill]
$LN74:
        mov       rdi, QWORD PTR [152+rbp]                      ;191.2[spill]
$LN75:
        lea       rsp, QWORD PTR [160+rbp]                      ;191.2
$LN76:
        pop       rbp                                           ;191.2
$LN77:
        ret                                                     ;191.2
$LN78:
                                ; LOE
.B1.12::                        ; Preds .B1.15 .B1.10
                                ; Execution count [0.00e+000]
$LN79:
        mov       rax, QWORD PTR [56+rbp]                       ;192.2
$LN80:
        test      rax, rax                                      ;192.2
$LN81:
        je        .B1.15        ; Prob 50%                      ;192.2
$LN82:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.13::                        ; Preds .B1.12
                                ; Execution count [0.00e+000]
$LN83:
        mov       rax, QWORD PTR [56+rbp]                       ;192.2
$LN84:
        mov       rdx, QWORD PTR [64+rbp]                       ;192.2
$LN85:
        mov       rcx, rax                                      ;192.2
$LN86:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;192.2
$LN87:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.39::                        ; Preds .B1.13
                                ; Execution count [0.00e+000]
$LN88:
        mov       DWORD PTR [12+rbp], eax                       ;192.2
$LN89:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.14::                        ; Preds .B1.39
                                ; Execution count [0.00e+000]
$LN90:
        mov       eax, DWORD PTR [12+rbp]                       ;192.2
$LN91:
        test      eax, eax                                      ;192.2
$LN92:
        je        .B1.16        ; Prob 50%                      ;192.2
$LN93:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.15::                        ; Preds .B1.14 .B1.12
                                ; Execution count [0.00e+000]
$LN94:
        mov       eax, 0                                        ;192.2
$LN95:
        test      eax, eax                                      ;192.2
$LN96:
        jne       .B1.12        ; Prob 0%                       ;192.2
$LN97:
        jmp       .B1.17        ; Prob 100%                     ;192.2
$LN98:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.16::                        ; Preds .B1.14
                                ; Execution count [0.00e+000]
$LN99:
        mov       eax, 2                                        ;192.2
$LN100:
        mov       rsi, QWORD PTR [144+rbp]                      ;192.2[spill]
$LN101:
        mov       rdi, QWORD PTR [152+rbp]                      ;192.2[spill]
$LN102:
        lea       rsp, QWORD PTR [160+rbp]                      ;192.2
$LN103:
        pop       rbp                                           ;192.2
$LN104:
        ret                                                     ;192.2
$LN105:
                                ; LOE
.B1.17::                        ; Preds .B1.15
                                ; Execution count [0.00e+000]
$LN106:
        mov       rax, QWORD PTR [24+rbp]                       ;194.2
$LN107:
        test      rax, rax                                      ;194.2
$LN108:
        je        .B1.22        ; Prob 50%                      ;194.2
$LN109:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.18::                        ; Preds .B1.17
                                ; Execution count [0.00e+000]
$LN110:
        mov       rax, QWORD PTR [40+rbp]                       ;195.3
$LN111:
        mov       rcx, rax                                      ;195.3
$LN112:
;       malloc(size_t)
        call      malloc                                        ;195.3
$LN113:
                                ; LOE rax rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.40::                        ; Preds .B1.18
                                ; Execution count [0.00e+000]
$LN114:
        mov       QWORD PTR [80+rbp], rax                       ;195.3
$LN115:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.19::                        ; Preds .B1.40
                                ; Execution count [0.00e+000]
$LN116:
        mov       rax, QWORD PTR [80+rbp]                       ;195.3
$LN117:
        mov       QWORD PTR [48+rbp], rax                       ;195.3
$LN118:
        mov       rax, QWORD PTR [48+rbp]                       ;196.3
$LN119:
        test      rax, rax                                      ;196.3
$LN120:
        jne       .B1.21        ; Prob 50%                      ;196.3
$LN121:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.20::                        ; Preds .B1.19
                                ; Execution count [0.00e+000]
$LN122:
        mov       DWORD PTR [rbp], 3                            ;197.4
$LN123:
        jmp       .B1.29        ; Prob 100%                     ;197.4
$LN124:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.21::                        ; Preds .B1.19
                                ; Execution count [0.00e+000]
$LN125:
        mov       rax, QWORD PTR [48+rbp]                       ;201.3
$LN126:
        mov       rdx, QWORD PTR [24+rbp]                       ;201.3
$LN127:
        mov       rcx, QWORD PTR [40+rbp]                       ;201.3
$LN128:
        mov       rdi, rax                                      ;201.3
$LN129:
        mov       rsi, rdx                                      ;201.3
$LN130:
        mov       rdx, rdi                                      ;201.3
$LN131:
        mov       eax, ecx                                      ;201.3
$LN132:
        shr       rcx, 2                                        ;201.3
$LN133:
        rep   movsd                                             ;201.3
$LN134:
        mov       ecx, eax                                      ;201.3
$LN135:
        and       ecx, 3                                        ;201.3
$LN136:
        rep   movsb                                             ;201.3
$LN137:
        mov       rax, rdx                                      ;201.3
$LN138:
                                ; LOE rax rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.41::                        ; Preds .B1.21
                                ; Execution count [0.00e+000]
$LN139:
        mov       QWORD PTR [104+rbp], rax                      ;201.3
$LN140:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.22::                        ; Preds .B1.41 .B1.17
                                ; Execution count [0.00e+000]
$LN141:
        mov       rax, QWORD PTR [56+rbp]                       ;203.2
$LN142:
        test      rax, rax                                      ;203.2
$LN143:
        je        .B1.27        ; Prob 50%                      ;203.2
$LN144:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.23::                        ; Preds .B1.22
                                ; Execution count [0.00e+000]
$LN145:
        mov       rax, QWORD PTR [64+rbp]                       ;204.3
$LN146:
        mov       rcx, rax                                      ;204.3
$LN147:
;       malloc(size_t)
        call      malloc                                        ;204.3
$LN148:
                                ; LOE rax rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.42::                        ; Preds .B1.23
                                ; Execution count [0.00e+000]
$LN149:
        mov       QWORD PTR [88+rbp], rax                       ;204.3
$LN150:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.24::                        ; Preds .B1.42
                                ; Execution count [0.00e+000]
$LN151:
        mov       rax, QWORD PTR [88+rbp]                       ;204.3
$LN152:
        mov       QWORD PTR [112+rbp], rax                      ;204.3
$LN153:
        mov       rax, QWORD PTR [112+rbp]                      ;204.3
$LN154:
        mov       QWORD PTR [72+rbp], rax                       ;204.3
$LN155:
        mov       rax, QWORD PTR [112+rbp]                      ;204.3
$LN156:
        test      rax, rax                                      ;204.3
$LN157:
        jne       .B1.26        ; Prob 50%                      ;204.3
$LN158:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.25::                        ; Preds .B1.24
                                ; Execution count [0.00e+000]
$LN159:
        mov       DWORD PTR [rbp], 3                            ;205.4
$LN160:
        jmp       .B1.29        ; Prob 100%                     ;205.4
$LN161:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.26::                        ; Preds .B1.24
                                ; Execution count [0.00e+000]
$LN162:
        mov       rax, QWORD PTR [72+rbp]                       ;209.3
$LN163:
        mov       edx, 0                                        ;209.3
$LN164:
        mov       rcx, QWORD PTR [64+rbp]                       ;209.3
$LN165:
        mov       rdi, rax                                      ;209.3
$LN166:
        mov       eax, edx                                      ;209.3
$LN167:
        and       eax, 65535                                    ;209.3
$LN168:
        mov       ah, al                                        ;209.3
$LN169:
        mov       edx, eax                                      ;209.3
$LN170:
        shl       eax, 16                                       ;209.3
$LN171:
        or        eax, edx                                      ;209.3
$LN172:
        mov       esi, ecx                                      ;209.3
$LN173:
        shr       rcx, 2                                        ;209.3
$LN174:
        mov       rdx, rdi                                      ;209.3
$LN175:
        rep   stosd                                             ;209.3
$LN176:
        mov       ecx, esi                                      ;209.3
$LN177:
        and       ecx, 3                                        ;209.3
$LN178:
        rep   stosb                                             ;209.3
$LN179:
        mov       rax, rdx                                      ;209.3
$LN180:
                                ; LOE rax rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.43::                        ; Preds .B1.26
                                ; Execution count [0.00e+000]
$LN181:
        mov       QWORD PTR [120+rbp], rax                      ;209.3
$LN182:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.27::                        ; Preds .B1.43 .B1.22
                                ; Execution count [0.00e+000]
$LN183:
        mov       rax, QWORD PTR [48+rbp]                       ;211.2
$LN184:
        mov       rdx, QWORD PTR [32+rbp]                       ;211.2
$LN185:
        mov       rcx, QWORD PTR [72+rbp]                       ;211.2
$LN186:
        mov       QWORD PTR [136+rbp], rcx                      ;211.2[spill]
$LN187:
        mov       rcx, rax                                      ;211.2
$LN188:
        mov       rax, QWORD PTR [136+rbp]                      ;211.2[spill]
$LN189:
        mov       r8, rax                                       ;211.2
$LN190:
;       enclaveJustCopy(uint8_t *, size_t, uint8_t *)
        call      enclaveJustCopy                               ;211.2
$LN191:
                                ; LOE rax rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.44::                        ; Preds .B1.27
                                ; Execution count [0.00e+000]
$LN192:
        mov       QWORD PTR [96+rbp], rax                       ;211.2
$LN193:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.28::                        ; Preds .B1.44
                                ; Execution count [0.00e+000]
$LN194:
        mov       rax, QWORD PTR [16+rbp]                       ;211.2
$LN195:
        mov       rdx, QWORD PTR [96+rbp]                       ;211.2
$LN196:
        mov       QWORD PTR [rax], rdx                          ;211.2
$LN197:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.29::                        ; Preds .B1.28 .B1.25 .B1.20
                                ; Execution count [0.00e+000]
$LN198:
        mov       rax, QWORD PTR [48+rbp]                       ;213.2
$LN199:
        test      rax, rax                                      ;213.2
$LN200:
        je        .B1.31        ; Prob 50%                      ;213.2
$LN201:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.30::                        ; Preds .B1.29
                                ; Execution count [0.00e+000]
$LN202:
        mov       rax, QWORD PTR [48+rbp]                       ;213.14
$LN203:
        mov       rcx, rax                                      ;213.14
$LN204:
;       free(void *)
        call      free                                          ;213.14
$LN205:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.45::                        ; Preds .B1.30
                                ; Execution count [0.00e+000]
$LN206:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.31::                        ; Preds .B1.45 .B1.29
                                ; Execution count [0.00e+000]
$LN207:
        mov       rax, QWORD PTR [72+rbp]                       ;214.2
$LN208:
        test      rax, rax                                      ;214.2
$LN209:
        je        .B1.34        ; Prob 50%                      ;214.2
$LN210:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.32::                        ; Preds .B1.31
                                ; Execution count [0.00e+000]
$LN211:
        mov       rax, QWORD PTR [56+rbp]                       ;215.3
$LN212:
        mov       rdx, QWORD PTR [72+rbp]                       ;215.3
$LN213:
        mov       rcx, QWORD PTR [64+rbp]                       ;215.3
$LN214:
        mov       rdi, rax                                      ;215.3
$LN215:
        mov       rsi, rdx                                      ;215.3
$LN216:
        mov       rdx, rdi                                      ;215.3
$LN217:
        mov       eax, ecx                                      ;215.3
$LN218:
        shr       rcx, 2                                        ;215.3
$LN219:
        rep   movsd                                             ;215.3
$LN220:
        mov       ecx, eax                                      ;215.3
$LN221:
        and       ecx, 3                                        ;215.3
$LN222:
        rep   movsb                                             ;215.3
$LN223:
        mov       rax, rdx                                      ;215.3
$LN224:
                                ; LOE rax rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.46::                        ; Preds .B1.32
                                ; Execution count [0.00e+000]
$LN225:
        mov       QWORD PTR [128+rbp], rax                      ;215.3
$LN226:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.33::                        ; Preds .B1.46
                                ; Execution count [0.00e+000]
$LN227:
        mov       rax, QWORD PTR [72+rbp]                       ;216.3
$LN228:
        mov       rcx, rax                                      ;216.3
$LN229:
;       free(void *)
        call      free                                          ;216.3
$LN230:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.47::                        ; Preds .B1.33
                                ; Execution count [0.00e+000]
$LN231:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B1.34::                        ; Preds .B1.47 .B1.31
                                ; Execution count [0.00e+000]
$LN232:
        mov       eax, DWORD PTR [rbp]                          ;219.2
$LN233:
        mov       rsi, QWORD PTR [144+rbp]                      ;219.2[spill]
$LN234:
        mov       rdi, QWORD PTR [152+rbp]                      ;219.2[spill]
$LN235:
        lea       rsp, QWORD PTR [160+rbp]                      ;219.2
$LN236:
        pop       rbp                                           ;219.2
$LN237:
        ret                                                     ;219.2
$LN238:
                                ; LOE
.B1.35::
$LN239:
; mark_end;
sgx_enclaveJustCopy ENDP
$LNsgx_enclaveJustCopy$240:
;sgx_enclaveJustCopy	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$sgx_enclaveJustCopy
	ALIGN 004H
.unwind.sgx_enclaveJustCopy.B1_B34	DD	621288193
	DD	1467419
	DD	1537044
	DD	17302285
	DD	1342242840
;.xdata$sgx_enclaveJustCopy	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$sgx_enclaveJustCopy
	ALIGN 004H
.pdata.sgx_enclaveJustCopy.B1_B34	DD	imagerel .B1.1
	DD	imagerel .B1.35
	DD	imagerel .unwind.sgx_enclaveJustCopy.B1_B34
;.pdata$sgx_enclaveJustCopy	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  sgx_enclaveJustCopy
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_enclaveNoCopy
TXTST1:
_2__routine_start_sgx_enclaveNoCopy_1:
; -- Begin  sgx_enclaveNoCopy
;sgx_enclaveNoCopy	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_enclaveNoCopy
; mark_begin;

; --- sgx_enclaveNoCopy(void *)
sgx_enclaveNoCopy	PROC PRIVATE
; parameter 1(pms): rcx
.B2.1::                         ; Preds .B2.0
                                ; Execution count [0.00e+000]
L11::
                                                          ;223.1
$LN241:
        push      rbp                                           ;223.1
$LN242:
        sub       rsp, 80                                       ;223.1
$LN243:
        lea       rbp, QWORD PTR [32+rsp]                       ;223.1
$LN244:
        mov       QWORD PTR [64+rbp], rcx                       ;223.1
$LN245:
        mov       rax, QWORD PTR [64+rbp]                       ;224.25
$LN246:
        mov       QWORD PTR [8+rbp], rax                        ;224.25
$LN247:
        mov       DWORD PTR [rbp], 0                            ;225.22
$LN248:
        mov       rax, QWORD PTR [8+rbp]                        ;226.19
$LN249:
        mov       rax, QWORD PTR [8+rax]                        ;226.19
$LN250:
        mov       QWORD PTR [16+rbp], rax                       ;226.19
$LN251:
        mov       rax, QWORD PTR [8+rbp]                        ;227.20
$LN252:
        mov       rax, QWORD PTR [24+rax]                       ;227.20
$LN253:
        mov       QWORD PTR [24+rbp], rax                       ;227.20
$LN254:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.2::                         ; Preds .B2.5 .B2.1
                                ; Execution count [0.00e+000]
$LN255:
        mov       rax, QWORD PTR [64+rbp]                       ;229.2
$LN256:
        test      rax, rax                                      ;229.2
$LN257:
        je        .B2.6         ; Prob 50%                      ;229.2
$LN258:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.3::                         ; Preds .B2.2
                                ; Execution count [0.00e+000]
$LN259:
        mov       rax, QWORD PTR [64+rbp]                       ;229.2
$LN260:
        mov       edx, 32                                       ;229.2
$LN261:
        mov       rcx, rax                                      ;229.2
$LN262:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;229.2
$LN263:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.11::                        ; Preds .B2.3
                                ; Execution count [0.00e+000]
$LN264:
        mov       DWORD PTR [4+rbp], eax                        ;229.2
$LN265:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.4::                         ; Preds .B2.11
                                ; Execution count [0.00e+000]
$LN266:
        mov       eax, DWORD PTR [4+rbp]                        ;229.2
$LN267:
        test      eax, eax                                      ;229.2
$LN268:
        je        .B2.6         ; Prob 50%                      ;229.2
$LN269:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.5::                         ; Preds .B2.4
                                ; Execution count [0.00e+000]
$LN270:
        mov       eax, 0                                        ;229.2
$LN271:
        test      eax, eax                                      ;229.2
$LN272:
        jne       .B2.2         ; Prob 0%                       ;229.2
$LN273:
        jmp       .B2.7         ; Prob 100%                     ;229.2
$LN274:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.6::                         ; Preds .B2.2 .B2.4
                                ; Execution count [0.00e+000]
$LN275:
        mov       eax, 2                                        ;229.2
$LN276:
        lea       rsp, QWORD PTR [48+rbp]                       ;229.2
$LN277:
        pop       rbp                                           ;229.2
$LN278:
        ret                                                     ;229.2
$LN279:
                                ; LOE
.B2.7::                         ; Preds .B2.5
                                ; Execution count [0.00e+000]
$LN280:
        mov       rax, QWORD PTR [16+rbp]                       ;231.2
$LN281:
        mov       rdx, QWORD PTR [8+rbp]                        ;231.2
$LN282:
        mov       rdx, QWORD PTR [16+rdx]                       ;231.2
$LN283:
        mov       rcx, QWORD PTR [24+rbp]                       ;231.2
$LN284:
        mov       QWORD PTR [40+rbp], rcx                       ;231.2[spill]
$LN285:
        mov       rcx, rax                                      ;231.2
$LN286:
        mov       rax, QWORD PTR [40+rbp]                       ;231.2[spill]
$LN287:
        mov       r8, rax                                       ;231.2
$LN288:
;       enclaveNoCopy(uint8_t *, size_t, uint8_t *)
        call      enclaveNoCopy                                 ;231.2
$LN289:
                                ; LOE rax rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.12::                        ; Preds .B2.7
                                ; Execution count [0.00e+000]
$LN290:
        mov       QWORD PTR [32+rbp], rax                       ;231.2
$LN291:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B2.8::                         ; Preds .B2.12
                                ; Execution count [0.00e+000]
$LN292:
        mov       rax, QWORD PTR [8+rbp]                        ;231.2
$LN293:
        mov       rdx, QWORD PTR [32+rbp]                       ;231.2
$LN294:
        mov       QWORD PTR [rax], rdx                          ;231.2
$LN295:
        mov       eax, DWORD PTR [rbp]                          ;234.2
$LN296:
        lea       rsp, QWORD PTR [48+rbp]                       ;234.2
$LN297:
        pop       rbp                                           ;234.2
$LN298:
        ret                                                     ;234.2
$LN299:
                                ; LOE
.B2.9::
$LN300:
; mark_end;
sgx_enclaveNoCopy ENDP
$LNsgx_enclaveNoCopy$301:
;sgx_enclaveNoCopy	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$sgx_enclaveNoCopy
	ALIGN 004H
.unwind.sgx_enclaveNoCopy.B1_B8	DD	620956161
	DD	2449801994
	DD	20481
;.xdata$sgx_enclaveNoCopy	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$sgx_enclaveNoCopy
	ALIGN 004H
.pdata.sgx_enclaveNoCopy.B1_B8	DD	imagerel .B2.1
	DD	imagerel .B2.9
	DD	imagerel .unwind.sgx_enclaveNoCopy.B1_B8
;.pdata$sgx_enclaveNoCopy	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  sgx_enclaveNoCopy
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_enclaveCryptoNoCopy
TXTST2:
_2__routine_start_sgx_enclaveCryptoNoCopy_2:
; -- Begin  sgx_enclaveCryptoNoCopy
;sgx_enclaveCryptoNoCopy	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_enclaveCryptoNoCopy
; mark_begin;

; --- sgx_enclaveCryptoNoCopy(void *)
sgx_enclaveCryptoNoCopy	PROC PRIVATE
; parameter 1(pms): rcx
.B3.1::                         ; Preds .B3.0
                                ; Execution count [0.00e+000]
L18::
                                                          ;238.1
$LN302:
        push      rbp                                           ;238.1
$LN303:
        sub       rsp, 80                                       ;238.1
$LN304:
        lea       rbp, QWORD PTR [32+rsp]                       ;238.1
$LN305:
        mov       QWORD PTR [64+rbp], rcx                       ;238.1
$LN306:
        mov       rax, QWORD PTR [64+rbp]                       ;239.31
$LN307:
        mov       QWORD PTR [8+rbp], rax                        ;239.31
$LN308:
        mov       DWORD PTR [rbp], 0                            ;240.22
$LN309:
        mov       rax, QWORD PTR [8+rbp]                        ;241.19
$LN310:
        mov       rax, QWORD PTR [8+rax]                        ;241.19
$LN311:
        mov       QWORD PTR [16+rbp], rax                       ;241.19
$LN312:
        mov       rax, QWORD PTR [8+rbp]                        ;242.20
$LN313:
        mov       rax, QWORD PTR [24+rax]                       ;242.20
$LN314:
        mov       QWORD PTR [24+rbp], rax                       ;242.20
$LN315:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B3.2::                         ; Preds .B3.5 .B3.1
                                ; Execution count [0.00e+000]
$LN316:
        mov       rax, QWORD PTR [64+rbp]                       ;244.2
$LN317:
        test      rax, rax                                      ;244.2
$LN318:
        je        .B3.6         ; Prob 50%                      ;244.2
$LN319:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B3.3::                         ; Preds .B3.2
                                ; Execution count [0.00e+000]
$LN320:
        mov       rax, QWORD PTR [64+rbp]                       ;244.2
$LN321:
        mov       edx, 32                                       ;244.2
$LN322:
        mov       rcx, rax                                      ;244.2
$LN323:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;244.2
$LN324:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B3.11::                        ; Preds .B3.3
                                ; Execution count [0.00e+000]
$LN325:
        mov       DWORD PTR [4+rbp], eax                        ;244.2
$LN326:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B3.4::                         ; Preds .B3.11
                                ; Execution count [0.00e+000]
$LN327:
        mov       eax, DWORD PTR [4+rbp]                        ;244.2
$LN328:
        test      eax, eax                                      ;244.2
$LN329:
        je        .B3.6         ; Prob 50%                      ;244.2
$LN330:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B3.5::                         ; Preds .B3.4
                                ; Execution count [0.00e+000]
$LN331:
        mov       eax, 0                                        ;244.2
$LN332:
        test      eax, eax                                      ;244.2
$LN333:
        jne       .B3.2         ; Prob 0%                       ;244.2
$LN334:
        jmp       .B3.7         ; Prob 100%                     ;244.2
$LN335:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B3.6::                         ; Preds .B3.2 .B3.4
                                ; Execution count [0.00e+000]
$LN336:
        mov       eax, 2                                        ;244.2
$LN337:
        lea       rsp, QWORD PTR [48+rbp]                       ;244.2
$LN338:
        pop       rbp                                           ;244.2
$LN339:
        ret                                                     ;244.2
$LN340:
                                ; LOE
.B3.7::                         ; Preds .B3.5
                                ; Execution count [0.00e+000]
$LN341:
        mov       rax, QWORD PTR [16+rbp]                       ;246.2
$LN342:
        mov       rdx, QWORD PTR [8+rbp]                        ;246.2
$LN343:
        mov       rdx, QWORD PTR [16+rdx]                       ;246.2
$LN344:
        mov       rcx, QWORD PTR [24+rbp]                       ;246.2
$LN345:
        mov       QWORD PTR [40+rbp], rcx                       ;246.2[spill]
$LN346:
        mov       rcx, rax                                      ;246.2
$LN347:
        mov       rax, QWORD PTR [40+rbp]                       ;246.2[spill]
$LN348:
        mov       r8, rax                                       ;246.2
$LN349:
;       enclaveCryptoNoCopy(uint8_t *, size_t, uint8_t *)
        call      enclaveCryptoNoCopy                           ;246.2
$LN350:
                                ; LOE rax rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B3.12::                        ; Preds .B3.7
                                ; Execution count [0.00e+000]
$LN351:
        mov       QWORD PTR [32+rbp], rax                       ;246.2
$LN352:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B3.8::                         ; Preds .B3.12
                                ; Execution count [0.00e+000]
$LN353:
        mov       rax, QWORD PTR [8+rbp]                        ;246.2
$LN354:
        mov       rdx, QWORD PTR [32+rbp]                       ;246.2
$LN355:
        mov       QWORD PTR [rax], rdx                          ;246.2
$LN356:
        mov       eax, DWORD PTR [rbp]                          ;249.2
$LN357:
        lea       rsp, QWORD PTR [48+rbp]                       ;249.2
$LN358:
        pop       rbp                                           ;249.2
$LN359:
        ret                                                     ;249.2
$LN360:
                                ; LOE
.B3.9::
$LN361:
; mark_end;
sgx_enclaveCryptoNoCopy ENDP
$LNsgx_enclaveCryptoNoCopy$362:
;sgx_enclaveCryptoNoCopy	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$sgx_enclaveCryptoNoCopy
	ALIGN 004H
.unwind.sgx_enclaveCryptoNoCopy.B1_B8	DD	620956161
	DD	2449801994
	DD	20481
;.xdata$sgx_enclaveCryptoNoCopy	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$sgx_enclaveCryptoNoCopy
	ALIGN 004H
.pdata.sgx_enclaveCryptoNoCopy.B1_B8	DD	imagerel .B3.1
	DD	imagerel .B3.9
	DD	imagerel .unwind.sgx_enclaveCryptoNoCopy.B1_B8
;.pdata$sgx_enclaveCryptoNoCopy	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  sgx_enclaveCryptoNoCopy
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_enclaveIterate
TXTST3:
_2__routine_start_sgx_enclaveIterate_3:
; -- Begin  sgx_enclaveIterate
;sgx_enclaveIterate	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_enclaveIterate
; mark_begin;

; --- sgx_enclaveIterate(void *)
sgx_enclaveIterate	PROC PRIVATE
; parameter 1(pms): rcx
.B4.1::                         ; Preds .B4.0
                                ; Execution count [0.00e+000]
L25::
                                                          ;253.1
$LN363:
        push      rbp                                           ;253.1
$LN364:
        sub       rsp, 192                                      ;253.1
$LN365:
        lea       rbp, QWORD PTR [32+rsp]                       ;253.1
$LN366:
        mov       QWORD PTR [152+rbp], rdi                      ;253.1[spill]
$LN367:
        mov       QWORD PTR [144+rbp], rsi                      ;253.1[spill]
$LN368:
        mov       QWORD PTR [176+rbp], rcx                      ;253.1
$LN369:
        mov       rax, QWORD PTR [176+rbp]                      ;254.26
$LN370:
        mov       QWORD PTR [16+rbp], rax                       ;254.26
$LN371:
        mov       DWORD PTR [rbp], 0                            ;255.22
$LN372:
        mov       rax, QWORD PTR [16+rbp]                       ;256.19
$LN373:
        mov       rax, QWORD PTR [8+rax]                        ;256.19
$LN374:
        mov       QWORD PTR [24+rbp], rax                       ;256.19
$LN375:
        mov       rax, QWORD PTR [16+rbp]                       ;257.21
$LN376:
        mov       rax, QWORD PTR [16+rax]                       ;257.21
$LN377:
        mov       QWORD PTR [32+rbp], rax                       ;257.21
$LN378:
        mov       rax, QWORD PTR [32+rbp]                       ;258.17
$LN379:
        mov       QWORD PTR [40+rbp], rax                       ;258.17
$LN380:
        mov       QWORD PTR [48+rbp], 0                         ;259.18
$LN381:
        mov       rax, QWORD PTR [16+rbp]                       ;260.20
$LN382:
        mov       rax, QWORD PTR [24+rax]                       ;260.20
$LN383:
        mov       QWORD PTR [56+rbp], rax                       ;260.20
$LN384:
        mov       rax, QWORD PTR [32+rbp]                       ;261.18
$LN385:
        mov       QWORD PTR [64+rbp], rax                       ;261.18
$LN386:
        mov       QWORD PTR [72+rbp], 0                         ;262.19
$LN387:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.2::                         ; Preds .B4.5 .B4.1
                                ; Execution count [0.00e+000]
$LN388:
        mov       rax, QWORD PTR [176+rbp]                      ;264.2
$LN389:
        test      rax, rax                                      ;264.2
$LN390:
        je        .B4.6         ; Prob 50%                      ;264.2
$LN391:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.3::                         ; Preds .B4.2
                                ; Execution count [0.00e+000]
$LN392:
        mov       rax, QWORD PTR [176+rbp]                      ;264.2
$LN393:
        mov       edx, 32                                       ;264.2
$LN394:
        mov       rcx, rax                                      ;264.2
$LN395:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;264.2
$LN396:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.37::                        ; Preds .B4.3
                                ; Execution count [0.00e+000]
$LN397:
        mov       DWORD PTR [4+rbp], eax                        ;264.2
$LN398:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.4::                         ; Preds .B4.37
                                ; Execution count [0.00e+000]
$LN399:
        mov       eax, DWORD PTR [4+rbp]                        ;264.2
$LN400:
        test      eax, eax                                      ;264.2
$LN401:
        je        .B4.6         ; Prob 50%                      ;264.2
$LN402:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.5::                         ; Preds .B4.4
                                ; Execution count [0.00e+000]
$LN403:
        mov       eax, 0                                        ;264.2
$LN404:
        test      eax, eax                                      ;264.2
$LN405:
        jne       .B4.2         ; Prob 0%                       ;264.2
$LN406:
        jmp       .B4.7         ; Prob 100%                     ;264.2
$LN407:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.6::                         ; Preds .B4.2 .B4.4
                                ; Execution count [0.00e+000]
$LN408:
        mov       eax, 2                                        ;264.2
$LN409:
        mov       rsi, QWORD PTR [144+rbp]                      ;264.2[spill]
$LN410:
        mov       rdi, QWORD PTR [152+rbp]                      ;264.2[spill]
$LN411:
        lea       rsp, QWORD PTR [160+rbp]                      ;264.2
$LN412:
        pop       rbp                                           ;264.2
$LN413:
        ret                                                     ;264.2
$LN414:
                                ; LOE
.B4.7::                         ; Preds .B4.10 .B4.5
                                ; Execution count [0.00e+000]
$LN415:
        mov       rax, QWORD PTR [24+rbp]                       ;265.2
$LN416:
        test      rax, rax                                      ;265.2
$LN417:
        je        .B4.10        ; Prob 50%                      ;265.2
$LN418:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.8::                         ; Preds .B4.7
                                ; Execution count [0.00e+000]
$LN419:
        mov       rax, QWORD PTR [24+rbp]                       ;265.2
$LN420:
        mov       rdx, QWORD PTR [40+rbp]                       ;265.2
$LN421:
        mov       rcx, rax                                      ;265.2
$LN422:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;265.2
$LN423:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.38::                        ; Preds .B4.8
                                ; Execution count [0.00e+000]
$LN424:
        mov       DWORD PTR [8+rbp], eax                        ;265.2
$LN425:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.9::                         ; Preds .B4.38
                                ; Execution count [0.00e+000]
$LN426:
        mov       eax, DWORD PTR [8+rbp]                        ;265.2
$LN427:
        test      eax, eax                                      ;265.2
$LN428:
        je        .B4.11        ; Prob 50%                      ;265.2
$LN429:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.10::                        ; Preds .B4.9 .B4.7
                                ; Execution count [0.00e+000]
$LN430:
        mov       eax, 0                                        ;265.2
$LN431:
        test      eax, eax                                      ;265.2
$LN432:
        jne       .B4.7         ; Prob 0%                       ;265.2
$LN433:
        jmp       .B4.12        ; Prob 100%                     ;265.2
$LN434:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.11::                        ; Preds .B4.9
                                ; Execution count [0.00e+000]
$LN435:
        mov       eax, 2                                        ;265.2
$LN436:
        mov       rsi, QWORD PTR [144+rbp]                      ;265.2[spill]
$LN437:
        mov       rdi, QWORD PTR [152+rbp]                      ;265.2[spill]
$LN438:
        lea       rsp, QWORD PTR [160+rbp]                      ;265.2
$LN439:
        pop       rbp                                           ;265.2
$LN440:
        ret                                                     ;265.2
$LN441:
                                ; LOE
.B4.12::                        ; Preds .B4.15 .B4.10
                                ; Execution count [0.00e+000]
$LN442:
        mov       rax, QWORD PTR [56+rbp]                       ;266.2
$LN443:
        test      rax, rax                                      ;266.2
$LN444:
        je        .B4.15        ; Prob 50%                      ;266.2
$LN445:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.13::                        ; Preds .B4.12
                                ; Execution count [0.00e+000]
$LN446:
        mov       rax, QWORD PTR [56+rbp]                       ;266.2
$LN447:
        mov       rdx, QWORD PTR [64+rbp]                       ;266.2
$LN448:
        mov       rcx, rax                                      ;266.2
$LN449:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;266.2
$LN450:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.39::                        ; Preds .B4.13
                                ; Execution count [0.00e+000]
$LN451:
        mov       DWORD PTR [12+rbp], eax                       ;266.2
$LN452:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.14::                        ; Preds .B4.39
                                ; Execution count [0.00e+000]
$LN453:
        mov       eax, DWORD PTR [12+rbp]                       ;266.2
$LN454:
        test      eax, eax                                      ;266.2
$LN455:
        je        .B4.16        ; Prob 50%                      ;266.2
$LN456:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.15::                        ; Preds .B4.14 .B4.12
                                ; Execution count [0.00e+000]
$LN457:
        mov       eax, 0                                        ;266.2
$LN458:
        test      eax, eax                                      ;266.2
$LN459:
        jne       .B4.12        ; Prob 0%                       ;266.2
$LN460:
        jmp       .B4.17        ; Prob 100%                     ;266.2
$LN461:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.16::                        ; Preds .B4.14
                                ; Execution count [0.00e+000]
$LN462:
        mov       eax, 2                                        ;266.2
$LN463:
        mov       rsi, QWORD PTR [144+rbp]                      ;266.2[spill]
$LN464:
        mov       rdi, QWORD PTR [152+rbp]                      ;266.2[spill]
$LN465:
        lea       rsp, QWORD PTR [160+rbp]                      ;266.2
$LN466:
        pop       rbp                                           ;266.2
$LN467:
        ret                                                     ;266.2
$LN468:
                                ; LOE
.B4.17::                        ; Preds .B4.15
                                ; Execution count [0.00e+000]
$LN469:
        mov       rax, QWORD PTR [24+rbp]                       ;268.2
$LN470:
        test      rax, rax                                      ;268.2
$LN471:
        je        .B4.22        ; Prob 50%                      ;268.2
$LN472:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.18::                        ; Preds .B4.17
                                ; Execution count [0.00e+000]
$LN473:
        mov       rax, QWORD PTR [40+rbp]                       ;269.3
$LN474:
        mov       rcx, rax                                      ;269.3
$LN475:
;       malloc(size_t)
        call      malloc                                        ;269.3
$LN476:
                                ; LOE rax rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.40::                        ; Preds .B4.18
                                ; Execution count [0.00e+000]
$LN477:
        mov       QWORD PTR [80+rbp], rax                       ;269.3
$LN478:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.19::                        ; Preds .B4.40
                                ; Execution count [0.00e+000]
$LN479:
        mov       rax, QWORD PTR [80+rbp]                       ;269.3
$LN480:
        mov       QWORD PTR [48+rbp], rax                       ;269.3
$LN481:
        mov       rax, QWORD PTR [48+rbp]                       ;270.3
$LN482:
        test      rax, rax                                      ;270.3
$LN483:
        jne       .B4.21        ; Prob 50%                      ;270.3
$LN484:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.20::                        ; Preds .B4.19
                                ; Execution count [0.00e+000]
$LN485:
        mov       DWORD PTR [rbp], 3                            ;271.4
$LN486:
        jmp       .B4.29        ; Prob 100%                     ;271.4
$LN487:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.21::                        ; Preds .B4.19
                                ; Execution count [0.00e+000]
$LN488:
        mov       rax, QWORD PTR [48+rbp]                       ;275.3
$LN489:
        mov       rdx, QWORD PTR [24+rbp]                       ;275.3
$LN490:
        mov       rcx, QWORD PTR [40+rbp]                       ;275.3
$LN491:
        mov       rdi, rax                                      ;275.3
$LN492:
        mov       rsi, rdx                                      ;275.3
$LN493:
        mov       rdx, rdi                                      ;275.3
$LN494:
        mov       eax, ecx                                      ;275.3
$LN495:
        shr       rcx, 2                                        ;275.3
$LN496:
        rep   movsd                                             ;275.3
$LN497:
        mov       ecx, eax                                      ;275.3
$LN498:
        and       ecx, 3                                        ;275.3
$LN499:
        rep   movsb                                             ;275.3
$LN500:
        mov       rax, rdx                                      ;275.3
$LN501:
                                ; LOE rax rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.41::                        ; Preds .B4.21
                                ; Execution count [0.00e+000]
$LN502:
        mov       QWORD PTR [104+rbp], rax                      ;275.3
$LN503:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.22::                        ; Preds .B4.41 .B4.17
                                ; Execution count [0.00e+000]
$LN504:
        mov       rax, QWORD PTR [56+rbp]                       ;277.2
$LN505:
        test      rax, rax                                      ;277.2
$LN506:
        je        .B4.27        ; Prob 50%                      ;277.2
$LN507:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.23::                        ; Preds .B4.22
                                ; Execution count [0.00e+000]
$LN508:
        mov       rax, QWORD PTR [64+rbp]                       ;278.3
$LN509:
        mov       rcx, rax                                      ;278.3
$LN510:
;       malloc(size_t)
        call      malloc                                        ;278.3
$LN511:
                                ; LOE rax rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.42::                        ; Preds .B4.23
                                ; Execution count [0.00e+000]
$LN512:
        mov       QWORD PTR [88+rbp], rax                       ;278.3
$LN513:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.24::                        ; Preds .B4.42
                                ; Execution count [0.00e+000]
$LN514:
        mov       rax, QWORD PTR [88+rbp]                       ;278.3
$LN515:
        mov       QWORD PTR [112+rbp], rax                      ;278.3
$LN516:
        mov       rax, QWORD PTR [112+rbp]                      ;278.3
$LN517:
        mov       QWORD PTR [72+rbp], rax                       ;278.3
$LN518:
        mov       rax, QWORD PTR [112+rbp]                      ;278.3
$LN519:
        test      rax, rax                                      ;278.3
$LN520:
        jne       .B4.26        ; Prob 50%                      ;278.3
$LN521:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.25::                        ; Preds .B4.24
                                ; Execution count [0.00e+000]
$LN522:
        mov       DWORD PTR [rbp], 3                            ;279.4
$LN523:
        jmp       .B4.29        ; Prob 100%                     ;279.4
$LN524:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.26::                        ; Preds .B4.24
                                ; Execution count [0.00e+000]
$LN525:
        mov       rax, QWORD PTR [72+rbp]                       ;283.3
$LN526:
        mov       edx, 0                                        ;283.3
$LN527:
        mov       rcx, QWORD PTR [64+rbp]                       ;283.3
$LN528:
        mov       rdi, rax                                      ;283.3
$LN529:
        mov       eax, edx                                      ;283.3
$LN530:
        and       eax, 65535                                    ;283.3
$LN531:
        mov       ah, al                                        ;283.3
$LN532:
        mov       edx, eax                                      ;283.3
$LN533:
        shl       eax, 16                                       ;283.3
$LN534:
        or        eax, edx                                      ;283.3
$LN535:
        mov       esi, ecx                                      ;283.3
$LN536:
        shr       rcx, 2                                        ;283.3
$LN537:
        mov       rdx, rdi                                      ;283.3
$LN538:
        rep   stosd                                             ;283.3
$LN539:
        mov       ecx, esi                                      ;283.3
$LN540:
        and       ecx, 3                                        ;283.3
$LN541:
        rep   stosb                                             ;283.3
$LN542:
        mov       rax, rdx                                      ;283.3
$LN543:
                                ; LOE rax rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.43::                        ; Preds .B4.26
                                ; Execution count [0.00e+000]
$LN544:
        mov       QWORD PTR [120+rbp], rax                      ;283.3
$LN545:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.27::                        ; Preds .B4.43 .B4.22
                                ; Execution count [0.00e+000]
$LN546:
        mov       rax, QWORD PTR [48+rbp]                       ;285.2
$LN547:
        mov       rdx, QWORD PTR [32+rbp]                       ;285.2
$LN548:
        mov       rcx, QWORD PTR [72+rbp]                       ;285.2
$LN549:
        mov       QWORD PTR [136+rbp], rcx                      ;285.2[spill]
$LN550:
        mov       rcx, rax                                      ;285.2
$LN551:
        mov       rax, QWORD PTR [136+rbp]                      ;285.2[spill]
$LN552:
        mov       r8, rax                                       ;285.2
$LN553:
;       enclaveIterate(uint8_t *, size_t, uint8_t *)
        call      enclaveIterate                                ;285.2
$LN554:
                                ; LOE rax rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.44::                        ; Preds .B4.27
                                ; Execution count [0.00e+000]
$LN555:
        mov       QWORD PTR [96+rbp], rax                       ;285.2
$LN556:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.28::                        ; Preds .B4.44
                                ; Execution count [0.00e+000]
$LN557:
        mov       rax, QWORD PTR [16+rbp]                       ;285.2
$LN558:
        mov       rdx, QWORD PTR [96+rbp]                       ;285.2
$LN559:
        mov       QWORD PTR [rax], rdx                          ;285.2
$LN560:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.29::                        ; Preds .B4.28 .B4.25 .B4.20
                                ; Execution count [0.00e+000]
$LN561:
        mov       rax, QWORD PTR [48+rbp]                       ;287.2
$LN562:
        test      rax, rax                                      ;287.2
$LN563:
        je        .B4.31        ; Prob 50%                      ;287.2
$LN564:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.30::                        ; Preds .B4.29
                                ; Execution count [0.00e+000]
$LN565:
        mov       rax, QWORD PTR [48+rbp]                       ;287.14
$LN566:
        mov       rcx, rax                                      ;287.14
$LN567:
;       free(void *)
        call      free                                          ;287.14
$LN568:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.45::                        ; Preds .B4.30
                                ; Execution count [0.00e+000]
$LN569:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.31::                        ; Preds .B4.45 .B4.29
                                ; Execution count [0.00e+000]
$LN570:
        mov       rax, QWORD PTR [72+rbp]                       ;288.2
$LN571:
        test      rax, rax                                      ;288.2
$LN572:
        je        .B4.34        ; Prob 50%                      ;288.2
$LN573:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.32::                        ; Preds .B4.31
                                ; Execution count [0.00e+000]
$LN574:
        mov       rax, QWORD PTR [56+rbp]                       ;289.3
$LN575:
        mov       rdx, QWORD PTR [72+rbp]                       ;289.3
$LN576:
        mov       rcx, QWORD PTR [64+rbp]                       ;289.3
$LN577:
        mov       rdi, rax                                      ;289.3
$LN578:
        mov       rsi, rdx                                      ;289.3
$LN579:
        mov       rdx, rdi                                      ;289.3
$LN580:
        mov       eax, ecx                                      ;289.3
$LN581:
        shr       rcx, 2                                        ;289.3
$LN582:
        rep   movsd                                             ;289.3
$LN583:
        mov       ecx, eax                                      ;289.3
$LN584:
        and       ecx, 3                                        ;289.3
$LN585:
        rep   movsb                                             ;289.3
$LN586:
        mov       rax, rdx                                      ;289.3
$LN587:
                                ; LOE rax rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.46::                        ; Preds .B4.32
                                ; Execution count [0.00e+000]
$LN588:
        mov       QWORD PTR [128+rbp], rax                      ;289.3
$LN589:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.33::                        ; Preds .B4.46
                                ; Execution count [0.00e+000]
$LN590:
        mov       rax, QWORD PTR [72+rbp]                       ;290.3
$LN591:
        mov       rcx, rax                                      ;290.3
$LN592:
;       free(void *)
        call      free                                          ;290.3
$LN593:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.47::                        ; Preds .B4.33
                                ; Execution count [0.00e+000]
$LN594:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B4.34::                        ; Preds .B4.47 .B4.31
                                ; Execution count [0.00e+000]
$LN595:
        mov       eax, DWORD PTR [rbp]                          ;293.2
$LN596:
        mov       rsi, QWORD PTR [144+rbp]                      ;293.2[spill]
$LN597:
        mov       rdi, QWORD PTR [152+rbp]                      ;293.2[spill]
$LN598:
        lea       rsp, QWORD PTR [160+rbp]                      ;293.2
$LN599:
        pop       rbp                                           ;293.2
$LN600:
        ret                                                     ;293.2
$LN601:
                                ; LOE
.B4.35::
$LN602:
; mark_end;
sgx_enclaveIterate ENDP
$LNsgx_enclaveIterate$603:
;sgx_enclaveIterate	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$sgx_enclaveIterate
	ALIGN 004H
.unwind.sgx_enclaveIterate.B1_B34	DD	621288193
	DD	1467419
	DD	1537044
	DD	17302285
	DD	1342242840
;.xdata$sgx_enclaveIterate	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$sgx_enclaveIterate
	ALIGN 004H
.pdata.sgx_enclaveIterate.B1_B34	DD	imagerel .B4.1
	DD	imagerel .B4.35
	DD	imagerel .unwind.sgx_enclaveIterate.B1_B34
;.pdata$sgx_enclaveIterate	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  sgx_enclaveIterate
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_enclaveVByteEncode
TXTST4:
_2__routine_start_sgx_enclaveVByteEncode_4:
; -- Begin  sgx_enclaveVByteEncode
;sgx_enclaveVByteEncode	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_enclaveVByteEncode
; mark_begin;

; --- sgx_enclaveVByteEncode(void *)
sgx_enclaveVByteEncode	PROC PRIVATE
; parameter 1(pms): rcx
.B5.1::                         ; Preds .B5.0
                                ; Execution count [0.00e+000]
L34::
                                                          ;297.1
$LN604:
        push      rbp                                           ;297.1
$LN605:
        sub       rsp, 208                                      ;297.1
$LN606:
        lea       rbp, QWORD PTR [32+rsp]                       ;297.1
$LN607:
        mov       QWORD PTR [168+rbp], rdi                      ;297.1[spill]
$LN608:
        mov       QWORD PTR [160+rbp], rsi                      ;297.1[spill]
$LN609:
        mov       QWORD PTR [152+rbp], rbx                      ;297.1[spill]
$LN610:
        mov       QWORD PTR [192+rbp], rcx                      ;297.1
$LN611:
        mov       rax, QWORD PTR [192+rbp]                      ;298.30
$LN612:
        mov       QWORD PTR [16+rbp], rax                       ;298.30
$LN613:
        mov       DWORD PTR [rbp], 0                            ;299.22
$LN614:
        mov       rax, QWORD PTR [16+rbp]                       ;300.19
$LN615:
        mov       rax, QWORD PTR [8+rax]                        ;300.19
$LN616:
        mov       QWORD PTR [24+rbp], rax                       ;300.19
$LN617:
        mov       rax, QWORD PTR [16+rbp]                       ;301.23
$LN618:
        mov       rax, QWORD PTR [16+rax]                       ;301.23
$LN619:
        mov       QWORD PTR [32+rbp], rax                       ;301.23
$LN620:
        mov       rax, QWORD PTR [32+rbp]                       ;302.17
$LN621:
        mov       QWORD PTR [40+rbp], rax                       ;302.17
$LN622:
        mov       QWORD PTR [48+rbp], 0                         ;303.18
$LN623:
        mov       rax, QWORD PTR [16+rbp]                       ;304.20
$LN624:
        mov       rax, QWORD PTR [24+rax]                       ;304.20
$LN625:
        mov       QWORD PTR [56+rbp], rax                       ;304.20
$LN626:
        mov       rax, QWORD PTR [16+rbp]                       ;305.24
$LN627:
        mov       rax, QWORD PTR [32+rax]                       ;305.24
$LN628:
        mov       QWORD PTR [64+rbp], rax                       ;305.24
$LN629:
        mov       rax, QWORD PTR [64+rbp]                       ;306.18
$LN630:
        mov       QWORD PTR [72+rbp], rax                       ;306.18
$LN631:
        mov       QWORD PTR [80+rbp], 0                         ;307.19
$LN632:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.2::                         ; Preds .B5.5 .B5.1
                                ; Execution count [0.00e+000]
$LN633:
        mov       rax, QWORD PTR [192+rbp]                      ;309.2
$LN634:
        test      rax, rax                                      ;309.2
$LN635:
        je        .B5.6         ; Prob 50%                      ;309.2
$LN636:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.3::                         ; Preds .B5.2
                                ; Execution count [0.00e+000]
$LN637:
        mov       rax, QWORD PTR [192+rbp]                      ;309.2
$LN638:
        mov       edx, 40                                       ;309.2
$LN639:
        mov       rcx, rax                                      ;309.2
$LN640:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;309.2
$LN641:
                                ; LOE rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.37::                        ; Preds .B5.3
                                ; Execution count [0.00e+000]
$LN642:
        mov       DWORD PTR [4+rbp], eax                        ;309.2
$LN643:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.4::                         ; Preds .B5.37
                                ; Execution count [0.00e+000]
$LN644:
        mov       eax, DWORD PTR [4+rbp]                        ;309.2
$LN645:
        test      eax, eax                                      ;309.2
$LN646:
        je        .B5.6         ; Prob 50%                      ;309.2
$LN647:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.5::                         ; Preds .B5.4
                                ; Execution count [0.00e+000]
$LN648:
        mov       eax, 0                                        ;309.2
$LN649:
        test      eax, eax                                      ;309.2
$LN650:
        jne       .B5.2         ; Prob 0%                       ;309.2
$LN651:
        jmp       .B5.7         ; Prob 100%                     ;309.2
$LN652:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.6::                         ; Preds .B5.2 .B5.4
                                ; Execution count [0.00e+000]
$LN653:
        mov       eax, 2                                        ;309.2
$LN654:
        mov       rbx, QWORD PTR [152+rbp]                      ;309.2[spill]
$LN655:
        mov       rsi, QWORD PTR [160+rbp]                      ;309.2[spill]
$LN656:
        mov       rdi, QWORD PTR [168+rbp]                      ;309.2[spill]
$LN657:
        lea       rsp, QWORD PTR [176+rbp]                      ;309.2
$LN658:
        pop       rbp                                           ;309.2
$LN659:
        ret                                                     ;309.2
$LN660:
                                ; LOE
.B5.7::                         ; Preds .B5.10 .B5.5
                                ; Execution count [0.00e+000]
$LN661:
        mov       rax, QWORD PTR [24+rbp]                       ;310.2
$LN662:
        test      rax, rax                                      ;310.2
$LN663:
        je        .B5.10        ; Prob 50%                      ;310.2
$LN664:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.8::                         ; Preds .B5.7
                                ; Execution count [0.00e+000]
$LN665:
        mov       rax, QWORD PTR [24+rbp]                       ;310.2
$LN666:
        mov       rdx, QWORD PTR [40+rbp]                       ;310.2
$LN667:
        mov       rcx, rax                                      ;310.2
$LN668:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;310.2
$LN669:
                                ; LOE rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.38::                        ; Preds .B5.8
                                ; Execution count [0.00e+000]
$LN670:
        mov       DWORD PTR [8+rbp], eax                        ;310.2
$LN671:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.9::                         ; Preds .B5.38
                                ; Execution count [0.00e+000]
$LN672:
        mov       eax, DWORD PTR [8+rbp]                        ;310.2
$LN673:
        test      eax, eax                                      ;310.2
$LN674:
        je        .B5.11        ; Prob 50%                      ;310.2
$LN675:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.10::                        ; Preds .B5.9 .B5.7
                                ; Execution count [0.00e+000]
$LN676:
        mov       eax, 0                                        ;310.2
$LN677:
        test      eax, eax                                      ;310.2
$LN678:
        jne       .B5.7         ; Prob 0%                       ;310.2
$LN679:
        jmp       .B5.12        ; Prob 100%                     ;310.2
$LN680:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.11::                        ; Preds .B5.9
                                ; Execution count [0.00e+000]
$LN681:
        mov       eax, 2                                        ;310.2
$LN682:
        mov       rbx, QWORD PTR [152+rbp]                      ;310.2[spill]
$LN683:
        mov       rsi, QWORD PTR [160+rbp]                      ;310.2[spill]
$LN684:
        mov       rdi, QWORD PTR [168+rbp]                      ;310.2[spill]
$LN685:
        lea       rsp, QWORD PTR [176+rbp]                      ;310.2
$LN686:
        pop       rbp                                           ;310.2
$LN687:
        ret                                                     ;310.2
$LN688:
                                ; LOE
.B5.12::                        ; Preds .B5.15 .B5.10
                                ; Execution count [0.00e+000]
$LN689:
        mov       rax, QWORD PTR [56+rbp]                       ;311.2
$LN690:
        test      rax, rax                                      ;311.2
$LN691:
        je        .B5.15        ; Prob 50%                      ;311.2
$LN692:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.13::                        ; Preds .B5.12
                                ; Execution count [0.00e+000]
$LN693:
        mov       rax, QWORD PTR [56+rbp]                       ;311.2
$LN694:
        mov       rdx, QWORD PTR [72+rbp]                       ;311.2
$LN695:
        mov       rcx, rax                                      ;311.2
$LN696:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;311.2
$LN697:
                                ; LOE rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.39::                        ; Preds .B5.13
                                ; Execution count [0.00e+000]
$LN698:
        mov       DWORD PTR [12+rbp], eax                       ;311.2
$LN699:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.14::                        ; Preds .B5.39
                                ; Execution count [0.00e+000]
$LN700:
        mov       eax, DWORD PTR [12+rbp]                       ;311.2
$LN701:
        test      eax, eax                                      ;311.2
$LN702:
        je        .B5.16        ; Prob 50%                      ;311.2
$LN703:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.15::                        ; Preds .B5.14 .B5.12
                                ; Execution count [0.00e+000]
$LN704:
        mov       eax, 0                                        ;311.2
$LN705:
        test      eax, eax                                      ;311.2
$LN706:
        jne       .B5.12        ; Prob 0%                       ;311.2
$LN707:
        jmp       .B5.17        ; Prob 100%                     ;311.2
$LN708:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.16::                        ; Preds .B5.14
                                ; Execution count [0.00e+000]
$LN709:
        mov       eax, 2                                        ;311.2
$LN710:
        mov       rbx, QWORD PTR [152+rbp]                      ;311.2[spill]
$LN711:
        mov       rsi, QWORD PTR [160+rbp]                      ;311.2[spill]
$LN712:
        mov       rdi, QWORD PTR [168+rbp]                      ;311.2[spill]
$LN713:
        lea       rsp, QWORD PTR [176+rbp]                      ;311.2
$LN714:
        pop       rbp                                           ;311.2
$LN715:
        ret                                                     ;311.2
$LN716:
                                ; LOE
.B5.17::                        ; Preds .B5.15
                                ; Execution count [0.00e+000]
$LN717:
        mov       rax, QWORD PTR [24+rbp]                       ;313.2
$LN718:
        test      rax, rax                                      ;313.2
$LN719:
        je        .B5.22        ; Prob 50%                      ;313.2
$LN720:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.18::                        ; Preds .B5.17
                                ; Execution count [0.00e+000]
$LN721:
        mov       rax, QWORD PTR [40+rbp]                       ;314.3
$LN722:
        mov       rcx, rax                                      ;314.3
$LN723:
;       malloc(size_t)
        call      malloc                                        ;314.3
$LN724:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.40::                        ; Preds .B5.18
                                ; Execution count [0.00e+000]
$LN725:
        mov       QWORD PTR [88+rbp], rax                       ;314.3
$LN726:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.19::                        ; Preds .B5.40
                                ; Execution count [0.00e+000]
$LN727:
        mov       rax, QWORD PTR [88+rbp]                       ;314.3
$LN728:
        mov       QWORD PTR [48+rbp], rax                       ;314.3
$LN729:
        mov       rax, QWORD PTR [48+rbp]                       ;315.3
$LN730:
        test      rax, rax                                      ;315.3
$LN731:
        jne       .B5.21        ; Prob 50%                      ;315.3
$LN732:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.20::                        ; Preds .B5.19
                                ; Execution count [0.00e+000]
$LN733:
        mov       DWORD PTR [rbp], 3                            ;316.4
$LN734:
        jmp       .B5.29        ; Prob 100%                     ;316.4
$LN735:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.21::                        ; Preds .B5.19
                                ; Execution count [0.00e+000]
$LN736:
        mov       rax, QWORD PTR [48+rbp]                       ;320.3
$LN737:
        mov       rdx, QWORD PTR [24+rbp]                       ;320.3
$LN738:
        mov       rcx, QWORD PTR [40+rbp]                       ;320.3
$LN739:
        mov       rdi, rax                                      ;320.3
$LN740:
        mov       rsi, rdx                                      ;320.3
$LN741:
        mov       rdx, rdi                                      ;320.3
$LN742:
        mov       eax, ecx                                      ;320.3
$LN743:
        shr       rcx, 2                                        ;320.3
$LN744:
        rep   movsd                                             ;320.3
$LN745:
        mov       ecx, eax                                      ;320.3
$LN746:
        and       ecx, 3                                        ;320.3
$LN747:
        rep   movsb                                             ;320.3
$LN748:
        mov       rax, rdx                                      ;320.3
$LN749:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.41::                        ; Preds .B5.21
                                ; Execution count [0.00e+000]
$LN750:
        mov       QWORD PTR [112+rbp], rax                      ;320.3
$LN751:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.22::                        ; Preds .B5.41 .B5.17
                                ; Execution count [0.00e+000]
$LN752:
        mov       rax, QWORD PTR [56+rbp]                       ;322.2
$LN753:
        test      rax, rax                                      ;322.2
$LN754:
        je        .B5.27        ; Prob 50%                      ;322.2
$LN755:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.23::                        ; Preds .B5.22
                                ; Execution count [0.00e+000]
$LN756:
        mov       rax, QWORD PTR [72+rbp]                       ;323.3
$LN757:
        mov       rcx, rax                                      ;323.3
$LN758:
;       malloc(size_t)
        call      malloc                                        ;323.3
$LN759:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.42::                        ; Preds .B5.23
                                ; Execution count [0.00e+000]
$LN760:
        mov       QWORD PTR [96+rbp], rax                       ;323.3
$LN761:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.24::                        ; Preds .B5.42
                                ; Execution count [0.00e+000]
$LN762:
        mov       rax, QWORD PTR [96+rbp]                       ;323.3
$LN763:
        mov       QWORD PTR [120+rbp], rax                      ;323.3
$LN764:
        mov       rax, QWORD PTR [120+rbp]                      ;323.3
$LN765:
        mov       QWORD PTR [80+rbp], rax                       ;323.3
$LN766:
        mov       rax, QWORD PTR [120+rbp]                      ;323.3
$LN767:
        test      rax, rax                                      ;323.3
$LN768:
        jne       .B5.26        ; Prob 50%                      ;323.3
$LN769:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.25::                        ; Preds .B5.24
                                ; Execution count [0.00e+000]
$LN770:
        mov       DWORD PTR [rbp], 3                            ;324.4
$LN771:
        jmp       .B5.29        ; Prob 100%                     ;324.4
$LN772:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.26::                        ; Preds .B5.24
                                ; Execution count [0.00e+000]
$LN773:
        mov       rax, QWORD PTR [80+rbp]                       ;328.3
$LN774:
        mov       edx, 0                                        ;328.3
$LN775:
        mov       rcx, QWORD PTR [72+rbp]                       ;328.3
$LN776:
        mov       rdi, rax                                      ;328.3
$LN777:
        mov       eax, edx                                      ;328.3
$LN778:
        and       eax, 65535                                    ;328.3
$LN779:
        mov       ah, al                                        ;328.3
$LN780:
        mov       edx, eax                                      ;328.3
$LN781:
        shl       eax, 16                                       ;328.3
$LN782:
        or        eax, edx                                      ;328.3
$LN783:
        mov       esi, ecx                                      ;328.3
$LN784:
        shr       rcx, 2                                        ;328.3
$LN785:
        mov       rdx, rdi                                      ;328.3
$LN786:
        rep   stosd                                             ;328.3
$LN787:
        mov       ecx, esi                                      ;328.3
$LN788:
        and       ecx, 3                                        ;328.3
$LN789:
        rep   stosb                                             ;328.3
$LN790:
        mov       rax, rdx                                      ;328.3
$LN791:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.43::                        ; Preds .B5.26
                                ; Execution count [0.00e+000]
$LN792:
        mov       QWORD PTR [128+rbp], rax                      ;328.3
$LN793:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.27::                        ; Preds .B5.43 .B5.22
                                ; Execution count [0.00e+000]
$LN794:
        mov       rax, QWORD PTR [48+rbp]                       ;330.2
$LN795:
        mov       rdx, QWORD PTR [32+rbp]                       ;330.2
$LN796:
        mov       rcx, QWORD PTR [80+rbp]                       ;330.2
$LN797:
        mov       rbx, QWORD PTR [64+rbp]                       ;330.2
$LN798:
        mov       QWORD PTR [144+rbp], rcx                      ;330.2[spill]
$LN799:
        mov       rcx, rax                                      ;330.2
$LN800:
        mov       rax, QWORD PTR [144+rbp]                      ;330.2[spill]
$LN801:
        mov       r8, rax                                       ;330.2
$LN802:
        mov       r9, rbx                                       ;330.2
$LN803:
;       enclaveVByteEncode(uint8_t *, size_t, uint8_t *, size_t)
        call      enclaveVByteEncode                            ;330.2
$LN804:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.44::                        ; Preds .B5.27
                                ; Execution count [0.00e+000]
$LN805:
        mov       QWORD PTR [104+rbp], rax                      ;330.2
$LN806:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.28::                        ; Preds .B5.44
                                ; Execution count [0.00e+000]
$LN807:
        mov       rax, QWORD PTR [16+rbp]                       ;330.2
$LN808:
        mov       rdx, QWORD PTR [104+rbp]                      ;330.2
$LN809:
        mov       QWORD PTR [rax], rdx                          ;330.2
$LN810:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.29::                        ; Preds .B5.28 .B5.25 .B5.20
                                ; Execution count [0.00e+000]
$LN811:
        mov       rax, QWORD PTR [48+rbp]                       ;332.2
$LN812:
        test      rax, rax                                      ;332.2
$LN813:
        je        .B5.31        ; Prob 50%                      ;332.2
$LN814:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.30::                        ; Preds .B5.29
                                ; Execution count [0.00e+000]
$LN815:
        mov       rax, QWORD PTR [48+rbp]                       ;332.14
$LN816:
        mov       rcx, rax                                      ;332.14
$LN817:
;       free(void *)
        call      free                                          ;332.14
$LN818:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.45::                        ; Preds .B5.30
                                ; Execution count [0.00e+000]
$LN819:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.31::                        ; Preds .B5.45 .B5.29
                                ; Execution count [0.00e+000]
$LN820:
        mov       rax, QWORD PTR [80+rbp]                       ;333.2
$LN821:
        test      rax, rax                                      ;333.2
$LN822:
        je        .B5.34        ; Prob 50%                      ;333.2
$LN823:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.32::                        ; Preds .B5.31
                                ; Execution count [0.00e+000]
$LN824:
        mov       rax, QWORD PTR [56+rbp]                       ;334.3
$LN825:
        mov       rdx, QWORD PTR [80+rbp]                       ;334.3
$LN826:
        mov       rcx, QWORD PTR [72+rbp]                       ;334.3
$LN827:
        mov       rdi, rax                                      ;334.3
$LN828:
        mov       rsi, rdx                                      ;334.3
$LN829:
        mov       rdx, rdi                                      ;334.3
$LN830:
        mov       eax, ecx                                      ;334.3
$LN831:
        shr       rcx, 2                                        ;334.3
$LN832:
        rep   movsd                                             ;334.3
$LN833:
        mov       ecx, eax                                      ;334.3
$LN834:
        and       ecx, 3                                        ;334.3
$LN835:
        rep   movsb                                             ;334.3
$LN836:
        mov       rax, rdx                                      ;334.3
$LN837:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.46::                        ; Preds .B5.32
                                ; Execution count [0.00e+000]
$LN838:
        mov       QWORD PTR [136+rbp], rax                      ;334.3
$LN839:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.33::                        ; Preds .B5.46
                                ; Execution count [0.00e+000]
$LN840:
        mov       rax, QWORD PTR [80+rbp]                       ;335.3
$LN841:
        mov       rcx, rax                                      ;335.3
$LN842:
;       free(void *)
        call      free                                          ;335.3
$LN843:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.47::                        ; Preds .B5.33
                                ; Execution count [0.00e+000]
$LN844:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B5.34::                        ; Preds .B5.47 .B5.31
                                ; Execution count [0.00e+000]
$LN845:
        mov       eax, DWORD PTR [rbp]                          ;338.2
$LN846:
        mov       rbx, QWORD PTR [152+rbp]                      ;338.2[spill]
$LN847:
        mov       rsi, QWORD PTR [160+rbp]                      ;338.2[spill]
$LN848:
        mov       rdi, QWORD PTR [168+rbp]                      ;338.2[spill]
$LN849:
        lea       rsp, QWORD PTR [176+rbp]                      ;338.2
$LN850:
        pop       rbp                                           ;338.2
$LN851:
        ret                                                     ;338.2
$LN852:
                                ; LOE
.B5.35::
$LN853:
; mark_end;
sgx_enclaveVByteEncode ENDP
$LNsgx_enclaveVByteEncode$854:
;sgx_enclaveVByteEncode	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$sgx_enclaveVByteEncode
	ALIGN 004H
.unwind.sgx_enclaveVByteEncode.B1_B34	DD	621421057
	DD	1520674
	DD	1598491
	DD	1668116
	DD	17302285
	DD	1342242842
;.xdata$sgx_enclaveVByteEncode	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$sgx_enclaveVByteEncode
	ALIGN 004H
.pdata.sgx_enclaveVByteEncode.B1_B34	DD	imagerel .B5.1
	DD	imagerel .B5.35
	DD	imagerel .unwind.sgx_enclaveVByteEncode.B1_B34
;.pdata$sgx_enclaveVByteEncode	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  sgx_enclaveVByteEncode
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_enclaveVByteDecode
TXTST5:
_2__routine_start_sgx_enclaveVByteDecode_5:
; -- Begin  sgx_enclaveVByteDecode
;sgx_enclaveVByteDecode	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_enclaveVByteDecode
; mark_begin;

; --- sgx_enclaveVByteDecode(void *)
sgx_enclaveVByteDecode	PROC PRIVATE
; parameter 1(pms): rcx
.B6.1::                         ; Preds .B6.0
                                ; Execution count [0.00e+000]
L43::
                                                          ;342.1
$LN855:
        push      rbp                                           ;342.1
$LN856:
        sub       rsp, 208                                      ;342.1
$LN857:
        lea       rbp, QWORD PTR [32+rsp]                       ;342.1
$LN858:
        mov       QWORD PTR [168+rbp], rdi                      ;342.1[spill]
$LN859:
        mov       QWORD PTR [160+rbp], rsi                      ;342.1[spill]
$LN860:
        mov       QWORD PTR [152+rbp], rbx                      ;342.1[spill]
$LN861:
        mov       QWORD PTR [192+rbp], rcx                      ;342.1
$LN862:
        mov       rax, QWORD PTR [192+rbp]                      ;343.30
$LN863:
        mov       QWORD PTR [16+rbp], rax                       ;343.30
$LN864:
        mov       DWORD PTR [rbp], 0                            ;344.22
$LN865:
        mov       rax, QWORD PTR [16+rbp]                       ;345.19
$LN866:
        mov       rax, QWORD PTR [8+rax]                        ;345.19
$LN867:
        mov       QWORD PTR [24+rbp], rax                       ;345.19
$LN868:
        mov       rax, QWORD PTR [16+rbp]                       ;346.23
$LN869:
        mov       rax, QWORD PTR [16+rax]                       ;346.23
$LN870:
        mov       QWORD PTR [32+rbp], rax                       ;346.23
$LN871:
        mov       rax, QWORD PTR [32+rbp]                       ;347.17
$LN872:
        mov       QWORD PTR [40+rbp], rax                       ;347.17
$LN873:
        mov       QWORD PTR [48+rbp], 0                         ;348.18
$LN874:
        mov       rax, QWORD PTR [16+rbp]                       ;349.20
$LN875:
        mov       rax, QWORD PTR [24+rax]                       ;349.20
$LN876:
        mov       QWORD PTR [56+rbp], rax                       ;349.20
$LN877:
        mov       rax, QWORD PTR [16+rbp]                       ;350.24
$LN878:
        mov       rax, QWORD PTR [32+rax]                       ;350.24
$LN879:
        mov       QWORD PTR [64+rbp], rax                       ;350.24
$LN880:
        mov       rax, QWORD PTR [64+rbp]                       ;351.18
$LN881:
        mov       QWORD PTR [72+rbp], rax                       ;351.18
$LN882:
        mov       QWORD PTR [80+rbp], 0                         ;352.19
$LN883:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.2::                         ; Preds .B6.5 .B6.1
                                ; Execution count [0.00e+000]
$LN884:
        mov       rax, QWORD PTR [192+rbp]                      ;354.2
$LN885:
        test      rax, rax                                      ;354.2
$LN886:
        je        .B6.6         ; Prob 50%                      ;354.2
$LN887:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.3::                         ; Preds .B6.2
                                ; Execution count [0.00e+000]
$LN888:
        mov       rax, QWORD PTR [192+rbp]                      ;354.2
$LN889:
        mov       edx, 40                                       ;354.2
$LN890:
        mov       rcx, rax                                      ;354.2
$LN891:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;354.2
$LN892:
                                ; LOE rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.37::                        ; Preds .B6.3
                                ; Execution count [0.00e+000]
$LN893:
        mov       DWORD PTR [4+rbp], eax                        ;354.2
$LN894:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.4::                         ; Preds .B6.37
                                ; Execution count [0.00e+000]
$LN895:
        mov       eax, DWORD PTR [4+rbp]                        ;354.2
$LN896:
        test      eax, eax                                      ;354.2
$LN897:
        je        .B6.6         ; Prob 50%                      ;354.2
$LN898:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.5::                         ; Preds .B6.4
                                ; Execution count [0.00e+000]
$LN899:
        mov       eax, 0                                        ;354.2
$LN900:
        test      eax, eax                                      ;354.2
$LN901:
        jne       .B6.2         ; Prob 0%                       ;354.2
$LN902:
        jmp       .B6.7         ; Prob 100%                     ;354.2
$LN903:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.6::                         ; Preds .B6.2 .B6.4
                                ; Execution count [0.00e+000]
$LN904:
        mov       eax, 2                                        ;354.2
$LN905:
        mov       rbx, QWORD PTR [152+rbp]                      ;354.2[spill]
$LN906:
        mov       rsi, QWORD PTR [160+rbp]                      ;354.2[spill]
$LN907:
        mov       rdi, QWORD PTR [168+rbp]                      ;354.2[spill]
$LN908:
        lea       rsp, QWORD PTR [176+rbp]                      ;354.2
$LN909:
        pop       rbp                                           ;354.2
$LN910:
        ret                                                     ;354.2
$LN911:
                                ; LOE
.B6.7::                         ; Preds .B6.10 .B6.5
                                ; Execution count [0.00e+000]
$LN912:
        mov       rax, QWORD PTR [24+rbp]                       ;355.2
$LN913:
        test      rax, rax                                      ;355.2
$LN914:
        je        .B6.10        ; Prob 50%                      ;355.2
$LN915:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.8::                         ; Preds .B6.7
                                ; Execution count [0.00e+000]
$LN916:
        mov       rax, QWORD PTR [24+rbp]                       ;355.2
$LN917:
        mov       rdx, QWORD PTR [40+rbp]                       ;355.2
$LN918:
        mov       rcx, rax                                      ;355.2
$LN919:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;355.2
$LN920:
                                ; LOE rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.38::                        ; Preds .B6.8
                                ; Execution count [0.00e+000]
$LN921:
        mov       DWORD PTR [8+rbp], eax                        ;355.2
$LN922:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.9::                         ; Preds .B6.38
                                ; Execution count [0.00e+000]
$LN923:
        mov       eax, DWORD PTR [8+rbp]                        ;355.2
$LN924:
        test      eax, eax                                      ;355.2
$LN925:
        je        .B6.11        ; Prob 50%                      ;355.2
$LN926:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.10::                        ; Preds .B6.9 .B6.7
                                ; Execution count [0.00e+000]
$LN927:
        mov       eax, 0                                        ;355.2
$LN928:
        test      eax, eax                                      ;355.2
$LN929:
        jne       .B6.7         ; Prob 0%                       ;355.2
$LN930:
        jmp       .B6.12        ; Prob 100%                     ;355.2
$LN931:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.11::                        ; Preds .B6.9
                                ; Execution count [0.00e+000]
$LN932:
        mov       eax, 2                                        ;355.2
$LN933:
        mov       rbx, QWORD PTR [152+rbp]                      ;355.2[spill]
$LN934:
        mov       rsi, QWORD PTR [160+rbp]                      ;355.2[spill]
$LN935:
        mov       rdi, QWORD PTR [168+rbp]                      ;355.2[spill]
$LN936:
        lea       rsp, QWORD PTR [176+rbp]                      ;355.2
$LN937:
        pop       rbp                                           ;355.2
$LN938:
        ret                                                     ;355.2
$LN939:
                                ; LOE
.B6.12::                        ; Preds .B6.15 .B6.10
                                ; Execution count [0.00e+000]
$LN940:
        mov       rax, QWORD PTR [56+rbp]                       ;356.2
$LN941:
        test      rax, rax                                      ;356.2
$LN942:
        je        .B6.15        ; Prob 50%                      ;356.2
$LN943:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.13::                        ; Preds .B6.12
                                ; Execution count [0.00e+000]
$LN944:
        mov       rax, QWORD PTR [56+rbp]                       ;356.2
$LN945:
        mov       rdx, QWORD PTR [72+rbp]                       ;356.2
$LN946:
        mov       rcx, rax                                      ;356.2
$LN947:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;356.2
$LN948:
                                ; LOE rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.39::                        ; Preds .B6.13
                                ; Execution count [0.00e+000]
$LN949:
        mov       DWORD PTR [12+rbp], eax                       ;356.2
$LN950:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.14::                        ; Preds .B6.39
                                ; Execution count [0.00e+000]
$LN951:
        mov       eax, DWORD PTR [12+rbp]                       ;356.2
$LN952:
        test      eax, eax                                      ;356.2
$LN953:
        je        .B6.16        ; Prob 50%                      ;356.2
$LN954:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.15::                        ; Preds .B6.14 .B6.12
                                ; Execution count [0.00e+000]
$LN955:
        mov       eax, 0                                        ;356.2
$LN956:
        test      eax, eax                                      ;356.2
$LN957:
        jne       .B6.12        ; Prob 0%                       ;356.2
$LN958:
        jmp       .B6.17        ; Prob 100%                     ;356.2
$LN959:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.16::                        ; Preds .B6.14
                                ; Execution count [0.00e+000]
$LN960:
        mov       eax, 2                                        ;356.2
$LN961:
        mov       rbx, QWORD PTR [152+rbp]                      ;356.2[spill]
$LN962:
        mov       rsi, QWORD PTR [160+rbp]                      ;356.2[spill]
$LN963:
        mov       rdi, QWORD PTR [168+rbp]                      ;356.2[spill]
$LN964:
        lea       rsp, QWORD PTR [176+rbp]                      ;356.2
$LN965:
        pop       rbp                                           ;356.2
$LN966:
        ret                                                     ;356.2
$LN967:
                                ; LOE
.B6.17::                        ; Preds .B6.15
                                ; Execution count [0.00e+000]
$LN968:
        mov       rax, QWORD PTR [24+rbp]                       ;358.2
$LN969:
        test      rax, rax                                      ;358.2
$LN970:
        je        .B6.22        ; Prob 50%                      ;358.2
$LN971:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.18::                        ; Preds .B6.17
                                ; Execution count [0.00e+000]
$LN972:
        mov       rax, QWORD PTR [40+rbp]                       ;359.3
$LN973:
        mov       rcx, rax                                      ;359.3
$LN974:
;       malloc(size_t)
        call      malloc                                        ;359.3
$LN975:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.40::                        ; Preds .B6.18
                                ; Execution count [0.00e+000]
$LN976:
        mov       QWORD PTR [88+rbp], rax                       ;359.3
$LN977:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.19::                        ; Preds .B6.40
                                ; Execution count [0.00e+000]
$LN978:
        mov       rax, QWORD PTR [88+rbp]                       ;359.3
$LN979:
        mov       QWORD PTR [48+rbp], rax                       ;359.3
$LN980:
        mov       rax, QWORD PTR [48+rbp]                       ;360.3
$LN981:
        test      rax, rax                                      ;360.3
$LN982:
        jne       .B6.21        ; Prob 50%                      ;360.3
$LN983:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.20::                        ; Preds .B6.19
                                ; Execution count [0.00e+000]
$LN984:
        mov       DWORD PTR [rbp], 3                            ;361.4
$LN985:
        jmp       .B6.29        ; Prob 100%                     ;361.4
$LN986:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.21::                        ; Preds .B6.19
                                ; Execution count [0.00e+000]
$LN987:
        mov       rax, QWORD PTR [48+rbp]                       ;365.3
$LN988:
        mov       rdx, QWORD PTR [24+rbp]                       ;365.3
$LN989:
        mov       rcx, QWORD PTR [40+rbp]                       ;365.3
$LN990:
        mov       rdi, rax                                      ;365.3
$LN991:
        mov       rsi, rdx                                      ;365.3
$LN992:
        mov       rdx, rdi                                      ;365.3
$LN993:
        mov       eax, ecx                                      ;365.3
$LN994:
        shr       rcx, 2                                        ;365.3
$LN995:
        rep   movsd                                             ;365.3
$LN996:
        mov       ecx, eax                                      ;365.3
$LN997:
        and       ecx, 3                                        ;365.3
$LN998:
        rep   movsb                                             ;365.3
$LN999:
        mov       rax, rdx                                      ;365.3
$LN1000:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.41::                        ; Preds .B6.21
                                ; Execution count [0.00e+000]
$LN1001:
        mov       QWORD PTR [112+rbp], rax                      ;365.3
$LN1002:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.22::                        ; Preds .B6.41 .B6.17
                                ; Execution count [0.00e+000]
$LN1003:
        mov       rax, QWORD PTR [56+rbp]                       ;367.2
$LN1004:
        test      rax, rax                                      ;367.2
$LN1005:
        je        .B6.27        ; Prob 50%                      ;367.2
$LN1006:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.23::                        ; Preds .B6.22
                                ; Execution count [0.00e+000]
$LN1007:
        mov       rax, QWORD PTR [72+rbp]                       ;368.3
$LN1008:
        mov       rcx, rax                                      ;368.3
$LN1009:
;       malloc(size_t)
        call      malloc                                        ;368.3
$LN1010:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.42::                        ; Preds .B6.23
                                ; Execution count [0.00e+000]
$LN1011:
        mov       QWORD PTR [96+rbp], rax                       ;368.3
$LN1012:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.24::                        ; Preds .B6.42
                                ; Execution count [0.00e+000]
$LN1013:
        mov       rax, QWORD PTR [96+rbp]                       ;368.3
$LN1014:
        mov       QWORD PTR [120+rbp], rax                      ;368.3
$LN1015:
        mov       rax, QWORD PTR [120+rbp]                      ;368.3
$LN1016:
        mov       QWORD PTR [80+rbp], rax                       ;368.3
$LN1017:
        mov       rax, QWORD PTR [120+rbp]                      ;368.3
$LN1018:
        test      rax, rax                                      ;368.3
$LN1019:
        jne       .B6.26        ; Prob 50%                      ;368.3
$LN1020:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.25::                        ; Preds .B6.24
                                ; Execution count [0.00e+000]
$LN1021:
        mov       DWORD PTR [rbp], 3                            ;369.4
$LN1022:
        jmp       .B6.29        ; Prob 100%                     ;369.4
$LN1023:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.26::                        ; Preds .B6.24
                                ; Execution count [0.00e+000]
$LN1024:
        mov       rax, QWORD PTR [80+rbp]                       ;373.3
$LN1025:
        mov       edx, 0                                        ;373.3
$LN1026:
        mov       rcx, QWORD PTR [72+rbp]                       ;373.3
$LN1027:
        mov       rdi, rax                                      ;373.3
$LN1028:
        mov       eax, edx                                      ;373.3
$LN1029:
        and       eax, 65535                                    ;373.3
$LN1030:
        mov       ah, al                                        ;373.3
$LN1031:
        mov       edx, eax                                      ;373.3
$LN1032:
        shl       eax, 16                                       ;373.3
$LN1033:
        or        eax, edx                                      ;373.3
$LN1034:
        mov       esi, ecx                                      ;373.3
$LN1035:
        shr       rcx, 2                                        ;373.3
$LN1036:
        mov       rdx, rdi                                      ;373.3
$LN1037:
        rep   stosd                                             ;373.3
$LN1038:
        mov       ecx, esi                                      ;373.3
$LN1039:
        and       ecx, 3                                        ;373.3
$LN1040:
        rep   stosb                                             ;373.3
$LN1041:
        mov       rax, rdx                                      ;373.3
$LN1042:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.43::                        ; Preds .B6.26
                                ; Execution count [0.00e+000]
$LN1043:
        mov       QWORD PTR [128+rbp], rax                      ;373.3
$LN1044:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.27::                        ; Preds .B6.43 .B6.22
                                ; Execution count [0.00e+000]
$LN1045:
        mov       rax, QWORD PTR [48+rbp]                       ;375.2
$LN1046:
        mov       rdx, QWORD PTR [32+rbp]                       ;375.2
$LN1047:
        mov       rcx, QWORD PTR [80+rbp]                       ;375.2
$LN1048:
        mov       rbx, QWORD PTR [64+rbp]                       ;375.2
$LN1049:
        mov       QWORD PTR [144+rbp], rcx                      ;375.2[spill]
$LN1050:
        mov       rcx, rax                                      ;375.2
$LN1051:
        mov       rax, QWORD PTR [144+rbp]                      ;375.2[spill]
$LN1052:
        mov       r8, rax                                       ;375.2
$LN1053:
        mov       r9, rbx                                       ;375.2
$LN1054:
;       enclaveVByteDecode(uint8_t *, size_t, uint8_t *, size_t)
        call      enclaveVByteDecode                            ;375.2
$LN1055:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.44::                        ; Preds .B6.27
                                ; Execution count [0.00e+000]
$LN1056:
        mov       QWORD PTR [104+rbp], rax                      ;375.2
$LN1057:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.28::                        ; Preds .B6.44
                                ; Execution count [0.00e+000]
$LN1058:
        mov       rax, QWORD PTR [16+rbp]                       ;375.2
$LN1059:
        mov       rdx, QWORD PTR [104+rbp]                      ;375.2
$LN1060:
        mov       QWORD PTR [rax], rdx                          ;375.2
$LN1061:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.29::                        ; Preds .B6.28 .B6.25 .B6.20
                                ; Execution count [0.00e+000]
$LN1062:
        mov       rax, QWORD PTR [48+rbp]                       ;377.2
$LN1063:
        test      rax, rax                                      ;377.2
$LN1064:
        je        .B6.31        ; Prob 50%                      ;377.2
$LN1065:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.30::                        ; Preds .B6.29
                                ; Execution count [0.00e+000]
$LN1066:
        mov       rax, QWORD PTR [48+rbp]                       ;377.14
$LN1067:
        mov       rcx, rax                                      ;377.14
$LN1068:
;       free(void *)
        call      free                                          ;377.14
$LN1069:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.45::                        ; Preds .B6.30
                                ; Execution count [0.00e+000]
$LN1070:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.31::                        ; Preds .B6.45 .B6.29
                                ; Execution count [0.00e+000]
$LN1071:
        mov       rax, QWORD PTR [80+rbp]                       ;378.2
$LN1072:
        test      rax, rax                                      ;378.2
$LN1073:
        je        .B6.34        ; Prob 50%                      ;378.2
$LN1074:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.32::                        ; Preds .B6.31
                                ; Execution count [0.00e+000]
$LN1075:
        mov       rax, QWORD PTR [56+rbp]                       ;379.3
$LN1076:
        mov       rdx, QWORD PTR [80+rbp]                       ;379.3
$LN1077:
        mov       rcx, QWORD PTR [72+rbp]                       ;379.3
$LN1078:
        mov       rdi, rax                                      ;379.3
$LN1079:
        mov       rsi, rdx                                      ;379.3
$LN1080:
        mov       rdx, rdi                                      ;379.3
$LN1081:
        mov       eax, ecx                                      ;379.3
$LN1082:
        shr       rcx, 2                                        ;379.3
$LN1083:
        rep   movsd                                             ;379.3
$LN1084:
        mov       ecx, eax                                      ;379.3
$LN1085:
        and       ecx, 3                                        ;379.3
$LN1086:
        rep   movsb                                             ;379.3
$LN1087:
        mov       rax, rdx                                      ;379.3
$LN1088:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.46::                        ; Preds .B6.32
                                ; Execution count [0.00e+000]
$LN1089:
        mov       QWORD PTR [136+rbp], rax                      ;379.3
$LN1090:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.33::                        ; Preds .B6.46
                                ; Execution count [0.00e+000]
$LN1091:
        mov       rax, QWORD PTR [80+rbp]                       ;380.3
$LN1092:
        mov       rcx, rax                                      ;380.3
$LN1093:
;       free(void *)
        call      free                                          ;380.3
$LN1094:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.47::                        ; Preds .B6.33
                                ; Execution count [0.00e+000]
$LN1095:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B6.34::                        ; Preds .B6.47 .B6.31
                                ; Execution count [0.00e+000]
$LN1096:
        mov       eax, DWORD PTR [rbp]                          ;383.2
$LN1097:
        mov       rbx, QWORD PTR [152+rbp]                      ;383.2[spill]
$LN1098:
        mov       rsi, QWORD PTR [160+rbp]                      ;383.2[spill]
$LN1099:
        mov       rdi, QWORD PTR [168+rbp]                      ;383.2[spill]
$LN1100:
        lea       rsp, QWORD PTR [176+rbp]                      ;383.2
$LN1101:
        pop       rbp                                           ;383.2
$LN1102:
        ret                                                     ;383.2
$LN1103:
                                ; LOE
.B6.35::
$LN1104:
; mark_end;
sgx_enclaveVByteDecode ENDP
$LNsgx_enclaveVByteDecode$1105:
;sgx_enclaveVByteDecode	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$sgx_enclaveVByteDecode
	ALIGN 004H
.unwind.sgx_enclaveVByteDecode.B1_B34	DD	621421057
	DD	1520674
	DD	1598491
	DD	1668116
	DD	17302285
	DD	1342242842
;.xdata$sgx_enclaveVByteDecode	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$sgx_enclaveVByteDecode
	ALIGN 004H
.pdata.sgx_enclaveVByteDecode.B1_B34	DD	imagerel .B6.1
	DD	imagerel .B6.35
	DD	imagerel .unwind.sgx_enclaveVByteDecode.B1_B34
;.pdata$sgx_enclaveVByteDecode	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  sgx_enclaveVByteDecode
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_enclaveRunLengthEncode
TXTST6:
_2__routine_start_sgx_enclaveRunLengthEncode_6:
; -- Begin  sgx_enclaveRunLengthEncode
;sgx_enclaveRunLengthEncode	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_enclaveRunLengthEncode
; mark_begin;

; --- sgx_enclaveRunLengthEncode(void *)
sgx_enclaveRunLengthEncode	PROC PRIVATE
; parameter 1(pms): rcx
.B7.1::                         ; Preds .B7.0
                                ; Execution count [0.00e+000]
L52::
                                                          ;387.1
$LN1106:
        push      rbp                                           ;387.1
$LN1107:
        sub       rsp, 208                                      ;387.1
$LN1108:
        lea       rbp, QWORD PTR [32+rsp]                       ;387.1
$LN1109:
        mov       QWORD PTR [168+rbp], rdi                      ;387.1[spill]
$LN1110:
        mov       QWORD PTR [160+rbp], rsi                      ;387.1[spill]
$LN1111:
        mov       QWORD PTR [152+rbp], rbx                      ;387.1[spill]
$LN1112:
        mov       QWORD PTR [192+rbp], rcx                      ;387.1
$LN1113:
        mov       rax, QWORD PTR [192+rbp]                      ;388.34
$LN1114:
        mov       QWORD PTR [16+rbp], rax                       ;388.34
$LN1115:
        mov       DWORD PTR [rbp], 0                            ;389.22
$LN1116:
        mov       rax, QWORD PTR [16+rbp]                       ;390.19
$LN1117:
        mov       rax, QWORD PTR [8+rax]                        ;390.19
$LN1118:
        mov       QWORD PTR [24+rbp], rax                       ;390.19
$LN1119:
        mov       rax, QWORD PTR [16+rbp]                       ;391.23
$LN1120:
        mov       rax, QWORD PTR [16+rax]                       ;391.23
$LN1121:
        mov       QWORD PTR [32+rbp], rax                       ;391.23
$LN1122:
        mov       rax, QWORD PTR [32+rbp]                       ;392.17
$LN1123:
        mov       QWORD PTR [40+rbp], rax                       ;392.17
$LN1124:
        mov       QWORD PTR [48+rbp], 0                         ;393.18
$LN1125:
        mov       rax, QWORD PTR [16+rbp]                       ;394.20
$LN1126:
        mov       rax, QWORD PTR [24+rax]                       ;394.20
$LN1127:
        mov       QWORD PTR [56+rbp], rax                       ;394.20
$LN1128:
        mov       rax, QWORD PTR [16+rbp]                       ;395.24
$LN1129:
        mov       rax, QWORD PTR [32+rax]                       ;395.24
$LN1130:
        mov       QWORD PTR [64+rbp], rax                       ;395.24
$LN1131:
        mov       rax, QWORD PTR [64+rbp]                       ;396.18
$LN1132:
        mov       QWORD PTR [72+rbp], rax                       ;396.18
$LN1133:
        mov       QWORD PTR [80+rbp], 0                         ;397.19
$LN1134:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.2::                         ; Preds .B7.5 .B7.1
                                ; Execution count [0.00e+000]
$LN1135:
        mov       rax, QWORD PTR [192+rbp]                      ;399.2
$LN1136:
        test      rax, rax                                      ;399.2
$LN1137:
        je        .B7.6         ; Prob 50%                      ;399.2
$LN1138:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.3::                         ; Preds .B7.2
                                ; Execution count [0.00e+000]
$LN1139:
        mov       rax, QWORD PTR [192+rbp]                      ;399.2
$LN1140:
        mov       edx, 40                                       ;399.2
$LN1141:
        mov       rcx, rax                                      ;399.2
$LN1142:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;399.2
$LN1143:
                                ; LOE rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.37::                        ; Preds .B7.3
                                ; Execution count [0.00e+000]
$LN1144:
        mov       DWORD PTR [4+rbp], eax                        ;399.2
$LN1145:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.4::                         ; Preds .B7.37
                                ; Execution count [0.00e+000]
$LN1146:
        mov       eax, DWORD PTR [4+rbp]                        ;399.2
$LN1147:
        test      eax, eax                                      ;399.2
$LN1148:
        je        .B7.6         ; Prob 50%                      ;399.2
$LN1149:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.5::                         ; Preds .B7.4
                                ; Execution count [0.00e+000]
$LN1150:
        mov       eax, 0                                        ;399.2
$LN1151:
        test      eax, eax                                      ;399.2
$LN1152:
        jne       .B7.2         ; Prob 0%                       ;399.2
$LN1153:
        jmp       .B7.7         ; Prob 100%                     ;399.2
$LN1154:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.6::                         ; Preds .B7.2 .B7.4
                                ; Execution count [0.00e+000]
$LN1155:
        mov       eax, 2                                        ;399.2
$LN1156:
        mov       rbx, QWORD PTR [152+rbp]                      ;399.2[spill]
$LN1157:
        mov       rsi, QWORD PTR [160+rbp]                      ;399.2[spill]
$LN1158:
        mov       rdi, QWORD PTR [168+rbp]                      ;399.2[spill]
$LN1159:
        lea       rsp, QWORD PTR [176+rbp]                      ;399.2
$LN1160:
        pop       rbp                                           ;399.2
$LN1161:
        ret                                                     ;399.2
$LN1162:
                                ; LOE
.B7.7::                         ; Preds .B7.10 .B7.5
                                ; Execution count [0.00e+000]
$LN1163:
        mov       rax, QWORD PTR [24+rbp]                       ;400.2
$LN1164:
        test      rax, rax                                      ;400.2
$LN1165:
        je        .B7.10        ; Prob 50%                      ;400.2
$LN1166:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.8::                         ; Preds .B7.7
                                ; Execution count [0.00e+000]
$LN1167:
        mov       rax, QWORD PTR [24+rbp]                       ;400.2
$LN1168:
        mov       rdx, QWORD PTR [40+rbp]                       ;400.2
$LN1169:
        mov       rcx, rax                                      ;400.2
$LN1170:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;400.2
$LN1171:
                                ; LOE rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.38::                        ; Preds .B7.8
                                ; Execution count [0.00e+000]
$LN1172:
        mov       DWORD PTR [8+rbp], eax                        ;400.2
$LN1173:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.9::                         ; Preds .B7.38
                                ; Execution count [0.00e+000]
$LN1174:
        mov       eax, DWORD PTR [8+rbp]                        ;400.2
$LN1175:
        test      eax, eax                                      ;400.2
$LN1176:
        je        .B7.11        ; Prob 50%                      ;400.2
$LN1177:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.10::                        ; Preds .B7.9 .B7.7
                                ; Execution count [0.00e+000]
$LN1178:
        mov       eax, 0                                        ;400.2
$LN1179:
        test      eax, eax                                      ;400.2
$LN1180:
        jne       .B7.7         ; Prob 0%                       ;400.2
$LN1181:
        jmp       .B7.12        ; Prob 100%                     ;400.2
$LN1182:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.11::                        ; Preds .B7.9
                                ; Execution count [0.00e+000]
$LN1183:
        mov       eax, 2                                        ;400.2
$LN1184:
        mov       rbx, QWORD PTR [152+rbp]                      ;400.2[spill]
$LN1185:
        mov       rsi, QWORD PTR [160+rbp]                      ;400.2[spill]
$LN1186:
        mov       rdi, QWORD PTR [168+rbp]                      ;400.2[spill]
$LN1187:
        lea       rsp, QWORD PTR [176+rbp]                      ;400.2
$LN1188:
        pop       rbp                                           ;400.2
$LN1189:
        ret                                                     ;400.2
$LN1190:
                                ; LOE
.B7.12::                        ; Preds .B7.15 .B7.10
                                ; Execution count [0.00e+000]
$LN1191:
        mov       rax, QWORD PTR [56+rbp]                       ;401.2
$LN1192:
        test      rax, rax                                      ;401.2
$LN1193:
        je        .B7.15        ; Prob 50%                      ;401.2
$LN1194:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.13::                        ; Preds .B7.12
                                ; Execution count [0.00e+000]
$LN1195:
        mov       rax, QWORD PTR [56+rbp]                       ;401.2
$LN1196:
        mov       rdx, QWORD PTR [72+rbp]                       ;401.2
$LN1197:
        mov       rcx, rax                                      ;401.2
$LN1198:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;401.2
$LN1199:
                                ; LOE rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.39::                        ; Preds .B7.13
                                ; Execution count [0.00e+000]
$LN1200:
        mov       DWORD PTR [12+rbp], eax                       ;401.2
$LN1201:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.14::                        ; Preds .B7.39
                                ; Execution count [0.00e+000]
$LN1202:
        mov       eax, DWORD PTR [12+rbp]                       ;401.2
$LN1203:
        test      eax, eax                                      ;401.2
$LN1204:
        je        .B7.16        ; Prob 50%                      ;401.2
$LN1205:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.15::                        ; Preds .B7.14 .B7.12
                                ; Execution count [0.00e+000]
$LN1206:
        mov       eax, 0                                        ;401.2
$LN1207:
        test      eax, eax                                      ;401.2
$LN1208:
        jne       .B7.12        ; Prob 0%                       ;401.2
$LN1209:
        jmp       .B7.17        ; Prob 100%                     ;401.2
$LN1210:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.16::                        ; Preds .B7.14
                                ; Execution count [0.00e+000]
$LN1211:
        mov       eax, 2                                        ;401.2
$LN1212:
        mov       rbx, QWORD PTR [152+rbp]                      ;401.2[spill]
$LN1213:
        mov       rsi, QWORD PTR [160+rbp]                      ;401.2[spill]
$LN1214:
        mov       rdi, QWORD PTR [168+rbp]                      ;401.2[spill]
$LN1215:
        lea       rsp, QWORD PTR [176+rbp]                      ;401.2
$LN1216:
        pop       rbp                                           ;401.2
$LN1217:
        ret                                                     ;401.2
$LN1218:
                                ; LOE
.B7.17::                        ; Preds .B7.15
                                ; Execution count [0.00e+000]
$LN1219:
        mov       rax, QWORD PTR [24+rbp]                       ;403.2
$LN1220:
        test      rax, rax                                      ;403.2
$LN1221:
        je        .B7.22        ; Prob 50%                      ;403.2
$LN1222:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.18::                        ; Preds .B7.17
                                ; Execution count [0.00e+000]
$LN1223:
        mov       rax, QWORD PTR [40+rbp]                       ;404.3
$LN1224:
        mov       rcx, rax                                      ;404.3
$LN1225:
;       malloc(size_t)
        call      malloc                                        ;404.3
$LN1226:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.40::                        ; Preds .B7.18
                                ; Execution count [0.00e+000]
$LN1227:
        mov       QWORD PTR [88+rbp], rax                       ;404.3
$LN1228:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.19::                        ; Preds .B7.40
                                ; Execution count [0.00e+000]
$LN1229:
        mov       rax, QWORD PTR [88+rbp]                       ;404.3
$LN1230:
        mov       QWORD PTR [48+rbp], rax                       ;404.3
$LN1231:
        mov       rax, QWORD PTR [48+rbp]                       ;405.3
$LN1232:
        test      rax, rax                                      ;405.3
$LN1233:
        jne       .B7.21        ; Prob 50%                      ;405.3
$LN1234:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.20::                        ; Preds .B7.19
                                ; Execution count [0.00e+000]
$LN1235:
        mov       DWORD PTR [rbp], 3                            ;406.4
$LN1236:
        jmp       .B7.29        ; Prob 100%                     ;406.4
$LN1237:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.21::                        ; Preds .B7.19
                                ; Execution count [0.00e+000]
$LN1238:
        mov       rax, QWORD PTR [48+rbp]                       ;410.3
$LN1239:
        mov       rdx, QWORD PTR [24+rbp]                       ;410.3
$LN1240:
        mov       rcx, QWORD PTR [40+rbp]                       ;410.3
$LN1241:
        mov       rdi, rax                                      ;410.3
$LN1242:
        mov       rsi, rdx                                      ;410.3
$LN1243:
        mov       rdx, rdi                                      ;410.3
$LN1244:
        mov       eax, ecx                                      ;410.3
$LN1245:
        shr       rcx, 2                                        ;410.3
$LN1246:
        rep   movsd                                             ;410.3
$LN1247:
        mov       ecx, eax                                      ;410.3
$LN1248:
        and       ecx, 3                                        ;410.3
$LN1249:
        rep   movsb                                             ;410.3
$LN1250:
        mov       rax, rdx                                      ;410.3
$LN1251:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.41::                        ; Preds .B7.21
                                ; Execution count [0.00e+000]
$LN1252:
        mov       QWORD PTR [112+rbp], rax                      ;410.3
$LN1253:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.22::                        ; Preds .B7.41 .B7.17
                                ; Execution count [0.00e+000]
$LN1254:
        mov       rax, QWORD PTR [56+rbp]                       ;412.2
$LN1255:
        test      rax, rax                                      ;412.2
$LN1256:
        je        .B7.27        ; Prob 50%                      ;412.2
$LN1257:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.23::                        ; Preds .B7.22
                                ; Execution count [0.00e+000]
$LN1258:
        mov       rax, QWORD PTR [72+rbp]                       ;413.3
$LN1259:
        mov       rcx, rax                                      ;413.3
$LN1260:
;       malloc(size_t)
        call      malloc                                        ;413.3
$LN1261:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.42::                        ; Preds .B7.23
                                ; Execution count [0.00e+000]
$LN1262:
        mov       QWORD PTR [96+rbp], rax                       ;413.3
$LN1263:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.24::                        ; Preds .B7.42
                                ; Execution count [0.00e+000]
$LN1264:
        mov       rax, QWORD PTR [96+rbp]                       ;413.3
$LN1265:
        mov       QWORD PTR [120+rbp], rax                      ;413.3
$LN1266:
        mov       rax, QWORD PTR [120+rbp]                      ;413.3
$LN1267:
        mov       QWORD PTR [80+rbp], rax                       ;413.3
$LN1268:
        mov       rax, QWORD PTR [120+rbp]                      ;413.3
$LN1269:
        test      rax, rax                                      ;413.3
$LN1270:
        jne       .B7.26        ; Prob 50%                      ;413.3
$LN1271:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.25::                        ; Preds .B7.24
                                ; Execution count [0.00e+000]
$LN1272:
        mov       DWORD PTR [rbp], 3                            ;414.4
$LN1273:
        jmp       .B7.29        ; Prob 100%                     ;414.4
$LN1274:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.26::                        ; Preds .B7.24
                                ; Execution count [0.00e+000]
$LN1275:
        mov       rax, QWORD PTR [80+rbp]                       ;418.3
$LN1276:
        mov       edx, 0                                        ;418.3
$LN1277:
        mov       rcx, QWORD PTR [72+rbp]                       ;418.3
$LN1278:
        mov       rdi, rax                                      ;418.3
$LN1279:
        mov       eax, edx                                      ;418.3
$LN1280:
        and       eax, 65535                                    ;418.3
$LN1281:
        mov       ah, al                                        ;418.3
$LN1282:
        mov       edx, eax                                      ;418.3
$LN1283:
        shl       eax, 16                                       ;418.3
$LN1284:
        or        eax, edx                                      ;418.3
$LN1285:
        mov       esi, ecx                                      ;418.3
$LN1286:
        shr       rcx, 2                                        ;418.3
$LN1287:
        mov       rdx, rdi                                      ;418.3
$LN1288:
        rep   stosd                                             ;418.3
$LN1289:
        mov       ecx, esi                                      ;418.3
$LN1290:
        and       ecx, 3                                        ;418.3
$LN1291:
        rep   stosb                                             ;418.3
$LN1292:
        mov       rax, rdx                                      ;418.3
$LN1293:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.43::                        ; Preds .B7.26
                                ; Execution count [0.00e+000]
$LN1294:
        mov       QWORD PTR [128+rbp], rax                      ;418.3
$LN1295:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.27::                        ; Preds .B7.43 .B7.22
                                ; Execution count [0.00e+000]
$LN1296:
        mov       rax, QWORD PTR [48+rbp]                       ;420.2
$LN1297:
        mov       rdx, QWORD PTR [32+rbp]                       ;420.2
$LN1298:
        mov       rcx, QWORD PTR [80+rbp]                       ;420.2
$LN1299:
        mov       rbx, QWORD PTR [64+rbp]                       ;420.2
$LN1300:
        mov       QWORD PTR [144+rbp], rcx                      ;420.2[spill]
$LN1301:
        mov       rcx, rax                                      ;420.2
$LN1302:
        mov       rax, QWORD PTR [144+rbp]                      ;420.2[spill]
$LN1303:
        mov       r8, rax                                       ;420.2
$LN1304:
        mov       r9, rbx                                       ;420.2
$LN1305:
;       enclaveRunLengthEncode(uint8_t *, size_t, uint8_t *, size_t)
        call      enclaveRunLengthEncode                        ;420.2
$LN1306:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.44::                        ; Preds .B7.27
                                ; Execution count [0.00e+000]
$LN1307:
        mov       QWORD PTR [104+rbp], rax                      ;420.2
$LN1308:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.28::                        ; Preds .B7.44
                                ; Execution count [0.00e+000]
$LN1309:
        mov       rax, QWORD PTR [16+rbp]                       ;420.2
$LN1310:
        mov       rdx, QWORD PTR [104+rbp]                      ;420.2
$LN1311:
        mov       QWORD PTR [rax], rdx                          ;420.2
$LN1312:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.29::                        ; Preds .B7.28 .B7.25 .B7.20
                                ; Execution count [0.00e+000]
$LN1313:
        mov       rax, QWORD PTR [48+rbp]                       ;422.2
$LN1314:
        test      rax, rax                                      ;422.2
$LN1315:
        je        .B7.31        ; Prob 50%                      ;422.2
$LN1316:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.30::                        ; Preds .B7.29
                                ; Execution count [0.00e+000]
$LN1317:
        mov       rax, QWORD PTR [48+rbp]                       ;422.14
$LN1318:
        mov       rcx, rax                                      ;422.14
$LN1319:
;       free(void *)
        call      free                                          ;422.14
$LN1320:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.45::                        ; Preds .B7.30
                                ; Execution count [0.00e+000]
$LN1321:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.31::                        ; Preds .B7.45 .B7.29
                                ; Execution count [0.00e+000]
$LN1322:
        mov       rax, QWORD PTR [80+rbp]                       ;423.2
$LN1323:
        test      rax, rax                                      ;423.2
$LN1324:
        je        .B7.34        ; Prob 50%                      ;423.2
$LN1325:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.32::                        ; Preds .B7.31
                                ; Execution count [0.00e+000]
$LN1326:
        mov       rax, QWORD PTR [56+rbp]                       ;424.3
$LN1327:
        mov       rdx, QWORD PTR [80+rbp]                       ;424.3
$LN1328:
        mov       rcx, QWORD PTR [72+rbp]                       ;424.3
$LN1329:
        mov       rdi, rax                                      ;424.3
$LN1330:
        mov       rsi, rdx                                      ;424.3
$LN1331:
        mov       rdx, rdi                                      ;424.3
$LN1332:
        mov       eax, ecx                                      ;424.3
$LN1333:
        shr       rcx, 2                                        ;424.3
$LN1334:
        rep   movsd                                             ;424.3
$LN1335:
        mov       ecx, eax                                      ;424.3
$LN1336:
        and       ecx, 3                                        ;424.3
$LN1337:
        rep   movsb                                             ;424.3
$LN1338:
        mov       rax, rdx                                      ;424.3
$LN1339:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.46::                        ; Preds .B7.32
                                ; Execution count [0.00e+000]
$LN1340:
        mov       QWORD PTR [136+rbp], rax                      ;424.3
$LN1341:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.33::                        ; Preds .B7.46
                                ; Execution count [0.00e+000]
$LN1342:
        mov       rax, QWORD PTR [80+rbp]                       ;425.3
$LN1343:
        mov       rcx, rax                                      ;425.3
$LN1344:
;       free(void *)
        call      free                                          ;425.3
$LN1345:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.47::                        ; Preds .B7.33
                                ; Execution count [0.00e+000]
$LN1346:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B7.34::                        ; Preds .B7.47 .B7.31
                                ; Execution count [0.00e+000]
$LN1347:
        mov       eax, DWORD PTR [rbp]                          ;428.2
$LN1348:
        mov       rbx, QWORD PTR [152+rbp]                      ;428.2[spill]
$LN1349:
        mov       rsi, QWORD PTR [160+rbp]                      ;428.2[spill]
$LN1350:
        mov       rdi, QWORD PTR [168+rbp]                      ;428.2[spill]
$LN1351:
        lea       rsp, QWORD PTR [176+rbp]                      ;428.2
$LN1352:
        pop       rbp                                           ;428.2
$LN1353:
        ret                                                     ;428.2
$LN1354:
                                ; LOE
.B7.35::
$LN1355:
; mark_end;
sgx_enclaveRunLengthEncode ENDP
$LNsgx_enclaveRunLengthEncode$1356:
;sgx_enclaveRunLengthEncode	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$sgx_enclaveRunLengthEncode
	ALIGN 004H
.unwind.sgx_enclaveRunLengthEncode.B1_B34	DD	621421057
	DD	1520674
	DD	1598491
	DD	1668116
	DD	17302285
	DD	1342242842
;.xdata$sgx_enclaveRunLengthEncode	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$sgx_enclaveRunLengthEncode
	ALIGN 004H
.pdata.sgx_enclaveRunLengthEncode.B1_B34	DD	imagerel .B7.1
	DD	imagerel .B7.35
	DD	imagerel .unwind.sgx_enclaveRunLengthEncode.B1_B34
;.pdata$sgx_enclaveRunLengthEncode	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  sgx_enclaveRunLengthEncode
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_enclaveRunLengthDecode
TXTST7:
_2__routine_start_sgx_enclaveRunLengthDecode_7:
; -- Begin  sgx_enclaveRunLengthDecode
;sgx_enclaveRunLengthDecode	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_enclaveRunLengthDecode
; mark_begin;

; --- sgx_enclaveRunLengthDecode(void *)
sgx_enclaveRunLengthDecode	PROC PRIVATE
; parameter 1(pms): rcx
.B8.1::                         ; Preds .B8.0
                                ; Execution count [0.00e+000]
L61::
                                                          ;432.1
$LN1357:
        push      rbp                                           ;432.1
$LN1358:
        sub       rsp, 208                                      ;432.1
$LN1359:
        lea       rbp, QWORD PTR [32+rsp]                       ;432.1
$LN1360:
        mov       QWORD PTR [168+rbp], rdi                      ;432.1[spill]
$LN1361:
        mov       QWORD PTR [160+rbp], rsi                      ;432.1[spill]
$LN1362:
        mov       QWORD PTR [152+rbp], rbx                      ;432.1[spill]
$LN1363:
        mov       QWORD PTR [192+rbp], rcx                      ;432.1
$LN1364:
        mov       rax, QWORD PTR [192+rbp]                      ;433.34
$LN1365:
        mov       QWORD PTR [16+rbp], rax                       ;433.34
$LN1366:
        mov       DWORD PTR [rbp], 0                            ;434.22
$LN1367:
        mov       rax, QWORD PTR [16+rbp]                       ;435.19
$LN1368:
        mov       rax, QWORD PTR [8+rax]                        ;435.19
$LN1369:
        mov       QWORD PTR [24+rbp], rax                       ;435.19
$LN1370:
        mov       rax, QWORD PTR [16+rbp]                       ;436.23
$LN1371:
        mov       rax, QWORD PTR [16+rax]                       ;436.23
$LN1372:
        mov       QWORD PTR [32+rbp], rax                       ;436.23
$LN1373:
        mov       rax, QWORD PTR [32+rbp]                       ;437.17
$LN1374:
        mov       QWORD PTR [40+rbp], rax                       ;437.17
$LN1375:
        mov       QWORD PTR [48+rbp], 0                         ;438.18
$LN1376:
        mov       rax, QWORD PTR [16+rbp]                       ;439.20
$LN1377:
        mov       rax, QWORD PTR [24+rax]                       ;439.20
$LN1378:
        mov       QWORD PTR [56+rbp], rax                       ;439.20
$LN1379:
        mov       rax, QWORD PTR [16+rbp]                       ;440.24
$LN1380:
        mov       rax, QWORD PTR [32+rax]                       ;440.24
$LN1381:
        mov       QWORD PTR [64+rbp], rax                       ;440.24
$LN1382:
        mov       rax, QWORD PTR [64+rbp]                       ;441.18
$LN1383:
        mov       QWORD PTR [72+rbp], rax                       ;441.18
$LN1384:
        mov       QWORD PTR [80+rbp], 0                         ;442.19
$LN1385:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.2::                         ; Preds .B8.5 .B8.1
                                ; Execution count [0.00e+000]
$LN1386:
        mov       rax, QWORD PTR [192+rbp]                      ;444.2
$LN1387:
        test      rax, rax                                      ;444.2
$LN1388:
        je        .B8.6         ; Prob 50%                      ;444.2
$LN1389:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.3::                         ; Preds .B8.2
                                ; Execution count [0.00e+000]
$LN1390:
        mov       rax, QWORD PTR [192+rbp]                      ;444.2
$LN1391:
        mov       edx, 40                                       ;444.2
$LN1392:
        mov       rcx, rax                                      ;444.2
$LN1393:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;444.2
$LN1394:
                                ; LOE rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.37::                        ; Preds .B8.3
                                ; Execution count [0.00e+000]
$LN1395:
        mov       DWORD PTR [4+rbp], eax                        ;444.2
$LN1396:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.4::                         ; Preds .B8.37
                                ; Execution count [0.00e+000]
$LN1397:
        mov       eax, DWORD PTR [4+rbp]                        ;444.2
$LN1398:
        test      eax, eax                                      ;444.2
$LN1399:
        je        .B8.6         ; Prob 50%                      ;444.2
$LN1400:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.5::                         ; Preds .B8.4
                                ; Execution count [0.00e+000]
$LN1401:
        mov       eax, 0                                        ;444.2
$LN1402:
        test      eax, eax                                      ;444.2
$LN1403:
        jne       .B8.2         ; Prob 0%                       ;444.2
$LN1404:
        jmp       .B8.7         ; Prob 100%                     ;444.2
$LN1405:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.6::                         ; Preds .B8.2 .B8.4
                                ; Execution count [0.00e+000]
$LN1406:
        mov       eax, 2                                        ;444.2
$LN1407:
        mov       rbx, QWORD PTR [152+rbp]                      ;444.2[spill]
$LN1408:
        mov       rsi, QWORD PTR [160+rbp]                      ;444.2[spill]
$LN1409:
        mov       rdi, QWORD PTR [168+rbp]                      ;444.2[spill]
$LN1410:
        lea       rsp, QWORD PTR [176+rbp]                      ;444.2
$LN1411:
        pop       rbp                                           ;444.2
$LN1412:
        ret                                                     ;444.2
$LN1413:
                                ; LOE
.B8.7::                         ; Preds .B8.10 .B8.5
                                ; Execution count [0.00e+000]
$LN1414:
        mov       rax, QWORD PTR [24+rbp]                       ;445.2
$LN1415:
        test      rax, rax                                      ;445.2
$LN1416:
        je        .B8.10        ; Prob 50%                      ;445.2
$LN1417:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.8::                         ; Preds .B8.7
                                ; Execution count [0.00e+000]
$LN1418:
        mov       rax, QWORD PTR [24+rbp]                       ;445.2
$LN1419:
        mov       rdx, QWORD PTR [40+rbp]                       ;445.2
$LN1420:
        mov       rcx, rax                                      ;445.2
$LN1421:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;445.2
$LN1422:
                                ; LOE rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.38::                        ; Preds .B8.8
                                ; Execution count [0.00e+000]
$LN1423:
        mov       DWORD PTR [8+rbp], eax                        ;445.2
$LN1424:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.9::                         ; Preds .B8.38
                                ; Execution count [0.00e+000]
$LN1425:
        mov       eax, DWORD PTR [8+rbp]                        ;445.2
$LN1426:
        test      eax, eax                                      ;445.2
$LN1427:
        je        .B8.11        ; Prob 50%                      ;445.2
$LN1428:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.10::                        ; Preds .B8.9 .B8.7
                                ; Execution count [0.00e+000]
$LN1429:
        mov       eax, 0                                        ;445.2
$LN1430:
        test      eax, eax                                      ;445.2
$LN1431:
        jne       .B8.7         ; Prob 0%                       ;445.2
$LN1432:
        jmp       .B8.12        ; Prob 100%                     ;445.2
$LN1433:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.11::                        ; Preds .B8.9
                                ; Execution count [0.00e+000]
$LN1434:
        mov       eax, 2                                        ;445.2
$LN1435:
        mov       rbx, QWORD PTR [152+rbp]                      ;445.2[spill]
$LN1436:
        mov       rsi, QWORD PTR [160+rbp]                      ;445.2[spill]
$LN1437:
        mov       rdi, QWORD PTR [168+rbp]                      ;445.2[spill]
$LN1438:
        lea       rsp, QWORD PTR [176+rbp]                      ;445.2
$LN1439:
        pop       rbp                                           ;445.2
$LN1440:
        ret                                                     ;445.2
$LN1441:
                                ; LOE
.B8.12::                        ; Preds .B8.15 .B8.10
                                ; Execution count [0.00e+000]
$LN1442:
        mov       rax, QWORD PTR [56+rbp]                       ;446.2
$LN1443:
        test      rax, rax                                      ;446.2
$LN1444:
        je        .B8.15        ; Prob 50%                      ;446.2
$LN1445:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.13::                        ; Preds .B8.12
                                ; Execution count [0.00e+000]
$LN1446:
        mov       rax, QWORD PTR [56+rbp]                       ;446.2
$LN1447:
        mov       rdx, QWORD PTR [72+rbp]                       ;446.2
$LN1448:
        mov       rcx, rax                                      ;446.2
$LN1449:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;446.2
$LN1450:
                                ; LOE rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.39::                        ; Preds .B8.13
                                ; Execution count [0.00e+000]
$LN1451:
        mov       DWORD PTR [12+rbp], eax                       ;446.2
$LN1452:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.14::                        ; Preds .B8.39
                                ; Execution count [0.00e+000]
$LN1453:
        mov       eax, DWORD PTR [12+rbp]                       ;446.2
$LN1454:
        test      eax, eax                                      ;446.2
$LN1455:
        je        .B8.16        ; Prob 50%                      ;446.2
$LN1456:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.15::                        ; Preds .B8.14 .B8.12
                                ; Execution count [0.00e+000]
$LN1457:
        mov       eax, 0                                        ;446.2
$LN1458:
        test      eax, eax                                      ;446.2
$LN1459:
        jne       .B8.12        ; Prob 0%                       ;446.2
$LN1460:
        jmp       .B8.17        ; Prob 100%                     ;446.2
$LN1461:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.16::                        ; Preds .B8.14
                                ; Execution count [0.00e+000]
$LN1462:
        mov       eax, 2                                        ;446.2
$LN1463:
        mov       rbx, QWORD PTR [152+rbp]                      ;446.2[spill]
$LN1464:
        mov       rsi, QWORD PTR [160+rbp]                      ;446.2[spill]
$LN1465:
        mov       rdi, QWORD PTR [168+rbp]                      ;446.2[spill]
$LN1466:
        lea       rsp, QWORD PTR [176+rbp]                      ;446.2
$LN1467:
        pop       rbp                                           ;446.2
$LN1468:
        ret                                                     ;446.2
$LN1469:
                                ; LOE
.B8.17::                        ; Preds .B8.15
                                ; Execution count [0.00e+000]
$LN1470:
        mov       rax, QWORD PTR [24+rbp]                       ;448.2
$LN1471:
        test      rax, rax                                      ;448.2
$LN1472:
        je        .B8.22        ; Prob 50%                      ;448.2
$LN1473:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.18::                        ; Preds .B8.17
                                ; Execution count [0.00e+000]
$LN1474:
        mov       rax, QWORD PTR [40+rbp]                       ;449.3
$LN1475:
        mov       rcx, rax                                      ;449.3
$LN1476:
;       malloc(size_t)
        call      malloc                                        ;449.3
$LN1477:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.40::                        ; Preds .B8.18
                                ; Execution count [0.00e+000]
$LN1478:
        mov       QWORD PTR [88+rbp], rax                       ;449.3
$LN1479:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.19::                        ; Preds .B8.40
                                ; Execution count [0.00e+000]
$LN1480:
        mov       rax, QWORD PTR [88+rbp]                       ;449.3
$LN1481:
        mov       QWORD PTR [48+rbp], rax                       ;449.3
$LN1482:
        mov       rax, QWORD PTR [48+rbp]                       ;450.3
$LN1483:
        test      rax, rax                                      ;450.3
$LN1484:
        jne       .B8.21        ; Prob 50%                      ;450.3
$LN1485:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.20::                        ; Preds .B8.19
                                ; Execution count [0.00e+000]
$LN1486:
        mov       DWORD PTR [rbp], 3                            ;451.4
$LN1487:
        jmp       .B8.29        ; Prob 100%                     ;451.4
$LN1488:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.21::                        ; Preds .B8.19
                                ; Execution count [0.00e+000]
$LN1489:
        mov       rax, QWORD PTR [48+rbp]                       ;455.3
$LN1490:
        mov       rdx, QWORD PTR [24+rbp]                       ;455.3
$LN1491:
        mov       rcx, QWORD PTR [40+rbp]                       ;455.3
$LN1492:
        mov       rdi, rax                                      ;455.3
$LN1493:
        mov       rsi, rdx                                      ;455.3
$LN1494:
        mov       rdx, rdi                                      ;455.3
$LN1495:
        mov       eax, ecx                                      ;455.3
$LN1496:
        shr       rcx, 2                                        ;455.3
$LN1497:
        rep   movsd                                             ;455.3
$LN1498:
        mov       ecx, eax                                      ;455.3
$LN1499:
        and       ecx, 3                                        ;455.3
$LN1500:
        rep   movsb                                             ;455.3
$LN1501:
        mov       rax, rdx                                      ;455.3
$LN1502:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.41::                        ; Preds .B8.21
                                ; Execution count [0.00e+000]
$LN1503:
        mov       QWORD PTR [112+rbp], rax                      ;455.3
$LN1504:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.22::                        ; Preds .B8.41 .B8.17
                                ; Execution count [0.00e+000]
$LN1505:
        mov       rax, QWORD PTR [56+rbp]                       ;457.2
$LN1506:
        test      rax, rax                                      ;457.2
$LN1507:
        je        .B8.27        ; Prob 50%                      ;457.2
$LN1508:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.23::                        ; Preds .B8.22
                                ; Execution count [0.00e+000]
$LN1509:
        mov       rax, QWORD PTR [72+rbp]                       ;458.3
$LN1510:
        mov       rcx, rax                                      ;458.3
$LN1511:
;       malloc(size_t)
        call      malloc                                        ;458.3
$LN1512:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.42::                        ; Preds .B8.23
                                ; Execution count [0.00e+000]
$LN1513:
        mov       QWORD PTR [96+rbp], rax                       ;458.3
$LN1514:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.24::                        ; Preds .B8.42
                                ; Execution count [0.00e+000]
$LN1515:
        mov       rax, QWORD PTR [96+rbp]                       ;458.3
$LN1516:
        mov       QWORD PTR [120+rbp], rax                      ;458.3
$LN1517:
        mov       rax, QWORD PTR [120+rbp]                      ;458.3
$LN1518:
        mov       QWORD PTR [80+rbp], rax                       ;458.3
$LN1519:
        mov       rax, QWORD PTR [120+rbp]                      ;458.3
$LN1520:
        test      rax, rax                                      ;458.3
$LN1521:
        jne       .B8.26        ; Prob 50%                      ;458.3
$LN1522:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.25::                        ; Preds .B8.24
                                ; Execution count [0.00e+000]
$LN1523:
        mov       DWORD PTR [rbp], 3                            ;459.4
$LN1524:
        jmp       .B8.29        ; Prob 100%                     ;459.4
$LN1525:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.26::                        ; Preds .B8.24
                                ; Execution count [0.00e+000]
$LN1526:
        mov       rax, QWORD PTR [80+rbp]                       ;463.3
$LN1527:
        mov       edx, 0                                        ;463.3
$LN1528:
        mov       rcx, QWORD PTR [72+rbp]                       ;463.3
$LN1529:
        mov       rdi, rax                                      ;463.3
$LN1530:
        mov       eax, edx                                      ;463.3
$LN1531:
        and       eax, 65535                                    ;463.3
$LN1532:
        mov       ah, al                                        ;463.3
$LN1533:
        mov       edx, eax                                      ;463.3
$LN1534:
        shl       eax, 16                                       ;463.3
$LN1535:
        or        eax, edx                                      ;463.3
$LN1536:
        mov       esi, ecx                                      ;463.3
$LN1537:
        shr       rcx, 2                                        ;463.3
$LN1538:
        mov       rdx, rdi                                      ;463.3
$LN1539:
        rep   stosd                                             ;463.3
$LN1540:
        mov       ecx, esi                                      ;463.3
$LN1541:
        and       ecx, 3                                        ;463.3
$LN1542:
        rep   stosb                                             ;463.3
$LN1543:
        mov       rax, rdx                                      ;463.3
$LN1544:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.43::                        ; Preds .B8.26
                                ; Execution count [0.00e+000]
$LN1545:
        mov       QWORD PTR [128+rbp], rax                      ;463.3
$LN1546:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.27::                        ; Preds .B8.43 .B8.22
                                ; Execution count [0.00e+000]
$LN1547:
        mov       rax, QWORD PTR [48+rbp]                       ;465.2
$LN1548:
        mov       rdx, QWORD PTR [32+rbp]                       ;465.2
$LN1549:
        mov       rcx, QWORD PTR [80+rbp]                       ;465.2
$LN1550:
        mov       rbx, QWORD PTR [64+rbp]                       ;465.2
$LN1551:
        mov       QWORD PTR [144+rbp], rcx                      ;465.2[spill]
$LN1552:
        mov       rcx, rax                                      ;465.2
$LN1553:
        mov       rax, QWORD PTR [144+rbp]                      ;465.2[spill]
$LN1554:
        mov       r8, rax                                       ;465.2
$LN1555:
        mov       r9, rbx                                       ;465.2
$LN1556:
;       enclaveRunLengthDecode(uint8_t *, size_t, uint8_t *, size_t)
        call      enclaveRunLengthDecode                        ;465.2
$LN1557:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.44::                        ; Preds .B8.27
                                ; Execution count [0.00e+000]
$LN1558:
        mov       QWORD PTR [104+rbp], rax                      ;465.2
$LN1559:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.28::                        ; Preds .B8.44
                                ; Execution count [0.00e+000]
$LN1560:
        mov       rax, QWORD PTR [16+rbp]                       ;465.2
$LN1561:
        mov       rdx, QWORD PTR [104+rbp]                      ;465.2
$LN1562:
        mov       QWORD PTR [rax], rdx                          ;465.2
$LN1563:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.29::                        ; Preds .B8.28 .B8.25 .B8.20
                                ; Execution count [0.00e+000]
$LN1564:
        mov       rax, QWORD PTR [48+rbp]                       ;467.2
$LN1565:
        test      rax, rax                                      ;467.2
$LN1566:
        je        .B8.31        ; Prob 50%                      ;467.2
$LN1567:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.30::                        ; Preds .B8.29
                                ; Execution count [0.00e+000]
$LN1568:
        mov       rax, QWORD PTR [48+rbp]                       ;467.14
$LN1569:
        mov       rcx, rax                                      ;467.14
$LN1570:
;       free(void *)
        call      free                                          ;467.14
$LN1571:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.45::                        ; Preds .B8.30
                                ; Execution count [0.00e+000]
$LN1572:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.31::                        ; Preds .B8.45 .B8.29
                                ; Execution count [0.00e+000]
$LN1573:
        mov       rax, QWORD PTR [80+rbp]                       ;468.2
$LN1574:
        test      rax, rax                                      ;468.2
$LN1575:
        je        .B8.34        ; Prob 50%                      ;468.2
$LN1576:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.32::                        ; Preds .B8.31
                                ; Execution count [0.00e+000]
$LN1577:
        mov       rax, QWORD PTR [56+rbp]                       ;469.3
$LN1578:
        mov       rdx, QWORD PTR [80+rbp]                       ;469.3
$LN1579:
        mov       rcx, QWORD PTR [72+rbp]                       ;469.3
$LN1580:
        mov       rdi, rax                                      ;469.3
$LN1581:
        mov       rsi, rdx                                      ;469.3
$LN1582:
        mov       rdx, rdi                                      ;469.3
$LN1583:
        mov       eax, ecx                                      ;469.3
$LN1584:
        shr       rcx, 2                                        ;469.3
$LN1585:
        rep   movsd                                             ;469.3
$LN1586:
        mov       ecx, eax                                      ;469.3
$LN1587:
        and       ecx, 3                                        ;469.3
$LN1588:
        rep   movsb                                             ;469.3
$LN1589:
        mov       rax, rdx                                      ;469.3
$LN1590:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.46::                        ; Preds .B8.32
                                ; Execution count [0.00e+000]
$LN1591:
        mov       QWORD PTR [136+rbp], rax                      ;469.3
$LN1592:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.33::                        ; Preds .B8.46
                                ; Execution count [0.00e+000]
$LN1593:
        mov       rax, QWORD PTR [80+rbp]                       ;470.3
$LN1594:
        mov       rcx, rax                                      ;470.3
$LN1595:
;       free(void *)
        call      free                                          ;470.3
$LN1596:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.47::                        ; Preds .B8.33
                                ; Execution count [0.00e+000]
$LN1597:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B8.34::                        ; Preds .B8.47 .B8.31
                                ; Execution count [0.00e+000]
$LN1598:
        mov       eax, DWORD PTR [rbp]                          ;473.2
$LN1599:
        mov       rbx, QWORD PTR [152+rbp]                      ;473.2[spill]
$LN1600:
        mov       rsi, QWORD PTR [160+rbp]                      ;473.2[spill]
$LN1601:
        mov       rdi, QWORD PTR [168+rbp]                      ;473.2[spill]
$LN1602:
        lea       rsp, QWORD PTR [176+rbp]                      ;473.2
$LN1603:
        pop       rbp                                           ;473.2
$LN1604:
        ret                                                     ;473.2
$LN1605:
                                ; LOE
.B8.35::
$LN1606:
; mark_end;
sgx_enclaveRunLengthDecode ENDP
$LNsgx_enclaveRunLengthDecode$1607:
;sgx_enclaveRunLengthDecode	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$sgx_enclaveRunLengthDecode
	ALIGN 004H
.unwind.sgx_enclaveRunLengthDecode.B1_B34	DD	621421057
	DD	1520674
	DD	1598491
	DD	1668116
	DD	17302285
	DD	1342242842
;.xdata$sgx_enclaveRunLengthDecode	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$sgx_enclaveRunLengthDecode
	ALIGN 004H
.pdata.sgx_enclaveRunLengthDecode.B1_B34	DD	imagerel .B8.1
	DD	imagerel .B8.35
	DD	imagerel .unwind.sgx_enclaveRunLengthDecode.B1_B34
;.pdata$sgx_enclaveRunLengthDecode	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  sgx_enclaveRunLengthDecode
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_enclaveRunLengthEncodeAndSum
TXTST8:
_2__routine_start_sgx_enclaveRunLengthEncodeAndSum_8:
; -- Begin  sgx_enclaveRunLengthEncodeAndSum
;sgx_enclaveRunLengthEncodeAndSum	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_enclaveRunLengthEncodeAndSum
; mark_begin;

; --- sgx_enclaveRunLengthEncodeAndSum(void *)
sgx_enclaveRunLengthEncodeAndSum	PROC PRIVATE
; parameter 1(pms): rcx
.B9.1::                         ; Preds .B9.0
                                ; Execution count [0.00e+000]
L70::
                                                          ;477.1
$LN1608:
        push      rbp                                           ;477.1
$LN1609:
        sub       rsp, 192                                      ;477.1
$LN1610:
        lea       rbp, QWORD PTR [32+rsp]                       ;477.1
$LN1611:
        mov       QWORD PTR [152+rbp], rdi                      ;477.1[spill]
$LN1612:
        mov       QWORD PTR [144+rbp], rsi                      ;477.1[spill]
$LN1613:
        mov       QWORD PTR [176+rbp], rcx                      ;477.1
$LN1614:
        mov       rax, QWORD PTR [176+rbp]                      ;478.40
$LN1615:
        mov       QWORD PTR [16+rbp], rax                       ;478.40
$LN1616:
        mov       DWORD PTR [rbp], 0                            ;479.22
$LN1617:
        mov       rax, QWORD PTR [16+rbp]                       ;480.19
$LN1618:
        mov       rax, QWORD PTR [8+rax]                        ;480.19
$LN1619:
        mov       QWORD PTR [24+rbp], rax                       ;480.19
$LN1620:
        mov       rax, QWORD PTR [16+rbp]                       ;481.21
$LN1621:
        mov       rax, QWORD PTR [16+rax]                       ;481.21
$LN1622:
        mov       QWORD PTR [32+rbp], rax                       ;481.21
$LN1623:
        mov       rax, QWORD PTR [32+rbp]                       ;482.17
$LN1624:
        mov       QWORD PTR [40+rbp], rax                       ;482.17
$LN1625:
        mov       QWORD PTR [48+rbp], 0                         ;483.18
$LN1626:
        mov       rax, QWORD PTR [16+rbp]                       ;484.20
$LN1627:
        mov       rax, QWORD PTR [24+rax]                       ;484.20
$LN1628:
        mov       QWORD PTR [56+rbp], rax                       ;484.20
$LN1629:
        mov       QWORD PTR [64+rbp], 8                         ;485.18
$LN1630:
        mov       QWORD PTR [72+rbp], 0                         ;486.19
$LN1631:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.2::                         ; Preds .B9.5 .B9.1
                                ; Execution count [0.00e+000]
$LN1632:
        mov       rax, QWORD PTR [176+rbp]                      ;488.2
$LN1633:
        test      rax, rax                                      ;488.2
$LN1634:
        je        .B9.6         ; Prob 50%                      ;488.2
$LN1635:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.3::                         ; Preds .B9.2
                                ; Execution count [0.00e+000]
$LN1636:
        mov       rax, QWORD PTR [176+rbp]                      ;488.2
$LN1637:
        mov       edx, 32                                       ;488.2
$LN1638:
        mov       rcx, rax                                      ;488.2
$LN1639:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;488.2
$LN1640:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.37::                        ; Preds .B9.3
                                ; Execution count [0.00e+000]
$LN1641:
        mov       DWORD PTR [4+rbp], eax                        ;488.2
$LN1642:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.4::                         ; Preds .B9.37
                                ; Execution count [0.00e+000]
$LN1643:
        mov       eax, DWORD PTR [4+rbp]                        ;488.2
$LN1644:
        test      eax, eax                                      ;488.2
$LN1645:
        je        .B9.6         ; Prob 50%                      ;488.2
$LN1646:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.5::                         ; Preds .B9.4
                                ; Execution count [0.00e+000]
$LN1647:
        mov       eax, 0                                        ;488.2
$LN1648:
        test      eax, eax                                      ;488.2
$LN1649:
        jne       .B9.2         ; Prob 0%                       ;488.2
$LN1650:
        jmp       .B9.7         ; Prob 100%                     ;488.2
$LN1651:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.6::                         ; Preds .B9.2 .B9.4
                                ; Execution count [0.00e+000]
$LN1652:
        mov       eax, 2                                        ;488.2
$LN1653:
        mov       rsi, QWORD PTR [144+rbp]                      ;488.2[spill]
$LN1654:
        mov       rdi, QWORD PTR [152+rbp]                      ;488.2[spill]
$LN1655:
        lea       rsp, QWORD PTR [160+rbp]                      ;488.2
$LN1656:
        pop       rbp                                           ;488.2
$LN1657:
        ret                                                     ;488.2
$LN1658:
                                ; LOE
.B9.7::                         ; Preds .B9.10 .B9.5
                                ; Execution count [0.00e+000]
$LN1659:
        mov       rax, QWORD PTR [24+rbp]                       ;489.2
$LN1660:
        test      rax, rax                                      ;489.2
$LN1661:
        je        .B9.10        ; Prob 50%                      ;489.2
$LN1662:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.8::                         ; Preds .B9.7
                                ; Execution count [0.00e+000]
$LN1663:
        mov       rax, QWORD PTR [24+rbp]                       ;489.2
$LN1664:
        mov       rdx, QWORD PTR [40+rbp]                       ;489.2
$LN1665:
        mov       rcx, rax                                      ;489.2
$LN1666:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;489.2
$LN1667:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.38::                        ; Preds .B9.8
                                ; Execution count [0.00e+000]
$LN1668:
        mov       DWORD PTR [8+rbp], eax                        ;489.2
$LN1669:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.9::                         ; Preds .B9.38
                                ; Execution count [0.00e+000]
$LN1670:
        mov       eax, DWORD PTR [8+rbp]                        ;489.2
$LN1671:
        test      eax, eax                                      ;489.2
$LN1672:
        je        .B9.11        ; Prob 50%                      ;489.2
$LN1673:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.10::                        ; Preds .B9.9 .B9.7
                                ; Execution count [0.00e+000]
$LN1674:
        mov       eax, 0                                        ;489.2
$LN1675:
        test      eax, eax                                      ;489.2
$LN1676:
        jne       .B9.7         ; Prob 0%                       ;489.2
$LN1677:
        jmp       .B9.12        ; Prob 100%                     ;489.2
$LN1678:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.11::                        ; Preds .B9.9
                                ; Execution count [0.00e+000]
$LN1679:
        mov       eax, 2                                        ;489.2
$LN1680:
        mov       rsi, QWORD PTR [144+rbp]                      ;489.2[spill]
$LN1681:
        mov       rdi, QWORD PTR [152+rbp]                      ;489.2[spill]
$LN1682:
        lea       rsp, QWORD PTR [160+rbp]                      ;489.2
$LN1683:
        pop       rbp                                           ;489.2
$LN1684:
        ret                                                     ;489.2
$LN1685:
                                ; LOE
.B9.12::                        ; Preds .B9.15 .B9.10
                                ; Execution count [0.00e+000]
$LN1686:
        mov       rax, QWORD PTR [56+rbp]                       ;490.2
$LN1687:
        test      rax, rax                                      ;490.2
$LN1688:
        je        .B9.15        ; Prob 50%                      ;490.2
$LN1689:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.13::                        ; Preds .B9.12
                                ; Execution count [0.00e+000]
$LN1690:
        mov       rax, QWORD PTR [56+rbp]                       ;490.2
$LN1691:
        mov       rdx, QWORD PTR [64+rbp]                       ;490.2
$LN1692:
        mov       rcx, rax                                      ;490.2
$LN1693:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;490.2
$LN1694:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.39::                        ; Preds .B9.13
                                ; Execution count [0.00e+000]
$LN1695:
        mov       DWORD PTR [12+rbp], eax                       ;490.2
$LN1696:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.14::                        ; Preds .B9.39
                                ; Execution count [0.00e+000]
$LN1697:
        mov       eax, DWORD PTR [12+rbp]                       ;490.2
$LN1698:
        test      eax, eax                                      ;490.2
$LN1699:
        je        .B9.16        ; Prob 50%                      ;490.2
$LN1700:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.15::                        ; Preds .B9.14 .B9.12
                                ; Execution count [0.00e+000]
$LN1701:
        mov       eax, 0                                        ;490.2
$LN1702:
        test      eax, eax                                      ;490.2
$LN1703:
        jne       .B9.12        ; Prob 0%                       ;490.2
$LN1704:
        jmp       .B9.17        ; Prob 100%                     ;490.2
$LN1705:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.16::                        ; Preds .B9.14
                                ; Execution count [0.00e+000]
$LN1706:
        mov       eax, 2                                        ;490.2
$LN1707:
        mov       rsi, QWORD PTR [144+rbp]                      ;490.2[spill]
$LN1708:
        mov       rdi, QWORD PTR [152+rbp]                      ;490.2[spill]
$LN1709:
        lea       rsp, QWORD PTR [160+rbp]                      ;490.2
$LN1710:
        pop       rbp                                           ;490.2
$LN1711:
        ret                                                     ;490.2
$LN1712:
                                ; LOE
.B9.17::                        ; Preds .B9.15
                                ; Execution count [0.00e+000]
$LN1713:
        mov       rax, QWORD PTR [24+rbp]                       ;492.2
$LN1714:
        test      rax, rax                                      ;492.2
$LN1715:
        je        .B9.22        ; Prob 50%                      ;492.2
$LN1716:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.18::                        ; Preds .B9.17
                                ; Execution count [0.00e+000]
$LN1717:
        mov       rax, QWORD PTR [40+rbp]                       ;493.3
$LN1718:
        mov       rcx, rax                                      ;493.3
$LN1719:
;       malloc(size_t)
        call      malloc                                        ;493.3
$LN1720:
                                ; LOE rax rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.40::                        ; Preds .B9.18
                                ; Execution count [0.00e+000]
$LN1721:
        mov       QWORD PTR [80+rbp], rax                       ;493.3
$LN1722:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.19::                        ; Preds .B9.40
                                ; Execution count [0.00e+000]
$LN1723:
        mov       rax, QWORD PTR [80+rbp]                       ;493.3
$LN1724:
        mov       QWORD PTR [48+rbp], rax                       ;493.3
$LN1725:
        mov       rax, QWORD PTR [48+rbp]                       ;494.3
$LN1726:
        test      rax, rax                                      ;494.3
$LN1727:
        jne       .B9.21        ; Prob 50%                      ;494.3
$LN1728:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.20::                        ; Preds .B9.19
                                ; Execution count [0.00e+000]
$LN1729:
        mov       DWORD PTR [rbp], 3                            ;495.4
$LN1730:
        jmp       .B9.29        ; Prob 100%                     ;495.4
$LN1731:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.21::                        ; Preds .B9.19
                                ; Execution count [0.00e+000]
$LN1732:
        mov       rax, QWORD PTR [48+rbp]                       ;499.3
$LN1733:
        mov       rdx, QWORD PTR [24+rbp]                       ;499.3
$LN1734:
        mov       rcx, QWORD PTR [40+rbp]                       ;499.3
$LN1735:
        mov       rdi, rax                                      ;499.3
$LN1736:
        mov       rsi, rdx                                      ;499.3
$LN1737:
        mov       rdx, rdi                                      ;499.3
$LN1738:
        mov       eax, ecx                                      ;499.3
$LN1739:
        shr       rcx, 2                                        ;499.3
$LN1740:
        rep   movsd                                             ;499.3
$LN1741:
        mov       ecx, eax                                      ;499.3
$LN1742:
        and       ecx, 3                                        ;499.3
$LN1743:
        rep   movsb                                             ;499.3
$LN1744:
        mov       rax, rdx                                      ;499.3
$LN1745:
                                ; LOE rax rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.41::                        ; Preds .B9.21
                                ; Execution count [0.00e+000]
$LN1746:
        mov       QWORD PTR [104+rbp], rax                      ;499.3
$LN1747:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.22::                        ; Preds .B9.41 .B9.17
                                ; Execution count [0.00e+000]
$LN1748:
        mov       rax, QWORD PTR [56+rbp]                       ;501.2
$LN1749:
        test      rax, rax                                      ;501.2
$LN1750:
        je        .B9.27        ; Prob 50%                      ;501.2
$LN1751:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.23::                        ; Preds .B9.22
                                ; Execution count [0.00e+000]
$LN1752:
        mov       rax, QWORD PTR [64+rbp]                       ;502.3
$LN1753:
        mov       rcx, rax                                      ;502.3
$LN1754:
;       malloc(size_t)
        call      malloc                                        ;502.3
$LN1755:
                                ; LOE rax rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.42::                        ; Preds .B9.23
                                ; Execution count [0.00e+000]
$LN1756:
        mov       QWORD PTR [88+rbp], rax                       ;502.3
$LN1757:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.24::                        ; Preds .B9.42
                                ; Execution count [0.00e+000]
$LN1758:
        mov       rax, QWORD PTR [88+rbp]                       ;502.3
$LN1759:
        mov       QWORD PTR [112+rbp], rax                      ;502.3
$LN1760:
        mov       rax, QWORD PTR [112+rbp]                      ;502.3
$LN1761:
        mov       QWORD PTR [72+rbp], rax                       ;502.3
$LN1762:
        mov       rax, QWORD PTR [112+rbp]                      ;502.3
$LN1763:
        test      rax, rax                                      ;502.3
$LN1764:
        jne       .B9.26        ; Prob 50%                      ;502.3
$LN1765:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.25::                        ; Preds .B9.24
                                ; Execution count [0.00e+000]
$LN1766:
        mov       DWORD PTR [rbp], 3                            ;503.4
$LN1767:
        jmp       .B9.29        ; Prob 100%                     ;503.4
$LN1768:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.26::                        ; Preds .B9.24
                                ; Execution count [0.00e+000]
$LN1769:
        mov       rax, QWORD PTR [72+rbp]                       ;507.3
$LN1770:
        mov       edx, 0                                        ;507.3
$LN1771:
        mov       rcx, QWORD PTR [64+rbp]                       ;507.3
$LN1772:
        mov       rdi, rax                                      ;507.3
$LN1773:
        mov       eax, edx                                      ;507.3
$LN1774:
        and       eax, 65535                                    ;507.3
$LN1775:
        mov       ah, al                                        ;507.3
$LN1776:
        mov       edx, eax                                      ;507.3
$LN1777:
        shl       eax, 16                                       ;507.3
$LN1778:
        or        eax, edx                                      ;507.3
$LN1779:
        mov       esi, ecx                                      ;507.3
$LN1780:
        shr       rcx, 2                                        ;507.3
$LN1781:
        mov       rdx, rdi                                      ;507.3
$LN1782:
        rep   stosd                                             ;507.3
$LN1783:
        mov       ecx, esi                                      ;507.3
$LN1784:
        and       ecx, 3                                        ;507.3
$LN1785:
        rep   stosb                                             ;507.3
$LN1786:
        mov       rax, rdx                                      ;507.3
$LN1787:
                                ; LOE rax rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.43::                        ; Preds .B9.26
                                ; Execution count [0.00e+000]
$LN1788:
        mov       QWORD PTR [120+rbp], rax                      ;507.3
$LN1789:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.27::                        ; Preds .B9.43 .B9.22
                                ; Execution count [0.00e+000]
$LN1790:
        mov       rax, QWORD PTR [48+rbp]                       ;509.2
$LN1791:
        mov       rdx, QWORD PTR [32+rbp]                       ;509.2
$LN1792:
        mov       rcx, QWORD PTR [72+rbp]                       ;509.2
$LN1793:
        mov       QWORD PTR [136+rbp], rcx                      ;509.2[spill]
$LN1794:
        mov       rcx, rax                                      ;509.2
$LN1795:
        mov       rax, QWORD PTR [136+rbp]                      ;509.2[spill]
$LN1796:
        mov       r8, rax                                       ;509.2
$LN1797:
;       enclaveRunLengthEncodeAndSum(uint8_t *, size_t, uint8_t *)
        call      enclaveRunLengthEncodeAndSum                  ;509.2
$LN1798:
                                ; LOE rax rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.44::                        ; Preds .B9.27
                                ; Execution count [0.00e+000]
$LN1799:
        mov       QWORD PTR [96+rbp], rax                       ;509.2
$LN1800:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.28::                        ; Preds .B9.44
                                ; Execution count [0.00e+000]
$LN1801:
        mov       rax, QWORD PTR [16+rbp]                       ;509.2
$LN1802:
        mov       rdx, QWORD PTR [96+rbp]                       ;509.2
$LN1803:
        mov       QWORD PTR [rax], rdx                          ;509.2
$LN1804:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.29::                        ; Preds .B9.28 .B9.25 .B9.20
                                ; Execution count [0.00e+000]
$LN1805:
        mov       rax, QWORD PTR [48+rbp]                       ;511.2
$LN1806:
        test      rax, rax                                      ;511.2
$LN1807:
        je        .B9.31        ; Prob 50%                      ;511.2
$LN1808:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.30::                        ; Preds .B9.29
                                ; Execution count [0.00e+000]
$LN1809:
        mov       rax, QWORD PTR [48+rbp]                       ;511.14
$LN1810:
        mov       rcx, rax                                      ;511.14
$LN1811:
;       free(void *)
        call      free                                          ;511.14
$LN1812:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.45::                        ; Preds .B9.30
                                ; Execution count [0.00e+000]
$LN1813:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.31::                        ; Preds .B9.45 .B9.29
                                ; Execution count [0.00e+000]
$LN1814:
        mov       rax, QWORD PTR [72+rbp]                       ;512.2
$LN1815:
        test      rax, rax                                      ;512.2
$LN1816:
        je        .B9.34        ; Prob 50%                      ;512.2
$LN1817:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.32::                        ; Preds .B9.31
                                ; Execution count [0.00e+000]
$LN1818:
        mov       rax, QWORD PTR [56+rbp]                       ;513.3
$LN1819:
        mov       rdx, QWORD PTR [72+rbp]                       ;513.3
$LN1820:
        mov       rcx, QWORD PTR [64+rbp]                       ;513.3
$LN1821:
        mov       rdi, rax                                      ;513.3
$LN1822:
        mov       rsi, rdx                                      ;513.3
$LN1823:
        mov       rdx, rdi                                      ;513.3
$LN1824:
        mov       eax, ecx                                      ;513.3
$LN1825:
        shr       rcx, 2                                        ;513.3
$LN1826:
        rep   movsd                                             ;513.3
$LN1827:
        mov       ecx, eax                                      ;513.3
$LN1828:
        and       ecx, 3                                        ;513.3
$LN1829:
        rep   movsb                                             ;513.3
$LN1830:
        mov       rax, rdx                                      ;513.3
$LN1831:
                                ; LOE rax rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.46::                        ; Preds .B9.32
                                ; Execution count [0.00e+000]
$LN1832:
        mov       QWORD PTR [128+rbp], rax                      ;513.3
$LN1833:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.33::                        ; Preds .B9.46
                                ; Execution count [0.00e+000]
$LN1834:
        mov       rax, QWORD PTR [72+rbp]                       ;514.3
$LN1835:
        mov       rcx, rax                                      ;514.3
$LN1836:
;       free(void *)
        call      free                                          ;514.3
$LN1837:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.47::                        ; Preds .B9.33
                                ; Execution count [0.00e+000]
$LN1838:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B9.34::                        ; Preds .B9.47 .B9.31
                                ; Execution count [0.00e+000]
$LN1839:
        mov       eax, DWORD PTR [rbp]                          ;517.2
$LN1840:
        mov       rsi, QWORD PTR [144+rbp]                      ;517.2[spill]
$LN1841:
        mov       rdi, QWORD PTR [152+rbp]                      ;517.2[spill]
$LN1842:
        lea       rsp, QWORD PTR [160+rbp]                      ;517.2
$LN1843:
        pop       rbp                                           ;517.2
$LN1844:
        ret                                                     ;517.2
$LN1845:
                                ; LOE
.B9.35::
$LN1846:
; mark_end;
sgx_enclaveRunLengthEncodeAndSum ENDP
$LNsgx_enclaveRunLengthEncodeAndSum$1847:
;sgx_enclaveRunLengthEncodeAndSum	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$sgx_enclaveRunLengthEncodeAndSum
	ALIGN 004H
.unwind.sgx_enclaveRunLengthEncodeAndSum.B1_B34	DD	621288193
	DD	1467419
	DD	1537044
	DD	17302285
	DD	1342242840
;.xdata$sgx_enclaveRunLengthEncodeAndSum	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$sgx_enclaveRunLengthEncodeAndSum
	ALIGN 004H
.pdata.sgx_enclaveRunLengthEncodeAndSum.B1_B34	DD	imagerel .B9.1
	DD	imagerel .B9.35
	DD	imagerel .unwind.sgx_enclaveRunLengthEncodeAndSum.B1_B34
;.pdata$sgx_enclaveRunLengthEncodeAndSum	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  sgx_enclaveRunLengthEncodeAndSum
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_enclaveVByte
TXTST9:
_2__routine_start_sgx_enclaveVByte_9:
; -- Begin  sgx_enclaveVByte
;sgx_enclaveVByte	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_enclaveVByte
; mark_begin;

; --- sgx_enclaveVByte(void *)
sgx_enclaveVByte	PROC PRIVATE
; parameter 1(pms): rcx
.B10.1::                        ; Preds .B10.0
                                ; Execution count [0.00e+000]
L79::
                                                          ;521.1
$LN1848:
        push      rbp                                           ;521.1
$LN1849:
        sub       rsp, 208                                      ;521.1
$LN1850:
        lea       rbp, QWORD PTR [32+rsp]                       ;521.1
$LN1851:
        mov       QWORD PTR [168+rbp], rdi                      ;521.1[spill]
$LN1852:
        mov       QWORD PTR [160+rbp], rsi                      ;521.1[spill]
$LN1853:
        mov       QWORD PTR [152+rbp], rbx                      ;521.1[spill]
$LN1854:
        mov       QWORD PTR [192+rbp], rcx                      ;521.1
$LN1855:
        mov       rax, QWORD PTR [192+rbp]                      ;522.24
$LN1856:
        mov       QWORD PTR [16+rbp], rax                       ;522.24
$LN1857:
        mov       DWORD PTR [rbp], 0                            ;523.22
$LN1858:
        mov       rax, QWORD PTR [16+rbp]                       ;524.19
$LN1859:
        mov       rax, QWORD PTR [8+rax]                        ;524.19
$LN1860:
        mov       QWORD PTR [24+rbp], rax                       ;524.19
$LN1861:
        mov       rax, QWORD PTR [16+rbp]                       ;525.23
$LN1862:
        mov       rax, QWORD PTR [16+rax]                       ;525.23
$LN1863:
        mov       QWORD PTR [32+rbp], rax                       ;525.23
$LN1864:
        mov       rax, QWORD PTR [32+rbp]                       ;526.17
$LN1865:
        mov       QWORD PTR [40+rbp], rax                       ;526.17
$LN1866:
        mov       QWORD PTR [48+rbp], 0                         ;527.18
$LN1867:
        mov       rax, QWORD PTR [16+rbp]                       ;528.20
$LN1868:
        mov       rax, QWORD PTR [24+rax]                       ;528.20
$LN1869:
        mov       QWORD PTR [56+rbp], rax                       ;528.20
$LN1870:
        mov       rax, QWORD PTR [16+rbp]                       ;529.24
$LN1871:
        mov       rax, QWORD PTR [32+rax]                       ;529.24
$LN1872:
        mov       QWORD PTR [64+rbp], rax                       ;529.24
$LN1873:
        mov       rax, QWORD PTR [64+rbp]                       ;530.18
$LN1874:
        mov       QWORD PTR [72+rbp], rax                       ;530.18
$LN1875:
        mov       QWORD PTR [80+rbp], 0                         ;531.19
$LN1876:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.2::                        ; Preds .B10.5 .B10.1
                                ; Execution count [0.00e+000]
$LN1877:
        mov       rax, QWORD PTR [192+rbp]                      ;533.2
$LN1878:
        test      rax, rax                                      ;533.2
$LN1879:
        je        .B10.6        ; Prob 50%                      ;533.2
$LN1880:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.3::                        ; Preds .B10.2
                                ; Execution count [0.00e+000]
$LN1881:
        mov       rax, QWORD PTR [192+rbp]                      ;533.2
$LN1882:
        mov       edx, 40                                       ;533.2
$LN1883:
        mov       rcx, rax                                      ;533.2
$LN1884:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;533.2
$LN1885:
                                ; LOE rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.37::                       ; Preds .B10.3
                                ; Execution count [0.00e+000]
$LN1886:
        mov       DWORD PTR [4+rbp], eax                        ;533.2
$LN1887:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.4::                        ; Preds .B10.37
                                ; Execution count [0.00e+000]
$LN1888:
        mov       eax, DWORD PTR [4+rbp]                        ;533.2
$LN1889:
        test      eax, eax                                      ;533.2
$LN1890:
        je        .B10.6        ; Prob 50%                      ;533.2
$LN1891:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.5::                        ; Preds .B10.4
                                ; Execution count [0.00e+000]
$LN1892:
        mov       eax, 0                                        ;533.2
$LN1893:
        test      eax, eax                                      ;533.2
$LN1894:
        jne       .B10.2        ; Prob 0%                       ;533.2
$LN1895:
        jmp       .B10.7        ; Prob 100%                     ;533.2
$LN1896:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.6::                        ; Preds .B10.2 .B10.4
                                ; Execution count [0.00e+000]
$LN1897:
        mov       eax, 2                                        ;533.2
$LN1898:
        mov       rbx, QWORD PTR [152+rbp]                      ;533.2[spill]
$LN1899:
        mov       rsi, QWORD PTR [160+rbp]                      ;533.2[spill]
$LN1900:
        mov       rdi, QWORD PTR [168+rbp]                      ;533.2[spill]
$LN1901:
        lea       rsp, QWORD PTR [176+rbp]                      ;533.2
$LN1902:
        pop       rbp                                           ;533.2
$LN1903:
        ret                                                     ;533.2
$LN1904:
                                ; LOE
.B10.7::                        ; Preds .B10.10 .B10.5
                                ; Execution count [0.00e+000]
$LN1905:
        mov       rax, QWORD PTR [24+rbp]                       ;534.2
$LN1906:
        test      rax, rax                                      ;534.2
$LN1907:
        je        .B10.10       ; Prob 50%                      ;534.2
$LN1908:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.8::                        ; Preds .B10.7
                                ; Execution count [0.00e+000]
$LN1909:
        mov       rax, QWORD PTR [24+rbp]                       ;534.2
$LN1910:
        mov       rdx, QWORD PTR [40+rbp]                       ;534.2
$LN1911:
        mov       rcx, rax                                      ;534.2
$LN1912:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;534.2
$LN1913:
                                ; LOE rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.38::                       ; Preds .B10.8
                                ; Execution count [0.00e+000]
$LN1914:
        mov       DWORD PTR [8+rbp], eax                        ;534.2
$LN1915:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.9::                        ; Preds .B10.38
                                ; Execution count [0.00e+000]
$LN1916:
        mov       eax, DWORD PTR [8+rbp]                        ;534.2
$LN1917:
        test      eax, eax                                      ;534.2
$LN1918:
        je        .B10.11       ; Prob 50%                      ;534.2
$LN1919:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.10::                       ; Preds .B10.9 .B10.7
                                ; Execution count [0.00e+000]
$LN1920:
        mov       eax, 0                                        ;534.2
$LN1921:
        test      eax, eax                                      ;534.2
$LN1922:
        jne       .B10.7        ; Prob 0%                       ;534.2
$LN1923:
        jmp       .B10.12       ; Prob 100%                     ;534.2
$LN1924:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.11::                       ; Preds .B10.9
                                ; Execution count [0.00e+000]
$LN1925:
        mov       eax, 2                                        ;534.2
$LN1926:
        mov       rbx, QWORD PTR [152+rbp]                      ;534.2[spill]
$LN1927:
        mov       rsi, QWORD PTR [160+rbp]                      ;534.2[spill]
$LN1928:
        mov       rdi, QWORD PTR [168+rbp]                      ;534.2[spill]
$LN1929:
        lea       rsp, QWORD PTR [176+rbp]                      ;534.2
$LN1930:
        pop       rbp                                           ;534.2
$LN1931:
        ret                                                     ;534.2
$LN1932:
                                ; LOE
.B10.12::                       ; Preds .B10.15 .B10.10
                                ; Execution count [0.00e+000]
$LN1933:
        mov       rax, QWORD PTR [56+rbp]                       ;535.2
$LN1934:
        test      rax, rax                                      ;535.2
$LN1935:
        je        .B10.15       ; Prob 50%                      ;535.2
$LN1936:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.13::                       ; Preds .B10.12
                                ; Execution count [0.00e+000]
$LN1937:
        mov       rax, QWORD PTR [56+rbp]                       ;535.2
$LN1938:
        mov       rdx, QWORD PTR [72+rbp]                       ;535.2
$LN1939:
        mov       rcx, rax                                      ;535.2
$LN1940:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;535.2
$LN1941:
                                ; LOE rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.39::                       ; Preds .B10.13
                                ; Execution count [0.00e+000]
$LN1942:
        mov       DWORD PTR [12+rbp], eax                       ;535.2
$LN1943:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.14::                       ; Preds .B10.39
                                ; Execution count [0.00e+000]
$LN1944:
        mov       eax, DWORD PTR [12+rbp]                       ;535.2
$LN1945:
        test      eax, eax                                      ;535.2
$LN1946:
        je        .B10.16       ; Prob 50%                      ;535.2
$LN1947:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.15::                       ; Preds .B10.14 .B10.12
                                ; Execution count [0.00e+000]
$LN1948:
        mov       eax, 0                                        ;535.2
$LN1949:
        test      eax, eax                                      ;535.2
$LN1950:
        jne       .B10.12       ; Prob 0%                       ;535.2
$LN1951:
        jmp       .B10.17       ; Prob 100%                     ;535.2
$LN1952:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.16::                       ; Preds .B10.14
                                ; Execution count [0.00e+000]
$LN1953:
        mov       eax, 2                                        ;535.2
$LN1954:
        mov       rbx, QWORD PTR [152+rbp]                      ;535.2[spill]
$LN1955:
        mov       rsi, QWORD PTR [160+rbp]                      ;535.2[spill]
$LN1956:
        mov       rdi, QWORD PTR [168+rbp]                      ;535.2[spill]
$LN1957:
        lea       rsp, QWORD PTR [176+rbp]                      ;535.2
$LN1958:
        pop       rbp                                           ;535.2
$LN1959:
        ret                                                     ;535.2
$LN1960:
                                ; LOE
.B10.17::                       ; Preds .B10.15
                                ; Execution count [0.00e+000]
$LN1961:
        mov       rax, QWORD PTR [24+rbp]                       ;537.2
$LN1962:
        test      rax, rax                                      ;537.2
$LN1963:
        je        .B10.22       ; Prob 50%                      ;537.2
$LN1964:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.18::                       ; Preds .B10.17
                                ; Execution count [0.00e+000]
$LN1965:
        mov       rax, QWORD PTR [40+rbp]                       ;538.3
$LN1966:
        mov       rcx, rax                                      ;538.3
$LN1967:
;       malloc(size_t)
        call      malloc                                        ;538.3
$LN1968:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.40::                       ; Preds .B10.18
                                ; Execution count [0.00e+000]
$LN1969:
        mov       QWORD PTR [88+rbp], rax                       ;538.3
$LN1970:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.19::                       ; Preds .B10.40
                                ; Execution count [0.00e+000]
$LN1971:
        mov       rax, QWORD PTR [88+rbp]                       ;538.3
$LN1972:
        mov       QWORD PTR [48+rbp], rax                       ;538.3
$LN1973:
        mov       rax, QWORD PTR [48+rbp]                       ;539.3
$LN1974:
        test      rax, rax                                      ;539.3
$LN1975:
        jne       .B10.21       ; Prob 50%                      ;539.3
$LN1976:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.20::                       ; Preds .B10.19
                                ; Execution count [0.00e+000]
$LN1977:
        mov       DWORD PTR [rbp], 3                            ;540.4
$LN1978:
        jmp       .B10.29       ; Prob 100%                     ;540.4
$LN1979:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.21::                       ; Preds .B10.19
                                ; Execution count [0.00e+000]
$LN1980:
        mov       rax, QWORD PTR [48+rbp]                       ;544.3
$LN1981:
        mov       rdx, QWORD PTR [24+rbp]                       ;544.3
$LN1982:
        mov       rcx, QWORD PTR [40+rbp]                       ;544.3
$LN1983:
        mov       rdi, rax                                      ;544.3
$LN1984:
        mov       rsi, rdx                                      ;544.3
$LN1985:
        mov       rdx, rdi                                      ;544.3
$LN1986:
        mov       eax, ecx                                      ;544.3
$LN1987:
        shr       rcx, 2                                        ;544.3
$LN1988:
        rep   movsd                                             ;544.3
$LN1989:
        mov       ecx, eax                                      ;544.3
$LN1990:
        and       ecx, 3                                        ;544.3
$LN1991:
        rep   movsb                                             ;544.3
$LN1992:
        mov       rax, rdx                                      ;544.3
$LN1993:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.41::                       ; Preds .B10.21
                                ; Execution count [0.00e+000]
$LN1994:
        mov       QWORD PTR [112+rbp], rax                      ;544.3
$LN1995:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.22::                       ; Preds .B10.41 .B10.17
                                ; Execution count [0.00e+000]
$LN1996:
        mov       rax, QWORD PTR [56+rbp]                       ;546.2
$LN1997:
        test      rax, rax                                      ;546.2
$LN1998:
        je        .B10.27       ; Prob 50%                      ;546.2
$LN1999:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.23::                       ; Preds .B10.22
                                ; Execution count [0.00e+000]
$LN2000:
        mov       rax, QWORD PTR [72+rbp]                       ;547.3
$LN2001:
        mov       rcx, rax                                      ;547.3
$LN2002:
;       malloc(size_t)
        call      malloc                                        ;547.3
$LN2003:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.42::                       ; Preds .B10.23
                                ; Execution count [0.00e+000]
$LN2004:
        mov       QWORD PTR [96+rbp], rax                       ;547.3
$LN2005:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.24::                       ; Preds .B10.42
                                ; Execution count [0.00e+000]
$LN2006:
        mov       rax, QWORD PTR [96+rbp]                       ;547.3
$LN2007:
        mov       QWORD PTR [120+rbp], rax                      ;547.3
$LN2008:
        mov       rax, QWORD PTR [120+rbp]                      ;547.3
$LN2009:
        mov       QWORD PTR [80+rbp], rax                       ;547.3
$LN2010:
        mov       rax, QWORD PTR [120+rbp]                      ;547.3
$LN2011:
        test      rax, rax                                      ;547.3
$LN2012:
        jne       .B10.26       ; Prob 50%                      ;547.3
$LN2013:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.25::                       ; Preds .B10.24
                                ; Execution count [0.00e+000]
$LN2014:
        mov       DWORD PTR [rbp], 3                            ;548.4
$LN2015:
        jmp       .B10.29       ; Prob 100%                     ;548.4
$LN2016:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.26::                       ; Preds .B10.24
                                ; Execution count [0.00e+000]
$LN2017:
        mov       rax, QWORD PTR [80+rbp]                       ;552.3
$LN2018:
        mov       edx, 0                                        ;552.3
$LN2019:
        mov       rcx, QWORD PTR [72+rbp]                       ;552.3
$LN2020:
        mov       rdi, rax                                      ;552.3
$LN2021:
        mov       eax, edx                                      ;552.3
$LN2022:
        and       eax, 65535                                    ;552.3
$LN2023:
        mov       ah, al                                        ;552.3
$LN2024:
        mov       edx, eax                                      ;552.3
$LN2025:
        shl       eax, 16                                       ;552.3
$LN2026:
        or        eax, edx                                      ;552.3
$LN2027:
        mov       esi, ecx                                      ;552.3
$LN2028:
        shr       rcx, 2                                        ;552.3
$LN2029:
        mov       rdx, rdi                                      ;552.3
$LN2030:
        rep   stosd                                             ;552.3
$LN2031:
        mov       ecx, esi                                      ;552.3
$LN2032:
        and       ecx, 3                                        ;552.3
$LN2033:
        rep   stosb                                             ;552.3
$LN2034:
        mov       rax, rdx                                      ;552.3
$LN2035:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.43::                       ; Preds .B10.26
                                ; Execution count [0.00e+000]
$LN2036:
        mov       QWORD PTR [128+rbp], rax                      ;552.3
$LN2037:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.27::                       ; Preds .B10.43 .B10.22
                                ; Execution count [0.00e+000]
$LN2038:
        mov       rax, QWORD PTR [48+rbp]                       ;554.2
$LN2039:
        mov       rdx, QWORD PTR [32+rbp]                       ;554.2
$LN2040:
        mov       rcx, QWORD PTR [80+rbp]                       ;554.2
$LN2041:
        mov       rbx, QWORD PTR [64+rbp]                       ;554.2
$LN2042:
        mov       QWORD PTR [144+rbp], rcx                      ;554.2[spill]
$LN2043:
        mov       rcx, rax                                      ;554.2
$LN2044:
        mov       rax, QWORD PTR [144+rbp]                      ;554.2[spill]
$LN2045:
        mov       r8, rax                                       ;554.2
$LN2046:
        mov       r9, rbx                                       ;554.2
$LN2047:
;       enclaveVByte(uint8_t *, size_t, uint8_t *, size_t)
        call      enclaveVByte                                  ;554.2
$LN2048:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.44::                       ; Preds .B10.27
                                ; Execution count [0.00e+000]
$LN2049:
        mov       QWORD PTR [104+rbp], rax                      ;554.2
$LN2050:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.28::                       ; Preds .B10.44
                                ; Execution count [0.00e+000]
$LN2051:
        mov       rax, QWORD PTR [16+rbp]                       ;554.2
$LN2052:
        mov       rdx, QWORD PTR [104+rbp]                      ;554.2
$LN2053:
        mov       QWORD PTR [rax], rdx                          ;554.2
$LN2054:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.29::                       ; Preds .B10.28 .B10.25 .B10.20
                                ; Execution count [0.00e+000]
$LN2055:
        mov       rax, QWORD PTR [48+rbp]                       ;556.2
$LN2056:
        test      rax, rax                                      ;556.2
$LN2057:
        je        .B10.31       ; Prob 50%                      ;556.2
$LN2058:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.30::                       ; Preds .B10.29
                                ; Execution count [0.00e+000]
$LN2059:
        mov       rax, QWORD PTR [48+rbp]                       ;556.14
$LN2060:
        mov       rcx, rax                                      ;556.14
$LN2061:
;       free(void *)
        call      free                                          ;556.14
$LN2062:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.45::                       ; Preds .B10.30
                                ; Execution count [0.00e+000]
$LN2063:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.31::                       ; Preds .B10.45 .B10.29
                                ; Execution count [0.00e+000]
$LN2064:
        mov       rax, QWORD PTR [80+rbp]                       ;557.2
$LN2065:
        test      rax, rax                                      ;557.2
$LN2066:
        je        .B10.34       ; Prob 50%                      ;557.2
$LN2067:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.32::                       ; Preds .B10.31
                                ; Execution count [0.00e+000]
$LN2068:
        mov       rax, QWORD PTR [56+rbp]                       ;558.3
$LN2069:
        mov       rdx, QWORD PTR [80+rbp]                       ;558.3
$LN2070:
        mov       rcx, QWORD PTR [72+rbp]                       ;558.3
$LN2071:
        mov       rdi, rax                                      ;558.3
$LN2072:
        mov       rsi, rdx                                      ;558.3
$LN2073:
        mov       rdx, rdi                                      ;558.3
$LN2074:
        mov       eax, ecx                                      ;558.3
$LN2075:
        shr       rcx, 2                                        ;558.3
$LN2076:
        rep   movsd                                             ;558.3
$LN2077:
        mov       ecx, eax                                      ;558.3
$LN2078:
        and       ecx, 3                                        ;558.3
$LN2079:
        rep   movsb                                             ;558.3
$LN2080:
        mov       rax, rdx                                      ;558.3
$LN2081:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.46::                       ; Preds .B10.32
                                ; Execution count [0.00e+000]
$LN2082:
        mov       QWORD PTR [136+rbp], rax                      ;558.3
$LN2083:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.33::                       ; Preds .B10.46
                                ; Execution count [0.00e+000]
$LN2084:
        mov       rax, QWORD PTR [80+rbp]                       ;559.3
$LN2085:
        mov       rcx, rax                                      ;559.3
$LN2086:
;       free(void *)
        call      free                                          ;559.3
$LN2087:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.47::                       ; Preds .B10.33
                                ; Execution count [0.00e+000]
$LN2088:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B10.34::                       ; Preds .B10.47 .B10.31
                                ; Execution count [0.00e+000]
$LN2089:
        mov       eax, DWORD PTR [rbp]                          ;562.2
$LN2090:
        mov       rbx, QWORD PTR [152+rbp]                      ;562.2[spill]
$LN2091:
        mov       rsi, QWORD PTR [160+rbp]                      ;562.2[spill]
$LN2092:
        mov       rdi, QWORD PTR [168+rbp]                      ;562.2[spill]
$LN2093:
        lea       rsp, QWORD PTR [176+rbp]                      ;562.2
$LN2094:
        pop       rbp                                           ;562.2
$LN2095:
        ret                                                     ;562.2
$LN2096:
                                ; LOE
.B10.35::
$LN2097:
; mark_end;
sgx_enclaveVByte ENDP
$LNsgx_enclaveVByte$2098:
;sgx_enclaveVByte	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$sgx_enclaveVByte
	ALIGN 004H
.unwind.sgx_enclaveVByte.B1_B34	DD	621421057
	DD	1520674
	DD	1598491
	DD	1668116
	DD	17302285
	DD	1342242842
;.xdata$sgx_enclaveVByte	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$sgx_enclaveVByte
	ALIGN 004H
.pdata.sgx_enclaveVByte.B1_B34	DD	imagerel .B10.1
	DD	imagerel .B10.35
	DD	imagerel .unwind.sgx_enclaveVByte.B1_B34
;.pdata$sgx_enclaveVByte	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  sgx_enclaveVByte
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_enclaveVByteDecodeEncrypted
TXTST10:
_2__routine_start_sgx_enclaveVByteDecodeEncrypted_10:
; -- Begin  sgx_enclaveVByteDecodeEncrypted
;sgx_enclaveVByteDecodeEncrypted	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_enclaveVByteDecodeEncrypted
; mark_begin;

; --- sgx_enclaveVByteDecodeEncrypted(void *)
sgx_enclaveVByteDecodeEncrypted	PROC PRIVATE
; parameter 1(pms): rcx
.B11.1::                        ; Preds .B11.0
                                ; Execution count [0.00e+000]
L88::
                                                          ;566.1
$LN2099:
        push      rbp                                           ;566.1
$LN2100:
        sub       rsp, 80                                       ;566.1
$LN2101:
        lea       rbp, QWORD PTR [32+rsp]                       ;566.1
$LN2102:
        mov       QWORD PTR [64+rbp], rcx                       ;566.1
$LN2103:
        mov       rax, QWORD PTR [64+rbp]                       ;567.39
$LN2104:
        mov       QWORD PTR [8+rbp], rax                        ;567.39
$LN2105:
        mov       DWORD PTR [rbp], 0                            ;568.22
$LN2106:
        mov       rax, QWORD PTR [8+rbp]                        ;569.19
$LN2107:
        mov       rax, QWORD PTR [8+rax]                        ;569.19
$LN2108:
        mov       QWORD PTR [16+rbp], rax                       ;569.19
$LN2109:
        mov       rax, QWORD PTR [8+rbp]                        ;570.20
$LN2110:
        mov       rax, QWORD PTR [24+rax]                       ;570.20
$LN2111:
        mov       QWORD PTR [24+rbp], rax                       ;570.20
$LN2112:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B11.2::                        ; Preds .B11.5 .B11.1
                                ; Execution count [0.00e+000]
$LN2113:
        mov       rax, QWORD PTR [64+rbp]                       ;572.2
$LN2114:
        test      rax, rax                                      ;572.2
$LN2115:
        je        .B11.6        ; Prob 50%                      ;572.2
$LN2116:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B11.3::                        ; Preds .B11.2
                                ; Execution count [0.00e+000]
$LN2117:
        mov       rax, QWORD PTR [64+rbp]                       ;572.2
$LN2118:
        mov       edx, 32                                       ;572.2
$LN2119:
        mov       rcx, rax                                      ;572.2
$LN2120:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;572.2
$LN2121:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B11.11::                       ; Preds .B11.3
                                ; Execution count [0.00e+000]
$LN2122:
        mov       DWORD PTR [4+rbp], eax                        ;572.2
$LN2123:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B11.4::                        ; Preds .B11.11
                                ; Execution count [0.00e+000]
$LN2124:
        mov       eax, DWORD PTR [4+rbp]                        ;572.2
$LN2125:
        test      eax, eax                                      ;572.2
$LN2126:
        je        .B11.6        ; Prob 50%                      ;572.2
$LN2127:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B11.5::                        ; Preds .B11.4
                                ; Execution count [0.00e+000]
$LN2128:
        mov       eax, 0                                        ;572.2
$LN2129:
        test      eax, eax                                      ;572.2
$LN2130:
        jne       .B11.2        ; Prob 0%                       ;572.2
$LN2131:
        jmp       .B11.7        ; Prob 100%                     ;572.2
$LN2132:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B11.6::                        ; Preds .B11.2 .B11.4
                                ; Execution count [0.00e+000]
$LN2133:
        mov       eax, 2                                        ;572.2
$LN2134:
        lea       rsp, QWORD PTR [48+rbp]                       ;572.2
$LN2135:
        pop       rbp                                           ;572.2
$LN2136:
        ret                                                     ;572.2
$LN2137:
                                ; LOE
.B11.7::                        ; Preds .B11.5
                                ; Execution count [0.00e+000]
$LN2138:
        mov       rax, QWORD PTR [16+rbp]                       ;574.2
$LN2139:
        mov       rdx, QWORD PTR [8+rbp]                        ;574.2
$LN2140:
        mov       rdx, QWORD PTR [16+rdx]                       ;574.2
$LN2141:
        mov       rcx, QWORD PTR [24+rbp]                       ;574.2
$LN2142:
        mov       QWORD PTR [40+rbp], rcx                       ;574.2[spill]
$LN2143:
        mov       rcx, rax                                      ;574.2
$LN2144:
        mov       rax, QWORD PTR [40+rbp]                       ;574.2[spill]
$LN2145:
        mov       r8, rax                                       ;574.2
$LN2146:
;       enclaveVByteDecodeEncrypted(uint8_t *, size_t, uint8_t *)
        call      enclaveVByteDecodeEncrypted                   ;574.2
$LN2147:
                                ; LOE rax rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B11.12::                       ; Preds .B11.7
                                ; Execution count [0.00e+000]
$LN2148:
        mov       QWORD PTR [32+rbp], rax                       ;574.2
$LN2149:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B11.8::                        ; Preds .B11.12
                                ; Execution count [0.00e+000]
$LN2150:
        mov       rax, QWORD PTR [8+rbp]                        ;574.2
$LN2151:
        mov       rdx, QWORD PTR [32+rbp]                       ;574.2
$LN2152:
        mov       QWORD PTR [rax], rdx                          ;574.2
$LN2153:
        mov       eax, DWORD PTR [rbp]                          ;577.2
$LN2154:
        lea       rsp, QWORD PTR [48+rbp]                       ;577.2
$LN2155:
        pop       rbp                                           ;577.2
$LN2156:
        ret                                                     ;577.2
$LN2157:
                                ; LOE
.B11.9::
$LN2158:
; mark_end;
sgx_enclaveVByteDecodeEncrypted ENDP
$LNsgx_enclaveVByteDecodeEncrypted$2159:
;sgx_enclaveVByteDecodeEncrypted	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$sgx_enclaveVByteDecodeEncrypted
	ALIGN 004H
.unwind.sgx_enclaveVByteDecodeEncrypted.B1_B8	DD	620956161
	DD	2449801994
	DD	20481
;.xdata$sgx_enclaveVByteDecodeEncrypted	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$sgx_enclaveVByteDecodeEncrypted
	ALIGN 004H
.pdata.sgx_enclaveVByteDecodeEncrypted.B1_B8	DD	imagerel .B11.1
	DD	imagerel .B11.9
	DD	imagerel .unwind.sgx_enclaveVByteDecodeEncrypted.B1_B8
;.pdata$sgx_enclaveVByteDecodeEncrypted	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  sgx_enclaveVByteDecodeEncrypted
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_enclaveVByteEncodeEncrypted
TXTST11:
_2__routine_start_sgx_enclaveVByteEncodeEncrypted_11:
; -- Begin  sgx_enclaveVByteEncodeEncrypted
;sgx_enclaveVByteEncodeEncrypted	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_enclaveVByteEncodeEncrypted
; mark_begin;

; --- sgx_enclaveVByteEncodeEncrypted(void *)
sgx_enclaveVByteEncodeEncrypted	PROC PRIVATE
; parameter 1(pms): rcx
.B12.1::                        ; Preds .B12.0
                                ; Execution count [0.00e+000]
L95::
                                                          ;581.1
$LN2160:
        push      rbp                                           ;581.1
$LN2161:
        sub       rsp, 80                                       ;581.1
$LN2162:
        lea       rbp, QWORD PTR [32+rsp]                       ;581.1
$LN2163:
        mov       QWORD PTR [64+rbp], rcx                       ;581.1
$LN2164:
        mov       rax, QWORD PTR [64+rbp]                       ;582.39
$LN2165:
        mov       QWORD PTR [8+rbp], rax                        ;582.39
$LN2166:
        mov       DWORD PTR [rbp], 0                            ;583.22
$LN2167:
        mov       rax, QWORD PTR [8+rbp]                        ;584.19
$LN2168:
        mov       rax, QWORD PTR [8+rax]                        ;584.19
$LN2169:
        mov       QWORD PTR [16+rbp], rax                       ;584.19
$LN2170:
        mov       rax, QWORD PTR [8+rbp]                        ;585.20
$LN2171:
        mov       rax, QWORD PTR [24+rax]                       ;585.20
$LN2172:
        mov       QWORD PTR [24+rbp], rax                       ;585.20
$LN2173:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B12.2::                        ; Preds .B12.5 .B12.1
                                ; Execution count [0.00e+000]
$LN2174:
        mov       rax, QWORD PTR [64+rbp]                       ;587.2
$LN2175:
        test      rax, rax                                      ;587.2
$LN2176:
        je        .B12.6        ; Prob 50%                      ;587.2
$LN2177:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B12.3::                        ; Preds .B12.2
                                ; Execution count [0.00e+000]
$LN2178:
        mov       rax, QWORD PTR [64+rbp]                       ;587.2
$LN2179:
        mov       edx, 32                                       ;587.2
$LN2180:
        mov       rcx, rax                                      ;587.2
$LN2181:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;587.2
$LN2182:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B12.11::                       ; Preds .B12.3
                                ; Execution count [0.00e+000]
$LN2183:
        mov       DWORD PTR [4+rbp], eax                        ;587.2
$LN2184:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B12.4::                        ; Preds .B12.11
                                ; Execution count [0.00e+000]
$LN2185:
        mov       eax, DWORD PTR [4+rbp]                        ;587.2
$LN2186:
        test      eax, eax                                      ;587.2
$LN2187:
        je        .B12.6        ; Prob 50%                      ;587.2
$LN2188:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B12.5::                        ; Preds .B12.4
                                ; Execution count [0.00e+000]
$LN2189:
        mov       eax, 0                                        ;587.2
$LN2190:
        test      eax, eax                                      ;587.2
$LN2191:
        jne       .B12.2        ; Prob 0%                       ;587.2
$LN2192:
        jmp       .B12.7        ; Prob 100%                     ;587.2
$LN2193:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B12.6::                        ; Preds .B12.2 .B12.4
                                ; Execution count [0.00e+000]
$LN2194:
        mov       eax, 2                                        ;587.2
$LN2195:
        lea       rsp, QWORD PTR [48+rbp]                       ;587.2
$LN2196:
        pop       rbp                                           ;587.2
$LN2197:
        ret                                                     ;587.2
$LN2198:
                                ; LOE
.B12.7::                        ; Preds .B12.5
                                ; Execution count [0.00e+000]
$LN2199:
        mov       rax, QWORD PTR [16+rbp]                       ;589.2
$LN2200:
        mov       rdx, QWORD PTR [8+rbp]                        ;589.2
$LN2201:
        mov       rdx, QWORD PTR [16+rdx]                       ;589.2
$LN2202:
        mov       rcx, QWORD PTR [24+rbp]                       ;589.2
$LN2203:
        mov       QWORD PTR [40+rbp], rcx                       ;589.2[spill]
$LN2204:
        mov       rcx, rax                                      ;589.2
$LN2205:
        mov       rax, QWORD PTR [40+rbp]                       ;589.2[spill]
$LN2206:
        mov       r8, rax                                       ;589.2
$LN2207:
;       enclaveVByteEncodeEncrypted(uint8_t *, size_t, uint8_t *)
        call      enclaveVByteEncodeEncrypted                   ;589.2
$LN2208:
                                ; LOE rax rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B12.12::                       ; Preds .B12.7
                                ; Execution count [0.00e+000]
$LN2209:
        mov       QWORD PTR [32+rbp], rax                       ;589.2
$LN2210:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B12.8::                        ; Preds .B12.12
                                ; Execution count [0.00e+000]
$LN2211:
        mov       rax, QWORD PTR [8+rbp]                        ;589.2
$LN2212:
        mov       rdx, QWORD PTR [32+rbp]                       ;589.2
$LN2213:
        mov       QWORD PTR [rax], rdx                          ;589.2
$LN2214:
        mov       eax, DWORD PTR [rbp]                          ;592.2
$LN2215:
        lea       rsp, QWORD PTR [48+rbp]                       ;592.2
$LN2216:
        pop       rbp                                           ;592.2
$LN2217:
        ret                                                     ;592.2
$LN2218:
                                ; LOE
.B12.9::
$LN2219:
; mark_end;
sgx_enclaveVByteEncodeEncrypted ENDP
$LNsgx_enclaveVByteEncodeEncrypted$2220:
;sgx_enclaveVByteEncodeEncrypted	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$sgx_enclaveVByteEncodeEncrypted
	ALIGN 004H
.unwind.sgx_enclaveVByteEncodeEncrypted.B1_B8	DD	620956161
	DD	2449801994
	DD	20481
;.xdata$sgx_enclaveVByteEncodeEncrypted	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$sgx_enclaveVByteEncodeEncrypted
	ALIGN 004H
.pdata.sgx_enclaveVByteEncodeEncrypted.B1_B8	DD	imagerel .B12.1
	DD	imagerel .B12.9
	DD	imagerel .unwind.sgx_enclaveVByteEncodeEncrypted.B1_B8
;.pdata$sgx_enclaveVByteEncodeEncrypted	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  sgx_enclaveVByteEncodeEncrypted
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_enclaveCrypto
TXTST12:
_2__routine_start_sgx_enclaveCrypto_12:
; -- Begin  sgx_enclaveCrypto
;sgx_enclaveCrypto	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_enclaveCrypto
; mark_begin;

; --- sgx_enclaveCrypto(void *)
sgx_enclaveCrypto	PROC PRIVATE
; parameter 1(pms): rcx
.B13.1::                        ; Preds .B13.0
                                ; Execution count [0.00e+000]
L102::
                                                         ;596.1
$LN2221:
        push      rbp                                           ;596.1
$LN2222:
        sub       rsp, 208                                      ;596.1
$LN2223:
        lea       rbp, QWORD PTR [32+rsp]                       ;596.1
$LN2224:
        mov       QWORD PTR [168+rbp], rdi                      ;596.1[spill]
$LN2225:
        mov       QWORD PTR [160+rbp], rsi                      ;596.1[spill]
$LN2226:
        mov       QWORD PTR [152+rbp], rbx                      ;596.1[spill]
$LN2227:
        mov       QWORD PTR [192+rbp], rcx                      ;596.1
$LN2228:
        mov       rax, QWORD PTR [192+rbp]                      ;597.25
$LN2229:
        mov       QWORD PTR [16+rbp], rax                       ;597.25
$LN2230:
        mov       DWORD PTR [rbp], 0                            ;598.22
$LN2231:
        mov       rax, QWORD PTR [16+rbp]                       ;599.19
$LN2232:
        mov       rax, QWORD PTR [8+rax]                        ;599.19
$LN2233:
        mov       QWORD PTR [24+rbp], rax                       ;599.19
$LN2234:
        mov       rax, QWORD PTR [16+rbp]                       ;600.23
$LN2235:
        mov       rax, QWORD PTR [16+rax]                       ;600.23
$LN2236:
        mov       QWORD PTR [32+rbp], rax                       ;600.23
$LN2237:
        mov       rax, QWORD PTR [32+rbp]                       ;601.17
$LN2238:
        mov       QWORD PTR [40+rbp], rax                       ;601.17
$LN2239:
        mov       QWORD PTR [48+rbp], 0                         ;602.18
$LN2240:
        mov       rax, QWORD PTR [16+rbp]                       ;603.20
$LN2241:
        mov       rax, QWORD PTR [24+rax]                       ;603.20
$LN2242:
        mov       QWORD PTR [56+rbp], rax                       ;603.20
$LN2243:
        mov       rax, QWORD PTR [16+rbp]                       ;604.24
$LN2244:
        mov       rax, QWORD PTR [32+rax]                       ;604.24
$LN2245:
        mov       QWORD PTR [64+rbp], rax                       ;604.24
$LN2246:
        mov       rax, QWORD PTR [64+rbp]                       ;605.18
$LN2247:
        mov       QWORD PTR [72+rbp], rax                       ;605.18
$LN2248:
        mov       QWORD PTR [80+rbp], 0                         ;606.19
$LN2249:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.2::                        ; Preds .B13.5 .B13.1
                                ; Execution count [0.00e+000]
$LN2250:
        mov       rax, QWORD PTR [192+rbp]                      ;608.2
$LN2251:
        test      rax, rax                                      ;608.2
$LN2252:
        je        .B13.6        ; Prob 50%                      ;608.2
$LN2253:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.3::                        ; Preds .B13.2
                                ; Execution count [0.00e+000]
$LN2254:
        mov       rax, QWORD PTR [192+rbp]                      ;608.2
$LN2255:
        mov       edx, 40                                       ;608.2
$LN2256:
        mov       rcx, rax                                      ;608.2
$LN2257:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;608.2
$LN2258:
                                ; LOE rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.37::                       ; Preds .B13.3
                                ; Execution count [0.00e+000]
$LN2259:
        mov       DWORD PTR [4+rbp], eax                        ;608.2
$LN2260:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.4::                        ; Preds .B13.37
                                ; Execution count [0.00e+000]
$LN2261:
        mov       eax, DWORD PTR [4+rbp]                        ;608.2
$LN2262:
        test      eax, eax                                      ;608.2
$LN2263:
        je        .B13.6        ; Prob 50%                      ;608.2
$LN2264:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.5::                        ; Preds .B13.4
                                ; Execution count [0.00e+000]
$LN2265:
        mov       eax, 0                                        ;608.2
$LN2266:
        test      eax, eax                                      ;608.2
$LN2267:
        jne       .B13.2        ; Prob 0%                       ;608.2
$LN2268:
        jmp       .B13.7        ; Prob 100%                     ;608.2
$LN2269:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.6::                        ; Preds .B13.2 .B13.4
                                ; Execution count [0.00e+000]
$LN2270:
        mov       eax, 2                                        ;608.2
$LN2271:
        mov       rbx, QWORD PTR [152+rbp]                      ;608.2[spill]
$LN2272:
        mov       rsi, QWORD PTR [160+rbp]                      ;608.2[spill]
$LN2273:
        mov       rdi, QWORD PTR [168+rbp]                      ;608.2[spill]
$LN2274:
        lea       rsp, QWORD PTR [176+rbp]                      ;608.2
$LN2275:
        pop       rbp                                           ;608.2
$LN2276:
        ret                                                     ;608.2
$LN2277:
                                ; LOE
.B13.7::                        ; Preds .B13.10 .B13.5
                                ; Execution count [0.00e+000]
$LN2278:
        mov       rax, QWORD PTR [24+rbp]                       ;609.2
$LN2279:
        test      rax, rax                                      ;609.2
$LN2280:
        je        .B13.10       ; Prob 50%                      ;609.2
$LN2281:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.8::                        ; Preds .B13.7
                                ; Execution count [0.00e+000]
$LN2282:
        mov       rax, QWORD PTR [24+rbp]                       ;609.2
$LN2283:
        mov       rdx, QWORD PTR [40+rbp]                       ;609.2
$LN2284:
        mov       rcx, rax                                      ;609.2
$LN2285:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;609.2
$LN2286:
                                ; LOE rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.38::                       ; Preds .B13.8
                                ; Execution count [0.00e+000]
$LN2287:
        mov       DWORD PTR [8+rbp], eax                        ;609.2
$LN2288:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.9::                        ; Preds .B13.38
                                ; Execution count [0.00e+000]
$LN2289:
        mov       eax, DWORD PTR [8+rbp]                        ;609.2
$LN2290:
        test      eax, eax                                      ;609.2
$LN2291:
        je        .B13.11       ; Prob 50%                      ;609.2
$LN2292:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.10::                       ; Preds .B13.9 .B13.7
                                ; Execution count [0.00e+000]
$LN2293:
        mov       eax, 0                                        ;609.2
$LN2294:
        test      eax, eax                                      ;609.2
$LN2295:
        jne       .B13.7        ; Prob 0%                       ;609.2
$LN2296:
        jmp       .B13.12       ; Prob 100%                     ;609.2
$LN2297:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.11::                       ; Preds .B13.9
                                ; Execution count [0.00e+000]
$LN2298:
        mov       eax, 2                                        ;609.2
$LN2299:
        mov       rbx, QWORD PTR [152+rbp]                      ;609.2[spill]
$LN2300:
        mov       rsi, QWORD PTR [160+rbp]                      ;609.2[spill]
$LN2301:
        mov       rdi, QWORD PTR [168+rbp]                      ;609.2[spill]
$LN2302:
        lea       rsp, QWORD PTR [176+rbp]                      ;609.2
$LN2303:
        pop       rbp                                           ;609.2
$LN2304:
        ret                                                     ;609.2
$LN2305:
                                ; LOE
.B13.12::                       ; Preds .B13.15 .B13.10
                                ; Execution count [0.00e+000]
$LN2306:
        mov       rax, QWORD PTR [56+rbp]                       ;610.2
$LN2307:
        test      rax, rax                                      ;610.2
$LN2308:
        je        .B13.15       ; Prob 50%                      ;610.2
$LN2309:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.13::                       ; Preds .B13.12
                                ; Execution count [0.00e+000]
$LN2310:
        mov       rax, QWORD PTR [56+rbp]                       ;610.2
$LN2311:
        mov       rdx, QWORD PTR [72+rbp]                       ;610.2
$LN2312:
        mov       rcx, rax                                      ;610.2
$LN2313:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;610.2
$LN2314:
                                ; LOE rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.39::                       ; Preds .B13.13
                                ; Execution count [0.00e+000]
$LN2315:
        mov       DWORD PTR [12+rbp], eax                       ;610.2
$LN2316:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.14::                       ; Preds .B13.39
                                ; Execution count [0.00e+000]
$LN2317:
        mov       eax, DWORD PTR [12+rbp]                       ;610.2
$LN2318:
        test      eax, eax                                      ;610.2
$LN2319:
        je        .B13.16       ; Prob 50%                      ;610.2
$LN2320:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.15::                       ; Preds .B13.14 .B13.12
                                ; Execution count [0.00e+000]
$LN2321:
        mov       eax, 0                                        ;610.2
$LN2322:
        test      eax, eax                                      ;610.2
$LN2323:
        jne       .B13.12       ; Prob 0%                       ;610.2
$LN2324:
        jmp       .B13.17       ; Prob 100%                     ;610.2
$LN2325:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.16::                       ; Preds .B13.14
                                ; Execution count [0.00e+000]
$LN2326:
        mov       eax, 2                                        ;610.2
$LN2327:
        mov       rbx, QWORD PTR [152+rbp]                      ;610.2[spill]
$LN2328:
        mov       rsi, QWORD PTR [160+rbp]                      ;610.2[spill]
$LN2329:
        mov       rdi, QWORD PTR [168+rbp]                      ;610.2[spill]
$LN2330:
        lea       rsp, QWORD PTR [176+rbp]                      ;610.2
$LN2331:
        pop       rbp                                           ;610.2
$LN2332:
        ret                                                     ;610.2
$LN2333:
                                ; LOE
.B13.17::                       ; Preds .B13.15
                                ; Execution count [0.00e+000]
$LN2334:
        mov       rax, QWORD PTR [24+rbp]                       ;612.2
$LN2335:
        test      rax, rax                                      ;612.2
$LN2336:
        je        .B13.22       ; Prob 50%                      ;612.2
$LN2337:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.18::                       ; Preds .B13.17
                                ; Execution count [0.00e+000]
$LN2338:
        mov       rax, QWORD PTR [40+rbp]                       ;613.3
$LN2339:
        mov       rcx, rax                                      ;613.3
$LN2340:
;       malloc(size_t)
        call      malloc                                        ;613.3
$LN2341:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.40::                       ; Preds .B13.18
                                ; Execution count [0.00e+000]
$LN2342:
        mov       QWORD PTR [88+rbp], rax                       ;613.3
$LN2343:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.19::                       ; Preds .B13.40
                                ; Execution count [0.00e+000]
$LN2344:
        mov       rax, QWORD PTR [88+rbp]                       ;613.3
$LN2345:
        mov       QWORD PTR [48+rbp], rax                       ;613.3
$LN2346:
        mov       rax, QWORD PTR [48+rbp]                       ;614.3
$LN2347:
        test      rax, rax                                      ;614.3
$LN2348:
        jne       .B13.21       ; Prob 50%                      ;614.3
$LN2349:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.20::                       ; Preds .B13.19
                                ; Execution count [0.00e+000]
$LN2350:
        mov       DWORD PTR [rbp], 3                            ;615.4
$LN2351:
        jmp       .B13.29       ; Prob 100%                     ;615.4
$LN2352:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.21::                       ; Preds .B13.19
                                ; Execution count [0.00e+000]
$LN2353:
        mov       rax, QWORD PTR [48+rbp]                       ;619.3
$LN2354:
        mov       rdx, QWORD PTR [24+rbp]                       ;619.3
$LN2355:
        mov       rcx, QWORD PTR [40+rbp]                       ;619.3
$LN2356:
        mov       rdi, rax                                      ;619.3
$LN2357:
        mov       rsi, rdx                                      ;619.3
$LN2358:
        mov       rdx, rdi                                      ;619.3
$LN2359:
        mov       eax, ecx                                      ;619.3
$LN2360:
        shr       rcx, 2                                        ;619.3
$LN2361:
        rep   movsd                                             ;619.3
$LN2362:
        mov       ecx, eax                                      ;619.3
$LN2363:
        and       ecx, 3                                        ;619.3
$LN2364:
        rep   movsb                                             ;619.3
$LN2365:
        mov       rax, rdx                                      ;619.3
$LN2366:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.41::                       ; Preds .B13.21
                                ; Execution count [0.00e+000]
$LN2367:
        mov       QWORD PTR [112+rbp], rax                      ;619.3
$LN2368:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.22::                       ; Preds .B13.41 .B13.17
                                ; Execution count [0.00e+000]
$LN2369:
        mov       rax, QWORD PTR [56+rbp]                       ;621.2
$LN2370:
        test      rax, rax                                      ;621.2
$LN2371:
        je        .B13.27       ; Prob 50%                      ;621.2
$LN2372:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.23::                       ; Preds .B13.22
                                ; Execution count [0.00e+000]
$LN2373:
        mov       rax, QWORD PTR [72+rbp]                       ;622.3
$LN2374:
        mov       rcx, rax                                      ;622.3
$LN2375:
;       malloc(size_t)
        call      malloc                                        ;622.3
$LN2376:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.42::                       ; Preds .B13.23
                                ; Execution count [0.00e+000]
$LN2377:
        mov       QWORD PTR [96+rbp], rax                       ;622.3
$LN2378:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.24::                       ; Preds .B13.42
                                ; Execution count [0.00e+000]
$LN2379:
        mov       rax, QWORD PTR [96+rbp]                       ;622.3
$LN2380:
        mov       QWORD PTR [120+rbp], rax                      ;622.3
$LN2381:
        mov       rax, QWORD PTR [120+rbp]                      ;622.3
$LN2382:
        mov       QWORD PTR [80+rbp], rax                       ;622.3
$LN2383:
        mov       rax, QWORD PTR [120+rbp]                      ;622.3
$LN2384:
        test      rax, rax                                      ;622.3
$LN2385:
        jne       .B13.26       ; Prob 50%                      ;622.3
$LN2386:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.25::                       ; Preds .B13.24
                                ; Execution count [0.00e+000]
$LN2387:
        mov       DWORD PTR [rbp], 3                            ;623.4
$LN2388:
        jmp       .B13.29       ; Prob 100%                     ;623.4
$LN2389:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.26::                       ; Preds .B13.24
                                ; Execution count [0.00e+000]
$LN2390:
        mov       rax, QWORD PTR [80+rbp]                       ;627.3
$LN2391:
        mov       edx, 0                                        ;627.3
$LN2392:
        mov       rcx, QWORD PTR [72+rbp]                       ;627.3
$LN2393:
        mov       rdi, rax                                      ;627.3
$LN2394:
        mov       eax, edx                                      ;627.3
$LN2395:
        and       eax, 65535                                    ;627.3
$LN2396:
        mov       ah, al                                        ;627.3
$LN2397:
        mov       edx, eax                                      ;627.3
$LN2398:
        shl       eax, 16                                       ;627.3
$LN2399:
        or        eax, edx                                      ;627.3
$LN2400:
        mov       esi, ecx                                      ;627.3
$LN2401:
        shr       rcx, 2                                        ;627.3
$LN2402:
        mov       rdx, rdi                                      ;627.3
$LN2403:
        rep   stosd                                             ;627.3
$LN2404:
        mov       ecx, esi                                      ;627.3
$LN2405:
        and       ecx, 3                                        ;627.3
$LN2406:
        rep   stosb                                             ;627.3
$LN2407:
        mov       rax, rdx                                      ;627.3
$LN2408:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.43::                       ; Preds .B13.26
                                ; Execution count [0.00e+000]
$LN2409:
        mov       QWORD PTR [128+rbp], rax                      ;627.3
$LN2410:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.27::                       ; Preds .B13.43 .B13.22
                                ; Execution count [0.00e+000]
$LN2411:
        mov       rax, QWORD PTR [48+rbp]                       ;629.2
$LN2412:
        mov       rdx, QWORD PTR [32+rbp]                       ;629.2
$LN2413:
        mov       rcx, QWORD PTR [80+rbp]                       ;629.2
$LN2414:
        mov       rbx, QWORD PTR [64+rbp]                       ;629.2
$LN2415:
        mov       QWORD PTR [144+rbp], rcx                      ;629.2[spill]
$LN2416:
        mov       rcx, rax                                      ;629.2
$LN2417:
        mov       rax, QWORD PTR [144+rbp]                      ;629.2[spill]
$LN2418:
        mov       r8, rax                                       ;629.2
$LN2419:
        mov       r9, rbx                                       ;629.2
$LN2420:
;       enclaveCrypto(uint8_t *, size_t, uint8_t *, size_t)
        call      enclaveCrypto                                 ;629.2
$LN2421:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.44::                       ; Preds .B13.27
                                ; Execution count [0.00e+000]
$LN2422:
        mov       QWORD PTR [104+rbp], rax                      ;629.2
$LN2423:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.28::                       ; Preds .B13.44
                                ; Execution count [0.00e+000]
$LN2424:
        mov       rax, QWORD PTR [16+rbp]                       ;629.2
$LN2425:
        mov       rdx, QWORD PTR [104+rbp]                      ;629.2
$LN2426:
        mov       QWORD PTR [rax], rdx                          ;629.2
$LN2427:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.29::                       ; Preds .B13.28 .B13.25 .B13.20
                                ; Execution count [0.00e+000]
$LN2428:
        mov       rax, QWORD PTR [48+rbp]                       ;631.2
$LN2429:
        test      rax, rax                                      ;631.2
$LN2430:
        je        .B13.31       ; Prob 50%                      ;631.2
$LN2431:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.30::                       ; Preds .B13.29
                                ; Execution count [0.00e+000]
$LN2432:
        mov       rax, QWORD PTR [48+rbp]                       ;631.14
$LN2433:
        mov       rcx, rax                                      ;631.14
$LN2434:
;       free(void *)
        call      free                                          ;631.14
$LN2435:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.45::                       ; Preds .B13.30
                                ; Execution count [0.00e+000]
$LN2436:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.31::                       ; Preds .B13.45 .B13.29
                                ; Execution count [0.00e+000]
$LN2437:
        mov       rax, QWORD PTR [80+rbp]                       ;632.2
$LN2438:
        test      rax, rax                                      ;632.2
$LN2439:
        je        .B13.34       ; Prob 50%                      ;632.2
$LN2440:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.32::                       ; Preds .B13.31
                                ; Execution count [0.00e+000]
$LN2441:
        mov       rax, QWORD PTR [56+rbp]                       ;633.3
$LN2442:
        mov       rdx, QWORD PTR [80+rbp]                       ;633.3
$LN2443:
        mov       rcx, QWORD PTR [72+rbp]                       ;633.3
$LN2444:
        mov       rdi, rax                                      ;633.3
$LN2445:
        mov       rsi, rdx                                      ;633.3
$LN2446:
        mov       rdx, rdi                                      ;633.3
$LN2447:
        mov       eax, ecx                                      ;633.3
$LN2448:
        shr       rcx, 2                                        ;633.3
$LN2449:
        rep   movsd                                             ;633.3
$LN2450:
        mov       ecx, eax                                      ;633.3
$LN2451:
        and       ecx, 3                                        ;633.3
$LN2452:
        rep   movsb                                             ;633.3
$LN2453:
        mov       rax, rdx                                      ;633.3
$LN2454:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.46::                       ; Preds .B13.32
                                ; Execution count [0.00e+000]
$LN2455:
        mov       QWORD PTR [136+rbp], rax                      ;633.3
$LN2456:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.33::                       ; Preds .B13.46
                                ; Execution count [0.00e+000]
$LN2457:
        mov       rax, QWORD PTR [80+rbp]                       ;634.3
$LN2458:
        mov       rcx, rax                                      ;634.3
$LN2459:
;       free(void *)
        call      free                                          ;634.3
$LN2460:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.47::                       ; Preds .B13.33
                                ; Execution count [0.00e+000]
$LN2461:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B13.34::                       ; Preds .B13.47 .B13.31
                                ; Execution count [0.00e+000]
$LN2462:
        mov       eax, DWORD PTR [rbp]                          ;637.2
$LN2463:
        mov       rbx, QWORD PTR [152+rbp]                      ;637.2[spill]
$LN2464:
        mov       rsi, QWORD PTR [160+rbp]                      ;637.2[spill]
$LN2465:
        mov       rdi, QWORD PTR [168+rbp]                      ;637.2[spill]
$LN2466:
        lea       rsp, QWORD PTR [176+rbp]                      ;637.2
$LN2467:
        pop       rbp                                           ;637.2
$LN2468:
        ret                                                     ;637.2
$LN2469:
                                ; LOE
.B13.35::
$LN2470:
; mark_end;
sgx_enclaveCrypto ENDP
$LNsgx_enclaveCrypto$2471:
;sgx_enclaveCrypto	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$sgx_enclaveCrypto
	ALIGN 004H
.unwind.sgx_enclaveCrypto.B1_B34	DD	621421057
	DD	1520674
	DD	1598491
	DD	1668116
	DD	17302285
	DD	1342242842
;.xdata$sgx_enclaveCrypto	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$sgx_enclaveCrypto
	ALIGN 004H
.pdata.sgx_enclaveCrypto.B1_B34	DD	imagerel .B13.1
	DD	imagerel .B13.35
	DD	imagerel .unwind.sgx_enclaveCrypto.B1_B34
;.pdata$sgx_enclaveCrypto	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  sgx_enclaveCrypto
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_enclaveCompleteProcess
TXTST13:
_2__routine_start_sgx_enclaveCompleteProcess_13:
; -- Begin  sgx_enclaveCompleteProcess
;sgx_enclaveCompleteProcess	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_enclaveCompleteProcess
; mark_begin;

; --- sgx_enclaveCompleteProcess(void *)
sgx_enclaveCompleteProcess	PROC PRIVATE
; parameter 1(pms): rcx
.B14.1::                        ; Preds .B14.0
                                ; Execution count [0.00e+000]
L111::
                                                         ;641.1
$LN2472:
        push      rbp                                           ;641.1
$LN2473:
        sub       rsp, 80                                       ;641.1
$LN2474:
        lea       rbp, QWORD PTR [32+rsp]                       ;641.1
$LN2475:
        mov       QWORD PTR [64+rbp], rcx                       ;641.1
$LN2476:
        mov       rax, QWORD PTR [64+rbp]                       ;642.34
$LN2477:
        mov       QWORD PTR [8+rbp], rax                        ;642.34
$LN2478:
        mov       DWORD PTR [rbp], 0                            ;643.22
$LN2479:
        mov       rax, QWORD PTR [8+rbp]                        ;644.19
$LN2480:
        mov       rax, QWORD PTR [8+rax]                        ;644.19
$LN2481:
        mov       QWORD PTR [16+rbp], rax                       ;644.19
$LN2482:
        mov       rax, QWORD PTR [8+rbp]                        ;645.20
$LN2483:
        mov       rax, QWORD PTR [24+rax]                       ;645.20
$LN2484:
        mov       QWORD PTR [24+rbp], rax                       ;645.20
$LN2485:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B14.2::                        ; Preds .B14.5 .B14.1
                                ; Execution count [0.00e+000]
$LN2486:
        mov       rax, QWORD PTR [64+rbp]                       ;647.2
$LN2487:
        test      rax, rax                                      ;647.2
$LN2488:
        je        .B14.6        ; Prob 50%                      ;647.2
$LN2489:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B14.3::                        ; Preds .B14.2
                                ; Execution count [0.00e+000]
$LN2490:
        mov       rax, QWORD PTR [64+rbp]                       ;647.2
$LN2491:
        mov       edx, 32                                       ;647.2
$LN2492:
        mov       rcx, rax                                      ;647.2
$LN2493:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;647.2
$LN2494:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B14.11::                       ; Preds .B14.3
                                ; Execution count [0.00e+000]
$LN2495:
        mov       DWORD PTR [4+rbp], eax                        ;647.2
$LN2496:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B14.4::                        ; Preds .B14.11
                                ; Execution count [0.00e+000]
$LN2497:
        mov       eax, DWORD PTR [4+rbp]                        ;647.2
$LN2498:
        test      eax, eax                                      ;647.2
$LN2499:
        je        .B14.6        ; Prob 50%                      ;647.2
$LN2500:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B14.5::                        ; Preds .B14.4
                                ; Execution count [0.00e+000]
$LN2501:
        mov       eax, 0                                        ;647.2
$LN2502:
        test      eax, eax                                      ;647.2
$LN2503:
        jne       .B14.2        ; Prob 0%                       ;647.2
$LN2504:
        jmp       .B14.7        ; Prob 100%                     ;647.2
$LN2505:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B14.6::                        ; Preds .B14.2 .B14.4
                                ; Execution count [0.00e+000]
$LN2506:
        mov       eax, 2                                        ;647.2
$LN2507:
        lea       rsp, QWORD PTR [48+rbp]                       ;647.2
$LN2508:
        pop       rbp                                           ;647.2
$LN2509:
        ret                                                     ;647.2
$LN2510:
                                ; LOE
.B14.7::                        ; Preds .B14.5
                                ; Execution count [0.00e+000]
$LN2511:
        mov       rax, QWORD PTR [16+rbp]                       ;649.2
$LN2512:
        mov       rdx, QWORD PTR [8+rbp]                        ;649.2
$LN2513:
        mov       rdx, QWORD PTR [16+rdx]                       ;649.2
$LN2514:
        mov       rcx, QWORD PTR [24+rbp]                       ;649.2
$LN2515:
        mov       QWORD PTR [40+rbp], rcx                       ;649.2[spill]
$LN2516:
        mov       rcx, rax                                      ;649.2
$LN2517:
        mov       rax, QWORD PTR [40+rbp]                       ;649.2[spill]
$LN2518:
        mov       r8, rax                                       ;649.2
$LN2519:
;       enclaveCompleteProcess(uint8_t *, size_t, uint8_t *)
        call      enclaveCompleteProcess                        ;649.2
$LN2520:
                                ; LOE rax rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B14.12::                       ; Preds .B14.7
                                ; Execution count [0.00e+000]
$LN2521:
        mov       QWORD PTR [32+rbp], rax                       ;649.2
$LN2522:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B14.8::                        ; Preds .B14.12
                                ; Execution count [0.00e+000]
$LN2523:
        mov       rax, QWORD PTR [8+rbp]                        ;649.2
$LN2524:
        mov       rdx, QWORD PTR [32+rbp]                       ;649.2
$LN2525:
        mov       QWORD PTR [rax], rdx                          ;649.2
$LN2526:
        mov       eax, DWORD PTR [rbp]                          ;652.2
$LN2527:
        lea       rsp, QWORD PTR [48+rbp]                       ;652.2
$LN2528:
        pop       rbp                                           ;652.2
$LN2529:
        ret                                                     ;652.2
$LN2530:
                                ; LOE
.B14.9::
$LN2531:
; mark_end;
sgx_enclaveCompleteProcess ENDP
$LNsgx_enclaveCompleteProcess$2532:
;sgx_enclaveCompleteProcess	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$sgx_enclaveCompleteProcess
	ALIGN 004H
.unwind.sgx_enclaveCompleteProcess.B1_B8	DD	620956161
	DD	2449801994
	DD	20481
;.xdata$sgx_enclaveCompleteProcess	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$sgx_enclaveCompleteProcess
	ALIGN 004H
.pdata.sgx_enclaveCompleteProcess.B1_B8	DD	imagerel .B14.1
	DD	imagerel .B14.9
	DD	imagerel .unwind.sgx_enclaveCompleteProcess.B1_B8
;.pdata$sgx_enclaveCompleteProcess	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  sgx_enclaveCompleteProcess
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_encryptBytes
TXTST14:
_2__routine_start_sgx_encryptBytes_14:
; -- Begin  sgx_encryptBytes
;sgx_encryptBytes	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_encryptBytes
; mark_begin;

; --- sgx_encryptBytes(void *)
sgx_encryptBytes	PROC PRIVATE
; parameter 1(pms): rcx
.B15.1::                        ; Preds .B15.0
                                ; Execution count [0.00e+000]
L118::
                                                         ;656.1
$LN2533:
        push      rbp                                           ;656.1
$LN2534:
        sub       rsp, 256                                      ;656.1
$LN2535:
        lea       rbp, QWORD PTR [48+rsp]                       ;656.1
$LN2536:
        mov       QWORD PTR [200+rbp], rdi                      ;656.1[spill]
$LN2537:
        mov       QWORD PTR [192+rbp], rsi                      ;656.1[spill]
$LN2538:
        mov       QWORD PTR [184+rbp], rbx                      ;656.1[spill]
$LN2539:
        mov       QWORD PTR [224+rbp], rcx                      ;656.1
$LN2540:
        mov       rax, QWORD PTR [224+rbp]                      ;657.24
$LN2541:
        mov       QWORD PTR [24+rbp], rax                       ;657.24
$LN2542:
        mov       DWORD PTR [rbp], 0                            ;658.22
$LN2543:
        mov       rax, QWORD PTR [24+rbp]                       ;659.22
$LN2544:
        mov       rax, QWORD PTR [8+rax]                        ;659.22
$LN2545:
        mov       QWORD PTR [32+rbp], rax                       ;659.22
$LN2546:
        mov       rax, QWORD PTR [24+rbp]                       ;660.21
$LN2547:
        mov       rax, QWORD PTR [16+rax]                       ;660.21
$LN2548:
        mov       QWORD PTR [40+rbp], rax                       ;660.21
$LN2549:
        mov       rax, QWORD PTR [40+rbp]                       ;661.20
$LN2550:
        mov       QWORD PTR [48+rbp], rax                       ;661.20
$LN2551:
        mov       QWORD PTR [56+rbp], 0                         ;662.21
$LN2552:
        mov       rax, QWORD PTR [24+rbp]                       ;663.23
$LN2553:
        mov       rax, QWORD PTR [24+rax]                       ;663.23
$LN2554:
        mov       QWORD PTR [64+rbp], rax                       ;663.23
$LN2555:
        mov       rax, QWORD PTR [24+rbp]                       ;664.20
$LN2556:
        mov       rax, QWORD PTR [32+rax]                       ;664.20
$LN2557:
        mov       QWORD PTR [72+rbp], rax                       ;664.20
$LN2558:
        mov       rax, QWORD PTR [24+rbp]                       ;665.24
$LN2559:
        mov       rax, QWORD PTR [40+rax]                       ;665.24
$LN2560:
        mov       QWORD PTR [80+rbp], rax                       ;665.24
$LN2561:
        mov       rax, QWORD PTR [80+rbp]                       ;666.18
$LN2562:
        mov       QWORD PTR [88+rbp], rax                       ;666.18
$LN2563:
        mov       QWORD PTR [96+rbp], 0                         ;667.19
$LN2564:
        mov       rax, QWORD PTR [24+rbp]                       ;668.19
$LN2565:
        mov       rax, QWORD PTR [48+rax]                       ;668.19
$LN2566:
        mov       QWORD PTR [104+rbp], rax                      ;668.19
$LN2567:
        mov       QWORD PTR [112+rbp], 16                       ;669.17
$LN2568:
        mov       QWORD PTR [120+rbp], 0                        ;670.18
$LN2569:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.2::                        ; Preds .B15.5 .B15.1
                                ; Execution count [0.00e+000]
$LN2570:
        mov       rax, QWORD PTR [224+rbp]                      ;672.2
$LN2571:
        test      rax, rax                                      ;672.2
$LN2572:
        je        .B15.6        ; Prob 50%                      ;672.2
$LN2573:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.3::                        ; Preds .B15.2
                                ; Execution count [0.00e+000]
$LN2574:
        mov       rax, QWORD PTR [224+rbp]                      ;672.2
$LN2575:
        mov       edx, 56                                       ;672.2
$LN2576:
        mov       rcx, rax                                      ;672.2
$LN2577:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;672.2
$LN2578:
                                ; LOE rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.48::                       ; Preds .B15.3
                                ; Execution count [0.00e+000]
$LN2579:
        mov       DWORD PTR [4+rbp], eax                        ;672.2
$LN2580:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.4::                        ; Preds .B15.48
                                ; Execution count [0.00e+000]
$LN2581:
        mov       eax, DWORD PTR [4+rbp]                        ;672.2
$LN2582:
        test      eax, eax                                      ;672.2
$LN2583:
        je        .B15.6        ; Prob 50%                      ;672.2
$LN2584:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.5::                        ; Preds .B15.4
                                ; Execution count [0.00e+000]
$LN2585:
        mov       eax, 0                                        ;672.2
$LN2586:
        test      eax, eax                                      ;672.2
$LN2587:
        jne       .B15.2        ; Prob 0%                       ;672.2
$LN2588:
        jmp       .B15.7        ; Prob 100%                     ;672.2
$LN2589:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.6::                        ; Preds .B15.2 .B15.4
                                ; Execution count [0.00e+000]
$LN2590:
        mov       eax, 2                                        ;672.2
$LN2591:
        mov       rbx, QWORD PTR [184+rbp]                      ;672.2[spill]
$LN2592:
        mov       rsi, QWORD PTR [192+rbp]                      ;672.2[spill]
$LN2593:
        mov       rdi, QWORD PTR [200+rbp]                      ;672.2[spill]
$LN2594:
        lea       rsp, QWORD PTR [208+rbp]                      ;672.2
$LN2595:
        pop       rbp                                           ;672.2
$LN2596:
        ret                                                     ;672.2
$LN2597:
                                ; LOE
.B15.7::                        ; Preds .B15.10 .B15.5
                                ; Execution count [0.00e+000]
$LN2598:
        mov       rax, QWORD PTR [32+rbp]                       ;673.2
$LN2599:
        test      rax, rax                                      ;673.2
$LN2600:
        je        .B15.10       ; Prob 50%                      ;673.2
$LN2601:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.8::                        ; Preds .B15.7
                                ; Execution count [0.00e+000]
$LN2602:
        mov       rax, QWORD PTR [32+rbp]                       ;673.2
$LN2603:
        mov       rdx, QWORD PTR [48+rbp]                       ;673.2
$LN2604:
        mov       rcx, rax                                      ;673.2
$LN2605:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;673.2
$LN2606:
                                ; LOE rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.49::                       ; Preds .B15.8
                                ; Execution count [0.00e+000]
$LN2607:
        mov       DWORD PTR [8+rbp], eax                        ;673.2
$LN2608:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.9::                        ; Preds .B15.49
                                ; Execution count [0.00e+000]
$LN2609:
        mov       eax, DWORD PTR [8+rbp]                        ;673.2
$LN2610:
        test      eax, eax                                      ;673.2
$LN2611:
        je        .B15.11       ; Prob 50%                      ;673.2
$LN2612:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.10::                       ; Preds .B15.9 .B15.7
                                ; Execution count [0.00e+000]
$LN2613:
        mov       eax, 0                                        ;673.2
$LN2614:
        test      eax, eax                                      ;673.2
$LN2615:
        jne       .B15.7        ; Prob 0%                       ;673.2
$LN2616:
        jmp       .B15.12       ; Prob 100%                     ;673.2
$LN2617:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.11::                       ; Preds .B15.9
                                ; Execution count [0.00e+000]
$LN2618:
        mov       eax, 2                                        ;673.2
$LN2619:
        mov       rbx, QWORD PTR [184+rbp]                      ;673.2[spill]
$LN2620:
        mov       rsi, QWORD PTR [192+rbp]                      ;673.2[spill]
$LN2621:
        mov       rdi, QWORD PTR [200+rbp]                      ;673.2[spill]
$LN2622:
        lea       rsp, QWORD PTR [208+rbp]                      ;673.2
$LN2623:
        pop       rbp                                           ;673.2
$LN2624:
        ret                                                     ;673.2
$LN2625:
                                ; LOE
.B15.12::                       ; Preds .B15.15 .B15.10
                                ; Execution count [0.00e+000]
$LN2626:
        mov       rax, QWORD PTR [72+rbp]                       ;674.2
$LN2627:
        test      rax, rax                                      ;674.2
$LN2628:
        je        .B15.15       ; Prob 50%                      ;674.2
$LN2629:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.13::                       ; Preds .B15.12
                                ; Execution count [0.00e+000]
$LN2630:
        mov       rax, QWORD PTR [72+rbp]                       ;674.2
$LN2631:
        mov       rdx, QWORD PTR [88+rbp]                       ;674.2
$LN2632:
        mov       rcx, rax                                      ;674.2
$LN2633:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;674.2
$LN2634:
                                ; LOE rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.50::                       ; Preds .B15.13
                                ; Execution count [0.00e+000]
$LN2635:
        mov       DWORD PTR [12+rbp], eax                       ;674.2
$LN2636:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.14::                       ; Preds .B15.50
                                ; Execution count [0.00e+000]
$LN2637:
        mov       eax, DWORD PTR [12+rbp]                       ;674.2
$LN2638:
        test      eax, eax                                      ;674.2
$LN2639:
        je        .B15.16       ; Prob 50%                      ;674.2
$LN2640:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.15::                       ; Preds .B15.14 .B15.12
                                ; Execution count [0.00e+000]
$LN2641:
        mov       eax, 0                                        ;674.2
$LN2642:
        test      eax, eax                                      ;674.2
$LN2643:
        jne       .B15.12       ; Prob 0%                       ;674.2
$LN2644:
        jmp       .B15.17       ; Prob 100%                     ;674.2
$LN2645:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.16::                       ; Preds .B15.14
                                ; Execution count [0.00e+000]
$LN2646:
        mov       eax, 2                                        ;674.2
$LN2647:
        mov       rbx, QWORD PTR [184+rbp]                      ;674.2[spill]
$LN2648:
        mov       rsi, QWORD PTR [192+rbp]                      ;674.2[spill]
$LN2649:
        mov       rdi, QWORD PTR [200+rbp]                      ;674.2[spill]
$LN2650:
        lea       rsp, QWORD PTR [208+rbp]                      ;674.2
$LN2651:
        pop       rbp                                           ;674.2
$LN2652:
        ret                                                     ;674.2
$LN2653:
                                ; LOE
.B15.17::                       ; Preds .B15.20 .B15.15
                                ; Execution count [0.00e+000]
$LN2654:
        mov       rax, QWORD PTR [104+rbp]                      ;675.2
$LN2655:
        test      rax, rax                                      ;675.2
$LN2656:
        je        .B15.20       ; Prob 50%                      ;675.2
$LN2657:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.18::                       ; Preds .B15.17
                                ; Execution count [0.00e+000]
$LN2658:
        mov       rax, QWORD PTR [104+rbp]                      ;675.2
$LN2659:
        mov       rdx, QWORD PTR [112+rbp]                      ;675.2
$LN2660:
        mov       rcx, rax                                      ;675.2
$LN2661:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;675.2
$LN2662:
                                ; LOE rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.51::                       ; Preds .B15.18
                                ; Execution count [0.00e+000]
$LN2663:
        mov       DWORD PTR [16+rbp], eax                       ;675.2
$LN2664:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.19::                       ; Preds .B15.51
                                ; Execution count [0.00e+000]
$LN2665:
        mov       eax, DWORD PTR [16+rbp]                       ;675.2
$LN2666:
        test      eax, eax                                      ;675.2
$LN2667:
        je        .B15.21       ; Prob 50%                      ;675.2
$LN2668:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.20::                       ; Preds .B15.19 .B15.17
                                ; Execution count [0.00e+000]
$LN2669:
        mov       eax, 0                                        ;675.2
$LN2670:
        test      eax, eax                                      ;675.2
$LN2671:
        jne       .B15.17       ; Prob 0%                       ;675.2
$LN2672:
        jmp       .B15.22       ; Prob 100%                     ;675.2
$LN2673:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.21::                       ; Preds .B15.19
                                ; Execution count [0.00e+000]
$LN2674:
        mov       eax, 2                                        ;675.2
$LN2675:
        mov       rbx, QWORD PTR [184+rbp]                      ;675.2[spill]
$LN2676:
        mov       rsi, QWORD PTR [192+rbp]                      ;675.2[spill]
$LN2677:
        mov       rdi, QWORD PTR [200+rbp]                      ;675.2[spill]
$LN2678:
        lea       rsp, QWORD PTR [208+rbp]                      ;675.2
$LN2679:
        pop       rbp                                           ;675.2
$LN2680:
        ret                                                     ;675.2
$LN2681:
                                ; LOE
.B15.22::                       ; Preds .B15.20
                                ; Execution count [0.00e+000]
$LN2682:
        mov       rax, QWORD PTR [32+rbp]                       ;677.2
$LN2683:
        test      rax, rax                                      ;677.2
$LN2684:
        je        .B15.27       ; Prob 50%                      ;677.2
$LN2685:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.23::                       ; Preds .B15.22
                                ; Execution count [0.00e+000]
$LN2686:
        mov       rax, QWORD PTR [48+rbp]                       ;678.3
$LN2687:
        mov       rcx, rax                                      ;678.3
$LN2688:
;       malloc(size_t)
        call      malloc                                        ;678.3
$LN2689:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.52::                       ; Preds .B15.23
                                ; Execution count [0.00e+000]
$LN2690:
        mov       QWORD PTR [128+rbp], rax                      ;678.3
$LN2691:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.24::                       ; Preds .B15.52
                                ; Execution count [0.00e+000]
$LN2692:
        mov       rax, QWORD PTR [128+rbp]                      ;678.3
$LN2693:
        mov       QWORD PTR [56+rbp], rax                       ;678.3
$LN2694:
        mov       rax, QWORD PTR [56+rbp]                       ;679.3
$LN2695:
        test      rax, rax                                      ;679.3
$LN2696:
        jne       .B15.26       ; Prob 50%                      ;679.3
$LN2697:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.25::                       ; Preds .B15.24
                                ; Execution count [0.00e+000]
$LN2698:
        mov       DWORD PTR [rbp], 3                            ;680.4
$LN2699:
        jmp       .B15.39       ; Prob 100%                     ;680.4
$LN2700:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.26::                       ; Preds .B15.24
                                ; Execution count [0.00e+000]
$LN2701:
        mov       rax, QWORD PTR [56+rbp]                       ;684.3
$LN2702:
        mov       rdx, QWORD PTR [32+rbp]                       ;684.3
$LN2703:
        mov       rcx, QWORD PTR [48+rbp]                       ;684.3
$LN2704:
        mov       rdi, rax                                      ;684.3
$LN2705:
        mov       rsi, rdx                                      ;684.3
$LN2706:
        mov       rdx, rdi                                      ;684.3
$LN2707:
        mov       eax, ecx                                      ;684.3
$LN2708:
        shr       rcx, 2                                        ;684.3
$LN2709:
        rep   movsd                                             ;684.3
$LN2710:
        mov       ecx, eax                                      ;684.3
$LN2711:
        and       ecx, 3                                        ;684.3
$LN2712:
        rep   movsb                                             ;684.3
$LN2713:
        mov       rax, rdx                                      ;684.3
$LN2714:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.53::                       ; Preds .B15.26
                                ; Execution count [0.00e+000]
$LN2715:
        mov       QWORD PTR [144+rbp], rax                      ;684.3
$LN2716:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.27::                       ; Preds .B15.53 .B15.22
                                ; Execution count [0.00e+000]
$LN2717:
        mov       rax, QWORD PTR [72+rbp]                       ;686.2
$LN2718:
        test      rax, rax                                      ;686.2
$LN2719:
        je        .B15.32       ; Prob 50%                      ;686.2
$LN2720:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.28::                       ; Preds .B15.27
                                ; Execution count [0.00e+000]
$LN2721:
        mov       rax, QWORD PTR [88+rbp]                       ;687.3
$LN2722:
        mov       rcx, rax                                      ;687.3
$LN2723:
;       malloc(size_t)
        call      malloc                                        ;687.3
$LN2724:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.54::                       ; Preds .B15.28
                                ; Execution count [0.00e+000]
$LN2725:
        mov       QWORD PTR [136+rbp], rax                      ;687.3
$LN2726:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.29::                       ; Preds .B15.54
                                ; Execution count [0.00e+000]
$LN2727:
        mov       rax, QWORD PTR [136+rbp]                      ;687.3
$LN2728:
        mov       QWORD PTR [96+rbp], rax                       ;687.3
$LN2729:
        mov       rax, QWORD PTR [96+rbp]                       ;688.3
$LN2730:
        test      rax, rax                                      ;688.3
$LN2731:
        jne       .B15.31       ; Prob 50%                      ;688.3
$LN2732:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.30::                       ; Preds .B15.29
                                ; Execution count [0.00e+000]
$LN2733:
        mov       DWORD PTR [rbp], 3                            ;689.4
$LN2734:
        jmp       .B15.39       ; Prob 100%                     ;689.4
$LN2735:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.31::                       ; Preds .B15.29
                                ; Execution count [0.00e+000]
$LN2736:
        mov       rax, QWORD PTR [96+rbp]                       ;693.3
$LN2737:
        mov       rdx, QWORD PTR [72+rbp]                       ;693.3
$LN2738:
        mov       rcx, QWORD PTR [88+rbp]                       ;693.3
$LN2739:
        mov       rdi, rax                                      ;693.3
$LN2740:
        mov       rsi, rdx                                      ;693.3
$LN2741:
        mov       rdx, rdi                                      ;693.3
$LN2742:
        mov       eax, ecx                                      ;693.3
$LN2743:
        shr       rcx, 2                                        ;693.3
$LN2744:
        rep   movsd                                             ;693.3
$LN2745:
        mov       ecx, eax                                      ;693.3
$LN2746:
        and       ecx, 3                                        ;693.3
$LN2747:
        rep   movsb                                             ;693.3
$LN2748:
        mov       rax, rdx                                      ;693.3
$LN2749:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.55::                       ; Preds .B15.31
                                ; Execution count [0.00e+000]
$LN2750:
        mov       QWORD PTR [160+rbp], rax                      ;693.3
$LN2751:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.32::                       ; Preds .B15.55 .B15.27
                                ; Execution count [0.00e+000]
$LN2752:
        mov       rax, QWORD PTR [104+rbp]                      ;695.2
$LN2753:
        test      rax, rax                                      ;695.2
$LN2754:
        je        .B15.37       ; Prob 50%                      ;695.2
$LN2755:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.33::                       ; Preds .B15.32
                                ; Execution count [0.00e+000]
$LN2756:
        mov       rax, QWORD PTR [112+rbp]                      ;696.3
$LN2757:
        mov       rcx, rax                                      ;696.3
$LN2758:
;       malloc(size_t)
        call      malloc                                        ;696.3
$LN2759:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.56::                       ; Preds .B15.33
                                ; Execution count [0.00e+000]
$LN2760:
        mov       QWORD PTR [152+rbp], rax                      ;696.3
$LN2761:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.34::                       ; Preds .B15.56
                                ; Execution count [0.00e+000]
$LN2762:
        mov       rax, QWORD PTR [152+rbp]                      ;696.3
$LN2763:
        mov       QWORD PTR [120+rbp], rax                      ;696.3
$LN2764:
        mov       rax, QWORD PTR [120+rbp]                      ;697.3
$LN2765:
        test      rax, rax                                      ;697.3
$LN2766:
        jne       .B15.36       ; Prob 50%                      ;697.3
$LN2767:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.35::                       ; Preds .B15.34
                                ; Execution count [0.00e+000]
$LN2768:
        mov       DWORD PTR [rbp], 3                            ;698.4
$LN2769:
        jmp       .B15.39       ; Prob 100%                     ;698.4
$LN2770:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.36::                       ; Preds .B15.34
                                ; Execution count [0.00e+000]
$LN2771:
        mov       rax, QWORD PTR [120+rbp]                      ;702.3
$LN2772:
        mov       rdx, QWORD PTR [104+rbp]                      ;702.3
$LN2773:
        mov       rcx, QWORD PTR [112+rbp]                      ;702.3
$LN2774:
        mov       rdi, rax                                      ;702.3
$LN2775:
        mov       rsi, rdx                                      ;702.3
$LN2776:
        mov       rdx, rdi                                      ;702.3
$LN2777:
        mov       eax, ecx                                      ;702.3
$LN2778:
        shr       rcx, 2                                        ;702.3
$LN2779:
        rep   movsd                                             ;702.3
$LN2780:
        mov       ecx, eax                                      ;702.3
$LN2781:
        and       ecx, 3                                        ;702.3
$LN2782:
        rep   movsb                                             ;702.3
$LN2783:
        mov       rax, rdx                                      ;702.3
$LN2784:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.57::                       ; Preds .B15.36
                                ; Execution count [0.00e+000]
$LN2785:
        mov       QWORD PTR [168+rbp], rax                      ;702.3
$LN2786:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.37::                       ; Preds .B15.57 .B15.32
                                ; Execution count [0.00e+000]
$LN2787:
        mov       rax, QWORD PTR [56+rbp]                       ;704.2
$LN2788:
        mov       rdx, QWORD PTR [40+rbp]                       ;704.2
$LN2789:
        mov       rcx, QWORD PTR [64+rbp]                       ;704.2
$LN2790:
        mov       rbx, QWORD PTR [96+rbp]                       ;704.2
$LN2791:
        mov       rsi, QWORD PTR [80+rbp]                       ;704.2
$LN2792:
        mov       QWORD PTR [32+rsp], rsi                       ;704.2
$LN2793:
        mov       rsi, QWORD PTR [120+rbp]                      ;704.2
$LN2794:
        mov       QWORD PTR [40+rsp], rsi                       ;704.2
$LN2795:
        mov       QWORD PTR [176+rbp], rcx                      ;704.2[spill]
$LN2796:
        mov       rcx, rax                                      ;704.2
$LN2797:
        mov       rax, QWORD PTR [176+rbp]                      ;704.2[spill]
$LN2798:
        mov       r8, rax                                       ;704.2
$LN2799:
        mov       r9, rbx                                       ;704.2
$LN2800:
;       encryptBytes(uint8_t *, size_t, uint8_t *, const uint8_t *, size_t, uint8_t *)
        call      encryptBytes                                  ;704.2
$LN2801:
                                ; LOE rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.58::                       ; Preds .B15.37
                                ; Execution count [0.00e+000]
$LN2802:
        mov       DWORD PTR [20+rbp], eax                       ;704.2
$LN2803:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.38::                       ; Preds .B15.58
                                ; Execution count [0.00e+000]
$LN2804:
        mov       rax, QWORD PTR [24+rbp]                       ;704.2
$LN2805:
        mov       edx, DWORD PTR [20+rbp]                       ;704.2
$LN2806:
        mov       DWORD PTR [rax], edx                          ;704.2
$LN2807:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.39::                       ; Preds .B15.38 .B15.35 .B15.30 .B15.25
                                ; Execution count [0.00e+000]
$LN2808:
        mov       rax, QWORD PTR [56+rbp]                       ;706.2
$LN2809:
        test      rax, rax                                      ;706.2
$LN2810:
        je        .B15.41       ; Prob 50%                      ;706.2
$LN2811:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.40::                       ; Preds .B15.39
                                ; Execution count [0.00e+000]
$LN2812:
        mov       rax, QWORD PTR [56+rbp]                       ;706.17
$LN2813:
        mov       rcx, rax                                      ;706.17
$LN2814:
;       free(void *)
        call      free                                          ;706.17
$LN2815:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.59::                       ; Preds .B15.40
                                ; Execution count [0.00e+000]
$LN2816:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.41::                       ; Preds .B15.59 .B15.39
                                ; Execution count [0.00e+000]
$LN2817:
        mov       rax, QWORD PTR [96+rbp]                       ;707.2
$LN2818:
        test      rax, rax                                      ;707.2
$LN2819:
        je        .B15.43       ; Prob 50%                      ;707.2
$LN2820:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.42::                       ; Preds .B15.41
                                ; Execution count [0.00e+000]
$LN2821:
        mov       rax, QWORD PTR [96+rbp]                       ;707.15
$LN2822:
        mov       rcx, rax                                      ;707.15
$LN2823:
;       free(void *)
        call      free                                          ;707.15
$LN2824:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.60::                       ; Preds .B15.42
                                ; Execution count [0.00e+000]
$LN2825:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.43::                       ; Preds .B15.60 .B15.41
                                ; Execution count [0.00e+000]
$LN2826:
        mov       rax, QWORD PTR [120+rbp]                      ;708.2
$LN2827:
        test      rax, rax                                      ;708.2
$LN2828:
        je        .B15.45       ; Prob 50%                      ;708.2
$LN2829:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.44::                       ; Preds .B15.43
                                ; Execution count [0.00e+000]
$LN2830:
        mov       rax, QWORD PTR [120+rbp]                      ;708.14
$LN2831:
        mov       rcx, rax                                      ;708.14
$LN2832:
;       free(void *)
        call      free                                          ;708.14
$LN2833:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.61::                       ; Preds .B15.44
                                ; Execution count [0.00e+000]
$LN2834:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B15.45::                       ; Preds .B15.61 .B15.43
                                ; Execution count [0.00e+000]
$LN2835:
        mov       eax, DWORD PTR [rbp]                          ;710.2
$LN2836:
        mov       rbx, QWORD PTR [184+rbp]                      ;710.2[spill]
$LN2837:
        mov       rsi, QWORD PTR [192+rbp]                      ;710.2[spill]
$LN2838:
        mov       rdi, QWORD PTR [200+rbp]                      ;710.2[spill]
$LN2839:
        lea       rsp, QWORD PTR [208+rbp]                      ;710.2
$LN2840:
        pop       rbp                                           ;710.2
$LN2841:
        ret                                                     ;710.2
$LN2842:
                                ; LOE
.B15.46::
$LN2843:
; mark_end;
sgx_encryptBytes ENDP
$LNsgx_encryptBytes$2844:
;sgx_encryptBytes	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$sgx_encryptBytes
	ALIGN 004H
.unwind.sgx_encryptBytes.B1_B45	DD	889856513
	DD	1913890
	DD	1991707
	DD	2061332
	DD	17302285
	DD	1342242848
;.xdata$sgx_encryptBytes	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$sgx_encryptBytes
	ALIGN 004H
.pdata.sgx_encryptBytes.B1_B45	DD	imagerel .B15.1
	DD	imagerel .B15.46
	DD	imagerel .unwind.sgx_encryptBytes.B1_B45
;.pdata$sgx_encryptBytes	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  sgx_encryptBytes
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_decryptBytes
TXTST15:
_2__routine_start_sgx_decryptBytes_15:
; -- Begin  sgx_decryptBytes
;sgx_decryptBytes	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_decryptBytes
; mark_begin;

; --- sgx_decryptBytes(void *)
sgx_decryptBytes	PROC PRIVATE
; parameter 1(pms): rcx
.B16.1::                        ; Preds .B16.0
                                ; Execution count [0.00e+000]
L128::
                                                         ;714.1
$LN2845:
        push      rbp                                           ;714.1
$LN2846:
        sub       rsp, 256                                      ;714.1
$LN2847:
        lea       rbp, QWORD PTR [48+rsp]                       ;714.1
$LN2848:
        mov       QWORD PTR [200+rbp], rdi                      ;714.1[spill]
$LN2849:
        mov       QWORD PTR [192+rbp], rsi                      ;714.1[spill]
$LN2850:
        mov       QWORD PTR [184+rbp], rbx                      ;714.1[spill]
$LN2851:
        mov       QWORD PTR [224+rbp], rcx                      ;714.1
$LN2852:
        mov       rax, QWORD PTR [224+rbp]                      ;715.24
$LN2853:
        mov       QWORD PTR [24+rbp], rax                       ;715.24
$LN2854:
        mov       DWORD PTR [rbp], 0                            ;716.22
$LN2855:
        mov       rax, QWORD PTR [24+rbp]                       ;717.22
$LN2856:
        mov       rax, QWORD PTR [8+rax]                        ;717.22
$LN2857:
        mov       QWORD PTR [32+rbp], rax                       ;717.22
$LN2858:
        mov       rax, QWORD PTR [24+rbp]                       ;718.21
$LN2859:
        mov       rax, QWORD PTR [16+rax]                       ;718.21
$LN2860:
        mov       QWORD PTR [40+rbp], rax                       ;718.21
$LN2861:
        mov       rax, QWORD PTR [40+rbp]                       ;719.20
$LN2862:
        mov       QWORD PTR [48+rbp], rax                       ;719.20
$LN2863:
        mov       QWORD PTR [56+rbp], 0                         ;720.21
$LN2864:
        mov       rax, QWORD PTR [24+rbp]                       ;721.23
$LN2865:
        mov       rax, QWORD PTR [24+rax]                       ;721.23
$LN2866:
        mov       QWORD PTR [64+rbp], rax                       ;721.23
$LN2867:
        mov       rax, QWORD PTR [24+rbp]                       ;722.20
$LN2868:
        mov       rax, QWORD PTR [32+rax]                       ;722.20
$LN2869:
        mov       QWORD PTR [72+rbp], rax                       ;722.20
$LN2870:
        mov       rax, QWORD PTR [24+rbp]                       ;723.24
$LN2871:
        mov       rax, QWORD PTR [40+rax]                       ;723.24
$LN2872:
        mov       QWORD PTR [80+rbp], rax                       ;723.24
$LN2873:
        mov       rax, QWORD PTR [80+rbp]                       ;724.18
$LN2874:
        mov       QWORD PTR [88+rbp], rax                       ;724.18
$LN2875:
        mov       QWORD PTR [96+rbp], 0                         ;725.19
$LN2876:
        mov       rax, QWORD PTR [24+rbp]                       ;726.19
$LN2877:
        mov       rax, QWORD PTR [48+rax]                       ;726.19
$LN2878:
        mov       QWORD PTR [104+rbp], rax                      ;726.19
$LN2879:
        mov       QWORD PTR [112+rbp], 16                       ;727.17
$LN2880:
        mov       QWORD PTR [120+rbp], 0                        ;728.18
$LN2881:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.2::                        ; Preds .B16.5 .B16.1
                                ; Execution count [0.00e+000]
$LN2882:
        mov       rax, QWORD PTR [224+rbp]                      ;730.2
$LN2883:
        test      rax, rax                                      ;730.2
$LN2884:
        je        .B16.6        ; Prob 50%                      ;730.2
$LN2885:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.3::                        ; Preds .B16.2
                                ; Execution count [0.00e+000]
$LN2886:
        mov       rax, QWORD PTR [224+rbp]                      ;730.2
$LN2887:
        mov       edx, 56                                       ;730.2
$LN2888:
        mov       rcx, rax                                      ;730.2
$LN2889:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;730.2
$LN2890:
                                ; LOE rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.48::                       ; Preds .B16.3
                                ; Execution count [0.00e+000]
$LN2891:
        mov       DWORD PTR [4+rbp], eax                        ;730.2
$LN2892:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.4::                        ; Preds .B16.48
                                ; Execution count [0.00e+000]
$LN2893:
        mov       eax, DWORD PTR [4+rbp]                        ;730.2
$LN2894:
        test      eax, eax                                      ;730.2
$LN2895:
        je        .B16.6        ; Prob 50%                      ;730.2
$LN2896:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.5::                        ; Preds .B16.4
                                ; Execution count [0.00e+000]
$LN2897:
        mov       eax, 0                                        ;730.2
$LN2898:
        test      eax, eax                                      ;730.2
$LN2899:
        jne       .B16.2        ; Prob 0%                       ;730.2
$LN2900:
        jmp       .B16.7        ; Prob 100%                     ;730.2
$LN2901:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.6::                        ; Preds .B16.2 .B16.4
                                ; Execution count [0.00e+000]
$LN2902:
        mov       eax, 2                                        ;730.2
$LN2903:
        mov       rbx, QWORD PTR [184+rbp]                      ;730.2[spill]
$LN2904:
        mov       rsi, QWORD PTR [192+rbp]                      ;730.2[spill]
$LN2905:
        mov       rdi, QWORD PTR [200+rbp]                      ;730.2[spill]
$LN2906:
        lea       rsp, QWORD PTR [208+rbp]                      ;730.2
$LN2907:
        pop       rbp                                           ;730.2
$LN2908:
        ret                                                     ;730.2
$LN2909:
                                ; LOE
.B16.7::                        ; Preds .B16.10 .B16.5
                                ; Execution count [0.00e+000]
$LN2910:
        mov       rax, QWORD PTR [32+rbp]                       ;731.2
$LN2911:
        test      rax, rax                                      ;731.2
$LN2912:
        je        .B16.10       ; Prob 50%                      ;731.2
$LN2913:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.8::                        ; Preds .B16.7
                                ; Execution count [0.00e+000]
$LN2914:
        mov       rax, QWORD PTR [32+rbp]                       ;731.2
$LN2915:
        mov       rdx, QWORD PTR [48+rbp]                       ;731.2
$LN2916:
        mov       rcx, rax                                      ;731.2
$LN2917:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;731.2
$LN2918:
                                ; LOE rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.49::                       ; Preds .B16.8
                                ; Execution count [0.00e+000]
$LN2919:
        mov       DWORD PTR [8+rbp], eax                        ;731.2
$LN2920:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.9::                        ; Preds .B16.49
                                ; Execution count [0.00e+000]
$LN2921:
        mov       eax, DWORD PTR [8+rbp]                        ;731.2
$LN2922:
        test      eax, eax                                      ;731.2
$LN2923:
        je        .B16.11       ; Prob 50%                      ;731.2
$LN2924:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.10::                       ; Preds .B16.9 .B16.7
                                ; Execution count [0.00e+000]
$LN2925:
        mov       eax, 0                                        ;731.2
$LN2926:
        test      eax, eax                                      ;731.2
$LN2927:
        jne       .B16.7        ; Prob 0%                       ;731.2
$LN2928:
        jmp       .B16.12       ; Prob 100%                     ;731.2
$LN2929:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.11::                       ; Preds .B16.9
                                ; Execution count [0.00e+000]
$LN2930:
        mov       eax, 2                                        ;731.2
$LN2931:
        mov       rbx, QWORD PTR [184+rbp]                      ;731.2[spill]
$LN2932:
        mov       rsi, QWORD PTR [192+rbp]                      ;731.2[spill]
$LN2933:
        mov       rdi, QWORD PTR [200+rbp]                      ;731.2[spill]
$LN2934:
        lea       rsp, QWORD PTR [208+rbp]                      ;731.2
$LN2935:
        pop       rbp                                           ;731.2
$LN2936:
        ret                                                     ;731.2
$LN2937:
                                ; LOE
.B16.12::                       ; Preds .B16.15 .B16.10
                                ; Execution count [0.00e+000]
$LN2938:
        mov       rax, QWORD PTR [72+rbp]                       ;732.2
$LN2939:
        test      rax, rax                                      ;732.2
$LN2940:
        je        .B16.15       ; Prob 50%                      ;732.2
$LN2941:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.13::                       ; Preds .B16.12
                                ; Execution count [0.00e+000]
$LN2942:
        mov       rax, QWORD PTR [72+rbp]                       ;732.2
$LN2943:
        mov       rdx, QWORD PTR [88+rbp]                       ;732.2
$LN2944:
        mov       rcx, rax                                      ;732.2
$LN2945:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;732.2
$LN2946:
                                ; LOE rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.50::                       ; Preds .B16.13
                                ; Execution count [0.00e+000]
$LN2947:
        mov       DWORD PTR [12+rbp], eax                       ;732.2
$LN2948:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.14::                       ; Preds .B16.50
                                ; Execution count [0.00e+000]
$LN2949:
        mov       eax, DWORD PTR [12+rbp]                       ;732.2
$LN2950:
        test      eax, eax                                      ;732.2
$LN2951:
        je        .B16.16       ; Prob 50%                      ;732.2
$LN2952:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.15::                       ; Preds .B16.14 .B16.12
                                ; Execution count [0.00e+000]
$LN2953:
        mov       eax, 0                                        ;732.2
$LN2954:
        test      eax, eax                                      ;732.2
$LN2955:
        jne       .B16.12       ; Prob 0%                       ;732.2
$LN2956:
        jmp       .B16.17       ; Prob 100%                     ;732.2
$LN2957:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.16::                       ; Preds .B16.14
                                ; Execution count [0.00e+000]
$LN2958:
        mov       eax, 2                                        ;732.2
$LN2959:
        mov       rbx, QWORD PTR [184+rbp]                      ;732.2[spill]
$LN2960:
        mov       rsi, QWORD PTR [192+rbp]                      ;732.2[spill]
$LN2961:
        mov       rdi, QWORD PTR [200+rbp]                      ;732.2[spill]
$LN2962:
        lea       rsp, QWORD PTR [208+rbp]                      ;732.2
$LN2963:
        pop       rbp                                           ;732.2
$LN2964:
        ret                                                     ;732.2
$LN2965:
                                ; LOE
.B16.17::                       ; Preds .B16.20 .B16.15
                                ; Execution count [0.00e+000]
$LN2966:
        mov       rax, QWORD PTR [104+rbp]                      ;733.2
$LN2967:
        test      rax, rax                                      ;733.2
$LN2968:
        je        .B16.20       ; Prob 50%                      ;733.2
$LN2969:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.18::                       ; Preds .B16.17
                                ; Execution count [0.00e+000]
$LN2970:
        mov       rax, QWORD PTR [104+rbp]                      ;733.2
$LN2971:
        mov       rdx, QWORD PTR [112+rbp]                      ;733.2
$LN2972:
        mov       rcx, rax                                      ;733.2
$LN2973:
;       sgx_is_outside_enclave(const void *, size_t)
        call      sgx_is_outside_enclave                        ;733.2
$LN2974:
                                ; LOE rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.51::                       ; Preds .B16.18
                                ; Execution count [0.00e+000]
$LN2975:
        mov       DWORD PTR [16+rbp], eax                       ;733.2
$LN2976:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.19::                       ; Preds .B16.51
                                ; Execution count [0.00e+000]
$LN2977:
        mov       eax, DWORD PTR [16+rbp]                       ;733.2
$LN2978:
        test      eax, eax                                      ;733.2
$LN2979:
        je        .B16.21       ; Prob 50%                      ;733.2
$LN2980:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.20::                       ; Preds .B16.19 .B16.17
                                ; Execution count [0.00e+000]
$LN2981:
        mov       eax, 0                                        ;733.2
$LN2982:
        test      eax, eax                                      ;733.2
$LN2983:
        jne       .B16.17       ; Prob 0%                       ;733.2
$LN2984:
        jmp       .B16.22       ; Prob 100%                     ;733.2
$LN2985:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.21::                       ; Preds .B16.19
                                ; Execution count [0.00e+000]
$LN2986:
        mov       eax, 2                                        ;733.2
$LN2987:
        mov       rbx, QWORD PTR [184+rbp]                      ;733.2[spill]
$LN2988:
        mov       rsi, QWORD PTR [192+rbp]                      ;733.2[spill]
$LN2989:
        mov       rdi, QWORD PTR [200+rbp]                      ;733.2[spill]
$LN2990:
        lea       rsp, QWORD PTR [208+rbp]                      ;733.2
$LN2991:
        pop       rbp                                           ;733.2
$LN2992:
        ret                                                     ;733.2
$LN2993:
                                ; LOE
.B16.22::                       ; Preds .B16.20
                                ; Execution count [0.00e+000]
$LN2994:
        mov       rax, QWORD PTR [32+rbp]                       ;735.2
$LN2995:
        test      rax, rax                                      ;735.2
$LN2996:
        je        .B16.27       ; Prob 50%                      ;735.2
$LN2997:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.23::                       ; Preds .B16.22
                                ; Execution count [0.00e+000]
$LN2998:
        mov       rax, QWORD PTR [48+rbp]                       ;736.3
$LN2999:
        mov       rcx, rax                                      ;736.3
$LN3000:
;       malloc(size_t)
        call      malloc                                        ;736.3
$LN3001:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.52::                       ; Preds .B16.23
                                ; Execution count [0.00e+000]
$LN3002:
        mov       QWORD PTR [128+rbp], rax                      ;736.3
$LN3003:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.24::                       ; Preds .B16.52
                                ; Execution count [0.00e+000]
$LN3004:
        mov       rax, QWORD PTR [128+rbp]                      ;736.3
$LN3005:
        mov       QWORD PTR [56+rbp], rax                       ;736.3
$LN3006:
        mov       rax, QWORD PTR [56+rbp]                       ;737.3
$LN3007:
        test      rax, rax                                      ;737.3
$LN3008:
        jne       .B16.26       ; Prob 50%                      ;737.3
$LN3009:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.25::                       ; Preds .B16.24
                                ; Execution count [0.00e+000]
$LN3010:
        mov       DWORD PTR [rbp], 3                            ;738.4
$LN3011:
        jmp       .B16.39       ; Prob 100%                     ;738.4
$LN3012:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.26::                       ; Preds .B16.24
                                ; Execution count [0.00e+000]
$LN3013:
        mov       rax, QWORD PTR [56+rbp]                       ;742.3
$LN3014:
        mov       rdx, QWORD PTR [32+rbp]                       ;742.3
$LN3015:
        mov       rcx, QWORD PTR [48+rbp]                       ;742.3
$LN3016:
        mov       rdi, rax                                      ;742.3
$LN3017:
        mov       rsi, rdx                                      ;742.3
$LN3018:
        mov       rdx, rdi                                      ;742.3
$LN3019:
        mov       eax, ecx                                      ;742.3
$LN3020:
        shr       rcx, 2                                        ;742.3
$LN3021:
        rep   movsd                                             ;742.3
$LN3022:
        mov       ecx, eax                                      ;742.3
$LN3023:
        and       ecx, 3                                        ;742.3
$LN3024:
        rep   movsb                                             ;742.3
$LN3025:
        mov       rax, rdx                                      ;742.3
$LN3026:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.53::                       ; Preds .B16.26
                                ; Execution count [0.00e+000]
$LN3027:
        mov       QWORD PTR [144+rbp], rax                      ;742.3
$LN3028:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.27::                       ; Preds .B16.53 .B16.22
                                ; Execution count [0.00e+000]
$LN3029:
        mov       rax, QWORD PTR [72+rbp]                       ;744.2
$LN3030:
        test      rax, rax                                      ;744.2
$LN3031:
        je        .B16.32       ; Prob 50%                      ;744.2
$LN3032:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.28::                       ; Preds .B16.27
                                ; Execution count [0.00e+000]
$LN3033:
        mov       rax, QWORD PTR [88+rbp]                       ;745.3
$LN3034:
        mov       rcx, rax                                      ;745.3
$LN3035:
;       malloc(size_t)
        call      malloc                                        ;745.3
$LN3036:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.54::                       ; Preds .B16.28
                                ; Execution count [0.00e+000]
$LN3037:
        mov       QWORD PTR [136+rbp], rax                      ;745.3
$LN3038:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.29::                       ; Preds .B16.54
                                ; Execution count [0.00e+000]
$LN3039:
        mov       rax, QWORD PTR [136+rbp]                      ;745.3
$LN3040:
        mov       QWORD PTR [96+rbp], rax                       ;745.3
$LN3041:
        mov       rax, QWORD PTR [96+rbp]                       ;746.3
$LN3042:
        test      rax, rax                                      ;746.3
$LN3043:
        jne       .B16.31       ; Prob 50%                      ;746.3
$LN3044:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.30::                       ; Preds .B16.29
                                ; Execution count [0.00e+000]
$LN3045:
        mov       DWORD PTR [rbp], 3                            ;747.4
$LN3046:
        jmp       .B16.39       ; Prob 100%                     ;747.4
$LN3047:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.31::                       ; Preds .B16.29
                                ; Execution count [0.00e+000]
$LN3048:
        mov       rax, QWORD PTR [96+rbp]                       ;751.3
$LN3049:
        mov       rdx, QWORD PTR [72+rbp]                       ;751.3
$LN3050:
        mov       rcx, QWORD PTR [88+rbp]                       ;751.3
$LN3051:
        mov       rdi, rax                                      ;751.3
$LN3052:
        mov       rsi, rdx                                      ;751.3
$LN3053:
        mov       rdx, rdi                                      ;751.3
$LN3054:
        mov       eax, ecx                                      ;751.3
$LN3055:
        shr       rcx, 2                                        ;751.3
$LN3056:
        rep   movsd                                             ;751.3
$LN3057:
        mov       ecx, eax                                      ;751.3
$LN3058:
        and       ecx, 3                                        ;751.3
$LN3059:
        rep   movsb                                             ;751.3
$LN3060:
        mov       rax, rdx                                      ;751.3
$LN3061:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.55::                       ; Preds .B16.31
                                ; Execution count [0.00e+000]
$LN3062:
        mov       QWORD PTR [160+rbp], rax                      ;751.3
$LN3063:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.32::                       ; Preds .B16.55 .B16.27
                                ; Execution count [0.00e+000]
$LN3064:
        mov       rax, QWORD PTR [104+rbp]                      ;753.2
$LN3065:
        test      rax, rax                                      ;753.2
$LN3066:
        je        .B16.37       ; Prob 50%                      ;753.2
$LN3067:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.33::                       ; Preds .B16.32
                                ; Execution count [0.00e+000]
$LN3068:
        mov       rax, QWORD PTR [112+rbp]                      ;754.3
$LN3069:
        mov       rcx, rax                                      ;754.3
$LN3070:
;       malloc(size_t)
        call      malloc                                        ;754.3
$LN3071:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.56::                       ; Preds .B16.33
                                ; Execution count [0.00e+000]
$LN3072:
        mov       QWORD PTR [152+rbp], rax                      ;754.3
$LN3073:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.34::                       ; Preds .B16.56
                                ; Execution count [0.00e+000]
$LN3074:
        mov       rax, QWORD PTR [152+rbp]                      ;754.3
$LN3075:
        mov       QWORD PTR [120+rbp], rax                      ;754.3
$LN3076:
        mov       rax, QWORD PTR [120+rbp]                      ;755.3
$LN3077:
        test      rax, rax                                      ;755.3
$LN3078:
        jne       .B16.36       ; Prob 50%                      ;755.3
$LN3079:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.35::                       ; Preds .B16.34
                                ; Execution count [0.00e+000]
$LN3080:
        mov       DWORD PTR [rbp], 3                            ;756.4
$LN3081:
        jmp       .B16.39       ; Prob 100%                     ;756.4
$LN3082:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.36::                       ; Preds .B16.34
                                ; Execution count [0.00e+000]
$LN3083:
        mov       rax, QWORD PTR [120+rbp]                      ;760.3
$LN3084:
        mov       rdx, QWORD PTR [104+rbp]                      ;760.3
$LN3085:
        mov       rcx, QWORD PTR [112+rbp]                      ;760.3
$LN3086:
        mov       rdi, rax                                      ;760.3
$LN3087:
        mov       rsi, rdx                                      ;760.3
$LN3088:
        mov       rdx, rdi                                      ;760.3
$LN3089:
        mov       eax, ecx                                      ;760.3
$LN3090:
        shr       rcx, 2                                        ;760.3
$LN3091:
        rep   movsd                                             ;760.3
$LN3092:
        mov       ecx, eax                                      ;760.3
$LN3093:
        and       ecx, 3                                        ;760.3
$LN3094:
        rep   movsb                                             ;760.3
$LN3095:
        mov       rax, rdx                                      ;760.3
$LN3096:
                                ; LOE rax rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.57::                       ; Preds .B16.36
                                ; Execution count [0.00e+000]
$LN3097:
        mov       QWORD PTR [168+rbp], rax                      ;760.3
$LN3098:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.37::                       ; Preds .B16.57 .B16.32
                                ; Execution count [0.00e+000]
$LN3099:
        mov       rax, QWORD PTR [56+rbp]                       ;762.2
$LN3100:
        mov       rdx, QWORD PTR [40+rbp]                       ;762.2
$LN3101:
        mov       rcx, QWORD PTR [64+rbp]                       ;762.2
$LN3102:
        mov       rbx, QWORD PTR [96+rbp]                       ;762.2
$LN3103:
        mov       rsi, QWORD PTR [80+rbp]                       ;762.2
$LN3104:
        mov       QWORD PTR [32+rsp], rsi                       ;762.2
$LN3105:
        mov       rsi, QWORD PTR [120+rbp]                      ;762.2
$LN3106:
        mov       QWORD PTR [40+rsp], rsi                       ;762.2
$LN3107:
        mov       QWORD PTR [176+rbp], rcx                      ;762.2[spill]
$LN3108:
        mov       rcx, rax                                      ;762.2
$LN3109:
        mov       rax, QWORD PTR [176+rbp]                      ;762.2[spill]
$LN3110:
        mov       r8, rax                                       ;762.2
$LN3111:
        mov       r9, rbx                                       ;762.2
$LN3112:
;       decryptBytes(uint8_t *, size_t, uint8_t *, const uint8_t *, size_t, uint8_t *)
        call      decryptBytes                                  ;762.2
$LN3113:
                                ; LOE rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.58::                       ; Preds .B16.37
                                ; Execution count [0.00e+000]
$LN3114:
        mov       DWORD PTR [20+rbp], eax                       ;762.2
$LN3115:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.38::                       ; Preds .B16.58
                                ; Execution count [0.00e+000]
$LN3116:
        mov       rax, QWORD PTR [24+rbp]                       ;762.2
$LN3117:
        mov       edx, DWORD PTR [20+rbp]                       ;762.2
$LN3118:
        mov       DWORD PTR [rax], edx                          ;762.2
$LN3119:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.39::                       ; Preds .B16.38 .B16.35 .B16.30 .B16.25
                                ; Execution count [0.00e+000]
$LN3120:
        mov       rax, QWORD PTR [56+rbp]                       ;764.2
$LN3121:
        test      rax, rax                                      ;764.2
$LN3122:
        je        .B16.41       ; Prob 50%                      ;764.2
$LN3123:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.40::                       ; Preds .B16.39
                                ; Execution count [0.00e+000]
$LN3124:
        mov       rax, QWORD PTR [56+rbp]                       ;764.17
$LN3125:
        mov       rcx, rax                                      ;764.17
$LN3126:
;       free(void *)
        call      free                                          ;764.17
$LN3127:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.59::                       ; Preds .B16.40
                                ; Execution count [0.00e+000]
$LN3128:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.41::                       ; Preds .B16.59 .B16.39
                                ; Execution count [0.00e+000]
$LN3129:
        mov       rax, QWORD PTR [96+rbp]                       ;765.2
$LN3130:
        test      rax, rax                                      ;765.2
$LN3131:
        je        .B16.43       ; Prob 50%                      ;765.2
$LN3132:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.42::                       ; Preds .B16.41
                                ; Execution count [0.00e+000]
$LN3133:
        mov       rax, QWORD PTR [96+rbp]                       ;765.15
$LN3134:
        mov       rcx, rax                                      ;765.15
$LN3135:
;       free(void *)
        call      free                                          ;765.15
$LN3136:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.60::                       ; Preds .B16.42
                                ; Execution count [0.00e+000]
$LN3137:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.43::                       ; Preds .B16.60 .B16.41
                                ; Execution count [0.00e+000]
$LN3138:
        mov       rax, QWORD PTR [120+rbp]                      ;766.2
$LN3139:
        test      rax, rax                                      ;766.2
$LN3140:
        je        .B16.45       ; Prob 50%                      ;766.2
$LN3141:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.44::                       ; Preds .B16.43
                                ; Execution count [0.00e+000]
$LN3142:
        mov       rax, QWORD PTR [120+rbp]                      ;766.14
$LN3143:
        mov       rcx, rax                                      ;766.14
$LN3144:
;       free(void *)
        call      free                                          ;766.14
$LN3145:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.61::                       ; Preds .B16.44
                                ; Execution count [0.00e+000]
$LN3146:
                                ; LOE rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B16.45::                       ; Preds .B16.61 .B16.43
                                ; Execution count [0.00e+000]
$LN3147:
        mov       eax, DWORD PTR [rbp]                          ;768.2
$LN3148:
        mov       rbx, QWORD PTR [184+rbp]                      ;768.2[spill]
$LN3149:
        mov       rsi, QWORD PTR [192+rbp]                      ;768.2[spill]
$LN3150:
        mov       rdi, QWORD PTR [200+rbp]                      ;768.2[spill]
$LN3151:
        lea       rsp, QWORD PTR [208+rbp]                      ;768.2
$LN3152:
        pop       rbp                                           ;768.2
$LN3153:
        ret                                                     ;768.2
$LN3154:
                                ; LOE
.B16.46::
$LN3155:
; mark_end;
sgx_decryptBytes ENDP
$LNsgx_decryptBytes$3156:
;sgx_decryptBytes	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$sgx_decryptBytes
	ALIGN 004H
.unwind.sgx_decryptBytes.B1_B45	DD	889856513
	DD	1913890
	DD	1991707
	DD	2061332
	DD	17302285
	DD	1342242848
;.xdata$sgx_decryptBytes	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$sgx_decryptBytes
	ALIGN 004H
.pdata.sgx_decryptBytes.B1_B45	DD	imagerel .B16.1
	DD	imagerel .B16.46
	DD	imagerel .unwind.sgx_decryptBytes.B1_B45
;.pdata$sgx_decryptBytes	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  sgx_decryptBytes
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_oc_cpuidex
TXTST16:
_2__routine_start_sgx_oc_cpuidex_16:
; -- Begin  sgx_oc_cpuidex
;sgx_oc_cpuidex	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_oc_cpuidex
; mark_begin;

	PUBLIC sgx_oc_cpuidex
; --- sgx_oc_cpuidex(int *, int, int)
sgx_oc_cpuidex	PROC 
; parameter 1(cpuinfo): rcx
; parameter 2(leaf): edx
; parameter 3(subleaf): r8d
.B17.1::                        ; Preds .B17.0
                                ; Execution count [0.00e+000]
L138::
                                                         ;812.1
$LN3157:
        push      rbp                                           ;812.1
$LN3158:
        sub       rsp, 144                                      ;812.1
$LN3159:
        lea       rbp, QWORD PTR [32+rsp]                       ;812.1
$LN3160:
        mov       QWORD PTR [96+rbp], rdi                       ;812.1[spill]
$LN3161:
        mov       QWORD PTR [88+rbp], rsi                       ;812.1[spill]
$LN3162:
        mov       QWORD PTR [128+rbp], rcx                      ;812.1
$LN3163:
        mov       DWORD PTR [136+rbp], edx                      ;812.1
$LN3164:
        mov       DWORD PTR [144+rbp], r8d                      ;812.1
$LN3165:
        mov       DWORD PTR [rbp], 0                            ;813.22
$LN3166:
        mov       QWORD PTR [24+rbp], 16                        ;814.22
$LN3167:
        mov       QWORD PTR [32+rbp], 0                         ;816.26
$LN3168:
        mov       QWORD PTR [40+rbp], 16                        ;817.22
$LN3169:
        mov       QWORD PTR [48+rbp], 0                         ;818.14
$LN3170:
        mov       rax, QWORD PTR [128+rbp]                      ;820.2
$LN3171:
        test      rax, rax                                      ;820.2
$LN3172:
        jne       .B17.3        ; Prob 50%                      ;820.2
$LN3173:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B17.2::                        ; Preds .B17.1
                                ; Execution count [0.00e+000]
$LN3174:
        mov       DWORD PTR [8+rbp], 0                          ;820.2
$LN3175:
        jmp       .B17.7        ; Prob 100%                     ;820.2
$LN3176:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B17.3::                        ; Preds .B17.1
                                ; Execution count [0.00e+000]
$LN3177:
        mov       rax, QWORD PTR [128+rbp]                      ;820.2
$LN3178:
        mov       rdx, QWORD PTR [24+rbp]                       ;820.2
$LN3179:
        mov       rcx, rax                                      ;820.2
$LN3180:
;       sgx_is_within_enclave(const void *, size_t)
        call      sgx_is_within_enclave                         ;820.2
$LN3181:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B17.29::                       ; Preds .B17.3
                                ; Execution count [0.00e+000]
$LN3182:
        mov       DWORD PTR [4+rbp], eax                        ;820.2
$LN3183:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B17.4::                        ; Preds .B17.29
                                ; Execution count [0.00e+000]
$LN3184:
        mov       eax, DWORD PTR [4+rbp]                        ;820.2
$LN3185:
        test      eax, eax                                      ;820.2
$LN3186:
        jne       .B17.6        ; Prob 50%                      ;820.2
$LN3187:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B17.5::                        ; Preds .B17.4
                                ; Execution count [0.00e+000]
$LN3188:
        mov       DWORD PTR [8+rbp], 0                          ;820.2
$LN3189:
        jmp       .B17.7        ; Prob 100%                     ;820.2
$LN3190:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B17.6::                        ; Preds .B17.4
                                ; Execution count [0.00e+000]
$LN3191:
        mov       DWORD PTR [8+rbp], 1                          ;820.2
$LN3192:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B17.7::                        ; Preds .B17.6 .B17.5 .B17.2
                                ; Execution count [0.00e+000]
$LN3193:
        mov       eax, DWORD PTR [8+rbp]                        ;820.2
$LN3194:
        test      eax, eax                                      ;820.2
$LN3195:
        jne       .B17.9        ; Prob 50%                      ;820.2
$LN3196:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B17.8::                        ; Preds .B17.7
                                ; Execution count [0.00e+000]
$LN3197:
        mov       QWORD PTR [56+rbp], 0                         ;820.2
$LN3198:
        jmp       .B17.10       ; Prob 100%                     ;820.2
$LN3199:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B17.9::                        ; Preds .B17.7
                                ; Execution count [0.00e+000]
$LN3200:
        mov       rax, QWORD PTR [24+rbp]                       ;820.2
$LN3201:
        mov       QWORD PTR [56+rbp], rax                       ;820.2
$LN3202:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B17.10::                       ; Preds .B17.9 .B17.8
                                ; Execution count [0.00e+000]
$LN3203:
        mov       rax, QWORD PTR [56+rbp]                       ;820.2
$LN3204:
        add       rax, QWORD PTR [40+rbp]                       ;820.2
$LN3205:
        mov       QWORD PTR [40+rbp], rax                       ;820.2
$LN3206:
        mov       rax, QWORD PTR [40+rbp]                       ;822.2
$LN3207:
        mov       rcx, rax                                      ;822.2
$LN3208:
;       sgx_ocalloc(size_t)
        call      sgx_ocalloc                                   ;822.2
$LN3209:
                                ; LOE rax rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B17.30::                       ; Preds .B17.10
                                ; Execution count [0.00e+000]
$LN3210:
        mov       QWORD PTR [64+rbp], rax                       ;822.2
$LN3211:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B17.11::                       ; Preds .B17.30
                                ; Execution count [0.00e+000]
$LN3212:
        mov       rax, QWORD PTR [64+rbp]                       ;822.2
$LN3213:
        mov       QWORD PTR [48+rbp], rax                       ;822.2
$LN3214:
        mov       rax, QWORD PTR [48+rbp]                       ;823.2
$LN3215:
        test      rax, rax                                      ;823.2
$LN3216:
        jne       .B17.14       ; Prob 50%                      ;823.2
$LN3217:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B17.12::                       ; Preds .B17.11
                                ; Execution count [0.00e+000]
$LN3218:
;       sgx_ocfree(void)
        call      sgx_ocfree                                    ;824.3
$LN3219:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B17.13::                       ; Preds .B17.12
                                ; Execution count [0.00e+000]
$LN3220:
        mov       eax, 1                                        ;825.3
$LN3221:
        mov       rsi, QWORD PTR [88+rbp]                       ;825.3[spill]
$LN3222:
        mov       rdi, QWORD PTR [96+rbp]                       ;825.3[spill]
$LN3223:
        lea       rsp, QWORD PTR [112+rbp]                      ;825.3
$LN3224:
        pop       rbp                                           ;825.3
$LN3225:
        ret                                                     ;825.3
$LN3226:
                                ; LOE
.B17.14::                       ; Preds .B17.11
                                ; Execution count [0.00e+000]
$LN3227:
        mov       rax, QWORD PTR [48+rbp]                       ;827.2
$LN3228:
        mov       QWORD PTR [32+rbp], rax                       ;827.2
$LN3229:
        add       QWORD PTR [48+rbp], 16                        ;828.2
$LN3230:
        mov       rax, QWORD PTR [128+rbp]                      ;830.2
$LN3231:
        test      rax, rax                                      ;830.2
$LN3232:
        je        .B17.18       ; Prob 50%                      ;830.2
$LN3233:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B17.15::                       ; Preds .B17.14
                                ; Execution count [0.00e+000]
$LN3234:
        mov       rax, QWORD PTR [128+rbp]                      ;830.2
$LN3235:
        mov       rdx, QWORD PTR [24+rbp]                       ;830.2
$LN3236:
        mov       rcx, rax                                      ;830.2
$LN3237:
;       sgx_is_within_enclave(const void *, size_t)
        call      sgx_is_within_enclave                         ;830.2
$LN3238:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B17.31::                       ; Preds .B17.15
                                ; Execution count [0.00e+000]
$LN3239:
        mov       DWORD PTR [12+rbp], eax                       ;830.2
$LN3240:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B17.16::                       ; Preds .B17.31
                                ; Execution count [0.00e+000]
$LN3241:
        mov       eax, DWORD PTR [12+rbp]                       ;830.2
$LN3242:
        test      eax, eax                                      ;830.2
$LN3243:
        je        .B17.18       ; Prob 50%                      ;830.2
$LN3244:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B17.17::                       ; Preds .B17.16
                                ; Execution count [0.00e+000]
$LN3245:
        mov       rax, QWORD PTR [32+rbp]                       ;831.3
$LN3246:
        mov       rdx, QWORD PTR [48+rbp]                       ;831.3
$LN3247:
        mov       QWORD PTR [rax], rdx                          ;831.3
$LN3248:
        mov       rax, QWORD PTR [24+rbp]                       ;832.3
$LN3249:
        add       rax, QWORD PTR [48+rbp]                       ;832.3
$LN3250:
        mov       QWORD PTR [48+rbp], rax                       ;832.3
$LN3251:
        mov       rax, QWORD PTR [32+rbp]                       ;833.3
$LN3252:
        mov       rax, QWORD PTR [rax]                          ;833.3
$LN3253:
        mov       rdx, QWORD PTR [128+rbp]                      ;833.3
$LN3254:
        mov       rcx, QWORD PTR [24+rbp]                       ;833.3
$LN3255:
        mov       rdi, rax                                      ;833.3
$LN3256:
        mov       rsi, rdx                                      ;833.3
$LN3257:
        mov       rdx, rdi                                      ;833.3
$LN3258:
        mov       eax, ecx                                      ;833.3
$LN3259:
        shr       rcx, 2                                        ;833.3
$LN3260:
        rep   movsd                                             ;833.3
$LN3261:
        mov       ecx, eax                                      ;833.3
$LN3262:
        and       ecx, 3                                        ;833.3
$LN3263:
        rep   movsb                                             ;833.3
$LN3264:
        mov       rax, rdx                                      ;833.3
$LN3265:
                                ; LOE rax rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B17.32::                       ; Preds .B17.17
                                ; Execution count [0.00e+000]
$LN3266:
        mov       QWORD PTR [72+rbp], rax                       ;833.3
$LN3267:
        jmp       .B17.22       ; Prob 100%                     ;833.3
$LN3268:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B17.18::                       ; Preds .B17.14 .B17.16
                                ; Execution count [0.00e+000]
$LN3269:
        mov       rax, QWORD PTR [128+rbp]                      ;834.9
$LN3270:
        test      rax, rax                                      ;834.9
$LN3271:
        jne       .B17.20       ; Prob 50%                      ;834.9
$LN3272:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B17.19::                       ; Preds .B17.18
                                ; Execution count [0.00e+000]
$LN3273:
        mov       rax, QWORD PTR [32+rbp]                       ;835.3
$LN3274:
        mov       QWORD PTR [rax], 0                            ;835.3
$LN3275:
        jmp       .B17.22       ; Prob 100%                     ;835.3
$LN3276:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B17.20::                       ; Preds .B17.18
                                ; Execution count [0.00e+000]
$LN3277:
;       sgx_ocfree(void)
        call      sgx_ocfree                                    ;837.3
$LN3278:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B17.21::                       ; Preds .B17.20
                                ; Execution count [0.00e+000]
$LN3279:
        mov       eax, 2                                        ;838.3
$LN3280:
        mov       rsi, QWORD PTR [88+rbp]                       ;838.3[spill]
$LN3281:
        mov       rdi, QWORD PTR [96+rbp]                       ;838.3[spill]
$LN3282:
        lea       rsp, QWORD PTR [112+rbp]                      ;838.3
$LN3283:
        pop       rbp                                           ;838.3
$LN3284:
        ret                                                     ;838.3
$LN3285:
                                ; LOE
.B17.22::                       ; Preds .B17.32 .B17.19
                                ; Execution count [0.00e+000]
$LN3286:
        mov       rax, QWORD PTR [32+rbp]                       ;841.2
$LN3287:
        mov       edx, DWORD PTR [136+rbp]                      ;841.2
$LN3288:
        mov       DWORD PTR [8+rax], edx                        ;841.2
$LN3289:
        mov       rax, QWORD PTR [32+rbp]                       ;842.2
$LN3290:
        mov       edx, DWORD PTR [144+rbp]                      ;842.2
$LN3291:
        mov       DWORD PTR [12+rax], edx                       ;842.2
$LN3292:
        mov       eax, 0                                        ;843.2
$LN3293:
        mov       rdx, QWORD PTR [32+rbp]                       ;843.2
$LN3294:
        mov       ecx, eax                                      ;843.2
$LN3295:
;       sgx_ocall(const unsigned int, void *)
        call      sgx_ocall                                     ;843.2
$LN3296:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B17.33::                       ; Preds .B17.22
                                ; Execution count [0.00e+000]
$LN3297:
        mov       DWORD PTR [16+rbp], eax                       ;843.2
$LN3298:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B17.23::                       ; Preds .B17.33
                                ; Execution count [0.00e+000]
$LN3299:
        mov       eax, DWORD PTR [16+rbp]                       ;843.2
$LN3300:
        mov       DWORD PTR [rbp], eax                          ;843.2
$LN3301:
        mov       rax, QWORD PTR [128+rbp]                      ;845.2
$LN3302:
        test      rax, rax                                      ;845.2
$LN3303:
        je        .B17.25       ; Prob 50%                      ;845.2
$LN3304:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B17.24::                       ; Preds .B17.23
                                ; Execution count [0.00e+000]
$LN3305:
        mov       rax, QWORD PTR [128+rbp]                      ;845.15
$LN3306:
        mov       rdx, QWORD PTR [32+rbp]                       ;845.15
$LN3307:
        mov       rdx, QWORD PTR [rdx]                          ;845.15
$LN3308:
        mov       rcx, QWORD PTR [24+rbp]                       ;845.15
$LN3309:
        mov       rdi, rax                                      ;845.15
$LN3310:
        mov       rsi, rdx                                      ;845.15
$LN3311:
        mov       rdx, rdi                                      ;845.15
$LN3312:
        mov       eax, ecx                                      ;845.15
$LN3313:
        shr       rcx, 2                                        ;845.15
$LN3314:
        rep   movsd                                             ;845.15
$LN3315:
        mov       ecx, eax                                      ;845.15
$LN3316:
        and       ecx, 3                                        ;845.15
$LN3317:
        rep   movsb                                             ;845.15
$LN3318:
        mov       rax, rdx                                      ;845.15
$LN3319:
                                ; LOE rax rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B17.34::                       ; Preds .B17.24
                                ; Execution count [0.00e+000]
$LN3320:
        mov       QWORD PTR [80+rbp], rax                       ;845.15
$LN3321:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B17.25::                       ; Preds .B17.34 .B17.23
                                ; Execution count [0.00e+000]
$LN3322:
;       sgx_ocfree(void)
        call      sgx_ocfree                                    ;847.2
$LN3323:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B17.26::                       ; Preds .B17.25
                                ; Execution count [0.00e+000]
$LN3324:
        mov       eax, DWORD PTR [rbp]                          ;848.2
$LN3325:
        mov       rsi, QWORD PTR [88+rbp]                       ;848.2[spill]
$LN3326:
        mov       rdi, QWORD PTR [96+rbp]                       ;848.2[spill]
$LN3327:
        lea       rsp, QWORD PTR [112+rbp]                      ;848.2
$LN3328:
        pop       rbp                                           ;848.2
$LN3329:
        ret                                                     ;848.2
$LN3330:
                                ; LOE
.B17.27::
$LN3331:
; mark_end;
sgx_oc_cpuidex ENDP
$LNsgx_oc_cpuidex$3332:
;sgx_oc_cpuidex	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$sgx_oc_cpuidex
	ALIGN 004H
.unwind.sgx_oc_cpuidex.B1_B26	DD	621286657
	DD	1008661
	DD	1078289
	DD	17302285
	DD	1342242834
;.xdata$sgx_oc_cpuidex	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$sgx_oc_cpuidex
	ALIGN 004H
.pdata.sgx_oc_cpuidex.B1_B26	DD	imagerel .B17.1
	DD	imagerel .B17.27
	DD	imagerel .unwind.sgx_oc_cpuidex.B1_B26
;.pdata$sgx_oc_cpuidex	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  sgx_oc_cpuidex
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_thread_wait_untrusted_event_ocall
TXTST17:
_2__routine_start_sgx_thread_wait_untrusted_event_ocall_17:
; -- Begin  sgx_thread_wait_untrusted_event_ocall
;sgx_thread_wait_untrusted_event_ocall	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_thread_wait_untrusted_event_ocall
; mark_begin;

	PUBLIC sgx_thread_wait_untrusted_event_ocall
; --- sgx_thread_wait_untrusted_event_ocall(int *, const void *)
sgx_thread_wait_untrusted_event_ocall	PROC 
; parameter 1(retval): rcx
; parameter 2(self): rdx
.B18.1::                        ; Preds .B18.0
                                ; Execution count [0.00e+000]
L146::
                                                         ;852.1
$LN3333:
        push      rbp                                           ;852.1
$LN3334:
        sub       rsp, 80                                       ;852.1
$LN3335:
        lea       rbp, QWORD PTR [32+rsp]                       ;852.1
$LN3336:
        mov       QWORD PTR [64+rbp], rcx                       ;852.1
$LN3337:
        mov       QWORD PTR [72+rbp], rdx                       ;852.1
$LN3338:
        mov       DWORD PTR [rbp], 0                            ;853.22
$LN3339:
        mov       QWORD PTR [8+rbp], 0                          ;855.49
$LN3340:
        mov       QWORD PTR [16+rbp], 16                        ;856.22
$LN3341:
        mov       QWORD PTR [24+rbp], 0                         ;857.14
$LN3342:
        mov       rax, QWORD PTR [16+rbp]                       ;860.2
$LN3343:
        mov       rcx, rax                                      ;860.2
$LN3344:
;       sgx_ocalloc(size_t)
        call      sgx_ocalloc                                   ;860.2
$LN3345:
                                ; LOE rax rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B18.12::                       ; Preds .B18.1
                                ; Execution count [0.00e+000]
$LN3346:
        mov       QWORD PTR [32+rbp], rax                       ;860.2
$LN3347:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B18.2::                        ; Preds .B18.12
                                ; Execution count [0.00e+000]
$LN3348:
        mov       rax, QWORD PTR [32+rbp]                       ;860.2
$LN3349:
        mov       QWORD PTR [24+rbp], rax                       ;860.2
$LN3350:
        mov       rax, QWORD PTR [24+rbp]                       ;861.2
$LN3351:
        test      rax, rax                                      ;861.2
$LN3352:
        jne       .B18.5        ; Prob 50%                      ;861.2
$LN3353:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B18.3::                        ; Preds .B18.2
                                ; Execution count [0.00e+000]
$LN3354:
;       sgx_ocfree(void)
        call      sgx_ocfree                                    ;862.3
$LN3355:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B18.4::                        ; Preds .B18.3
                                ; Execution count [0.00e+000]
$LN3356:
        mov       eax, 1                                        ;863.3
$LN3357:
        lea       rsp, QWORD PTR [48+rbp]                       ;863.3
$LN3358:
        pop       rbp                                           ;863.3
$LN3359:
        ret                                                     ;863.3
$LN3360:
                                ; LOE
.B18.5::                        ; Preds .B18.2
                                ; Execution count [0.00e+000]
$LN3361:
        mov       rax, QWORD PTR [24+rbp]                       ;865.2
$LN3362:
        mov       QWORD PTR [8+rbp], rax                        ;865.2
$LN3363:
        add       QWORD PTR [24+rbp], 16                        ;866.2
$LN3364:
        mov       rax, QWORD PTR [8+rbp]                        ;868.2
$LN3365:
        mov       rdx, QWORD PTR [72+rbp]                       ;868.2
$LN3366:
        mov       QWORD PTR [8+rax], rdx                        ;868.2
$LN3367:
        mov       eax, 1                                        ;869.2
$LN3368:
        mov       rdx, QWORD PTR [8+rbp]                        ;869.2
$LN3369:
        mov       ecx, eax                                      ;869.2
$LN3370:
;       sgx_ocall(const unsigned int, void *)
        call      sgx_ocall                                     ;869.2
$LN3371:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B18.13::                       ; Preds .B18.5
                                ; Execution count [0.00e+000]
$LN3372:
        mov       DWORD PTR [4+rbp], eax                        ;869.2
$LN3373:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B18.6::                        ; Preds .B18.13
                                ; Execution count [0.00e+000]
$LN3374:
        mov       eax, DWORD PTR [4+rbp]                        ;869.2
$LN3375:
        mov       DWORD PTR [rbp], eax                          ;869.2
$LN3376:
        mov       rax, QWORD PTR [64+rbp]                       ;871.2
$LN3377:
        test      rax, rax                                      ;871.2
$LN3378:
        je        .B18.8        ; Prob 50%                      ;871.2
$LN3379:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B18.7::                        ; Preds .B18.6
                                ; Execution count [0.00e+000]
$LN3380:
        mov       rax, QWORD PTR [8+rbp]                        ;871.14
$LN3381:
        mov       rdx, QWORD PTR [64+rbp]                       ;871.14
$LN3382:
        mov       eax, DWORD PTR [rax]                          ;871.14
$LN3383:
        mov       DWORD PTR [rdx], eax                          ;871.14
$LN3384:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B18.8::                        ; Preds .B18.7 .B18.6
                                ; Execution count [0.00e+000]
$LN3385:
;       sgx_ocfree(void)
        call      sgx_ocfree                                    ;873.2
$LN3386:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B18.9::                        ; Preds .B18.8
                                ; Execution count [0.00e+000]
$LN3387:
        mov       eax, DWORD PTR [rbp]                          ;874.2
$LN3388:
        lea       rsp, QWORD PTR [48+rbp]                       ;874.2
$LN3389:
        pop       rbp                                           ;874.2
$LN3390:
        ret                                                     ;874.2
$LN3391:
                                ; LOE
.B18.10::
$LN3392:
; mark_end;
sgx_thread_wait_untrusted_event_ocall ENDP
$LNsgx_thread_wait_untrusted_event_ocall$3393:
;sgx_thread_wait_untrusted_event_ocall	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$sgx_thread_wait_untrusted_event_ocall
	ALIGN 004H
.unwind.sgx_thread_wait_untrusted_event_ocall.B1_B9	DD	620956161
	DD	2449801994
	DD	20481
;.xdata$sgx_thread_wait_untrusted_event_ocall	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$sgx_thread_wait_untrusted_event_ocall
	ALIGN 004H
.pdata.sgx_thread_wait_untrusted_event_ocall.B1_B9	DD	imagerel .B18.1
	DD	imagerel .B18.10
	DD	imagerel .unwind.sgx_thread_wait_untrusted_event_ocall.B1_B9
;.pdata$sgx_thread_wait_untrusted_event_ocall	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  sgx_thread_wait_untrusted_event_ocall
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_thread_set_untrusted_event_ocall
TXTST18:
_2__routine_start_sgx_thread_set_untrusted_event_ocall_18:
; -- Begin  sgx_thread_set_untrusted_event_ocall
;sgx_thread_set_untrusted_event_ocall	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_thread_set_untrusted_event_ocall
; mark_begin;

	PUBLIC sgx_thread_set_untrusted_event_ocall
; --- sgx_thread_set_untrusted_event_ocall(int *, const void *)
sgx_thread_set_untrusted_event_ocall	PROC 
; parameter 1(retval): rcx
; parameter 2(waiter): rdx
.B19.1::                        ; Preds .B19.0
                                ; Execution count [0.00e+000]
L153::
                                                         ;878.1
$LN3394:
        push      rbp                                           ;878.1
$LN3395:
        sub       rsp, 80                                       ;878.1
$LN3396:
        lea       rbp, QWORD PTR [32+rsp]                       ;878.1
$LN3397:
        mov       QWORD PTR [64+rbp], rcx                       ;878.1
$LN3398:
        mov       QWORD PTR [72+rbp], rdx                       ;878.1
$LN3399:
        mov       DWORD PTR [rbp], 0                            ;879.22
$LN3400:
        mov       QWORD PTR [8+rbp], 0                          ;881.48
$LN3401:
        mov       QWORD PTR [16+rbp], 16                        ;882.22
$LN3402:
        mov       QWORD PTR [24+rbp], 0                         ;883.14
$LN3403:
        mov       rax, QWORD PTR [16+rbp]                       ;886.2
$LN3404:
        mov       rcx, rax                                      ;886.2
$LN3405:
;       sgx_ocalloc(size_t)
        call      sgx_ocalloc                                   ;886.2
$LN3406:
                                ; LOE rax rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B19.12::                       ; Preds .B19.1
                                ; Execution count [0.00e+000]
$LN3407:
        mov       QWORD PTR [32+rbp], rax                       ;886.2
$LN3408:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B19.2::                        ; Preds .B19.12
                                ; Execution count [0.00e+000]
$LN3409:
        mov       rax, QWORD PTR [32+rbp]                       ;886.2
$LN3410:
        mov       QWORD PTR [24+rbp], rax                       ;886.2
$LN3411:
        mov       rax, QWORD PTR [24+rbp]                       ;887.2
$LN3412:
        test      rax, rax                                      ;887.2
$LN3413:
        jne       .B19.5        ; Prob 50%                      ;887.2
$LN3414:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B19.3::                        ; Preds .B19.2
                                ; Execution count [0.00e+000]
$LN3415:
;       sgx_ocfree(void)
        call      sgx_ocfree                                    ;888.3
$LN3416:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B19.4::                        ; Preds .B19.3
                                ; Execution count [0.00e+000]
$LN3417:
        mov       eax, 1                                        ;889.3
$LN3418:
        lea       rsp, QWORD PTR [48+rbp]                       ;889.3
$LN3419:
        pop       rbp                                           ;889.3
$LN3420:
        ret                                                     ;889.3
$LN3421:
                                ; LOE
.B19.5::                        ; Preds .B19.2
                                ; Execution count [0.00e+000]
$LN3422:
        mov       rax, QWORD PTR [24+rbp]                       ;891.2
$LN3423:
        mov       QWORD PTR [8+rbp], rax                        ;891.2
$LN3424:
        add       QWORD PTR [24+rbp], 16                        ;892.2
$LN3425:
        mov       rax, QWORD PTR [8+rbp]                        ;894.2
$LN3426:
        mov       rdx, QWORD PTR [72+rbp]                       ;894.2
$LN3427:
        mov       QWORD PTR [8+rax], rdx                        ;894.2
$LN3428:
        mov       eax, 2                                        ;895.2
$LN3429:
        mov       rdx, QWORD PTR [8+rbp]                        ;895.2
$LN3430:
        mov       ecx, eax                                      ;895.2
$LN3431:
;       sgx_ocall(const unsigned int, void *)
        call      sgx_ocall                                     ;895.2
$LN3432:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B19.13::                       ; Preds .B19.5
                                ; Execution count [0.00e+000]
$LN3433:
        mov       DWORD PTR [4+rbp], eax                        ;895.2
$LN3434:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B19.6::                        ; Preds .B19.13
                                ; Execution count [0.00e+000]
$LN3435:
        mov       eax, DWORD PTR [4+rbp]                        ;895.2
$LN3436:
        mov       DWORD PTR [rbp], eax                          ;895.2
$LN3437:
        mov       rax, QWORD PTR [64+rbp]                       ;897.2
$LN3438:
        test      rax, rax                                      ;897.2
$LN3439:
        je        .B19.8        ; Prob 50%                      ;897.2
$LN3440:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B19.7::                        ; Preds .B19.6
                                ; Execution count [0.00e+000]
$LN3441:
        mov       rax, QWORD PTR [8+rbp]                        ;897.14
$LN3442:
        mov       rdx, QWORD PTR [64+rbp]                       ;897.14
$LN3443:
        mov       eax, DWORD PTR [rax]                          ;897.14
$LN3444:
        mov       DWORD PTR [rdx], eax                          ;897.14
$LN3445:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B19.8::                        ; Preds .B19.7 .B19.6
                                ; Execution count [0.00e+000]
$LN3446:
;       sgx_ocfree(void)
        call      sgx_ocfree                                    ;899.2
$LN3447:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B19.9::                        ; Preds .B19.8
                                ; Execution count [0.00e+000]
$LN3448:
        mov       eax, DWORD PTR [rbp]                          ;900.2
$LN3449:
        lea       rsp, QWORD PTR [48+rbp]                       ;900.2
$LN3450:
        pop       rbp                                           ;900.2
$LN3451:
        ret                                                     ;900.2
$LN3452:
                                ; LOE
.B19.10::
$LN3453:
; mark_end;
sgx_thread_set_untrusted_event_ocall ENDP
$LNsgx_thread_set_untrusted_event_ocall$3454:
;sgx_thread_set_untrusted_event_ocall	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$sgx_thread_set_untrusted_event_ocall
	ALIGN 004H
.unwind.sgx_thread_set_untrusted_event_ocall.B1_B9	DD	620956161
	DD	2449801994
	DD	20481
;.xdata$sgx_thread_set_untrusted_event_ocall	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$sgx_thread_set_untrusted_event_ocall
	ALIGN 004H
.pdata.sgx_thread_set_untrusted_event_ocall.B1_B9	DD	imagerel .B19.1
	DD	imagerel .B19.10
	DD	imagerel .unwind.sgx_thread_set_untrusted_event_ocall.B1_B9
;.pdata$sgx_thread_set_untrusted_event_ocall	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  sgx_thread_set_untrusted_event_ocall
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_thread_setwait_untrusted_events_ocall
TXTST19:
_2__routine_start_sgx_thread_setwait_untrusted_events_ocall_19:
; -- Begin  sgx_thread_setwait_untrusted_events_ocall
;sgx_thread_setwait_untrusted_events_ocall	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_thread_setwait_untrusted_events_ocall
; mark_begin;

	PUBLIC sgx_thread_setwait_untrusted_events_ocall
; --- sgx_thread_setwait_untrusted_events_ocall(int *, const void *, const void *)
sgx_thread_setwait_untrusted_events_ocall	PROC 
; parameter 1(retval): rcx
; parameter 2(waiter): rdx
; parameter 3(self): r8
.B20.1::                        ; Preds .B20.0
                                ; Execution count [0.00e+000]
L160::
                                                         ;904.1
$LN3455:
        push      rbp                                           ;904.1
$LN3456:
        sub       rsp, 80                                       ;904.1
$LN3457:
        lea       rbp, QWORD PTR [32+rsp]                       ;904.1
$LN3458:
        mov       QWORD PTR [64+rbp], rcx                       ;904.1
$LN3459:
        mov       QWORD PTR [72+rbp], rdx                       ;904.1
$LN3460:
        mov       QWORD PTR [80+rbp], r8                        ;904.1
$LN3461:
        mov       DWORD PTR [rbp], 0                            ;905.22
$LN3462:
        mov       QWORD PTR [8+rbp], 0                          ;907.53
$LN3463:
        mov       QWORD PTR [16+rbp], 24                        ;908.22
$LN3464:
        mov       QWORD PTR [24+rbp], 0                         ;909.14
$LN3465:
        mov       rax, QWORD PTR [16+rbp]                       ;912.2
$LN3466:
        mov       rcx, rax                                      ;912.2
$LN3467:
;       sgx_ocalloc(size_t)
        call      sgx_ocalloc                                   ;912.2
$LN3468:
                                ; LOE rax rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B20.12::                       ; Preds .B20.1
                                ; Execution count [0.00e+000]
$LN3469:
        mov       QWORD PTR [32+rbp], rax                       ;912.2
$LN3470:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B20.2::                        ; Preds .B20.12
                                ; Execution count [0.00e+000]
$LN3471:
        mov       rax, QWORD PTR [32+rbp]                       ;912.2
$LN3472:
        mov       QWORD PTR [24+rbp], rax                       ;912.2
$LN3473:
        mov       rax, QWORD PTR [24+rbp]                       ;913.2
$LN3474:
        test      rax, rax                                      ;913.2
$LN3475:
        jne       .B20.5        ; Prob 50%                      ;913.2
$LN3476:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B20.3::                        ; Preds .B20.2
                                ; Execution count [0.00e+000]
$LN3477:
;       sgx_ocfree(void)
        call      sgx_ocfree                                    ;914.3
$LN3478:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B20.4::                        ; Preds .B20.3
                                ; Execution count [0.00e+000]
$LN3479:
        mov       eax, 1                                        ;915.3
$LN3480:
        lea       rsp, QWORD PTR [48+rbp]                       ;915.3
$LN3481:
        pop       rbp                                           ;915.3
$LN3482:
        ret                                                     ;915.3
$LN3483:
                                ; LOE
.B20.5::                        ; Preds .B20.2
                                ; Execution count [0.00e+000]
$LN3484:
        mov       rax, QWORD PTR [24+rbp]                       ;917.2
$LN3485:
        mov       QWORD PTR [8+rbp], rax                        ;917.2
$LN3486:
        add       QWORD PTR [24+rbp], 24                        ;918.2
$LN3487:
        mov       rax, QWORD PTR [8+rbp]                        ;920.2
$LN3488:
        mov       rdx, QWORD PTR [72+rbp]                       ;920.2
$LN3489:
        mov       QWORD PTR [8+rax], rdx                        ;920.2
$LN3490:
        mov       rax, QWORD PTR [8+rbp]                        ;921.2
$LN3491:
        mov       rdx, QWORD PTR [80+rbp]                       ;921.2
$LN3492:
        mov       QWORD PTR [16+rax], rdx                       ;921.2
$LN3493:
        mov       eax, 3                                        ;922.2
$LN3494:
        mov       rdx, QWORD PTR [8+rbp]                        ;922.2
$LN3495:
        mov       ecx, eax                                      ;922.2
$LN3496:
;       sgx_ocall(const unsigned int, void *)
        call      sgx_ocall                                     ;922.2
$LN3497:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B20.13::                       ; Preds .B20.5
                                ; Execution count [0.00e+000]
$LN3498:
        mov       DWORD PTR [4+rbp], eax                        ;922.2
$LN3499:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B20.6::                        ; Preds .B20.13
                                ; Execution count [0.00e+000]
$LN3500:
        mov       eax, DWORD PTR [4+rbp]                        ;922.2
$LN3501:
        mov       DWORD PTR [rbp], eax                          ;922.2
$LN3502:
        mov       rax, QWORD PTR [64+rbp]                       ;924.2
$LN3503:
        test      rax, rax                                      ;924.2
$LN3504:
        je        .B20.8        ; Prob 50%                      ;924.2
$LN3505:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B20.7::                        ; Preds .B20.6
                                ; Execution count [0.00e+000]
$LN3506:
        mov       rax, QWORD PTR [8+rbp]                        ;924.14
$LN3507:
        mov       rdx, QWORD PTR [64+rbp]                       ;924.14
$LN3508:
        mov       eax, DWORD PTR [rax]                          ;924.14
$LN3509:
        mov       DWORD PTR [rdx], eax                          ;924.14
$LN3510:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B20.8::                        ; Preds .B20.7 .B20.6
                                ; Execution count [0.00e+000]
$LN3511:
;       sgx_ocfree(void)
        call      sgx_ocfree                                    ;926.2
$LN3512:
                                ; LOE rbx rbp rsi rdi rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B20.9::                        ; Preds .B20.8
                                ; Execution count [0.00e+000]
$LN3513:
        mov       eax, DWORD PTR [rbp]                          ;927.2
$LN3514:
        lea       rsp, QWORD PTR [48+rbp]                       ;927.2
$LN3515:
        pop       rbp                                           ;927.2
$LN3516:
        ret                                                     ;927.2
$LN3517:
                                ; LOE
.B20.10::
$LN3518:
; mark_end;
sgx_thread_setwait_untrusted_events_ocall ENDP
$LNsgx_thread_setwait_untrusted_events_ocall$3519:
;sgx_thread_setwait_untrusted_events_ocall	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$sgx_thread_setwait_untrusted_events_ocall
	ALIGN 004H
.unwind.sgx_thread_setwait_untrusted_events_ocall.B1_B9	DD	620956161
	DD	2449801994
	DD	20481
;.xdata$sgx_thread_setwait_untrusted_events_ocall	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$sgx_thread_setwait_untrusted_events_ocall
	ALIGN 004H
.pdata.sgx_thread_setwait_untrusted_events_ocall.B1_B9	DD	imagerel .B20.1
	DD	imagerel .B20.10
	DD	imagerel .unwind.sgx_thread_setwait_untrusted_events_ocall.B1_B9
;.pdata$sgx_thread_setwait_untrusted_events_ocall	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  sgx_thread_setwait_untrusted_events_ocall
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_thread_set_multiple_untrusted_events_ocall
TXTST20:
_2__routine_start_sgx_thread_set_multiple_untrusted_events_ocall_20:
; -- Begin  sgx_thread_set_multiple_untrusted_events_ocall
;sgx_thread_set_multiple_untrusted_events_ocall	ENDS
_TEXT	ENDS
_TEXT	SEGMENT      'CODE'
;	COMDAT sgx_thread_set_multiple_untrusted_events_ocall
; mark_begin;

	PUBLIC sgx_thread_set_multiple_untrusted_events_ocall
; --- sgx_thread_set_multiple_untrusted_events_ocall(int *, const void **, size_t)
sgx_thread_set_multiple_untrusted_events_ocall	PROC 
; parameter 1(retval): rcx
; parameter 2(waiters): rdx
; parameter 3(total): r8
.B21.1::                        ; Preds .B21.0
                                ; Execution count [0.00e+000]
L167::
                                                         ;931.1
$LN3520:
        push      rbp                                           ;931.1
$LN3521:
        sub       rsp, 128                                      ;931.1
$LN3522:
        lea       rbp, QWORD PTR [32+rsp]                       ;931.1
$LN3523:
        mov       QWORD PTR [88+rbp], rdi                       ;931.1[spill]
$LN3524:
        mov       QWORD PTR [80+rbp], rsi                       ;931.1[spill]
$LN3525:
        mov       QWORD PTR [112+rbp], rcx                      ;931.1
$LN3526:
        mov       QWORD PTR [120+rbp], rdx                      ;931.1
$LN3527:
        mov       QWORD PTR [128+rbp], r8                       ;931.1
$LN3528:
        mov       DWORD PTR [rbp], 0                            ;932.22
$LN3529:
        mov       rax, QWORD PTR [128+rbp]                      ;933.22
$LN3530:
        imul      rax, rax, 8                                   ;933.22
$LN3531:
        mov       QWORD PTR [24+rbp], rax                       ;933.22
$LN3532:
        mov       QWORD PTR [32+rbp], 0                         ;935.58
$LN3533:
        mov       QWORD PTR [40+rbp], 24                        ;936.22
$LN3534:
        mov       QWORD PTR [48+rbp], 0                         ;937.14
$LN3535:
        mov       rax, QWORD PTR [120+rbp]                      ;939.2
$LN3536:
        test      rax, rax                                      ;939.2
$LN3537:
        jne       .B21.3        ; Prob 50%                      ;939.2
$LN3538:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B21.2::                        ; Preds .B21.1
                                ; Execution count [0.00e+000]
$LN3539:
        mov       DWORD PTR [8+rbp], 0                          ;939.2
$LN3540:
        jmp       .B21.7        ; Prob 100%                     ;939.2
$LN3541:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B21.3::                        ; Preds .B21.1
                                ; Execution count [0.00e+000]
$LN3542:
        mov       rax, QWORD PTR [120+rbp]                      ;939.2
$LN3543:
        mov       rdx, QWORD PTR [24+rbp]                       ;939.2
$LN3544:
        mov       rcx, rax                                      ;939.2
$LN3545:
;       sgx_is_within_enclave(const void *, size_t)
        call      sgx_is_within_enclave                         ;939.2
$LN3546:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B21.29::                       ; Preds .B21.3
                                ; Execution count [0.00e+000]
$LN3547:
        mov       DWORD PTR [4+rbp], eax                        ;939.2
$LN3548:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B21.4::                        ; Preds .B21.29
                                ; Execution count [0.00e+000]
$LN3549:
        mov       eax, DWORD PTR [4+rbp]                        ;939.2
$LN3550:
        test      eax, eax                                      ;939.2
$LN3551:
        jne       .B21.6        ; Prob 50%                      ;939.2
$LN3552:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B21.5::                        ; Preds .B21.4
                                ; Execution count [0.00e+000]
$LN3553:
        mov       DWORD PTR [8+rbp], 0                          ;939.2
$LN3554:
        jmp       .B21.7        ; Prob 100%                     ;939.2
$LN3555:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B21.6::                        ; Preds .B21.4
                                ; Execution count [0.00e+000]
$LN3556:
        mov       DWORD PTR [8+rbp], 1                          ;939.2
$LN3557:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B21.7::                        ; Preds .B21.6 .B21.5 .B21.2
                                ; Execution count [0.00e+000]
$LN3558:
        mov       eax, DWORD PTR [8+rbp]                        ;939.2
$LN3559:
        test      eax, eax                                      ;939.2
$LN3560:
        jne       .B21.9        ; Prob 50%                      ;939.2
$LN3561:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B21.8::                        ; Preds .B21.7
                                ; Execution count [0.00e+000]
$LN3562:
        mov       QWORD PTR [56+rbp], 0                         ;939.2
$LN3563:
        jmp       .B21.10       ; Prob 100%                     ;939.2
$LN3564:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B21.9::                        ; Preds .B21.7
                                ; Execution count [0.00e+000]
$LN3565:
        mov       rax, QWORD PTR [24+rbp]                       ;939.2
$LN3566:
        mov       QWORD PTR [56+rbp], rax                       ;939.2
$LN3567:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B21.10::                       ; Preds .B21.9 .B21.8
                                ; Execution count [0.00e+000]
$LN3568:
        mov       rax, QWORD PTR [56+rbp]                       ;939.2
$LN3569:
        add       rax, QWORD PTR [40+rbp]                       ;939.2
$LN3570:
        mov       QWORD PTR [40+rbp], rax                       ;939.2
$LN3571:
        mov       rax, QWORD PTR [40+rbp]                       ;941.2
$LN3572:
        mov       rcx, rax                                      ;941.2
$LN3573:
;       sgx_ocalloc(size_t)
        call      sgx_ocalloc                                   ;941.2
$LN3574:
                                ; LOE rax rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B21.30::                       ; Preds .B21.10
                                ; Execution count [0.00e+000]
$LN3575:
        mov       QWORD PTR [64+rbp], rax                       ;941.2
$LN3576:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B21.11::                       ; Preds .B21.30
                                ; Execution count [0.00e+000]
$LN3577:
        mov       rax, QWORD PTR [64+rbp]                       ;941.2
$LN3578:
        mov       QWORD PTR [48+rbp], rax                       ;941.2
$LN3579:
        mov       rax, QWORD PTR [48+rbp]                       ;942.2
$LN3580:
        test      rax, rax                                      ;942.2
$LN3581:
        jne       .B21.14       ; Prob 50%                      ;942.2
$LN3582:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B21.12::                       ; Preds .B21.11
                                ; Execution count [0.00e+000]
$LN3583:
;       sgx_ocfree(void)
        call      sgx_ocfree                                    ;943.3
$LN3584:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B21.13::                       ; Preds .B21.12
                                ; Execution count [0.00e+000]
$LN3585:
        mov       eax, 1                                        ;944.3
$LN3586:
        mov       rsi, QWORD PTR [80+rbp]                       ;944.3[spill]
$LN3587:
        mov       rdi, QWORD PTR [88+rbp]                       ;944.3[spill]
$LN3588:
        lea       rsp, QWORD PTR [96+rbp]                       ;944.3
$LN3589:
        pop       rbp                                           ;944.3
$LN3590:
        ret                                                     ;944.3
$LN3591:
                                ; LOE
.B21.14::                       ; Preds .B21.11
                                ; Execution count [0.00e+000]
$LN3592:
        mov       rax, QWORD PTR [48+rbp]                       ;946.2
$LN3593:
        mov       QWORD PTR [32+rbp], rax                       ;946.2
$LN3594:
        add       QWORD PTR [48+rbp], 24                        ;947.2
$LN3595:
        mov       rax, QWORD PTR [120+rbp]                      ;949.2
$LN3596:
        test      rax, rax                                      ;949.2
$LN3597:
        je        .B21.18       ; Prob 50%                      ;949.2
$LN3598:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B21.15::                       ; Preds .B21.14
                                ; Execution count [0.00e+000]
$LN3599:
        mov       rax, QWORD PTR [120+rbp]                      ;949.2
$LN3600:
        mov       rdx, QWORD PTR [24+rbp]                       ;949.2
$LN3601:
        mov       rcx, rax                                      ;949.2
$LN3602:
;       sgx_is_within_enclave(const void *, size_t)
        call      sgx_is_within_enclave                         ;949.2
$LN3603:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B21.31::                       ; Preds .B21.15
                                ; Execution count [0.00e+000]
$LN3604:
        mov       DWORD PTR [12+rbp], eax                       ;949.2
$LN3605:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B21.16::                       ; Preds .B21.31
                                ; Execution count [0.00e+000]
$LN3606:
        mov       eax, DWORD PTR [12+rbp]                       ;949.2
$LN3607:
        test      eax, eax                                      ;949.2
$LN3608:
        je        .B21.18       ; Prob 50%                      ;949.2
$LN3609:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B21.17::                       ; Preds .B21.16
                                ; Execution count [0.00e+000]
$LN3610:
        mov       rax, QWORD PTR [32+rbp]                       ;950.3
$LN3611:
        mov       rdx, QWORD PTR [48+rbp]                       ;950.3
$LN3612:
        mov       QWORD PTR [8+rax], rdx                        ;950.3
$LN3613:
        mov       rax, QWORD PTR [24+rbp]                       ;951.3
$LN3614:
        add       rax, QWORD PTR [48+rbp]                       ;951.3
$LN3615:
        mov       QWORD PTR [48+rbp], rax                       ;951.3
$LN3616:
        mov       rax, QWORD PTR [32+rbp]                       ;952.3
$LN3617:
        mov       rax, QWORD PTR [8+rax]                        ;952.3
$LN3618:
        mov       rdx, QWORD PTR [120+rbp]                      ;952.3
$LN3619:
        mov       rcx, QWORD PTR [24+rbp]                       ;952.3
$LN3620:
        mov       rdi, rax                                      ;952.3
$LN3621:
        mov       rsi, rdx                                      ;952.3
$LN3622:
        mov       rdx, rdi                                      ;952.3
$LN3623:
        mov       eax, ecx                                      ;952.3
$LN3624:
        shr       rcx, 2                                        ;952.3
$LN3625:
        rep   movsd                                             ;952.3
$LN3626:
        mov       ecx, eax                                      ;952.3
$LN3627:
        and       ecx, 3                                        ;952.3
$LN3628:
        rep   movsb                                             ;952.3
$LN3629:
        mov       rax, rdx                                      ;952.3
$LN3630:
                                ; LOE rax rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B21.32::                       ; Preds .B21.17
                                ; Execution count [0.00e+000]
$LN3631:
        mov       QWORD PTR [72+rbp], rax                       ;952.3
$LN3632:
        jmp       .B21.22       ; Prob 100%                     ;952.3
$LN3633:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B21.18::                       ; Preds .B21.14 .B21.16
                                ; Execution count [0.00e+000]
$LN3634:
        mov       rax, QWORD PTR [120+rbp]                      ;953.9
$LN3635:
        test      rax, rax                                      ;953.9
$LN3636:
        jne       .B21.20       ; Prob 50%                      ;953.9
$LN3637:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B21.19::                       ; Preds .B21.18
                                ; Execution count [0.00e+000]
$LN3638:
        mov       rax, QWORD PTR [32+rbp]                       ;954.3
$LN3639:
        mov       QWORD PTR [8+rax], 0                          ;954.3
$LN3640:
        jmp       .B21.22       ; Prob 100%                     ;954.3
$LN3641:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B21.20::                       ; Preds .B21.18
                                ; Execution count [0.00e+000]
$LN3642:
;       sgx_ocfree(void)
        call      sgx_ocfree                                    ;956.3
$LN3643:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B21.21::                       ; Preds .B21.20
                                ; Execution count [0.00e+000]
$LN3644:
        mov       eax, 2                                        ;957.3
$LN3645:
        mov       rsi, QWORD PTR [80+rbp]                       ;957.3[spill]
$LN3646:
        mov       rdi, QWORD PTR [88+rbp]                       ;957.3[spill]
$LN3647:
        lea       rsp, QWORD PTR [96+rbp]                       ;957.3
$LN3648:
        pop       rbp                                           ;957.3
$LN3649:
        ret                                                     ;957.3
$LN3650:
                                ; LOE
.B21.22::                       ; Preds .B21.32 .B21.19
                                ; Execution count [0.00e+000]
$LN3651:
        mov       rax, QWORD PTR [32+rbp]                       ;960.2
$LN3652:
        mov       rdx, QWORD PTR [128+rbp]                      ;960.2
$LN3653:
        mov       QWORD PTR [16+rax], rdx                       ;960.2
$LN3654:
        mov       eax, 4                                        ;961.2
$LN3655:
        mov       rdx, QWORD PTR [32+rbp]                       ;961.2
$LN3656:
        mov       ecx, eax                                      ;961.2
$LN3657:
;       sgx_ocall(const unsigned int, void *)
        call      sgx_ocall                                     ;961.2
$LN3658:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip eax zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B21.33::                       ; Preds .B21.22
                                ; Execution count [0.00e+000]
$LN3659:
        mov       DWORD PTR [16+rbp], eax                       ;961.2
$LN3660:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B21.23::                       ; Preds .B21.33
                                ; Execution count [0.00e+000]
$LN3661:
        mov       eax, DWORD PTR [16+rbp]                       ;961.2
$LN3662:
        mov       DWORD PTR [rbp], eax                          ;961.2
$LN3663:
        mov       rax, QWORD PTR [112+rbp]                      ;963.2
$LN3664:
        test      rax, rax                                      ;963.2
$LN3665:
        je        .B21.25       ; Prob 50%                      ;963.2
$LN3666:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B21.24::                       ; Preds .B21.23
                                ; Execution count [0.00e+000]
$LN3667:
        mov       rax, QWORD PTR [32+rbp]                       ;963.14
$LN3668:
        mov       rdx, QWORD PTR [112+rbp]                      ;963.14
$LN3669:
        mov       eax, DWORD PTR [rax]                          ;963.14
$LN3670:
        mov       DWORD PTR [rdx], eax                          ;963.14
$LN3671:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B21.25::                       ; Preds .B21.24 .B21.23
                                ; Execution count [0.00e+000]
$LN3672:
;       sgx_ocfree(void)
        call      sgx_ocfree                                    ;965.2
$LN3673:
                                ; LOE rbx rbp rsp r12 r13 r14 r15 rip zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15
.B21.26::                       ; Preds .B21.25
                                ; Execution count [0.00e+000]
$LN3674:
        mov       eax, DWORD PTR [rbp]                          ;966.2
$LN3675:
        mov       rsi, QWORD PTR [80+rbp]                       ;966.2[spill]
$LN3676:
        mov       rdi, QWORD PTR [88+rbp]                       ;966.2[spill]
$LN3677:
        lea       rsp, QWORD PTR [96+rbp]                       ;966.2
$LN3678:
        pop       rbp                                           ;966.2
$LN3679:
        ret                                                     ;966.2
$LN3680:
                                ; LOE
.B21.27::
$LN3681:
; mark_end;
sgx_thread_set_multiple_untrusted_events_ocall ENDP
$LNsgx_thread_set_multiple_untrusted_events_ocall$3682:
;sgx_thread_set_multiple_untrusted_events_ocall	ENDS
_TEXT	ENDS
.xdata	SEGMENT  DWORD   READ  ''
;	COMDAT .xdata$sgx_thread_set_multiple_untrusted_events_ocall
	ALIGN 004H
.unwind.sgx_thread_set_multiple_untrusted_events_ocall.B1_B26	DD	621221121
	DD	943125
	DD	1012753
	DD	4060611341
	DD	20481
;.xdata$sgx_thread_set_multiple_untrusted_events_ocall	ENDS
.xdata	ENDS
.pdata	SEGMENT  DWORD   READ  ''
;	COMDAT .pdata$sgx_thread_set_multiple_untrusted_events_ocall
	ALIGN 004H
.pdata.sgx_thread_set_multiple_untrusted_events_ocall.B1_B26	DD	imagerel .B21.1
	DD	imagerel .B21.27
	DD	imagerel .unwind.sgx_thread_set_multiple_untrusted_events_ocall.B1_B26
;.pdata$sgx_thread_set_multiple_untrusted_events_ocall	ENDS
.pdata	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; -- End  sgx_thread_set_multiple_untrusted_events_ocall
_RDATA	SEGMENT     READ  'DATA'
	ALIGN 004H
	PUBLIC g_ecall_table
g_ecall_table	DD	000000010H,000000000H
	DQ	sgx_enclaveJustCopy
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DQ	sgx_enclaveNoCopy
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DQ	sgx_enclaveCryptoNoCopy
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DQ	sgx_enclaveIterate
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DQ	sgx_enclaveVByteEncode
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DQ	sgx_enclaveVByteDecode
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DQ	sgx_enclaveRunLengthEncode
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DQ	sgx_enclaveRunLengthDecode
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DQ	sgx_enclaveRunLengthEncodeAndSum
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DQ	sgx_enclaveVByte
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DQ	sgx_enclaveVByteDecodeEncrypted
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DQ	sgx_enclaveVByteEncodeEncrypted
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DQ	sgx_enclaveCrypto
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DQ	sgx_enclaveCompleteProcess
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DQ	sgx_encryptBytes
	DB	1
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DQ	sgx_decryptBytes
	DB	1
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DD 6 DUP (0H)	; pad
	PUBLIC g_dyn_entry_table
g_dyn_entry_table	DD	000000005H,000000000H
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
	DB	0
_RDATA	ENDS
_DATA	SEGMENT      'DATA'
_DATA	ENDS
; mark_proc_addr_taken sgx_decryptBytes;
; mark_proc_addr_taken sgx_encryptBytes;
; mark_proc_addr_taken sgx_enclaveCompleteProcess;
; mark_proc_addr_taken sgx_enclaveCrypto;
; mark_proc_addr_taken sgx_enclaveVByteEncodeEncrypted;
; mark_proc_addr_taken sgx_enclaveVByteDecodeEncrypted;
; mark_proc_addr_taken sgx_enclaveVByte;
; mark_proc_addr_taken sgx_enclaveRunLengthEncodeAndSum;
; mark_proc_addr_taken sgx_enclaveRunLengthDecode;
; mark_proc_addr_taken sgx_enclaveRunLengthEncode;
; mark_proc_addr_taken sgx_enclaveVByteDecode;
; mark_proc_addr_taken sgx_enclaveVByteEncode;
; mark_proc_addr_taken sgx_enclaveIterate;
; mark_proc_addr_taken sgx_enclaveCryptoNoCopy;
; mark_proc_addr_taken sgx_enclaveNoCopy;
; mark_proc_addr_taken sgx_enclaveJustCopy;
EXTRN	malloc:PROC
EXTRN	free:PROC
EXTRN	sgx_is_outside_enclave:PROC
EXTRN	sgx_is_within_enclave:PROC
EXTRN	decryptBytes:PROC
EXTRN	encryptBytes:PROC
EXTRN	enclaveCompleteProcess:PROC
EXTRN	enclaveCrypto:PROC
EXTRN	enclaveVByteEncodeEncrypted:PROC
EXTRN	enclaveVByteDecodeEncrypted:PROC
EXTRN	enclaveVByte:PROC
EXTRN	enclaveRunLengthEncodeAndSum:PROC
EXTRN	enclaveRunLengthDecode:PROC
EXTRN	enclaveRunLengthEncode:PROC
EXTRN	enclaveVByteDecode:PROC
EXTRN	enclaveVByteEncode:PROC
EXTRN	enclaveIterate:PROC
EXTRN	enclaveCryptoNoCopy:PROC
EXTRN	enclaveNoCopy:PROC
EXTRN	enclaveJustCopy:PROC
EXTRN	sgx_ocall:PROC
EXTRN	sgx_ocfree:PROC
EXTRN	sgx_ocalloc:PROC
EXTRN	__ImageBase:PROC
	INCLUDELIB <libmmt>
	INCLUDELIB <LIBCMT>
	INCLUDELIB <libirc>
	INCLUDELIB <svml_dispmt>
	INCLUDELIB <OLDNAMES>
	INCLUDELIB <libdecimal>
	END
