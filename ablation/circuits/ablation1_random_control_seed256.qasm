OPENQASM 3.0;
include "stdgates.inc";
bit[1] m;
bit[1] n;
bit[125] c;

// =ABLATION #1: Random Circuit Control (random_control_seed256)=
// Qubits: 125, CZ: 11900, Feedback: 350, Seed: 256
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
cz $37, $120;
cz $22, $68;
cz $32, $102;
cz $27, $29;
cz $27, $103;
cz $76, $116;
cz $2, $82;
cz $35, $36;
cz $71, $76;
cz $32, $104;
cz $17, $32;
cz $40, $53;
cz $11, $121;
cz $20, $92;
cz $56, $118;
cz $23, $34;
cz $44, $89;
cz $23, $65;
cz $114, $118;
cz $23, $116;
cz $49, $81;
cz $5, $60;
cz $79, $106;
cz $43, $78;
cz $20, $85;
cz $44, $94;
cz $11, $24;
cz $61, $114;
cz $19, $74;
cz $3, $44;
cz $114, $119;
cz $42, $89;
cz $36, $40;
cz $2, $36;
cz $67, $80;
cz $85, $105;
cz $30, $53;
cz $70, $97;
cz $15, $34;
cz $61, $121;
cz $45, $65;
cz $9, $83;
cz $71, $102;
cz $74, $94;
cz $83, $95;
cz $1, $70;
cz $55, $91;
cz $18, $81;
cz $0, $96;
cz $13, $41;
cz $9, $32;
cz $31, $115;
cz $27, $39;
cz $26, $116;
cz $34, $35;
cz $20, $36;
cz $83, $98;
cz $36, $108;
cz $73, $107;
cz $90, $116;
cz $5, $26;
cz $11, $26;
cz $43, $61;
cz $22, $80;
cz $18, $24;
cz $58, $99;
cz $30, $56;
cz $41, $96;
cz $63, $121;
cz $82, $113;
cz $15, $95;
cz $7, $102;
cz $97, $117;
cz $109, $124;
cz $80, $81;
cz $45, $117;
cz $56, $71;
cz $32, $66;
cz $67, $81;
cz $0, $123;
cz $4, $30;
cz $25, $71;
cz $2, $97;
cz $107, $118;
cz $85, $86;
cz $11, $54;
cz $19, $75;
cz $60, $113;
cz $7, $95;
cz $0, $4;
cz $102, $112;
cz $114, $116;
cz $15, $52;
cz $90, $92;
cz $73, $89;
cz $14, $84;
cz $16, $34;
cz $30, $61;
cz $17, $69;
cz $81, $123;
cz $33, $82;
cz $85, $110;
cz $45, $98;
cz $13, $78;
cz $42, $63;
cz $56, $97;
cz $63, $73;
cz $23, $50;
cz $32, $78;
cz $3, $20;
cz $51, $101;
cz $37, $64;
cz $64, $113;
cz $21, $49;
cz $26, $99;
cz $37, $110;
cz $1, $61;
cz $33, $99;
cz $44, $66;
cz $82, $85;
cz $106, $114;
cz $49, $50;
cz $112, $120;
cz $35, $77;
cz $44, $62;
cz $76, $89;
cz $0, $28;
cz $50, $51;
cz $60, $92;
cz $27, $81;
cz $36, $107;
cz $33, $62;
cz $1, $30;
cz $75, $104;
cz $1, $44;
cz $28, $87;
cz $7, $56;
cz $28, $109;
cz $16, $67;
cz $0, $69;
cz $20, $26;
cz $53, $83;
cz $58, $114;
cz $15, $121;
cz $4, $87;
cz $51, $108;
cz $40, $87;
cz $61, $87;
cz $1, $35;
cz $115, $116;
cz $58, $118;
cz $7, $105;
cz $88, $102;
cz $11, $88;
cz $7, $41;
cz $21, $45;
cz $18, $30;
cz $18, $57;
cz $44, $119;
cz $1, $13;
cz $15, $26;
cz $57, $77;
cz $20, $86;
cz $15, $63;
cz $32, $48;
cz $6, $103;
cz $9, $51;
cz $66, $117;
cz $17, $75;
cz $54, $63;
cz $33, $85;
cz $13, $59;
cz $87, $113;
cz $28, $117;
cz $25, $29;
cz $30, $102;
cz $61, $70;
cz $64, $90;
cz $16, $45;
cz $27, $78;
cz $3, $104;
cz $26, $94;
cz $26, $92;
cz $38, $91;
cz $17, $97;
cz $13, $46;
cz $31, $35;
cz $63, $71;
cz $43, $96;
cz $117, $123;
cz $42, $101;
cz $36, $103;
cz $3, $55;
cz $0, $117;
cz $7, $55;
cz $36, $74;
cz $21, $99;
cz $17, $34;
cz $90, $117;
cz $25, $75;
cz $86, $87;
cz $46, $98;
cz $53, $79;
cz $23, $88;
cz $2, $15;
cz $81, $110;
cz $59, $71;
cz $101, $112;
cz $71, $85;
cz $35, $117;
cz $18, $73;
cz $68, $117;
cz $41, $116;
cz $11, $39;
cz $11, $15;
cz $119, $120;
cz $14, $55;
cz $16, $106;
cz $48, $85;
cz $37, $39;
cz $46, $59;
cz $49, $63;
cz $6, $35;
cz $10, $43;
cz $8, $97;
cz $71, $118;
cz $109, $114;
cz $9, $120;
cz $17, $71;
cz $11, $69;
cz $67, $111;
cz $77, $100;
cz $11, $102;
cz $88, $100;
cz $43, $71;
cz $0, $93;
cz $55, $108;
cz $74, $111;
cz $36, $75;
cz $13, $32;
cz $17, $100;
cz $39, $83;
cz $15, $119;
cz $3, $29;
cz $52, $74;
cz $36, $44;
cz $39, $89;
cz $22, $47;
cz $7, $20;
cz $55, $62;
cz $53, $99;
cz $9, $124;
cz $77, $115;
cz $3, $13;
cz $103, $110;
cz $8, $91;
cz $79, $90;
cz $44, $50;
cz $11, $64;
cz $23, $117;
cz $42, $122;
cz $0, $31;
cz $20, $124;
cz $107, $109;
cz $87, $100;
cz $23, $41;
cz $2, $50;
cz $73, $77;
cz $15, $36;
cz $38, $97;
cz $30, $98;
cz $45, $48;
cz $88, $106;
cz $35, $88;
cz $45, $110;
cz $95, $120;
cz $91, $103;
cz $37, $56;
cz $15, $114;
cz $7, $34;
cz $6, $80;
cz $77, $113;
cz $72, $124;
cz $89, $102;
cz $65, $74;
cz $16, $35;
cz $12, $74;
cz $17, $39;
cz $96, $107;
cz $2, $11;
cz $65, $104;
cz $31, $72;
cz $6, $85;
cz $21, $110;
cz $20, $72;
cz $35, $65;
cz $8, $26;
cz $64, $101;
cz $61, $106;
cz $35, $119;
cz $65, $71;
cz $2, $124;
cz $57, $71;
cz $35, $120;
cz $9, $95;
cz $1, $105;
cz $62, $114;
cz $57, $67;
cz $23, $112;
cz $55, $83;
cz $49, $52;
cz $29, $106;
cz $63, $89;
cz $58, $69;
cz $12, $76;
cz $11, $53;
cz $28, $110;
cz $65, $100;
cz $116, $120;
cz $75, $102;
cz $53, $123;
cz $51, $124;
cz $25, $66;
cz $102, $111;
cz $29, $44;
cz $54, $109;
cz $38, $95;
cz $44, $96;
cz $93, $121;
cz $86, $101;
cz $2, $104;
cz $26, $41;
cz $13, $90;
cz $29, $103;
cz $32, $89;
cz $32, $68;
cz $59, $123;
cz $49, $65;
cz $50, $93;
cz $2, $54;
cz $15, $80;
cz $31, $67;
cz $31, $32;
cz $52, $123;
cz $10, $39;
cz $45, $78;
cz $50, $105;
cz $9, $110;
cz $6, $13;
cz $2, $44;
cz $74, $84;
cz $41, $94;
cz $13, $80;
cz $79, $107;
cz $89, $110;
cz $0, $9;
cz $73, $74;
cz $6, $116;
cz $33, $48;
cz $63, $101;
cz $81, $121;
cz $20, $62;
cz $18, $90;
cz $10, $74;
cz $45, $101;
cz $79, $80;
cz $72, $98;
cz $41, $47;
cz $92, $117;
cz $94, $123;
cz $54, $122;
cz $0, $30;
cz $58, $108;
cz $61, $78;
cz $52, $95;

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
cz $127, $63;
cz $84, $55;
cz $38, $41;
cz $109, $111;
cz $86, $61;

// --- Cycle 1 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $121;
}
cz $126, $128;
cz $128, $102;
cz $15, $87;
cz $94, $98;
cz $118, $74;
cz $64, $81;

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
cz $127, $43;
cz $58, $6;
cz $101, $17;
cz $84, $89;
cz $122, $16;

// --- Cycle 3 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $24;
}
cz $126, $128;
cz $128, $118;
cz $94, $106;
cz $57, $122;
cz $107, $30;
cz $18, $64;

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
cz $127, $122;
cz $13, $31;
cz $47, $75;
cz $117, $48;
cz $4, $90;

// --- Cycle 5 (n/Z) ---
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
cz $128, $124;
cz $7, $42;
cz $22, $26;
cz $108, $74;
cz $52, $41;

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
cz $127, $89;
cz $85, $97;
cz $61, $99;
cz $74, $116;
cz $74, $62;

// --- Cycle 7 (n/Z) ---
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
cz $128, $60;
cz $101, $67;
cz $28, $123;
cz $25, $106;
cz $108, $116;

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
cz $127, $102;
cz $96, $4;
cz $120, $14;
cz $124, $66;
cz $38, $97;

// --- Cycle 9 (n/Z) ---
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
cz $128, $43;
cz $124, $79;
cz $101, $33;
cz $12, $92;
cz $33, $37;

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
cz $127, $22;
cz $53, $34;
cz $63, $82;
cz $17, $67;
cz $93, $68;

// --- Cycle 11 (n/Z) ---
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
cz $128, $43;
cz $56, $43;
cz $121, $20;
cz $92, $123;
cz $6, $55;

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
cz $127, $55;
cz $30, $6;
cz $36, $71;
cz $75, $15;
cz $37, $95;

// --- Cycle 13 (n/Z) ---
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
cz $128, $49;
cz $46, $35;
cz $20, $46;
cz $29, $39;
cz $105, $54;

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
cz $127, $118;
cz $97, $80;
cz $10, $8;
cz $35, $4;
cz $102, $7;

// --- Cycle 15 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $76;
}
cz $126, $128;
cz $128, $31;
cz $5, $17;
cz $110, $119;
cz $58, $36;
cz $124, $119;

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
cz $127, $101;
cz $88, $10;
cz $61, $46;
cz $1, $68;
cz $111, $41;

// --- Cycle 17 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $74;
}
cz $126, $128;
cz $128, $51;
cz $38, $9;
cz $77, $3;
cz $62, $53;
cz $23, $39;

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
cz $127, $113;
cz $14, $35;
cz $119, $67;
cz $25, $81;
cz $101, $16;

// --- Cycle 19 (n/Z) ---
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
cz $128, $55;
cz $114, $22;
cz $38, $52;
cz $81, $99;
cz $25, $22;

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
cz $127, $124;
cz $65, $117;
cz $9, $15;
cz $106, $7;
cz $90, $6;

// --- Cycle 21 (n/Z) ---
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
cz $128, $29;
cz $63, $31;
cz $55, $69;
cz $5, $40;
cz $57, $107;

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
cz $127, $7;
cz $85, $100;
cz $122, $110;
cz $80, $70;
cz $26, $70;

// --- Cycle 23 (n/Z) ---
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
cz $128, $117;
cz $9, $122;
cz $42, $59;
cz $120, $22;
cz $7, $50;

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
cz $127, $119;
cz $66, $40;
cz $120, $53;
cz $59, $119;
cz $122, $20;

// --- Cycle 25 (n/Z) ---
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
cz $128, $7;
cz $41, $26;
cz $42, $17;
cz $50, $92;
cz $105, $33;

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
cz $127, $107;
cz $31, $66;
cz $49, $15;
cz $15, $61;
cz $86, $29;

// --- Cycle 27 (n/Z) ---
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
cz $128, $65;
cz $7, $34;
cz $49, $36;
cz $77, $16;
cz $51, $55;

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
cz $127, $65;
cz $89, $87;
cz $7, $82;
cz $109, $23;
cz $119, $59;

// --- Cycle 29 (n/Z) ---
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
cz $128, $79;
cz $103, $121;
cz $53, $33;
cz $104, $98;
cz $16, $82;

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
cz $127, $75;
cz $85, $99;
cz $89, $9;
cz $105, $118;
cz $103, $7;

// --- Cycle 31 (n/Z) ---
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
cz $128, $6;
cz $65, $90;
cz $76, $23;
cz $70, $19;
cz $54, $45;

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
cz $127, $19;
cz $122, $66;
cz $71, $66;
cz $85, $72;
cz $36, $8;

// --- Cycle 33 (n/Z) ---
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
cz $128, $60;
cz $88, $98;
cz $87, $59;
cz $89, $43;
cz $13, $41;

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
cz $127, $0;
cz $40, $44;
cz $107, $47;
cz $91, $119;
cz $9, $76;

// --- Cycle 35 (n/Z) ---
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
cz $128, $44;
cz $22, $122;
cz $76, $75;
cz $66, $104;
cz $79, $27;

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
cz $127, $91;
cz $70, $109;
cz $41, $22;
cz $79, $50;
cz $55, $42;

// --- Cycle 37 (n/Z) ---
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
cz $128, $45;
cz $1, $84;
cz $0, $115;
cz $113, $119;
cz $71, $23;

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
cz $127, $23;
cz $42, $52;
cz $121, $86;
cz $97, $89;
cz $31, $0;

// --- Cycle 39 (n/Z) ---
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
cz $128, $2;
cz $39, $119;
cz $47, $21;
cz $117, $85;
cz $46, $49;

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
cz $127, $124;
cz $96, $15;
cz $11, $33;
cz $29, $96;
cz $10, $71;

// --- Cycle 41 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $108;
}
cz $126, $128;
cz $128, $45;
cz $28, $121;
cz $28, $96;
cz $92, $32;
cz $43, $83;

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
cz $127, $56;
cz $102, $108;
cz $66, $50;
cz $91, $118;
cz $78, $99;

// --- Cycle 43 (n/Z) ---
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
cz $128, $25;
cz $59, $23;
cz $98, $36;
cz $41, $79;
cz $69, $6;

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
cz $127, $84;
cz $71, $86;
cz $115, $23;
cz $37, $78;
cz $81, $23;

// --- Cycle 45 (n/Z) ---
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
cz $128, $43;
cz $10, $45;
cz $1, $89;
cz $2, $26;
cz $37, $40;

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
cz $127, $74;
cz $57, $12;
cz $91, $28;
cz $47, $41;
cz $94, $90;

// --- Cycle 47 (n/Z) ---
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
cz $128, $9;
cz $70, $13;
cz $43, $13;
cz $117, $15;
cz $114, $67;

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
cz $127, $68;
cz $30, $66;
cz $105, $58;
cz $42, $17;
cz $31, $23;

// --- Cycle 49 (n/Z) ---
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
cz $128, $61;
cz $113, $43;
cz $19, $111;
cz $75, $59;
cz $30, $112;

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
cz $127, $49;
cz $33, $59;
cz $39, $121;
cz $85, $92;
cz $103, $59;

// --- Cycle 51 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $46;
}
cz $126, $128;
cz $128, $30;
cz $22, $67;
cz $1, $36;
cz $16, $27;
cz $64, $5;

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
cz $127, $19;
cz $34, $21;
cz $25, $87;
cz $77, $38;
cz $39, $12;

// --- Cycle 53 (n/Z) ---
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
cz $128, $19;
cz $88, $0;
cz $68, $94;
cz $54, $25;
cz $11, $39;

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
cz $127, $124;
cz $110, $93;
cz $6, $12;
cz $119, $30;
cz $122, $82;

// --- Cycle 55 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $24;
}
cz $126, $128;
cz $128, $65;
cz $101, $108;
cz $67, $114;
cz $20, $98;
cz $112, $77;

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
cz $127, $37;
cz $17, $37;
cz $88, $98;
cz $108, $120;
cz $26, $53;

// --- Cycle 57 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $46;
}
cz $126, $128;
cz $128, $86;
cz $97, $86;
cz $30, $42;
cz $115, $29;
cz $40, $115;

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
cz $127, $47;
cz $39, $42;
cz $6, $109;
cz $121, $80;
cz $93, $10;

// --- Cycle 59 (n/Z) ---
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
cz $128, $57;
cz $120, $93;
cz $71, $57;
cz $114, $10;
cz $23, $79;

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
cz $127, $48;
cz $19, $116;
cz $67, $36;
cz $91, $39;
cz $99, $121;

// --- Cycle 61 (n/Z) ---
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
cz $23, $27;
cz $0, $1;
cz $89, $123;
cz $23, $33;

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
cz $127, $48;
cz $48, $12;
cz $82, $5;
cz $10, $20;
cz $71, $68;

// --- Cycle 63 (n/Z) ---
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
cz $128, $47;
cz $85, $103;
cz $51, $0;
cz $120, $21;
cz $78, $95;

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
cz $127, $3;
cz $59, $46;
cz $94, $77;
cz $33, $119;
cz $67, $70;

// --- Cycle 65 (n/Z) ---
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
cz $128, $21;
cz $62, $121;
cz $123, $46;
cz $52, $5;
cz $111, $100;

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
cz $127, $95;
cz $11, $0;
cz $60, $78;
cz $38, $34;
cz $23, $104;

// --- Cycle 67 (n/Z) ---
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
cz $128, $31;
cz $72, $103;
cz $91, $99;
cz $33, $50;
cz $66, $40;

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
cz $127, $55;
cz $77, $101;
cz $85, $88;
cz $52, $109;
cz $18, $50;

// --- Cycle 69 (n/Z) ---
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
cz $128, $106;
cz $80, $30;
cz $7, $81;
cz $19, $89;
cz $49, $76;

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
cz $127, $6;
cz $7, $55;
cz $113, $106;
cz $70, $41;
cz $77, $11;

// --- Cycle 71 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $86;
}
cz $126, $128;
cz $128, $118;
cz $93, $48;
cz $54, $66;
cz $87, $18;
cz $120, $68;

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
cz $127, $17;
cz $86, $17;
cz $24, $86;
cz $23, $67;
cz $91, $117;

// --- Cycle 73 (n/Z) ---
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
cz $128, $59;
cz $112, $104;
cz $42, $62;
cz $63, $52;
cz $116, $12;

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
cz $127, $30;
cz $93, $118;
cz $61, $97;
cz $110, $46;
cz $106, $6;

// --- Cycle 75 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $30;
}
cz $126, $128;
cz $128, $56;
cz $24, $115;
cz $114, $12;
cz $80, $8;
cz $33, $84;

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
cz $127, $68;
cz $33, $4;
cz $70, $95;
cz $73, $25;
cz $55, $76;

// --- Cycle 77 (n/Z) ---
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
cz $128, $107;
cz $106, $69;
cz $2, $40;
cz $91, $35;
cz $34, $21;

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
cz $127, $2;
cz $25, $41;
cz $90, $107;
cz $45, $15;
cz $81, $32;

// --- Cycle 79 (n/Z) ---
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
cz $128, $25;
cz $27, $59;
cz $99, $69;
cz $97, $35;
cz $54, $82;

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
cz $127, $22;
cz $88, $1;
cz $49, $112;
cz $117, $24;
cz $43, $119;

// --- Cycle 81 (n/Z) ---
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
cz $128, $107;
cz $53, $103;
cz $53, $81;
cz $18, $39;
cz $63, $70;

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
cz $127, $109;
cz $42, $25;
cz $91, $18;
cz $119, $39;
cz $91, $118;

// --- Cycle 83 (n/Z) ---
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
cz $128, $90;
cz $67, $96;
cz $59, $6;
cz $57, $20;
cz $69, $37;

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
cz $127, $103;
cz $29, $52;
cz $34, $96;
cz $45, $83;
cz $66, $4;

// --- Cycle 85 (n/Z) ---
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
cz $128, $49;
cz $52, $6;
cz $52, $38;
cz $100, $5;
cz $17, $75;

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
cz $127, $69;
cz $13, $86;
cz $45, $62;
cz $87, $35;
cz $105, $12;

// --- Cycle 87 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $54;
}
cz $126, $128;
cz $128, $45;
cz $122, $39;
cz $50, $110;
cz $42, $30;
cz $122, $98;

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
cz $127, $94;
cz $22, $94;
cz $121, $35;
cz $72, $111;
cz $39, $61;

// --- Cycle 89 (n/Z) ---
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
cz $128, $116;
cz $104, $36;
cz $25, $16;
cz $30, $107;
cz $38, $44;

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
cz $127, $110;
cz $74, $119;
cz $4, $93;
cz $7, $123;
cz $30, $33;

// --- Cycle 91 (n/Z) ---
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
cz $128, $38;
cz $117, $70;
cz $11, $83;
cz $103, $44;
cz $5, $57;

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
cz $127, $94;
cz $80, $98;
cz $5, $95;
cz $1, $120;
cz $105, $90;

// --- Cycle 93 (n/Z) ---
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
cz $128, $25;
cz $44, $39;
cz $58, $109;
cz $22, $52;
cz $67, $105;

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
cz $127, $107;
cz $29, $117;
cz $79, $6;
cz $4, $54;
cz $68, $13;

// --- Cycle 95 (n/Z) ---
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
cz $128, $51;
cz $58, $48;
cz $96, $31;
cz $62, $55;
cz $101, $65;

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
cz $127, $24;
cz $25, $55;
cz $1, $44;
cz $77, $48;
cz $29, $73;

// --- Cycle 97 (n/Z) ---
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
cz $128, $49;
cz $30, $7;
cz $53, $1;
cz $36, $24;
cz $120, $47;

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
cz $127, $45;
cz $92, $10;
cz $50, $80;
cz $23, $85;
cz $16, $102;

// --- Cycle 99 (n/Z) ---
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
cz $128, $100;
cz $79, $3;
cz $81, $84;
cz $99, $70;
cz $118, $40;

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
cz $127, $81;
cz $90, $50;
cz $78, $77;
cz $43, $41;
cz $33, $109;

// --- Cycle 101 (n/Z) ---
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
cz $128, $39;
cz $23, $113;
cz $56, $98;
cz $112, $68;
cz $19, $16;

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
cz $127, $72;
cz $112, $58;
cz $61, $92;
cz $70, $86;
cz $94, $72;

// --- Cycle 103 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $22;
}
cz $126, $128;
cz $128, $111;
cz $122, $60;
cz $3, $105;
cz $86, $106;
cz $99, $86;

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
cz $127, $3;
cz $104, $86;
cz $66, $120;
cz $43, $88;
cz $107, $37;

// --- Cycle 105 (n/Z) ---
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
cz $81, $22;
cz $26, $13;
cz $34, $6;
cz $90, $99;

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
cz $127, $56;
cz $51, $1;
cz $82, $55;
cz $39, $20;
cz $102, $76;

// --- Cycle 107 (n/Z) ---
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
cz $128, $17;
cz $113, $44;
cz $5, $48;
cz $14, $22;
cz $29, $94;

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
cz $127, $88;
cz $110, $35;
cz $101, $31;
cz $121, $84;
cz $38, $5;

// --- Cycle 109 (n/Z) ---
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
cz $128, $61;
cz $56, $60;
cz $95, $4;
cz $119, $115;
cz $92, $11;

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
cz $127, $9;
cz $48, $31;
cz $96, $19;
cz $124, $59;
cz $79, $15;

// --- Cycle 111 (n/Z) ---
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
cz $128, $50;
cz $75, $114;
cz $36, $97;
cz $88, $108;
cz $32, $44;

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
cz $127, $80;
cz $119, $116;
cz $111, $16;
cz $61, $21;
cz $22, $21;

// --- Cycle 113 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $74;
}
cz $126, $128;
cz $128, $50;
cz $25, $120;
cz $120, $75;
cz $31, $75;
cz $41, $101;

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
cz $127, $86;
cz $81, $111;
cz $57, $114;
cz $114, $48;
cz $66, $30;

// --- Cycle 115 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $73;
}
cz $126, $128;
cz $128, $45;
cz $109, $70;
cz $1, $33;
cz $9, $26;
cz $58, $64;

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
cz $127, $27;
cz $119, $1;
cz $109, $78;
cz $93, $31;
cz $22, $96;

// --- Cycle 117 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $74;
}
cz $126, $128;
cz $128, $16;
cz $19, $32;
cz $104, $117;
cz $27, $116;
cz $1, $104;

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
cz $127, $34;
cz $96, $120;
cz $60, $11;
cz $20, $30;
cz $0, $99;

// --- Cycle 119 (n/Z) ---
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
cz $128, $38;
cz $100, $102;
cz $70, $0;
cz $84, $113;
cz $96, $3;

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
cz $127, $44;
cz $78, $25;
cz $37, $62;
cz $101, $8;
cz $38, $18;

// --- Cycle 121 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $40;
}
cz $126, $128;
cz $128, $61;
cz $35, $66;
cz $120, $8;
cz $22, $29;
cz $71, $51;

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
cz $127, $78;
cz $72, $38;
cz $86, $92;
cz $1, $91;
cz $124, $51;

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
cz $128, $106;
cz $90, $7;
cz $37, $24;
cz $44, $51;
cz $19, $21;

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
cz $127, $20;
cz $26, $123;
cz $29, $17;
cz $84, $22;
cz $104, $114;

// --- Cycle 125 (n/Z) ---
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
cz $4, $80;
cz $111, $102;
cz $76, $2;
cz $116, $80;

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
cz $127, $18;
cz $22, $29;
cz $116, $59;
cz $76, $79;
cz $30, $82;

// --- Cycle 127 (n/Z) ---
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
cz $128, $108;
cz $76, $34;
cz $91, $84;
cz $124, $107;
cz $92, $31;

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
cz $127, $19;
cz $10, $93;
cz $117, $45;
cz $70, $15;
cz $49, $106;

// --- Cycle 129 (n/Z) ---
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
cz $128, $19;
cz $95, $21;
cz $20, $92;
cz $23, $88;
cz $118, $122;

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
cz $127, $114;
cz $108, $119;
cz $60, $102;
cz $109, $114;
cz $69, $1;

// --- Cycle 131 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $40;
}
cz $126, $128;
cz $128, $120;
cz $57, $9;
cz $102, $62;
cz $22, $75;
cz $39, $60;

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
cz $127, $95;
cz $31, $58;
cz $53, $61;
cz $2, $52;
cz $121, $109;

// --- Cycle 133 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $49;
}
cz $126, $128;
cz $128, $18;
cz $119, $113;
cz $23, $32;
cz $105, $30;
cz $58, $60;

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
cz $127, $115;
cz $47, $87;
cz $44, $14;
cz $114, $2;
cz $113, $114;

// --- Cycle 135 (n/Z) ---
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
cz $128, $9;
cz $124, $30;
cz $5, $77;
cz $119, $88;
cz $4, $88;

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
cz $127, $37;
cz $111, $92;
cz $80, $30;
cz $53, $44;
cz $68, $30;

// --- Cycle 137 (n/Z) ---
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
cz $128, $122;
cz $86, $38;
cz $26, $107;
cz $82, $4;
cz $56, $46;

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
cz $127, $6;
cz $2, $40;
cz $25, $9;
cz $101, $13;
cz $80, $7;

// --- Cycle 139 (n/Z) ---
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
cz $128, $60;
cz $96, $86;
cz $85, $16;
cz $97, $110;
cz $73, $63;

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
cz $127, $11;
cz $92, $121;
cz $16, $5;
cz $67, $112;
cz $105, $120;

// --- Cycle 141 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $13;
}
cz $126, $128;
cz $128, $107;
cz $87, $55;
cz $106, $64;
cz $48, $75;
cz $11, $75;

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
cz $127, $12;
cz $112, $86;
cz $100, $41;
cz $60, $2;
cz $12, $93;

// --- Cycle 143 (n/Z) ---
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
cz $128, $58;
cz $4, $71;
cz $49, $69;
cz $43, $36;
cz $83, $44;

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
cz $127, $80;
cz $34, $105;
cz $54, $25;
cz $94, $114;
cz $16, $63;

// --- Cycle 145 (n/Z) ---
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
cz $128, $42;
cz $45, $62;
cz $19, $90;
cz $89, $25;
cz $69, $61;

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
cz $127, $32;
cz $28, $74;
cz $49, $74;
cz $9, $93;
cz $65, $24;

// --- Cycle 147 (n/Z) ---
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
cz $128, $29;
cz $65, $98;
cz $123, $36;
cz $98, $90;
cz $102, $105;

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
cz $127, $42;
cz $120, $30;
cz $32, $74;
cz $11, $4;
cz $115, $89;

// --- Cycle 149 (n/Z) ---
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
cz $128, $44;
cz $27, $87;
cz $8, $92;
cz $92, $75;
cz $59, $98;

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
cz $127, $112;
cz $85, $92;
cz $68, $3;
cz $3, $114;
cz $27, $14;

// --- Cycle 151 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $121;
}
cz $126, $128;
cz $128, $116;
cz $103, $26;
cz $48, $92;
cz $39, $87;
cz $42, $96;

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
cz $127, $123;
cz $14, $78;
cz $54, $88;
cz $62, $90;
cz $39, $62;

// --- Cycle 153 (n/Z) ---
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
cz $128, $35;
cz $25, $19;
cz $20, $63;
cz $35, $62;
cz $95, $52;

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
cz $127, $121;
cz $39, $104;
cz $47, $62;
cz $110, $113;
cz $99, $31;

// --- Cycle 155 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $117;
}
cz $126, $128;
cz $128, $38;
cz $103, $23;
cz $91, $17;
cz $4, $105;
cz $21, $34;

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
cz $127, $108;
cz $1, $105;
cz $27, $69;
cz $108, $28;
cz $28, $118;

// --- Cycle 157 (n/Z) ---
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
cz $128, $92;
cz $57, $70;
cz $73, $114;
cz $36, $30;
cz $104, $0;

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
cz $127, $57;
cz $43, $69;
cz $33, $111;
cz $1, $66;
cz $94, $101;

// --- Cycle 159 (n/Z) ---
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
cz $128, $68;
cz $8, $44;
cz $75, $86;
cz $40, $67;
cz $100, $120;

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
cz $127, $111;
cz $3, $64;
cz $18, $104;
cz $66, $90;
cz $8, $9;

// --- Cycle 161 (n/Z) ---
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
cz $128, $96;
cz $23, $69;
cz $4, $87;
cz $16, $6;
cz $32, $5;

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
cz $127, $39;
cz $59, $30;
cz $48, $13;
cz $100, $105;
cz $0, $46;

// --- Cycle 163 (n/Z) ---
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
cz $128, $112;
cz $117, $61;
cz $59, $112;
cz $76, $80;
cz $122, $91;

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
cz $127, $44;
cz $109, $70;
cz $66, $104;
cz $33, $15;
cz $97, $68;

// --- Cycle 165 (n/Z) ---
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
cz $128, $45;
cz $96, $91;
cz $12, $50;
cz $70, $62;
cz $87, $100;

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
cz $127, $44;
cz $117, $38;
cz $107, $68;
cz $73, $102;
cz $74, $81;

// --- Cycle 167 (n/Z) ---
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
cz $128, $116;
cz $112, $81;
cz $7, $8;
cz $113, $117;
cz $85, $25;

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
cz $127, $57;
cz $16, $7;
cz $13, $6;
cz $30, $82;
cz $118, $87;

// --- Cycle 169 (n/Z) ---
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
cz $128, $91;
cz $115, $120;
cz $124, $118;
cz $23, $24;
cz $92, $24;

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
cz $127, $55;
cz $50, $17;
cz $82, $103;
cz $55, $27;
cz $31, $81;

// --- Cycle 171 (n/Z) ---
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
cz $128, $10;
cz $23, $22;
cz $47, $11;
cz $33, $105;
cz $79, $36;

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
cz $127, $35;
cz $88, $19;
cz $44, $114;
cz $66, $29;
cz $13, $105;

// --- Cycle 173 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $22;
}
cz $126, $128;
cz $128, $3;
cz $76, $107;
cz $6, $114;
cz $77, $88;
cz $39, $101;

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
cz $127, $65;
cz $5, $51;
cz $74, $69;
cz $79, $22;
cz $60, $57;

// --- Cycle 175 (n/Z) ---
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
cz $128, $105;
cz $60, $36;
cz $60, $111;
cz $48, $50;
cz $69, $36;

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
cz $127, $92;
cz $83, $105;
cz $78, $19;
cz $23, $40;
cz $81, $34;

// --- Cycle 177 (n/Z) ---
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
cz $128, $64;
cz $91, $50;
cz $36, $74;
cz $96, $118;
cz $63, $124;

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
cz $127, $18;
cz $10, $36;
cz $123, $27;
cz $68, $20;
cz $5, $102;

// --- Cycle 179 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $121;
}
cz $126, $128;
cz $128, $111;
cz $11, $92;
cz $60, $0;
cz $26, $18;
cz $72, $67;

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
cz $127, $3;
cz $98, $10;
cz $21, $106;
cz $50, $47;
cz $7, $51;

// --- Cycle 181 (n/Z) ---
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
cz $128, $46;
cz $104, $93;
cz $99, $5;
cz $86, $49;
cz $67, $16;

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
cz $127, $111;
cz $41, $121;
cz $54, $50;
cz $94, $96;
cz $41, $106;

// --- Cycle 183 (n/Z) ---
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
cz $128, $39;
cz $25, $14;
cz $93, $39;
cz $57, $12;
cz $5, $31;

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
cz $127, $43;
cz $65, $35;
cz $60, $3;
cz $4, $103;
cz $92, $59;

// --- Cycle 185 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $46;
}
cz $126, $128;
cz $128, $60;
cz $67, $107;
cz $124, $39;
cz $0, $48;
cz $80, $64;

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
cz $127, $98;
cz $69, $67;
cz $50, $77;
cz $86, $18;
cz $77, $57;

// --- Cycle 187 (n/Z) ---
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
cz $128, $39;
cz $71, $36;
cz $61, $17;
cz $18, $23;
cz $34, $2;

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
cz $127, $30;
cz $49, $60;
cz $5, $85;
cz $47, $95;
cz $13, $71;

// --- Cycle 189 (n/Z) ---
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
cz $128, $68;
cz $77, $124;
cz $102, $124;
cz $32, $5;
cz $96, $10;

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
cz $127, $76;
cz $22, $117;
cz $6, $32;
cz $34, $31;
cz $59, $112;

// --- Cycle 191 (n/Z) ---
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
cz $128, $39;
cz $124, $4;
cz $110, $103;
cz $86, $54;
cz $110, $68;

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
cz $127, $21;
cz $7, $39;
cz $82, $11;
cz $52, $71;
cz $61, $29;

// --- Cycle 193 (n/Z) ---
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
cz $128, $25;
cz $9, $26;
cz $70, $43;
cz $85, $120;
cz $13, $35;

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
cz $127, $38;
cz $84, $89;
cz $43, $117;
cz $61, $5;
cz $52, $74;

// --- Cycle 195 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $76;
}
cz $126, $128;
cz $128, $5;
cz $69, $83;
cz $25, $37;
cz $115, $3;
cz $91, $114;

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
cz $127, $106;
cz $77, $112;
cz $49, $21;
cz $29, $121;
cz $89, $104;

// --- Cycle 197 (n/Z) ---
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
cz $128, $60;
cz $65, $74;
cz $42, $65;
cz $43, $11;
cz $41, $89;

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
cz $127, $49;
cz $56, $91;
cz $49, $18;
cz $19, $112;
cz $24, $56;

// --- Cycle 199 (n/Z) ---
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
cz $128, $1;
cz $41, $77;
cz $65, $73;
cz $80, $63;
cz $114, $124;

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
cz $127, $65;
cz $70, $71;
cz $29, $89;
cz $99, $92;
cz $22, $110;

// --- Cycle 201 (n/Z) ---
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
cz $128, $124;
cz $93, $111;
cz $114, $84;
cz $67, $64;
cz $31, $54;

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
cz $127, $53;
cz $54, $27;
cz $80, $22;
cz $47, $59;
cz $51, $26;

// --- Cycle 203 (n/Z) ---
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
cz $128, $68;
cz $85, $95;
cz $48, $33;
cz $55, $12;
cz $110, $113;

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
cz $127, $96;
cz $91, $38;
cz $58, $21;
cz $27, $104;
cz $34, $38;

// --- Cycle 205 (n/Z) ---
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
cz $128, $27;
cz $39, $104;
cz $101, $47;
cz $112, $50;
cz $107, $109;

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
cz $127, $60;
cz $1, $84;
cz $106, $34;
cz $92, $84;
cz $100, $56;

// --- Cycle 207 (n/Z) ---
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
cz $128, $79;
cz $17, $59;
cz $98, $112;
cz $18, $60;
cz $110, $76;

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
cz $127, $108;
cz $69, $37;
cz $90, $66;
cz $41, $120;
cz $85, $44;

// --- Cycle 209 (n/Z) ---
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
cz $128, $79;
cz $80, $22;
cz $99, $10;
cz $69, $96;
cz $124, $6;

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
cz $127, $104;
cz $25, $4;
cz $33, $115;
cz $90, $113;
cz $89, $93;

// --- Cycle 211 (n/Z) ---
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
cz $128, $4;
cz $5, $96;
cz $10, $56;
cz $73, $117;
cz $59, $16;

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
cz $127, $18;
cz $107, $12;
cz $63, $5;
cz $9, $27;
cz $60, $77;

// --- Cycle 213 (n/Z) ---
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
cz $128, $48;
cz $83, $11;
cz $14, $47;
cz $55, $8;
cz $26, $59;

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
cz $127, $16;
cz $91, $16;
cz $52, $33;
cz $63, $101;
cz $24, $63;

// --- Cycle 215 (n/Z) ---
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
cz $128, $72;
cz $0, $60;
cz $75, $25;
cz $24, $23;
cz $23, $116;

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
cz $127, $29;
cz $9, $47;
cz $68, $7;
cz $107, $81;
cz $73, $65;

// --- Cycle 217 (n/Z) ---
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
cz $128, $93;
cz $109, $93;
cz $51, $26;
cz $6, $119;
cz $41, $94;

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
cz $127, $0;
cz $119, $39;
cz $107, $112;
cz $48, $43;
cz $88, $100;

// --- Cycle 219 (n/Z) ---
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
cz $128, $89;
cz $115, $109;
cz $3, $66;
cz $16, $11;
cz $56, $69;

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
cz $127, $11;
cz $112, $38;
cz $36, $41;
cz $41, $116;
cz $82, $20;

// --- Cycle 221 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $24;
}
cz $126, $128;
cz $128, $0;
cz $116, $38;
cz $62, $89;
cz $101, $62;
cz $39, $113;

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
cz $127, $102;
cz $47, $53;
cz $109, $82;
cz $50, $102;
cz $63, $86;

// --- Cycle 223 (n/Z) ---
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
cz $128, $20;
cz $78, $22;
cz $13, $117;
cz $14, $26;
cz $114, $33;

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
cz $127, $40;
cz $37, $72;
cz $48, $103;
cz $52, $40;
cz $94, $116;

// --- Cycle 225 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $92;
}
cz $126, $128;
cz $128, $40;
cz $42, $33;
cz $76, $104;
cz $23, $95;
cz $117, $93;

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
cz $127, $102;
cz $77, $22;
cz $61, $2;
cz $47, $67;
cz $78, $13;

// --- Cycle 227 (n/Z) ---
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
cz $128, $70;
cz $17, $84;
cz $60, $47;
cz $1, $40;
cz $27, $19;

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
cz $127, $7;
cz $52, $32;
cz $26, $67;
cz $93, $51;
cz $112, $113;

// --- Cycle 229 (n/Z) ---
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
cz $128, $39;
cz $112, $80;
cz $117, $15;
cz $1, $25;
cz $83, $45;

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
cz $127, $78;
cz $29, $16;
cz $104, $118;
cz $106, $8;
cz $50, $59;

// --- Cycle 231 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $114;
}
cz $126, $128;
cz $128, $72;
cz $116, $71;
cz $63, $68;
cz $65, $8;
cz $106, $69;

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
cz $127, $76;
cz $92, $56;
cz $74, $5;
cz $78, $104;
cz $58, $37;

// --- Cycle 233 (n/Z) ---
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
cz $128, $1;
cz $115, $62;
cz $48, $55;
cz $36, $62;
cz $8, $122;

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
cz $127, $80;
cz $100, $61;
cz $71, $95;
cz $37, $100;
cz $11, $10;

// --- Cycle 235 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $15;
}
cz $126, $128;
cz $128, $25;
cz $48, $46;
cz $116, $70;
cz $108, $114;
cz $82, $34;

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
cz $127, $77;
cz $113, $89;
cz $111, $5;
cz $54, $120;
cz $24, $107;

// --- Cycle 237 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $15;
}
cz $126, $128;
cz $128, $119;
cz $60, $9;
cz $74, $12;
cz $28, $1;
cz $100, $38;

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
cz $127, $15;
cz $117, $51;
cz $4, $11;
cz $120, $9;
cz $52, $112;

// --- Cycle 239 (n/Z) ---
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
cz $128, $114;
cz $77, $42;
cz $80, $3;
cz $96, $9;
cz $19, $29;

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
cz $127, $122;
cz $75, $10;
cz $65, $8;
cz $8, $12;
cz $70, $77;

// --- Cycle 241 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $54;
}
cz $126, $128;
cz $128, $0;
cz $64, $87;
cz $116, $58;
cz $106, $103;
cz $124, $29;

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
cz $127, $103;
cz $60, $103;
cz $85, $21;
cz $70, $121;
cz $58, $88;

// --- Cycle 243 (n/Z) ---
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
cz $128, $32;
cz $27, $14;
cz $6, $73;
cz $43, $19;
cz $62, $56;

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
cz $127, $62;
cz $2, $88;
cz $62, $22;
cz $60, $96;
cz $29, $77;

// --- Cycle 245 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $7;
}
cz $126, $128;
cz $128, $82;
cz $12, $73;
cz $115, $51;
cz $27, $116;
cz $108, $25;

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
cz $127, $15;
cz $26, $62;
cz $88, $30;
cz $56, $90;
cz $22, $58;

// --- Cycle 247 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $54;
}
cz $126, $128;
cz $128, $78;
cz $81, $4;
cz $48, $12;
cz $43, $124;
cz $43, $108;

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
cz $127, $75;
cz $52, $13;
cz $10, $55;
cz $65, $94;
cz $50, $124;

// --- Cycle 249 (n/Z) ---
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
cz $128, $0;
cz $2, $72;
cz $101, $36;
cz $55, $104;
cz $12, $33;

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
cz $127, $70;
cz $120, $95;
cz $15, $101;
cz $88, $16;
cz $21, $71;

// --- Cycle 251 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $108;
}
cz $126, $128;
cz $128, $23;
cz $30, $122;
cz $34, $54;
cz $47, $121;
cz $79, $115;

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
cz $127, $8;
cz $13, $0;
cz $31, $33;
cz $46, $59;
cz $48, $112;

// --- Cycle 253 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $74;
}
cz $126, $128;
cz $128, $4;
cz $11, $79;
cz $18, $51;
cz $51, $61;
cz $102, $100;

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
cz $127, $53;
cz $120, $19;
cz $68, $20;
cz $77, $70;
cz $3, $118;

// --- Cycle 255 (n/Z) ---
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
cz $128, $5;
cz $108, $3;
cz $82, $37;
cz $1, $74;
cz $75, $30;

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
cz $127, $61;
cz $54, $95;
cz $61, $77;
cz $21, $114;
cz $52, $37;

// --- Cycle 257 (n/Z) ---
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
cz $128, $73;
cz $62, $109;
cz $82, $113;
cz $113, $22;
cz $98, $20;

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
cz $127, $68;
cz $110, $51;
cz $6, $17;
cz $87, $16;
cz $56, $115;

// --- Cycle 259 (n/Z) ---
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
cz $128, $68;
cz $83, $16;
cz $39, $119;
cz $107, $71;
cz $97, $23;

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
cz $127, $100;
cz $56, $28;
cz $16, $113;
cz $27, $59;
cz $10, $83;

// --- Cycle 261 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $114;
}
cz $126, $128;
cz $128, $41;
cz $94, $116;
cz $85, $89;
cz $101, $46;
cz $61, $94;

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
cz $127, $81;
cz $34, $48;
cz $95, $40;
cz $102, $101;
cz $24, $13;

// --- Cycle 263 (n/Z) ---
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
cz $128, $93;
cz $61, $83;
cz $55, $115;
cz $52, $64;
cz $83, $12;

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
cz $127, $42;
cz $21, $104;
cz $102, $38;
cz $14, $1;
cz $18, $105;

// --- Cycle 265 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $54;
}
cz $126, $128;
cz $128, $60;
cz $52, $112;
cz $0, $50;
cz $87, $51;
cz $105, $7;

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
cz $127, $115;
cz $116, $37;
cz $24, $28;
cz $3, $28;
cz $34, $112;

// --- Cycle 267 (n/Z) ---
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
cz $128, $30;
cz $83, $22;
cz $12, $85;
cz $55, $122;
cz $61, $4;

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
cz $127, $79;
cz $65, $80;
cz $8, $54;
cz $86, $101;
cz $116, $65;

// --- Cycle 269 (n/Z) ---
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
cz $128, $115;
cz $9, $104;
cz $119, $7;
cz $9, $59;
cz $74, $1;

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
cz $127, $102;
cz $120, $71;
cz $56, $43;
cz $3, $8;
cz $90, $11;

// --- Cycle 271 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $105;
}
cz $126, $128;
cz $128, $97;
cz $14, $13;
cz $50, $35;
cz $1, $2;
cz $74, $70;

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
cz $127, $47;
cz $60, $45;
cz $71, $35;
cz $61, $54;
cz $24, $85;

// --- Cycle 273 (n/Z) ---
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
cz $128, $117;
cz $14, $0;
cz $79, $80;
cz $51, $22;
cz $64, $41;

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
cz $127, $117;
cz $121, $93;
cz $100, $48;
cz $40, $30;
cz $18, $7;

// --- Cycle 275 (n/Z) ---
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
cz $128, $58;
cz $39, $27;
cz $29, $91;
cz $104, $35;
cz $10, $96;

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
cz $127, $39;
cz $94, $82;
cz $44, $84;
cz $10, $33;
cz $116, $95;

// --- Cycle 277 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $108;
}
cz $126, $128;
cz $128, $123;
cz $13, $2;
cz $11, $82;
cz $29, $41;
cz $79, $6;

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
cz $127, $25;
cz $83, $118;
cz $10, $5;
cz $20, $94;
cz $27, $40;

// --- Cycle 279 (n/Z) ---
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
cz $128, $59;
cz $43, $100;
cz $69, $3;
cz $107, $30;
cz $115, $39;

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
cz $127, $4;
cz $87, $115;
cz $50, $121;
cz $103, $71;
cz $74, $19;

// --- Cycle 281 (n/Z) ---
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
cz $128, $88;
cz $4, $0;
cz $87, $111;
cz $99, $113;
cz $39, $103;

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
cz $127, $25;
cz $44, $34;
cz $104, $85;
cz $25, $81;
cz $26, $37;

// --- Cycle 283 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $13;
}
cz $126, $128;
cz $128, $61;
cz $112, $122;
cz $8, $98;
cz $31, $104;
cz $47, $85;

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
cz $127, $21;
cz $102, $108;
cz $70, $18;
cz $41, $124;
cz $44, $97;

// --- Cycle 285 (n/Z) ---
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
cz $128, $96;
cz $104, $38;
cz $93, $107;
cz $106, $82;
cz $57, $9;

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
cz $127, $89;
cz $35, $42;
cz $8, $18;
cz $92, $72;
cz $44, $95;

// --- Cycle 287 (n/Z) ---
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
cz $128, $10;
cz $110, $119;
cz $94, $34;
cz $118, $25;
cz $20, $58;

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
cz $127, $50;
cz $63, $54;
cz $68, $106;
cz $94, $44;
cz $14, $21;

// --- Cycle 289 (n/Z) ---
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
cz $128, $95;
cz $73, $59;
cz $22, $79;
cz $62, $80;
cz $93, $66;

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
cz $127, $54;
cz $71, $37;
cz $42, $91;
cz $37, $32;
cz $20, $122;

// --- Cycle 291 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $13;
}
cz $126, $128;
cz $128, $15;
cz $113, $15;
cz $18, $116;
cz $26, $93;
cz $6, $9;

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
cz $127, $2;
cz $96, $117;
cz $93, $36;
cz $20, $3;
cz $82, $21;

// --- Cycle 293 (n/Z) ---
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
cz $128, $21;
cz $53, $20;
cz $105, $107;
cz $10, $107;
cz $73, $47;

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
cz $127, $56;
cz $38, $97;
cz $53, $58;
cz $93, $109;
cz $13, $41;

// --- Cycle 295 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $117;
}
cz $126, $128;
cz $128, $78;
cz $93, $123;
cz $45, $107;
cz $111, $97;
cz $107, $73;

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
cz $127, $122;
cz $91, $103;
cz $85, $113;
cz $33, $87;
cz $74, $60;

// --- Cycle 297 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $114;
}
cz $126, $128;
cz $128, $17;
cz $45, $29;
cz $45, $61;
cz $110, $117;
cz $34, $11;

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
cz $127, $24;
cz $76, $105;
cz $57, $36;
cz $110, $114;
cz $90, $82;

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
cz $128, $92;
cz $75, $24;
cz $37, $101;
cz $120, $97;
cz $13, $45;

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
cz $127, $88;
cz $124, $47;
cz $107, $58;
cz $68, $114;
cz $64, $67;

// --- Cycle 301 (n/Z) ---
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
cz $128, $122;
cz $43, $122;
cz $103, $91;
cz $28, $108;
cz $66, $30;

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
cz $127, $52;
cz $116, $31;
cz $51, $18;
cz $66, $31;
cz $103, $81;

// --- Cycle 303 (n/Z) ---
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
cz $128, $105;
cz $123, $17;
cz $75, $12;
cz $87, $82;
cz $70, $72;

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
cz $127, $110;
cz $26, $55;
cz $1, $9;
cz $110, $64;
cz $80, $12;

// --- Cycle 305 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $85;
}
cz $126, $128;
cz $128, $2;
cz $34, $33;
cz $34, $1;
cz $105, $83;
cz $39, $21;

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
cz $127, $11;
cz $43, $80;
cz $30, $100;
cz $109, $34;
cz $1, $24;

// --- Cycle 307 (n/Z) ---
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
cz $128, $30;
cz $23, $27;
cz $55, $26;
cz $116, $47;
cz $24, $54;

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
cz $127, $21;
cz $11, $76;
cz $39, $57;
cz $117, $14;
cz $62, $33;

// --- Cycle 309 (n/Z) ---
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
cz $128, $104;
cz $82, $81;
cz $21, $80;
cz $87, $24;
cz $109, $99;

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
cz $127, $18;
cz $22, $79;
cz $60, $61;
cz $114, $9;
cz $4, $83;

// --- Cycle 311 (n/Z) ---
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
cz $128, $51;
cz $25, $17;
cz $124, $104;
cz $49, $89;
cz $71, $66;

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
cz $127, $10;
cz $83, $22;
cz $28, $83;
cz $107, $98;
cz $20, $100;

// --- Cycle 313 (n/Z) ---
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
cz $128, $72;
cz $76, $13;
cz $68, $37;
cz $58, $89;
cz $63, $77;

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
cz $127, $83;
cz $48, $77;
cz $15, $48;
cz $44, $107;
cz $81, $75;

// --- Cycle 315 (n/Z) ---
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
cz $128, $102;
cz $94, $45;
cz $45, $46;
cz $67, $113;
cz $55, $69;

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
cz $127, $59;
cz $71, $41;
cz $58, $29;
cz $88, $15;
cz $77, $76;

// --- Cycle 317 (n/Z) ---
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
cz $128, $11;
cz $23, $121;
cz $79, $105;
cz $95, $42;
cz $56, $15;

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
cz $127, $66;
cz $51, $122;
cz $40, $34;
cz $25, $39;
cz $119, $84;

// --- Cycle 319 (n/Z) ---
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
cz $128, $96;
cz $61, $120;
cz $36, $117;
cz $92, $51;
cz $120, $54;

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
cz $127, $87;
cz $40, $101;
cz $96, $58;
cz $90, $38;
cz $75, $117;

// --- Cycle 321 (n/Z) ---
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
cz $128, $77;
cz $90, $86;
cz $21, $56;
cz $2, $123;
cz $89, $115;

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
cz $127, $84;
cz $106, $69;
cz $94, $67;
cz $64, $91;
cz $121, $30;

// --- Cycle 323 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $86;
}
cz $126, $128;
cz $128, $35;
cz $61, $54;
cz $12, $101;
cz $80, $97;
cz $7, $66;

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
cz $127, $70;
cz $122, $70;
cz $41, $24;
cz $28, $15;
cz $39, $92;

// --- Cycle 325 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $110;
}
cz $126, $128;
cz $128, $107;
cz $12, $11;
cz $118, $91;
cz $86, $16;
cz $12, $79;

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
cz $127, $103;
cz $19, $115;
cz $45, $115;
cz $49, $110;
cz $67, $25;

// --- Cycle 327 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $121;
}
cz $126, $128;
cz $128, $73;
cz $85, $94;
cz $80, $1;
cz $116, $109;
cz $9, $85;

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
cz $127, $102;
cz $38, $2;
cz $74, $4;
cz $63, $117;
cz $118, $107;

// --- Cycle 329 (n/Z) ---
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
cz $128, $97;
cz $38, $43;
cz $111, $120;
cz $67, $8;
cz $4, $51;

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
cz $127, $28;
cz $30, $62;
cz $25, $9;
cz $87, $44;
cz $30, $5;

// --- Cycle 331 (n/Z) ---
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
cz $102, $49;
cz $17, $111;
cz $25, $74;
cz $56, $113;

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
cz $127, $72;
cz $51, $9;
cz $20, $16;
cz $89, $50;
cz $8, $48;

// --- Cycle 333 (n/Z) ---
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
cz $128, $28;
cz $26, $81;
cz $85, $38;
cz $105, $19;
cz $28, $95;

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
cz $127, $67;
cz $13, $56;
cz $48, $39;
cz $56, $116;
cz $22, $86;

// --- Cycle 335 (n/Z) ---
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
cz $128, $65;
cz $120, $100;
cz $47, $27;
cz $66, $2;
cz $86, $7;

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
cz $127, $29;
cz $91, $73;
cz $72, $9;
cz $40, $88;
cz $19, $10;

// --- Cycle 337 (n/Z) ---
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
cz $128, $102;
cz $122, $16;
cz $107, $29;
cz $37, $13;
cz $14, $62;

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
cz $127, $106;
cz $15, $51;
cz $16, $106;
cz $79, $23;
cz $113, $118;

// --- Cycle 339 (n/Z) ---
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
cz $128, $36;
cz $70, $115;
cz $17, $3;
cz $51, $89;
cz $66, $102;

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
cz $127, $8;
cz $56, $75;
cz $68, $43;
cz $96, $83;
cz $94, $86;

// --- Cycle 341 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $7;
}
cz $126, $128;
cz $128, $36;
cz $61, $33;
cz $53, $117;
cz $106, $48;
cz $91, $35;

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
cz $127, $76;
cz $12, $37;
cz $48, $4;
cz $91, $12;
cz $25, $82;

// --- Cycle 343 (n/Z) ---
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
cz $128, $51;
cz $109, $104;
cz $61, $41;
cz $81, $114;
cz $7, $77;

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
cz $127, $32;
cz $65, $59;
cz $22, $89;
cz $103, $83;
cz $100, $104;

// --- Cycle 345 (n/Z) ---
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
cz $128, $119;
cz $61, $95;
cz $88, $18;
cz $51, $67;
cz $19, $75;

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
cz $127, $117;
cz $102, $2;
cz $99, $19;
cz $64, $117;
cz $58, $89;

// --- Cycle 347 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $30;
}
cz $126, $128;
cz $128, $25;
cz $31, $111;
cz $29, $30;
cz $121, $14;
cz $38, $0;

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
cz $127, $86;
cz $75, $47;
cz $39, $97;
cz $112, $83;
cz $42, $62;

// --- Cycle 349 (n/Z) ---
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
cz $128, $20;
cz $88, $91;
cz $92, $74;
cz $0, $38;
cz $115, $62;

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
