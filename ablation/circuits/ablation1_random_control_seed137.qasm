OPENQASM 3.0;
include "stdgates.inc";
bit[1] m;
bit[1] n;
bit[125] c;

// =ABLATION #1: Random Circuit Control (random_control_seed137)=
// Qubits: 125, CZ: 11900, Feedback: 350, Seed: 137
// Same depth/gates/feedback as torus, random connectivity.

// Phase 1: Initialize all data qubits to |+>
rz(pi/2) $0;
sx $0;
rz(pi/2) $0;
rz(pi/2) $1;
sx $1;
rz(pi/2) $1;
rz(pi/2) $2;
sx $2;
rz(pi/2) $2;
rz(pi/2) $3;
sx $3;
rz(pi/2) $3;
rz(pi/2) $4;
sx $4;
rz(pi/2) $4;
rz(pi/2) $5;
sx $5;
rz(pi/2) $5;
rz(pi/2) $6;
sx $6;
rz(pi/2) $6;
rz(pi/2) $7;
sx $7;
rz(pi/2) $7;
rz(pi/2) $8;
sx $8;
rz(pi/2) $8;
rz(pi/2) $9;
sx $9;
rz(pi/2) $9;
rz(pi/2) $10;
sx $10;
rz(pi/2) $10;
rz(pi/2) $11;
sx $11;
rz(pi/2) $11;
rz(pi/2) $12;
sx $12;
rz(pi/2) $12;
rz(pi/2) $13;
sx $13;
rz(pi/2) $13;
rz(pi/2) $14;
sx $14;
rz(pi/2) $14;
rz(pi/2) $15;
sx $15;
rz(pi/2) $15;
rz(pi/2) $16;
sx $16;
rz(pi/2) $16;
rz(pi/2) $17;
sx $17;
rz(pi/2) $17;
rz(pi/2) $18;
sx $18;
rz(pi/2) $18;
rz(pi/2) $19;
sx $19;
rz(pi/2) $19;
rz(pi/2) $20;
sx $20;
rz(pi/2) $20;
rz(pi/2) $21;
sx $21;
rz(pi/2) $21;
rz(pi/2) $22;
sx $22;
rz(pi/2) $22;
rz(pi/2) $23;
sx $23;
rz(pi/2) $23;
rz(pi/2) $24;
sx $24;
rz(pi/2) $24;
rz(pi/2) $25;
sx $25;
rz(pi/2) $25;
rz(pi/2) $26;
sx $26;
rz(pi/2) $26;
rz(pi/2) $27;
sx $27;
rz(pi/2) $27;
rz(pi/2) $28;
sx $28;
rz(pi/2) $28;
rz(pi/2) $29;
sx $29;
rz(pi/2) $29;
rz(pi/2) $30;
sx $30;
rz(pi/2) $30;
rz(pi/2) $31;
sx $31;
rz(pi/2) $31;
rz(pi/2) $32;
sx $32;
rz(pi/2) $32;
rz(pi/2) $33;
sx $33;
rz(pi/2) $33;
rz(pi/2) $34;
sx $34;
rz(pi/2) $34;
rz(pi/2) $35;
sx $35;
rz(pi/2) $35;
rz(pi/2) $36;
sx $36;
rz(pi/2) $36;
rz(pi/2) $37;
sx $37;
rz(pi/2) $37;
rz(pi/2) $38;
sx $38;
rz(pi/2) $38;
rz(pi/2) $39;
sx $39;
rz(pi/2) $39;
rz(pi/2) $40;
sx $40;
rz(pi/2) $40;
rz(pi/2) $41;
sx $41;
rz(pi/2) $41;
rz(pi/2) $42;
sx $42;
rz(pi/2) $42;
rz(pi/2) $43;
sx $43;
rz(pi/2) $43;
rz(pi/2) $44;
sx $44;
rz(pi/2) $44;
rz(pi/2) $45;
sx $45;
rz(pi/2) $45;
rz(pi/2) $46;
sx $46;
rz(pi/2) $46;
rz(pi/2) $47;
sx $47;
rz(pi/2) $47;
rz(pi/2) $48;
sx $48;
rz(pi/2) $48;
rz(pi/2) $49;
sx $49;
rz(pi/2) $49;
rz(pi/2) $50;
sx $50;
rz(pi/2) $50;
rz(pi/2) $51;
sx $51;
rz(pi/2) $51;
rz(pi/2) $52;
sx $52;
rz(pi/2) $52;
rz(pi/2) $53;
sx $53;
rz(pi/2) $53;
rz(pi/2) $54;
sx $54;
rz(pi/2) $54;
rz(pi/2) $55;
sx $55;
rz(pi/2) $55;
rz(pi/2) $56;
sx $56;
rz(pi/2) $56;
rz(pi/2) $57;
sx $57;
rz(pi/2) $57;
rz(pi/2) $58;
sx $58;
rz(pi/2) $58;
rz(pi/2) $59;
sx $59;
rz(pi/2) $59;
rz(pi/2) $60;
sx $60;
rz(pi/2) $60;
rz(pi/2) $61;
sx $61;
rz(pi/2) $61;
rz(pi/2) $62;
sx $62;
rz(pi/2) $62;
rz(pi/2) $63;
sx $63;
rz(pi/2) $63;
rz(pi/2) $64;
sx $64;
rz(pi/2) $64;
rz(pi/2) $65;
sx $65;
rz(pi/2) $65;
rz(pi/2) $66;
sx $66;
rz(pi/2) $66;
rz(pi/2) $67;
sx $67;
rz(pi/2) $67;
rz(pi/2) $68;
sx $68;
rz(pi/2) $68;
rz(pi/2) $69;
sx $69;
rz(pi/2) $69;
rz(pi/2) $70;
sx $70;
rz(pi/2) $70;
rz(pi/2) $71;
sx $71;
rz(pi/2) $71;
rz(pi/2) $72;
sx $72;
rz(pi/2) $72;
rz(pi/2) $73;
sx $73;
rz(pi/2) $73;
rz(pi/2) $74;
sx $74;
rz(pi/2) $74;
rz(pi/2) $75;
sx $75;
rz(pi/2) $75;
rz(pi/2) $76;
sx $76;
rz(pi/2) $76;
rz(pi/2) $77;
sx $77;
rz(pi/2) $77;
rz(pi/2) $78;
sx $78;
rz(pi/2) $78;
rz(pi/2) $79;
sx $79;
rz(pi/2) $79;
rz(pi/2) $80;
sx $80;
rz(pi/2) $80;
rz(pi/2) $81;
sx $81;
rz(pi/2) $81;
rz(pi/2) $82;
sx $82;
rz(pi/2) $82;
rz(pi/2) $83;
sx $83;
rz(pi/2) $83;
rz(pi/2) $84;
sx $84;
rz(pi/2) $84;
rz(pi/2) $85;
sx $85;
rz(pi/2) $85;
rz(pi/2) $86;
sx $86;
rz(pi/2) $86;
rz(pi/2) $87;
sx $87;
rz(pi/2) $87;
rz(pi/2) $88;
sx $88;
rz(pi/2) $88;
rz(pi/2) $89;
sx $89;
rz(pi/2) $89;
rz(pi/2) $90;
sx $90;
rz(pi/2) $90;
rz(pi/2) $91;
sx $91;
rz(pi/2) $91;
rz(pi/2) $92;
sx $92;
rz(pi/2) $92;
rz(pi/2) $93;
sx $93;
rz(pi/2) $93;
rz(pi/2) $94;
sx $94;
rz(pi/2) $94;
rz(pi/2) $95;
sx $95;
rz(pi/2) $95;
rz(pi/2) $96;
sx $96;
rz(pi/2) $96;
rz(pi/2) $97;
sx $97;
rz(pi/2) $97;
rz(pi/2) $98;
sx $98;
rz(pi/2) $98;
rz(pi/2) $99;
sx $99;
rz(pi/2) $99;
rz(pi/2) $100;
sx $100;
rz(pi/2) $100;
rz(pi/2) $101;
sx $101;
rz(pi/2) $101;
rz(pi/2) $102;
sx $102;
rz(pi/2) $102;
rz(pi/2) $103;
sx $103;
rz(pi/2) $103;
rz(pi/2) $104;
sx $104;
rz(pi/2) $104;
rz(pi/2) $105;
sx $105;
rz(pi/2) $105;
rz(pi/2) $106;
sx $106;
rz(pi/2) $106;
rz(pi/2) $107;
sx $107;
rz(pi/2) $107;
rz(pi/2) $108;
sx $108;
rz(pi/2) $108;
rz(pi/2) $109;
sx $109;
rz(pi/2) $109;
rz(pi/2) $110;
sx $110;
rz(pi/2) $110;
rz(pi/2) $111;
sx $111;
rz(pi/2) $111;
rz(pi/2) $112;
sx $112;
rz(pi/2) $112;
rz(pi/2) $113;
sx $113;
rz(pi/2) $113;
rz(pi/2) $114;
sx $114;
rz(pi/2) $114;
rz(pi/2) $115;
sx $115;
rz(pi/2) $115;
rz(pi/2) $116;
sx $116;
rz(pi/2) $116;
rz(pi/2) $117;
sx $117;
rz(pi/2) $117;
rz(pi/2) $118;
sx $118;
rz(pi/2) $118;
rz(pi/2) $119;
sx $119;
rz(pi/2) $119;
rz(pi/2) $120;
sx $120;
rz(pi/2) $120;
rz(pi/2) $121;
sx $121;
rz(pi/2) $121;
rz(pi/2) $122;
sx $122;
rz(pi/2) $122;
rz(pi/2) $123;
sx $123;
rz(pi/2) $123;
rz(pi/2) $124;
sx $124;
rz(pi/2) $124;

// Phase 2: Random entangling (375 random CZ pairs)
cz $4, $107;
cz $12, $78;
cz $30, $105;
cz $23, $92;
cz $13, $56;
cz $16, $44;
cz $37, $116;
cz $25, $83;
cz $0, $83;
cz $79, $87;
cz $30, $62;
cz $96, $124;
cz $88, $103;
cz $40, $80;
cz $23, $63;
cz $29, $97;
cz $82, $112;
cz $80, $124;
cz $41, $82;
cz $36, $80;
cz $9, $46;
cz $32, $60;
cz $40, $119;
cz $40, $107;
cz $24, $26;
cz $0, $18;
cz $50, $69;
cz $1, $86;
cz $57, $74;
cz $59, $94;
cz $9, $89;
cz $36, $116;
cz $95, $113;
cz $26, $79;
cz $12, $44;
cz $25, $99;
cz $74, $98;
cz $17, $60;
cz $86, $121;
cz $38, $45;
cz $28, $98;
cz $75, $115;
cz $23, $93;
cz $23, $38;
cz $63, $68;
cz $0, $80;
cz $60, $94;
cz $29, $113;
cz $24, $109;
cz $4, $64;
cz $64, $87;
cz $26, $54;
cz $60, $103;
cz $40, $42;
cz $8, $11;
cz $13, $99;
cz $2, $95;
cz $48, $117;
cz $23, $86;
cz $99, $114;
cz $43, $67;
cz $45, $79;
cz $43, $123;
cz $48, $76;
cz $61, $104;
cz $24, $103;
cz $2, $72;
cz $16, $91;
cz $73, $88;
cz $45, $92;
cz $6, $87;
cz $28, $74;
cz $40, $95;
cz $56, $91;
cz $76, $123;
cz $65, $72;
cz $0, $26;
cz $60, $64;
cz $63, $93;
cz $15, $47;
cz $84, $105;
cz $24, $49;
cz $17, $68;
cz $16, $41;
cz $98, $109;
cz $42, $122;
cz $117, $121;
cz $34, $56;
cz $9, $25;
cz $51, $117;
cz $66, $123;
cz $32, $120;
cz $81, $95;
cz $81, $87;
cz $37, $72;
cz $72, $89;
cz $19, $87;
cz $19, $53;
cz $55, $123;
cz $44, $95;
cz $36, $62;
cz $72, $115;
cz $10, $47;
cz $58, $112;
cz $78, $103;
cz $62, $101;
cz $63, $91;
cz $29, $107;
cz $63, $79;
cz $48, $69;
cz $94, $96;
cz $44, $47;
cz $28, $124;
cz $69, $87;
cz $97, $101;
cz $59, $99;
cz $40, $100;
cz $103, $117;
cz $111, $118;
cz $5, $70;
cz $10, $36;
cz $33, $49;
cz $6, $95;
cz $85, $86;
cz $56, $75;
cz $3, $117;
cz $9, $42;
cz $6, $52;
cz $70, $122;
cz $25, $50;
cz $55, $69;
cz $12, $86;
cz $48, $57;
cz $8, $19;
cz $51, $115;
cz $21, $84;
cz $63, $81;
cz $86, $108;
cz $35, $95;
cz $33, $105;
cz $14, $56;
cz $10, $96;
cz $60, $69;
cz $6, $101;
cz $13, $72;
cz $61, $62;
cz $45, $70;
cz $29, $49;
cz $75, $80;
cz $10, $105;
cz $29, $68;
cz $8, $40;
cz $71, $121;
cz $4, $49;
cz $28, $82;
cz $46, $124;
cz $19, $117;
cz $48, $89;
cz $64, $111;
cz $28, $43;
cz $49, $88;
cz $60, $99;
cz $70, $108;
cz $63, $111;
cz $25, $122;
cz $2, $105;
cz $2, $119;
cz $72, $101;
cz $26, $74;
cz $72, $98;
cz $73, $115;
cz $98, $123;
cz $112, $124;
cz $6, $62;
cz $36, $57;
cz $21, $123;
cz $23, $120;
cz $24, $36;
cz $69, $90;
cz $29, $45;
cz $0, $110;
cz $36, $58;
cz $63, $103;
cz $76, $81;
cz $23, $36;
cz $0, $89;
cz $33, $103;
cz $4, $23;
cz $46, $58;
cz $13, $67;
cz $28, $31;
cz $90, $124;
cz $67, $68;
cz $43, $83;
cz $104, $108;
cz $35, $124;
cz $2, $31;
cz $52, $110;
cz $56, $73;
cz $51, $79;
cz $99, $105;
cz $9, $41;
cz $84, $95;
cz $1, $112;
cz $12, $66;
cz $13, $91;
cz $22, $113;
cz $82, $92;
cz $21, $88;
cz $4, $96;
cz $63, $123;
cz $38, $56;
cz $53, $122;
cz $70, $92;
cz $64, $108;
cz $9, $94;
cz $43, $50;
cz $72, $88;
cz $31, $86;
cz $21, $68;
cz $27, $98;
cz $9, $56;
cz $41, $55;
cz $80, $86;
cz $16, $28;
cz $82, $101;
cz $21, $110;
cz $24, $73;
cz $87, $115;
cz $75, $118;
cz $26, $117;
cz $22, $54;
cz $23, $104;
cz $73, $99;
cz $21, $81;
cz $39, $119;
cz $21, $111;
cz $68, $82;
cz $67, $106;
cz $20, $93;
cz $101, $113;
cz $28, $83;
cz $20, $115;
cz $28, $35;
cz $57, $101;
cz $27, $75;
cz $24, $64;
cz $76, $95;
cz $54, $72;
cz $1, $121;
cz $27, $40;
cz $28, $115;
cz $19, $109;
cz $54, $96;
cz $25, $40;
cz $59, $117;
cz $29, $90;
cz $18, $47;
cz $46, $70;
cz $76, $109;
cz $55, $64;
cz $16, $105;
cz $53, $93;
cz $6, $123;
cz $18, $65;
cz $5, $89;
cz $21, $75;
cz $22, $101;
cz $2, $56;
cz $6, $84;
cz $16, $58;
cz $9, $124;
cz $33, $66;
cz $81, $93;
cz $39, $95;
cz $79, $110;
cz $100, $110;
cz $37, $57;
cz $74, $81;
cz $49, $122;
cz $4, $69;
cz $42, $48;
cz $18, $36;
cz $6, $93;
cz $4, $37;
cz $17, $91;
cz $66, $87;
cz $2, $58;
cz $17, $104;
cz $3, $33;
cz $41, $79;
cz $17, $115;
cz $58, $118;
cz $13, $95;
cz $18, $102;
cz $50, $58;
cz $49, $103;
cz $20, $55;
cz $28, $108;
cz $17, $19;
cz $15, $75;
cz $35, $79;
cz $12, $60;
cz $50, $114;
cz $40, $56;
cz $72, $76;
cz $43, $74;
cz $20, $90;
cz $33, $120;
cz $32, $89;
cz $71, $95;
cz $12, $42;
cz $48, $123;
cz $61, $66;
cz $58, $65;
cz $17, $96;
cz $66, $84;
cz $15, $123;
cz $40, $116;
cz $104, $119;
cz $28, $39;
cz $0, $25;
cz $32, $65;
cz $33, $84;
cz $54, $108;
cz $0, $120;
cz $97, $109;
cz $12, $113;
cz $10, $19;
cz $71, $85;
cz $7, $113;
cz $9, $34;
cz $42, $72;
cz $65, $121;
cz $29, $52;
cz $8, $30;
cz $97, $99;
cz $35, $93;
cz $4, $112;
cz $30, $65;
cz $35, $76;
cz $39, $115;
cz $48, $83;
cz $48, $124;
cz $1, $94;
cz $9, $68;
cz $55, $91;
cz $107, $119;
cz $29, $31;
cz $83, $87;
cz $16, $123;
cz $83, $115;
cz $84, $91;
cz $38, $60;
cz $31, $74;
cz $1, $60;
cz $8, $118;
cz $40, $78;
cz $32, $116;
cz $28, $53;
cz $32, $45;
cz $7, $89;
cz $20, $56;
cz $5, $114;
cz $40, $43;
cz $21, $66;
cz $22, $50;
cz $6, $61;
cz $33, $59;
cz $19, $115;
cz $42, $88;
cz $49, $66;
cz $29, $53;
cz $38, $64;
cz $25, $44;

// Phase 3: Bootstrap ancillas
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
cz $125, $126;
cz $125, $0;
cz $125, $1;
cz $125, $2;
cz $125, $3;
cz $125, $4;
cz $126, $5;
cz $126, $6;
cz $126, $7;
cz $126, $8;
cz $126, $9;
cz $127, $125;
cz $128, $126;
cz $127, $128;

// Phase 4: 350 feedback cycles (~32 CZ/cycle, random pairs)
// --- Cycle 0 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $96;
cz $24, $41;
cz $4, $91;
cz $89, $12;
cz $106, $65;

// --- Cycle 1 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $67;
}
cz $126, $128;
cz $128, $71;
cz $67, $90;
cz $124, $10;
cz $10, $18;
cz $76, $46;

// --- Cycle 2 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $5;
cz $14, $55;
cz $37, $94;
cz $0, $95;
cz $91, $9;

// --- Cycle 3 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $101;
}
cz $126, $128;
cz $128, $93;
cz $17, $11;
cz $28, $80;
cz $55, $5;
cz $19, $68;

// --- Cycle 4 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $20;
cz $16, $116;
cz $67, $24;
cz $114, $89;
cz $4, $48;

// --- Cycle 5 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $69;
}
cz $126, $128;
cz $128, $123;
cz $103, $93;
cz $65, $78;
cz $52, $36;
cz $36, $120;

// --- Cycle 6 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $49;
cz $119, $116;
cz $122, $119;
cz $6, $32;
cz $111, $104;

// --- Cycle 7 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $90;
}
cz $126, $128;
cz $128, $0;
cz $53, $29;
cz $14, $69;
cz $88, $70;
cz $41, $57;

// --- Cycle 8 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $40;
cz $90, $68;
cz $107, $15;
cz $23, $29;
cz $51, $12;

// --- Cycle 9 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $42;
}
cz $126, $128;
cz $128, $55;
cz $77, $36;
cz $6, $98;
cz $6, $84;
cz $1, $122;

// --- Cycle 10 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $69;
cz $37, $54;
cz $5, $52;
cz $94, $74;
cz $120, $67;

// --- Cycle 11 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $65;
}
cz $126, $128;
cz $128, $85;
cz $96, $123;
cz $48, $113;
cz $80, $118;
cz $27, $109;

// --- Cycle 12 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $62;
cz $67, $2;
cz $63, $104;
cz $30, $84;
cz $22, $81;

// --- Cycle 13 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $94;
}
cz $126, $128;
cz $128, $48;
cz $22, $93;
cz $20, $108;
cz $41, $40;
cz $67, $95;

// --- Cycle 14 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $119;
cz $22, $56;
cz $55, $102;
cz $82, $21;
cz $92, $115;

// --- Cycle 15 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $61;
}
cz $126, $128;
cz $128, $97;
cz $49, $21;
cz $4, $72;
cz $79, $89;
cz $119, $67;

// --- Cycle 16 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $120;
cz $96, $83;
cz $43, $42;
cz $37, $67;
cz $34, $43;

// --- Cycle 17 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $100;
}
cz $126, $128;
cz $128, $90;
cz $74, $89;
cz $39, $104;
cz $48, $50;
cz $26, $116;

// --- Cycle 18 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $25;
cz $24, $90;
cz $19, $104;
cz $113, $47;
cz $46, $95;

// --- Cycle 19 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $17;
}
cz $126, $128;
cz $128, $19;
cz $1, $14;
cz $35, $51;
cz $88, $58;
cz $0, $5;

// --- Cycle 20 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $36;
cz $46, $20;
cz $50, $124;
cz $98, $44;
cz $107, $7;

// --- Cycle 21 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $16;
}
cz $126, $128;
cz $128, $6;
cz $59, $26;
cz $17, $52;
cz $52, $114;
cz $49, $4;

// --- Cycle 22 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $17;
cz $55, $70;
cz $72, $53;
cz $85, $2;
cz $7, $10;

// --- Cycle 23 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $33;
}
cz $126, $128;
cz $128, $58;
cz $37, $38;
cz $78, $123;
cz $74, $100;
cz $73, $93;

// --- Cycle 24 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $89;
cz $1, $54;
cz $79, $113;
cz $52, $80;
cz $7, $89;

// --- Cycle 25 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $82;
}
cz $126, $128;
cz $128, $44;
cz $101, $46;
cz $12, $105;
cz $92, $67;
cz $100, $99;

// --- Cycle 26 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $29;
cz $106, $49;
cz $27, $5;
cz $32, $116;
cz $72, $63;

// --- Cycle 27 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $6;
}
cz $126, $128;
cz $128, $71;
cz $106, $52;
cz $28, $44;
cz $98, $23;
cz $111, $96;

// --- Cycle 28 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $77;
cz $10, $75;
cz $63, $56;
cz $4, $38;
cz $29, $46;

// --- Cycle 29 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $27;
}
cz $126, $128;
cz $128, $32;
cz $56, $3;
cz $25, $123;
cz $39, $70;
cz $112, $24;

// --- Cycle 30 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $91;
cz $55, $5;
cz $46, $18;
cz $104, $5;
cz $37, $43;

// --- Cycle 31 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $18;
}
cz $126, $128;
cz $128, $48;
cz $39, $27;
cz $50, $8;
cz $98, $94;
cz $113, $89;

// --- Cycle 32 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $80;
cz $60, $83;
cz $43, $9;
cz $108, $90;
cz $28, $13;

// --- Cycle 33 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $82;
}
cz $126, $128;
cz $128, $68;
cz $68, $37;
cz $31, $60;
cz $113, $0;
cz $28, $39;

// --- Cycle 34 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $69;
cz $42, $119;
cz $47, $8;
cz $44, $102;
cz $30, $36;

// --- Cycle 35 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $56;
}
cz $126, $128;
cz $128, $65;
cz $70, $124;
cz $63, $71;
cz $55, $62;
cz $1, $106;

// --- Cycle 36 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $108;
cz $72, $59;
cz $101, $16;
cz $63, $115;
cz $87, $88;

// --- Cycle 37 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $51;
}
cz $126, $128;
cz $128, $83;
cz $11, $108;
cz $39, $72;
cz $88, $63;
cz $119, $87;

// --- Cycle 38 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $56;
cz $22, $24;
cz $27, $107;
cz $124, $122;
cz $42, $123;

// --- Cycle 39 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $109;
}
cz $126, $128;
cz $128, $113;
cz $46, $47;
cz $14, $50;
cz $86, $30;
cz $3, $87;

// --- Cycle 40 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $78;
cz $66, $37;
cz $64, $124;
cz $41, $67;
cz $29, $106;

// --- Cycle 41 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $1;
}
cz $126, $128;
cz $128, $81;
cz $115, $18;
cz $56, $21;
cz $12, $75;
cz $21, $90;

// --- Cycle 42 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $86;
cz $12, $108;
cz $107, $120;
cz $3, $61;
cz $99, $81;

// --- Cycle 43 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $99;
}
cz $126, $128;
cz $128, $28;
cz $79, $94;
cz $21, $39;
cz $39, $108;
cz $108, $106;

// --- Cycle 44 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $19;
cz $13, $79;
cz $77, $6;
cz $85, $114;
cz $56, $34;

// --- Cycle 45 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $17;
}
cz $126, $128;
cz $128, $48;
cz $37, $34;
cz $37, $108;
cz $110, $76;
cz $44, $5;

// --- Cycle 46 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $112;
cz $4, $70;
cz $57, $31;
cz $73, $56;
cz $7, $86;

// --- Cycle 47 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $28;
}
cz $126, $128;
cz $128, $95;
cz $39, $121;
cz $37, $97;
cz $73, $46;
cz $2, $47;

// --- Cycle 48 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $20;
cz $50, $74;
cz $69, $108;
cz $113, $41;
cz $71, $48;

// --- Cycle 49 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $5;
}
cz $126, $128;
cz $128, $65;
cz $42, $7;
cz $29, $115;
cz $16, $6;
cz $92, $14;

// --- Cycle 50 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $33;
cz $87, $115;
cz $56, $22;
cz $120, $7;
cz $34, $62;

// --- Cycle 51 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $52;
}
cz $126, $128;
cz $128, $61;
cz $6, $81;
cz $42, $17;
cz $87, $55;
cz $60, $18;

// --- Cycle 52 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $51;
cz $117, $102;
cz $57, $56;
cz $105, $58;
cz $69, $105;

// --- Cycle 53 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $80;
}
cz $126, $128;
cz $128, $110;
cz $59, $10;
cz $88, $40;
cz $24, $32;
cz $0, $9;

// --- Cycle 54 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $109;
cz $51, $90;
cz $104, $7;
cz $116, $117;
cz $114, $36;

// --- Cycle 55 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $53;
}
cz $126, $128;
cz $128, $73;
cz $25, $1;
cz $87, $98;
cz $103, $1;
cz $49, $67;

// --- Cycle 56 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $12;
cz $65, $33;
cz $107, $85;
cz $46, $19;
cz $81, $40;

// --- Cycle 57 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $65;
}
cz $126, $128;
cz $128, $80;
cz $116, $18;
cz $64, $27;
cz $65, $94;
cz $111, $51;

// --- Cycle 58 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $21;
cz $58, $71;
cz $84, $65;
cz $26, $87;
cz $4, $58;

// --- Cycle 59 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $37;
}
cz $126, $128;
cz $128, $120;
cz $72, $47;
cz $48, $75;
cz $32, $28;
cz $114, $121;

// --- Cycle 60 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $44;
cz $63, $71;
cz $63, $83;
cz $41, $67;
cz $103, $14;

// --- Cycle 61 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $120;
}
cz $126, $128;
cz $128, $100;
cz $60, $29;
cz $65, $54;
cz $37, $39;
cz $123, $85;

// --- Cycle 62 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $104;
cz $54, $86;
cz $26, $92;
cz $20, $67;
cz $5, $12;

// --- Cycle 63 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $111;
}
cz $126, $128;
cz $128, $82;
cz $90, $19;
cz $38, $108;
cz $10, $4;
cz $67, $36;

// --- Cycle 64 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $48;
cz $65, $17;
cz $95, $107;
cz $63, $93;
cz $82, $106;

// --- Cycle 65 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $5;
}
cz $126, $128;
cz $128, $18;
cz $48, $77;
cz $35, $63;
cz $89, $24;
cz $79, $103;

// --- Cycle 66 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $64;
cz $25, $31;
cz $64, $53;
cz $60, $53;
cz $14, $7;

// --- Cycle 67 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $70;
}
cz $126, $128;
cz $128, $78;
cz $71, $79;
cz $51, $94;
cz $8, $18;
cz $37, $119;

// --- Cycle 68 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $12;
cz $3, $68;
cz $91, $33;
cz $15, $2;
cz $4, $6;

// --- Cycle 69 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $118;
}
cz $126, $128;
cz $128, $13;
cz $74, $4;
cz $46, $124;
cz $62, $121;
cz $12, $25;

// --- Cycle 70 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $105;
cz $108, $26;
cz $101, $85;
cz $118, $77;
cz $30, $62;

// --- Cycle 71 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $119;
}
cz $126, $128;
cz $128, $103;
cz $123, $69;
cz $75, $86;
cz $6, $123;
cz $65, $108;

// --- Cycle 72 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $82;
cz $7, $124;
cz $10, $33;
cz $96, $67;
cz $68, $86;

// --- Cycle 73 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $34;
}
cz $126, $128;
cz $128, $88;
cz $34, $53;
cz $108, $109;
cz $65, $0;
cz $6, $119;

// --- Cycle 74 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $119;
cz $58, $44;
cz $46, $106;
cz $35, $111;
cz $7, $74;

// --- Cycle 75 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $94;
}
cz $126, $128;
cz $128, $71;
cz $88, $40;
cz $24, $111;
cz $117, $91;
cz $13, $23;

// --- Cycle 76 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $37;
cz $49, $50;
cz $21, $32;
cz $59, $3;
cz $86, $51;

// --- Cycle 77 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $103;
}
cz $126, $128;
cz $128, $54;
cz $34, $6;
cz $23, $108;
cz $43, $119;
cz $0, $52;

// --- Cycle 78 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $20;
cz $81, $6;
cz $118, $50;
cz $44, $8;
cz $12, $95;

// --- Cycle 79 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $55;
}
cz $126, $128;
cz $128, $71;
cz $86, $107;
cz $36, $117;
cz $75, $105;
cz $81, $53;

// --- Cycle 80 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $37;
cz $58, $94;
cz $59, $118;
cz $79, $36;
cz $53, $94;

// --- Cycle 81 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $64;
}
cz $126, $128;
cz $128, $59;
cz $63, $19;
cz $121, $120;
cz $87, $69;
cz $41, $22;

// --- Cycle 82 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $104;
cz $8, $118;
cz $108, $119;
cz $84, $48;
cz $34, $87;

// --- Cycle 83 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $107;
}
cz $126, $128;
cz $128, $84;
cz $67, $102;
cz $106, $118;
cz $16, $88;
cz $122, $58;

// --- Cycle 84 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $18;
cz $95, $16;
cz $43, $100;
cz $118, $63;
cz $90, $25;

// --- Cycle 85 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $103;
}
cz $126, $128;
cz $128, $57;
cz $41, $32;
cz $50, $70;
cz $97, $112;
cz $27, $121;

// --- Cycle 86 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $66;
cz $13, $105;
cz $58, $33;
cz $87, $62;
cz $11, $4;

// --- Cycle 87 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $36;
}
cz $126, $128;
cz $128, $53;
cz $7, $26;
cz $94, $105;
cz $25, $121;
cz $117, $118;

// --- Cycle 88 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $7;
cz $70, $23;
cz $77, $60;
cz $119, $60;
cz $1, $112;

// --- Cycle 89 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $1;
}
cz $126, $128;
cz $128, $74;
cz $78, $67;
cz $45, $96;
cz $111, $77;
cz $78, $66;

// --- Cycle 90 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $5;
cz $13, $46;
cz $19, $24;
cz $123, $107;
cz $119, $16;

// --- Cycle 91 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $119;
}
cz $126, $128;
cz $128, $6;
cz $101, $24;
cz $53, $105;
cz $55, $74;
cz $89, $71;

// --- Cycle 92 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $117;
cz $15, $52;
cz $62, $16;
cz $78, $71;
cz $54, $102;

// --- Cycle 93 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $38;
}
cz $126, $128;
cz $128, $0;
cz $124, $111;
cz $28, $60;
cz $69, $25;
cz $61, $15;

// --- Cycle 94 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $57;
cz $37, $30;
cz $74, $88;
cz $55, $86;
cz $64, $83;

// --- Cycle 95 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $66;
}
cz $126, $128;
cz $128, $10;
cz $46, $58;
cz $60, $93;
cz $121, $68;
cz $3, $108;

// --- Cycle 96 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $5;
cz $25, $32;
cz $117, $50;
cz $109, $68;
cz $103, $45;

// --- Cycle 97 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $120;
}
cz $126, $128;
cz $128, $33;
cz $95, $92;
cz $79, $68;
cz $39, $60;
cz $21, $93;

// --- Cycle 98 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $5;
cz $17, $47;
cz $38, $22;
cz $94, $78;
cz $15, $113;

// --- Cycle 99 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $124;
}
cz $126, $128;
cz $128, $28;
cz $108, $99;
cz $15, $32;
cz $75, $116;
cz $86, $11;

// --- Cycle 100 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $5;
cz $30, $99;
cz $74, $82;
cz $81, $12;
cz $66, $43;

// --- Cycle 101 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $123;
}
cz $126, $128;
cz $128, $42;
cz $107, $85;
cz $42, $92;
cz $106, $95;
cz $76, $122;

// --- Cycle 102 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $70;
cz $42, $117;
cz $37, $25;
cz $98, $26;
cz $114, $93;

// --- Cycle 103 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $2;
}
cz $126, $128;
cz $128, $98;
cz $13, $75;
cz $12, $101;
cz $120, $7;
cz $88, $124;

// --- Cycle 104 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $46;
cz $53, $89;
cz $102, $20;
cz $35, $111;
cz $15, $45;

// --- Cycle 105 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $96;
}
cz $126, $128;
cz $128, $72;
cz $82, $12;
cz $114, $91;
cz $9, $68;
cz $41, $21;

// --- Cycle 106 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $9;
cz $60, $88;
cz $15, $66;
cz $89, $104;
cz $118, $31;

// --- Cycle 107 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $122;
}
cz $126, $128;
cz $128, $124;
cz $102, $7;
cz $41, $107;
cz $29, $100;
cz $37, $74;

// --- Cycle 108 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $87;
cz $59, $15;
cz $46, $54;
cz $102, $37;
cz $66, $17;

// --- Cycle 109 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $1;
}
cz $126, $128;
cz $128, $10;
cz $20, $116;
cz $64, $44;
cz $24, $78;
cz $14, $103;

// --- Cycle 110 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $120;
cz $1, $44;
cz $45, $51;
cz $65, $94;
cz $103, $112;

// --- Cycle 111 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $70;
}
cz $126, $128;
cz $128, $98;
cz $37, $52;
cz $48, $106;
cz $63, $12;
cz $120, $84;

// --- Cycle 112 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $104;
cz $109, $80;
cz $110, $83;
cz $31, $123;
cz $67, $45;

// --- Cycle 113 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $88;
}
cz $126, $128;
cz $128, $20;
cz $34, $44;
cz $105, $27;
cz $100, $112;
cz $104, $97;

// --- Cycle 114 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $109;
cz $63, $54;
cz $8, $45;
cz $62, $63;
cz $89, $19;

// --- Cycle 115 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $0;
}
cz $126, $128;
cz $128, $4;
cz $62, $39;
cz $66, $61;
cz $21, $118;
cz $67, $89;

// --- Cycle 116 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $104;
cz $94, $57;
cz $44, $3;
cz $27, $35;
cz $75, $93;

// --- Cycle 117 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $82;
}
cz $126, $128;
cz $128, $7;
cz $7, $47;
cz $35, $91;
cz $61, $115;
cz $67, $23;

// --- Cycle 118 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $50;
cz $124, $0;
cz $22, $2;
cz $121, $30;
cz $74, $60;

// --- Cycle 119 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $56;
}
cz $126, $128;
cz $128, $21;
cz $60, $84;
cz $25, $108;
cz $40, $57;
cz $88, $92;

// --- Cycle 120 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $48;
cz $98, $85;
cz $71, $14;
cz $48, $31;
cz $79, $120;

// --- Cycle 121 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $47;
}
cz $126, $128;
cz $128, $118;
cz $67, $26;
cz $63, $80;
cz $90, $26;
cz $102, $106;

// --- Cycle 122 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $91;
cz $3, $100;
cz $41, $67;
cz $118, $24;
cz $26, $24;

// --- Cycle 123 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $61;
}
cz $126, $128;
cz $128, $118;
cz $60, $71;
cz $67, $21;
cz $38, $78;
cz $105, $109;

// --- Cycle 124 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $62;
cz $86, $19;
cz $1, $110;
cz $84, $26;
cz $102, $10;

// --- Cycle 125 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $23;
}
cz $126, $128;
cz $128, $76;
cz $44, $15;
cz $100, $18;
cz $97, $32;
cz $25, $5;

// --- Cycle 126 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $71;
cz $118, $32;
cz $42, $50;
cz $21, $42;
cz $107, $82;

// --- Cycle 127 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $41;
}
cz $126, $128;
cz $128, $59;
cz $34, $113;
cz $35, $90;
cz $73, $51;
cz $25, $93;

// --- Cycle 128 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $26;
cz $22, $88;
cz $70, $120;
cz $77, $123;
cz $39, $50;

// --- Cycle 129 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $2;
}
cz $126, $128;
cz $128, $112;
cz $12, $69;
cz $115, $50;
cz $64, $22;
cz $91, $22;

// --- Cycle 130 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $86;
cz $43, $18;
cz $91, $10;
cz $42, $28;
cz $35, $44;

// --- Cycle 131 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $60;
}
cz $126, $128;
cz $128, $24;
cz $83, $0;
cz $68, $20;
cz $66, $46;
cz $79, $94;

// --- Cycle 132 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $111;
cz $72, $100;
cz $49, $17;
cz $101, $40;
cz $45, $34;

// --- Cycle 133 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $36;
}
cz $126, $128;
cz $128, $92;
cz $70, $97;
cz $23, $7;
cz $30, $84;
cz $52, $123;

// --- Cycle 134 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $83;
cz $64, $40;
cz $95, $39;
cz $21, $76;
cz $69, $53;

// --- Cycle 135 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $34;
}
cz $126, $128;
cz $128, $49;
cz $25, $77;
cz $27, $86;
cz $40, $9;
cz $47, $69;

// --- Cycle 136 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $105;
cz $22, $75;
cz $119, $58;
cz $72, $16;
cz $28, $66;

// --- Cycle 137 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $106;
}
cz $126, $128;
cz $128, $0;
cz $91, $111;
cz $90, $79;
cz $123, $59;
cz $61, $124;

// --- Cycle 138 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $57;
cz $73, $109;
cz $87, $66;
cz $59, $66;
cz $103, $111;

// --- Cycle 139 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $81;
}
cz $126, $128;
cz $128, $98;
cz $17, $117;
cz $20, $1;
cz $63, $73;
cz $30, $100;

// --- Cycle 140 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $62;
cz $92, $84;
cz $2, $72;
cz $1, $41;
cz $124, $7;

// --- Cycle 141 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $62;
}
cz $126, $128;
cz $128, $119;
cz $46, $80;
cz $86, $109;
cz $14, $120;
cz $108, $40;

// --- Cycle 142 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $87;
cz $32, $20;
cz $110, $114;
cz $26, $14;
cz $123, $82;

// --- Cycle 143 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $100;
}
cz $126, $128;
cz $128, $90;
cz $65, $4;
cz $10, $82;
cz $122, $35;
cz $81, $80;

// --- Cycle 144 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $57;
cz $10, $82;
cz $114, $0;
cz $85, $54;
cz $33, $85;

// --- Cycle 145 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $63;
}
cz $126, $128;
cz $128, $69;
cz $111, $26;
cz $16, $31;
cz $120, $92;
cz $9, $81;

// --- Cycle 146 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $41;
cz $76, $6;
cz $14, $84;
cz $25, $85;
cz $52, $40;

// --- Cycle 147 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $33;
}
cz $126, $128;
cz $128, $119;
cz $15, $67;
cz $10, $107;
cz $115, $117;
cz $29, $26;

// --- Cycle 148 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $41;
cz $55, $36;
cz $118, $33;
cz $37, $46;
cz $77, $95;

// --- Cycle 149 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $91;
}
cz $126, $128;
cz $128, $96;
cz $94, $32;
cz $75, $49;
cz $90, $64;
cz $109, $6;

// --- Cycle 150 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $54;
cz $94, $110;
cz $96, $28;
cz $47, $24;
cz $79, $36;

// --- Cycle 151 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $1;
}
cz $126, $128;
cz $128, $91;
cz $117, $57;
cz $78, $111;
cz $30, $62;
cz $120, $42;

// --- Cycle 152 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $69;
cz $107, $118;
cz $120, $25;
cz $27, $50;
cz $111, $65;

// --- Cycle 153 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $120;
}
cz $126, $128;
cz $128, $3;
cz $94, $91;
cz $41, $87;
cz $59, $41;
cz $3, $108;

// --- Cycle 154 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $87;
cz $42, $76;
cz $96, $36;
cz $33, $30;
cz $28, $119;

// --- Cycle 155 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $104;
}
cz $126, $128;
cz $128, $26;
cz $83, $90;
cz $116, $2;
cz $45, $107;
cz $68, $40;

// --- Cycle 156 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $2;
cz $98, $35;
cz $40, $124;
cz $79, $85;
cz $89, $114;

// --- Cycle 157 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $25;
}
cz $126, $128;
cz $128, $83;
cz $5, $99;
cz $0, $56;
cz $68, $113;
cz $112, $41;

// --- Cycle 158 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $31;
cz $64, $109;
cz $36, $85;
cz $108, $65;
cz $88, $17;

// --- Cycle 159 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $55;
}
cz $126, $128;
cz $128, $120;
cz $68, $88;
cz $81, $55;
cz $38, $28;
cz $41, $13;

// --- Cycle 160 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $62;
cz $30, $19;
cz $96, $104;
cz $18, $57;
cz $1, $59;

// --- Cycle 161 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $84;
}
cz $126, $128;
cz $128, $25;
cz $69, $6;
cz $21, $103;
cz $39, $44;
cz $10, $72;

// --- Cycle 162 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $124;
cz $36, $86;
cz $25, $59;
cz $105, $72;
cz $37, $41;

// --- Cycle 163 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $116;
}
cz $126, $128;
cz $128, $39;
cz $116, $99;
cz $2, $61;
cz $99, $6;
cz $68, $121;

// --- Cycle 164 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $59;
cz $68, $85;
cz $119, $109;
cz $46, $61;
cz $35, $40;

// --- Cycle 165 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $71;
}
cz $126, $128;
cz $128, $0;
cz $59, $100;
cz $90, $123;
cz $4, $51;
cz $105, $44;

// --- Cycle 166 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $81;
cz $107, $7;
cz $120, $51;
cz $65, $3;
cz $34, $89;

// --- Cycle 167 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $64;
}
cz $126, $128;
cz $128, $84;
cz $2, $36;
cz $64, $89;
cz $99, $5;
cz $91, $118;

// --- Cycle 168 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $7;
cz $106, $105;
cz $80, $34;
cz $45, $24;
cz $13, $87;

// --- Cycle 169 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $2;
}
cz $126, $128;
cz $128, $20;
cz $72, $109;
cz $111, $96;
cz $53, $58;
cz $48, $60;

// --- Cycle 170 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $22;
cz $103, $84;
cz $87, $93;
cz $9, $83;
cz $70, $67;

// --- Cycle 171 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $120;
}
cz $126, $128;
cz $128, $57;
cz $28, $4;
cz $64, $7;
cz $120, $96;
cz $81, $123;

// --- Cycle 172 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $66;
cz $3, $93;
cz $15, $97;
cz $7, $98;
cz $74, $70;

// --- Cycle 173 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $56;
}
cz $126, $128;
cz $128, $81;
cz $28, $37;
cz $102, $49;
cz $51, $116;
cz $93, $7;

// --- Cycle 174 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $73;
cz $21, $80;
cz $56, $64;
cz $28, $30;
cz $27, $47;

// --- Cycle 175 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $11;
}
cz $126, $128;
cz $128, $20;
cz $20, $79;
cz $24, $89;
cz $85, $33;
cz $122, $77;

// --- Cycle 176 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $37;
cz $120, $96;
cz $10, $6;
cz $66, $100;
cz $94, $27;

// --- Cycle 177 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $31;
}
cz $126, $128;
cz $128, $6;
cz $56, $37;
cz $41, $62;
cz $93, $97;
cz $35, $1;

// --- Cycle 178 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $42;
cz $32, $26;
cz $103, $26;
cz $46, $95;
cz $36, $91;

// --- Cycle 179 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $81;
}
cz $126, $128;
cz $128, $26;
cz $111, $85;
cz $34, $58;
cz $95, $96;
cz $107, $7;

// --- Cycle 180 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $110;
cz $85, $47;
cz $21, $73;
cz $84, $12;
cz $9, $56;

// --- Cycle 181 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $115;
}
cz $126, $128;
cz $128, $32;
cz $9, $117;
cz $92, $95;
cz $104, $58;
cz $66, $47;

// --- Cycle 182 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $106;
cz $75, $87;
cz $118, $28;
cz $91, $41;
cz $9, $120;

// --- Cycle 183 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $97;
}
cz $126, $128;
cz $128, $96;
cz $75, $116;
cz $103, $50;
cz $86, $68;
cz $120, $74;

// --- Cycle 184 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $123;
cz $68, $120;
cz $28, $123;
cz $67, $49;
cz $54, $73;

// --- Cycle 185 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $87;
}
cz $126, $128;
cz $128, $38;
cz $81, $19;
cz $112, $49;
cz $50, $116;
cz $121, $79;

// --- Cycle 186 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $88;
cz $21, $31;
cz $37, $56;
cz $11, $46;
cz $124, $28;

// --- Cycle 187 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $23;
}
cz $126, $128;
cz $128, $46;
cz $97, $42;
cz $74, $95;
cz $62, $28;
cz $99, $112;

// --- Cycle 188 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $10;
cz $120, $81;
cz $89, $37;
cz $10, $67;
cz $92, $106;

// --- Cycle 189 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $44;
}
cz $126, $128;
cz $128, $89;
cz $51, $107;
cz $30, $13;
cz $29, $12;
cz $61, $105;

// --- Cycle 190 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $96;
cz $106, $15;
cz $42, $20;
cz $104, $42;
cz $58, $54;

// --- Cycle 191 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $16;
}
cz $126, $128;
cz $128, $109;
cz $85, $0;
cz $100, $49;
cz $37, $107;
cz $58, $75;

// --- Cycle 192 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $8;
cz $67, $9;
cz $94, $31;
cz $113, $79;
cz $9, $53;

// --- Cycle 193 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $57;
}
cz $126, $128;
cz $128, $71;
cz $15, $26;
cz $33, $49;
cz $113, $39;
cz $67, $79;

// --- Cycle 194 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $26;
cz $25, $89;
cz $1, $71;
cz $108, $106;
cz $105, $96;

// --- Cycle 195 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $103;
}
cz $126, $128;
cz $128, $52;
cz $50, $61;
cz $35, $124;
cz $84, $114;
cz $117, $106;

// --- Cycle 196 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $67;
cz $23, $44;
cz $91, $68;
cz $82, $10;
cz $47, $10;

// --- Cycle 197 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $44;
}
cz $126, $128;
cz $128, $92;
cz $2, $47;
cz $44, $71;
cz $120, $35;
cz $68, $76;

// --- Cycle 198 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $77;
cz $111, $108;
cz $118, $82;
cz $94, $80;
cz $104, $25;

// --- Cycle 199 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $103;
}
cz $126, $128;
cz $128, $16;
cz $39, $96;
cz $79, $66;
cz $101, $47;
cz $111, $91;

// --- Cycle 200 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $44;
cz $40, $82;
cz $26, $65;
cz $83, $59;
cz $39, $16;

// --- Cycle 201 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $34;
}
cz $126, $128;
cz $128, $36;
cz $104, $69;
cz $36, $27;
cz $117, $112;
cz $114, $110;

// --- Cycle 202 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $104;
cz $46, $120;
cz $82, $83;
cz $38, $9;
cz $51, $9;

// --- Cycle 203 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $77;
}
cz $126, $128;
cz $128, $17;
cz $84, $103;
cz $77, $116;
cz $121, $0;
cz $46, $98;

// --- Cycle 204 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $60;
cz $97, $102;
cz $114, $76;
cz $83, $111;
cz $93, $26;

// --- Cycle 205 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $62;
}
cz $126, $128;
cz $128, $25;
cz $26, $123;
cz $121, $91;
cz $84, $34;
cz $34, $114;

// --- Cycle 206 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $39;
cz $96, $55;
cz $113, $122;
cz $112, $111;
cz $46, $81;

// --- Cycle 207 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $4;
}
cz $126, $128;
cz $128, $32;
cz $14, $27;
cz $5, $45;
cz $43, $13;
cz $24, $65;

// --- Cycle 208 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $23;
cz $104, $89;
cz $52, $100;
cz $94, $105;
cz $94, $76;

// --- Cycle 209 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $37;
}
cz $126, $128;
cz $128, $69;
cz $41, $45;
cz $1, $94;
cz $58, $60;
cz $84, $80;

// --- Cycle 210 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $67;
cz $10, $53;
cz $75, $2;
cz $96, $60;
cz $122, $6;

// --- Cycle 211 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $70;
}
cz $126, $128;
cz $128, $104;
cz $95, $104;
cz $117, $13;
cz $100, $18;
cz $91, $85;

// --- Cycle 212 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $61;
cz $55, $118;
cz $8, $69;
cz $73, $92;
cz $11, $35;

// --- Cycle 213 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $53;
}
cz $126, $128;
cz $128, $102;
cz $72, $114;
cz $34, $40;
cz $85, $46;
cz $39, $100;

// --- Cycle 214 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $9;
cz $49, $33;
cz $61, $97;
cz $38, $26;
cz $63, $80;

// --- Cycle 215 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $57;
}
cz $126, $128;
cz $128, $118;
cz $20, $22;
cz $54, $28;
cz $39, $41;
cz $70, $115;

// --- Cycle 216 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $27;
cz $84, $61;
cz $94, $31;
cz $15, $96;
cz $72, $87;

// --- Cycle 217 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $69;
}
cz $126, $128;
cz $128, $77;
cz $79, $45;
cz $81, $69;
cz $117, $32;
cz $48, $95;

// --- Cycle 218 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $16;
cz $54, $11;
cz $48, $29;
cz $85, $92;
cz $109, $64;

// --- Cycle 219 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $89;
}
cz $126, $128;
cz $128, $25;
cz $34, $10;
cz $57, $78;
cz $55, $44;
cz $81, $39;

// --- Cycle 220 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $50;
cz $3, $31;
cz $71, $82;
cz $93, $77;
cz $89, $79;

// --- Cycle 221 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $113;
}
cz $126, $128;
cz $128, $74;
cz $16, $55;
cz $51, $21;
cz $18, $35;
cz $34, $68;

// --- Cycle 222 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $81;
cz $43, $41;
cz $97, $102;
cz $44, $50;
cz $55, $86;

// --- Cycle 223 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $75;
}
cz $126, $128;
cz $128, $77;
cz $70, $75;
cz $57, $117;
cz $37, $61;
cz $44, $52;

// --- Cycle 224 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $65;
cz $58, $103;
cz $71, $45;
cz $14, $100;
cz $98, $123;

// --- Cycle 225 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $48;
}
cz $126, $128;
cz $128, $78;
cz $96, $64;
cz $85, $74;
cz $10, $119;
cz $8, $42;

// --- Cycle 226 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $72;
cz $46, $86;
cz $45, $124;
cz $103, $18;
cz $59, $71;

// --- Cycle 227 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $79;
}
cz $126, $128;
cz $128, $122;
cz $0, $55;
cz $112, $85;
cz $111, $30;
cz $17, $54;

// --- Cycle 228 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $67;
cz $6, $72;
cz $103, $107;
cz $16, $46;
cz $124, $73;

// --- Cycle 229 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $113;
}
cz $126, $128;
cz $128, $65;
cz $16, $0;
cz $120, $91;
cz $101, $112;
cz $62, $25;

// --- Cycle 230 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $112;
cz $69, $41;
cz $5, $67;
cz $9, $63;
cz $14, $122;

// --- Cycle 231 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $38;
}
cz $126, $128;
cz $128, $66;
cz $58, $116;
cz $65, $44;
cz $96, $124;
cz $92, $89;

// --- Cycle 232 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $90;
cz $14, $89;
cz $33, $108;
cz $2, $99;
cz $118, $29;

// --- Cycle 233 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $50;
}
cz $126, $128;
cz $128, $74;
cz $113, $52;
cz $98, $10;
cz $109, $70;
cz $58, $105;

// --- Cycle 234 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $105;
cz $80, $36;
cz $78, $45;
cz $34, $42;
cz $121, $60;

// --- Cycle 235 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $21;
}
cz $126, $128;
cz $128, $93;
cz $38, $33;
cz $35, $121;
cz $9, $6;
cz $33, $15;

// --- Cycle 236 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $114;
cz $62, $38;
cz $50, $84;
cz $12, $53;
cz $90, $9;

// --- Cycle 237 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $37;
}
cz $126, $128;
cz $128, $96;
cz $115, $65;
cz $11, $32;
cz $89, $83;
cz $47, $2;

// --- Cycle 238 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $35;
cz $53, $50;
cz $99, $98;
cz $122, $57;
cz $51, $8;

// --- Cycle 239 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $78;
}
cz $126, $128;
cz $128, $30;
cz $109, $4;
cz $95, $115;
cz $96, $66;
cz $60, $20;

// --- Cycle 240 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $60;
cz $87, $18;
cz $5, $37;
cz $98, $69;
cz $25, $17;

// --- Cycle 241 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $82;
}
cz $126, $128;
cz $128, $39;
cz $101, $98;
cz $19, $87;
cz $26, $44;
cz $84, $114;

// --- Cycle 242 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $66;
cz $7, $55;
cz $7, $102;
cz $54, $16;
cz $40, $102;

// --- Cycle 243 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $47;
}
cz $126, $128;
cz $128, $6;
cz $77, $85;
cz $44, $9;
cz $106, $67;
cz $18, $71;

// --- Cycle 244 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $1;
cz $49, $71;
cz $73, $102;
cz $110, $64;
cz $66, $100;

// --- Cycle 245 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $43;
}
cz $126, $128;
cz $128, $77;
cz $44, $118;
cz $20, $14;
cz $23, $5;
cz $80, $112;

// --- Cycle 246 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $49;
cz $72, $104;
cz $75, $36;
cz $104, $70;
cz $17, $2;

// --- Cycle 247 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $3;
}
cz $126, $128;
cz $128, $19;
cz $123, $96;
cz $67, $97;
cz $121, $64;
cz $62, $78;

// --- Cycle 248 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $43;
cz $114, $79;
cz $15, $106;
cz $110, $93;
cz $47, $17;

// --- Cycle 249 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $37;
}
cz $126, $128;
cz $128, $87;
cz $13, $3;
cz $24, $23;
cz $97, $74;
cz $101, $80;

// --- Cycle 250 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $93;
cz $91, $26;
cz $25, $82;
cz $33, $104;
cz $15, $17;

// --- Cycle 251 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $28;
}
cz $126, $128;
cz $128, $92;
cz $75, $0;
cz $60, $32;
cz $96, $6;
cz $48, $5;

// --- Cycle 252 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $87;
cz $13, $116;
cz $21, $57;
cz $38, $44;
cz $84, $60;

// --- Cycle 253 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $122;
}
cz $126, $128;
cz $128, $46;
cz $47, $76;
cz $1, $52;
cz $47, $94;
cz $22, $109;

// --- Cycle 254 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $97;
cz $93, $64;
cz $8, $7;
cz $13, $108;
cz $81, $55;

// --- Cycle 255 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $109;
}
cz $126, $128;
cz $128, $107;
cz $63, $19;
cz $10, $55;
cz $17, $52;
cz $76, $25;

// --- Cycle 256 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $60;
cz $49, $51;
cz $30, $96;
cz $104, $67;
cz $124, $34;

// --- Cycle 257 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $99;
}
cz $126, $128;
cz $128, $35;
cz $52, $9;
cz $16, $73;
cz $64, $83;
cz $117, $38;

// --- Cycle 258 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $55;
cz $97, $1;
cz $54, $50;
cz $84, $27;
cz $91, $41;

// --- Cycle 259 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $94;
}
cz $126, $128;
cz $128, $98;
cz $18, $101;
cz $2, $42;
cz $64, $94;
cz $59, $68;

// --- Cycle 260 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $32;
cz $18, $16;
cz $90, $116;
cz $97, $21;
cz $118, $27;

// --- Cycle 261 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $78;
}
cz $126, $128;
cz $128, $115;
cz $49, $77;
cz $33, $34;
cz $43, $76;
cz $4, $24;

// --- Cycle 262 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $2;
cz $73, $56;
cz $72, $91;
cz $0, $40;
cz $7, $62;

// --- Cycle 263 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $106;
}
cz $126, $128;
cz $128, $103;
cz $76, $12;
cz $123, $31;
cz $124, $91;
cz $49, $33;

// --- Cycle 264 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $103;
cz $93, $87;
cz $112, $34;
cz $58, $42;
cz $35, $20;

// --- Cycle 265 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $45;
}
cz $126, $128;
cz $128, $68;
cz $25, $87;
cz $9, $29;
cz $75, $120;
cz $110, $116;

// --- Cycle 266 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $88;
cz $121, $97;
cz $14, $32;
cz $91, $76;
cz $86, $30;

// --- Cycle 267 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $90;
}
cz $126, $128;
cz $128, $24;
cz $47, $31;
cz $67, $123;
cz $70, $42;
cz $8, $60;

// --- Cycle 268 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $120;
cz $13, $45;
cz $94, $101;
cz $1, $9;
cz $46, $117;

// --- Cycle 269 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $101;
}
cz $126, $128;
cz $128, $40;
cz $54, $93;
cz $108, $33;
cz $106, $26;
cz $46, $89;

// --- Cycle 270 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $97;
cz $100, $27;
cz $59, $104;
cz $53, $76;
cz $57, $97;

// --- Cycle 271 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $123;
}
cz $126, $128;
cz $128, $122;
cz $84, $32;
cz $37, $18;
cz $118, $55;
cz $114, $25;

// --- Cycle 272 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $58;
cz $31, $34;
cz $111, $36;
cz $80, $97;
cz $51, $124;

// --- Cycle 273 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $10;
}
cz $126, $128;
cz $128, $14;
cz $7, $89;
cz $108, $83;
cz $72, $15;
cz $7, $68;

// --- Cycle 274 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $102;
cz $38, $12;
cz $120, $36;
cz $48, $20;
cz $94, $22;

// --- Cycle 275 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $107;
}
cz $126, $128;
cz $128, $88;
cz $39, $60;
cz $46, $45;
cz $1, $118;
cz $96, $123;

// --- Cycle 276 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $77;
cz $44, $47;
cz $35, $93;
cz $35, $9;
cz $34, $26;

// --- Cycle 277 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $35;
}
cz $126, $128;
cz $128, $76;
cz $81, $22;
cz $98, $96;
cz $101, $47;
cz $25, $48;

// --- Cycle 278 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $35;
cz $29, $94;
cz $50, $87;
cz $38, $82;
cz $10, $114;

// --- Cycle 279 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $59;
}
cz $126, $128;
cz $128, $36;
cz $46, $37;
cz $5, $34;
cz $30, $91;
cz $6, $82;

// --- Cycle 280 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $29;
cz $69, $92;
cz $6, $46;
cz $29, $118;
cz $97, $114;

// --- Cycle 281 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $37;
}
cz $126, $128;
cz $128, $79;
cz $69, $57;
cz $103, $3;
cz $30, $6;
cz $25, $13;

// --- Cycle 282 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $53;
cz $90, $49;
cz $101, $1;
cz $88, $83;
cz $121, $74;

// --- Cycle 283 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $20;
}
cz $126, $128;
cz $128, $33;
cz $0, $4;
cz $11, $69;
cz $5, $31;
cz $102, $86;

// --- Cycle 284 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $36;
cz $59, $39;
cz $56, $78;
cz $103, $111;
cz $81, $14;

// --- Cycle 285 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $67;
}
cz $126, $128;
cz $128, $65;
cz $10, $50;
cz $5, $12;
cz $95, $77;
cz $92, $103;

// --- Cycle 286 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $91;
cz $5, $54;
cz $45, $27;
cz $19, $107;
cz $78, $73;

// --- Cycle 287 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $118;
}
cz $126, $128;
cz $128, $2;
cz $81, $57;
cz $31, $88;
cz $42, $17;
cz $112, $73;

// --- Cycle 288 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $26;
cz $75, $46;
cz $110, $66;
cz $106, $112;
cz $114, $67;

// --- Cycle 289 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $5;
}
cz $126, $128;
cz $128, $28;
cz $5, $45;
cz $98, $54;
cz $64, $98;
cz $118, $46;

// --- Cycle 290 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $24;
cz $46, $59;
cz $52, $64;
cz $59, $50;
cz $99, $50;

// --- Cycle 291 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $98;
}
cz $126, $128;
cz $128, $93;
cz $13, $0;
cz $84, $58;
cz $98, $73;
cz $20, $4;

// --- Cycle 292 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $33;
cz $86, $0;
cz $34, $76;
cz $122, $56;
cz $59, $3;

// --- Cycle 293 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $39;
}
cz $126, $128;
cz $128, $57;
cz $110, $118;
cz $17, $93;
cz $66, $44;
cz $26, $49;

// --- Cycle 294 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $99;
cz $26, $14;
cz $106, $56;
cz $117, $108;
cz $104, $59;

// --- Cycle 295 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $93;
}
cz $126, $128;
cz $128, $26;
cz $18, $106;
cz $13, $67;
cz $46, $30;
cz $19, $70;

// --- Cycle 296 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $106;
cz $51, $31;
cz $106, $33;
cz $30, $40;
cz $76, $79;

// --- Cycle 297 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $63;
}
cz $126, $128;
cz $128, $22;
cz $96, $15;
cz $53, $16;
cz $124, $43;
cz $121, $78;

// --- Cycle 298 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $64;
cz $97, $91;
cz $69, $109;
cz $3, $104;
cz $10, $24;

// --- Cycle 299 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $83;
}
cz $126, $128;
cz $128, $20;
cz $34, $86;
cz $88, $85;
cz $6, $73;
cz $6, $84;

// --- Cycle 300 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $94;
cz $42, $88;
cz $111, $21;
cz $62, $82;
cz $29, $9;

// --- Cycle 301 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $69;
}
cz $126, $128;
cz $128, $54;
cz $8, $14;
cz $5, $34;
cz $76, $25;
cz $94, $22;

// --- Cycle 302 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $23;
cz $27, $16;
cz $25, $91;
cz $52, $88;
cz $92, $26;

// --- Cycle 303 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $41;
}
cz $126, $128;
cz $128, $106;
cz $2, $105;
cz $16, $14;
cz $106, $91;
cz $89, $27;

// --- Cycle 304 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $66;
cz $81, $21;
cz $107, $7;
cz $19, $56;
cz $58, $101;

// --- Cycle 305 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $26;
}
cz $126, $128;
cz $128, $100;
cz $115, $62;
cz $69, $0;
cz $13, $49;
cz $90, $15;

// --- Cycle 306 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $23;
cz $106, $79;
cz $75, $36;
cz $91, $35;
cz $48, $11;

// --- Cycle 307 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $119;
}
cz $126, $128;
cz $128, $67;
cz $65, $115;
cz $13, $97;
cz $109, $25;
cz $36, $42;

// --- Cycle 308 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $89;
cz $51, $15;
cz $3, $83;
cz $29, $118;
cz $48, $91;

// --- Cycle 309 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $83;
}
cz $126, $128;
cz $128, $99;
cz $51, $101;
cz $63, $113;
cz $4, $119;
cz $93, $119;

// --- Cycle 310 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $0;
cz $107, $13;
cz $31, $115;
cz $97, $122;
cz $103, $4;

// --- Cycle 311 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $104;
}
cz $126, $128;
cz $128, $81;
cz $104, $82;
cz $118, $123;
cz $67, $100;
cz $97, $44;

// --- Cycle 312 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $86;
cz $15, $97;
cz $121, $85;
cz $83, $101;
cz $103, $1;

// --- Cycle 313 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $32;
}
cz $126, $128;
cz $128, $120;
cz $22, $13;
cz $89, $29;
cz $71, $99;
cz $92, $35;

// --- Cycle 314 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $87;
cz $18, $7;
cz $4, $25;
cz $9, $44;
cz $82, $32;

// --- Cycle 315 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $97;
}
cz $126, $128;
cz $128, $10;
cz $75, $89;
cz $60, $72;
cz $86, $32;
cz $4, $38;

// --- Cycle 316 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $67;
cz $23, $123;
cz $117, $59;
cz $52, $9;
cz $62, $106;

// --- Cycle 317 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $12;
}
cz $126, $128;
cz $128, $80;
cz $109, $93;
cz $92, $74;
cz $59, $124;
cz $44, $94;

// --- Cycle 318 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $50;
cz $48, $77;
cz $92, $29;
cz $29, $80;
cz $110, $37;

// --- Cycle 319 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $112;
}
cz $126, $128;
cz $128, $5;
cz $67, $124;
cz $23, $13;
cz $38, $117;
cz $78, $63;

// --- Cycle 320 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $101;
cz $96, $109;
cz $59, $16;
cz $121, $59;
cz $74, $35;

// --- Cycle 321 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $8;
}
cz $126, $128;
cz $128, $24;
cz $112, $60;
cz $47, $74;
cz $13, $66;
cz $34, $54;

// --- Cycle 322 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $100;
cz $15, $66;
cz $62, $122;
cz $91, $60;
cz $28, $19;

// --- Cycle 323 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $72;
}
cz $126, $128;
cz $128, $3;
cz $34, $75;
cz $83, $27;
cz $46, $59;
cz $13, $96;

// --- Cycle 324 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $84;
cz $75, $7;
cz $53, $94;
cz $77, $34;
cz $98, $89;

// --- Cycle 325 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $58;
}
cz $126, $128;
cz $128, $7;
cz $20, $27;
cz $61, $40;
cz $32, $34;
cz $76, $9;

// --- Cycle 326 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $57;
cz $14, $78;
cz $35, $60;
cz $80, $118;
cz $66, $123;

// --- Cycle 327 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $95;
}
cz $126, $128;
cz $128, $0;
cz $41, $33;
cz $110, $109;
cz $119, $35;
cz $124, $114;

// --- Cycle 328 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $56;
cz $113, $85;
cz $55, $59;
cz $21, $59;
cz $82, $28;

// --- Cycle 329 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $82;
}
cz $126, $128;
cz $128, $33;
cz $40, $109;
cz $0, $5;
cz $18, $118;
cz $2, $51;

// --- Cycle 330 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $42;
cz $124, $107;
cz $124, $12;
cz $87, $46;
cz $29, $110;

// --- Cycle 331 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $102;
}
cz $126, $128;
cz $128, $38;
cz $66, $102;
cz $97, $26;
cz $95, $101;
cz $24, $31;

// --- Cycle 332 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $101;
cz $105, $13;
cz $48, $44;
cz $18, $121;
cz $34, $121;

// --- Cycle 333 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $67;
}
cz $126, $128;
cz $128, $73;
cz $82, $76;
cz $20, $6;
cz $31, $103;
cz $114, $67;

// --- Cycle 334 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $8;
cz $59, $54;
cz $121, $118;
cz $75, $115;
cz $76, $6;

// --- Cycle 335 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $35;
}
cz $126, $128;
cz $128, $42;
cz $13, $2;
cz $95, $45;
cz $58, $96;
cz $47, $31;

// --- Cycle 336 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $13;
cz $89, $98;
cz $57, $114;
cz $17, $108;
cz $34, $119;

// --- Cycle 337 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $37;
}
cz $126, $128;
cz $128, $26;
cz $109, $68;
cz $7, $45;
cz $117, $60;
cz $2, $47;

// --- Cycle 338 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $69;
cz $31, $61;
cz $32, $48;
cz $62, $65;
cz $36, $26;

// --- Cycle 339 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $119;
}
cz $126, $128;
cz $128, $31;
cz $70, $124;
cz $25, $52;
cz $17, $110;
cz $10, $124;

// --- Cycle 340 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $61;
cz $57, $12;
cz $60, $23;
cz $28, $99;
cz $60, $61;

// --- Cycle 341 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $83;
}
cz $126, $128;
cz $128, $119;
cz $99, $107;
cz $14, $2;
cz $61, $124;
cz $68, $105;

// --- Cycle 342 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $40;
cz $20, $17;
cz $69, $22;
cz $101, $0;
cz $107, $87;

// --- Cycle 343 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $123;
}
cz $126, $128;
cz $128, $14;
cz $95, $6;
cz $108, $97;
cz $46, $112;
cz $20, $61;

// --- Cycle 344 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $93;
cz $104, $8;
cz $69, $100;
cz $40, $0;
cz $7, $16;

// --- Cycle 345 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $29;
}
cz $126, $128;
cz $128, $123;
cz $32, $121;
cz $77, $28;
cz $17, $2;
cz $49, $93;

// --- Cycle 346 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $45;
cz $12, $92;
cz $53, $87;
cz $65, $9;
cz $30, $4;

// --- Cycle 347 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $99;
}
cz $126, $128;
cz $128, $88;
cz $2, $8;
cz $79, $116;
cz $117, $4;
cz $50, $29;

// --- Cycle 348 (m/X) ---
m[0] = measure $125;
reset $125;
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
if (m[0] == true) {
  x $127;
}
cz $125, $127;
cz $127, $44;
cz $21, $53;
cz $119, $48;
cz $35, $69;
cz $55, $70;

// --- Cycle 349 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $84;
}
cz $126, $128;
cz $128, $92;
cz $46, $107;
cz $124, $87;
cz $90, $32;
cz $98, $60;

// Phase 5: Final measurement
c[0] = measure $0;
c[1] = measure $1;
c[2] = measure $2;
c[3] = measure $3;
c[4] = measure $4;
c[5] = measure $5;
c[6] = measure $6;
c[7] = measure $7;
c[8] = measure $8;
c[9] = measure $9;
c[10] = measure $10;
c[11] = measure $11;
c[12] = measure $12;
c[13] = measure $13;
c[14] = measure $14;
c[15] = measure $15;
c[16] = measure $16;
c[17] = measure $17;
c[18] = measure $18;
c[19] = measure $19;
c[20] = measure $20;
c[21] = measure $21;
c[22] = measure $22;
c[23] = measure $23;
c[24] = measure $24;
c[25] = measure $25;
c[26] = measure $26;
c[27] = measure $27;
c[28] = measure $28;
c[29] = measure $29;
c[30] = measure $30;
c[31] = measure $31;
c[32] = measure $32;
c[33] = measure $33;
c[34] = measure $34;
c[35] = measure $35;
c[36] = measure $36;
c[37] = measure $37;
c[38] = measure $38;
c[39] = measure $39;
c[40] = measure $40;
c[41] = measure $41;
c[42] = measure $42;
c[43] = measure $43;
c[44] = measure $44;
c[45] = measure $45;
c[46] = measure $46;
c[47] = measure $47;
c[48] = measure $48;
c[49] = measure $49;
c[50] = measure $50;
c[51] = measure $51;
c[52] = measure $52;
c[53] = measure $53;
c[54] = measure $54;
c[55] = measure $55;
c[56] = measure $56;
c[57] = measure $57;
c[58] = measure $58;
c[59] = measure $59;
c[60] = measure $60;
c[61] = measure $61;
c[62] = measure $62;
c[63] = measure $63;
c[64] = measure $64;
c[65] = measure $65;
c[66] = measure $66;
c[67] = measure $67;
c[68] = measure $68;
c[69] = measure $69;
c[70] = measure $70;
c[71] = measure $71;
c[72] = measure $72;
c[73] = measure $73;
c[74] = measure $74;
c[75] = measure $75;
c[76] = measure $76;
c[77] = measure $77;
c[78] = measure $78;
c[79] = measure $79;
c[80] = measure $80;
c[81] = measure $81;
c[82] = measure $82;
c[83] = measure $83;
c[84] = measure $84;
c[85] = measure $85;
c[86] = measure $86;
c[87] = measure $87;
c[88] = measure $88;
c[89] = measure $89;
c[90] = measure $90;
c[91] = measure $91;
c[92] = measure $92;
c[93] = measure $93;
c[94] = measure $94;
c[95] = measure $95;
c[96] = measure $96;
c[97] = measure $97;
c[98] = measure $98;
c[99] = measure $99;
c[100] = measure $100;
c[101] = measure $101;
c[102] = measure $102;
c[103] = measure $103;
c[104] = measure $104;
c[105] = measure $105;
c[106] = measure $106;
c[107] = measure $107;
c[108] = measure $108;
c[109] = measure $109;
c[110] = measure $110;
c[111] = measure $111;
c[112] = measure $112;
c[113] = measure $113;
c[114] = measure $114;
c[115] = measure $115;
c[116] = measure $116;
c[117] = measure $117;
c[118] = measure $118;
c[119] = measure $119;
c[120] = measure $120;
c[121] = measure $121;
c[122] = measure $122;
c[123] = measure $123;
c[124] = measure $124;
