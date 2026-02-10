OPENQASM 3.0;
include "stdgates.inc";
bit[1] m;
bit[1] n;
bit[125] c;

// =ABLATION #1: Random Circuit Control (random_depth_100)=
// Qubits: 125, CZ: 3400, Feedback: 100, Seed: 42
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
cz $53, $98;
cz $7, $73;
cz $1, $82;
cz $66, $102;
cz $19, $88;
cz $17, $52;
cz $15, $89;
cz $9, $73;
cz $65, $119;
cz $6, $117;
cz $58, $63;
cz $66, $95;
cz $94, $118;
cz $43, $82;
cz $5, $108;
cz $48, $62;
cz $31, $109;
cz $2, $16;
cz $1, $122;
cz $6, $45;
cz $15, $52;
cz $16, $58;
cz $39, $84;
cz $49, $81;
cz $1, $95;
cz $45, $53;
cz $13, $108;
cz $63, $70;
cz $54, $113;
cz $61, $73;
cz $43, $79;
cz $31, $89;
cz $15, $66;
cz $34, $59;
cz $48, $52;
cz $19, $113;
cz $77, $86;
cz $89, $91;
cz $0, $54;
cz $69, $76;
cz $76, $104;
cz $10, $123;
cz $60, $110;
cz $31, $115;
cz $24, $112;
cz $19, $111;
cz $10, $89;
cz $15, $24;
cz $69, $114;
cz $24, $82;
cz $6, $115;
cz $6, $37;
cz $28, $47;
cz $6, $70;
cz $26, $68;
cz $84, $97;
cz $25, $43;
cz $49, $95;
cz $18, $106;
cz $76, $114;
cz $2, $111;
cz $64, $122;
cz $35, $54;
cz $42, $88;
cz $8, $67;
cz $104, $120;
cz $28, $35;
cz $5, $41;
cz $44, $57;
cz $21, $29;
cz $80, $115;
cz $52, $80;
cz $51, $69;
cz $92, $124;
cz $87, $100;
cz $26, $90;
cz $46, $107;
cz $13, $55;
cz $61, $99;
cz $4, $84;
cz $3, $10;
cz $56, $70;
cz $16, $19;
cz $71, $85;
cz $20, $101;
cz $5, $49;
cz $85, $122;
cz $16, $60;
cz $88, $103;
cz $6, $105;
cz $28, $48;
cz $19, $112;
cz $34, $94;
cz $53, $67;
cz $81, $111;
cz $26, $116;
cz $11, $35;
cz $27, $63;
cz $26, $38;
cz $14, $86;
cz $57, $76;
cz $19, $22;
cz $61, $77;
cz $112, $114;
cz $58, $119;
cz $54, $98;
cz $4, $99;
cz $50, $66;
cz $53, $61;
cz $11, $104;
cz $42, $71;
cz $64, $118;
cz $17, $51;
cz $11, $41;
cz $35, $77;
cz $28, $43;
cz $19, $46;
cz $106, $108;
cz $53, $102;
cz $59, $92;
cz $44, $97;
cz $15, $60;
cz $59, $63;
cz $23, $81;
cz $83, $99;
cz $70, $100;
cz $71, $109;
cz $3, $93;
cz $16, $29;
cz $79, $97;
cz $2, $18;
cz $76, $97;
cz $22, $110;
cz $30, $32;
cz $19, $28;
cz $4, $57;
cz $14, $98;
cz $101, $108;
cz $117, $120;
cz $45, $102;
cz $90, $115;
cz $63, $86;
cz $22, $103;
cz $14, $111;
cz $55, $90;
cz $38, $119;
cz $29, $81;
cz $92, $118;
cz $101, $119;
cz $54, $56;
cz $35, $49;
cz $9, $100;
cz $18, $109;
cz $17, $66;
cz $67, $73;
cz $45, $54;
cz $42, $111;
cz $18, $92;
cz $67, $90;
cz $47, $89;
cz $32, $70;
cz $96, $107;
cz $47, $81;
cz $29, $111;
cz $26, $93;
cz $15, $57;
cz $9, $63;
cz $39, $119;
cz $38, $72;
cz $6, $22;
cz $68, $106;
cz $3, $20;
cz $87, $95;
cz $7, $59;
cz $10, $68;
cz $52, $71;
cz $11, $13;
cz $74, $88;
cz $58, $94;
cz $31, $111;
cz $48, $110;
cz $4, $35;
cz $28, $87;
cz $28, $61;
cz $48, $106;
cz $36, $37;
cz $41, $112;
cz $17, $105;
cz $44, $67;
cz $87, $92;
cz $116, $123;
cz $0, $95;
cz $58, $92;
cz $63, $109;
cz $7, $99;
cz $58, $104;
cz $92, $119;
cz $42, $94;
cz $67, $122;
cz $19, $20;
cz $70, $102;
cz $53, $110;
cz $24, $111;
cz $7, $74;
cz $21, $32;
cz $32, $122;
cz $10, $111;
cz $34, $96;
cz $0, $27;
cz $63, $120;
cz $90, $110;
cz $63, $100;
cz $18, $97;
cz $39, $45;
cz $69, $101;
cz $12, $54;
cz $39, $103;
cz $101, $104;
cz $7, $32;
cz $89, $101;
cz $52, $53;
cz $21, $72;
cz $83, $89;
cz $53, $94;
cz $50, $64;
cz $13, $109;
cz $27, $94;
cz $69, $106;
cz $11, $26;
cz $42, $114;
cz $72, $79;
cz $104, $121;
cz $41, $122;
cz $103, $109;
cz $0, $5;
cz $49, $56;
cz $23, $80;
cz $37, $118;
cz $1, $37;
cz $7, $77;
cz $107, $122;
cz $26, $101;
cz $91, $101;
cz $81, $91;
cz $76, $112;
cz $22, $45;
cz $16, $114;
cz $3, $109;
cz $17, $19;
cz $91, $95;
cz $45, $103;
cz $5, $97;
cz $65, $81;
cz $37, $97;
cz $78, $94;
cz $4, $81;
cz $69, $90;
cz $42, $59;
cz $70, $79;
cz $8, $75;
cz $8, $96;
cz $56, $57;
cz $36, $96;
cz $43, $118;
cz $11, $55;
cz $18, $111;
cz $41, $100;
cz $89, $116;
cz $49, $119;
cz $31, $119;
cz $14, $105;
cz $107, $120;
cz $42, $113;
cz $68, $102;
cz $64, $124;
cz $59, $106;
cz $14, $17;
cz $62, $106;
cz $22, $79;
cz $29, $108;
cz $57, $88;
cz $27, $90;
cz $33, $58;
cz $96, $122;
cz $40, $100;
cz $34, $78;
cz $8, $36;
cz $17, $76;
cz $15, $101;
cz $4, $39;
cz $24, $94;
cz $1, $50;
cz $47, $120;
cz $44, $72;
cz $16, $38;
cz $47, $121;
cz $15, $65;
cz $0, $59;
cz $4, $96;
cz $62, $64;
cz $52, $100;
cz $3, $117;
cz $16, $28;
cz $4, $67;
cz $98, $117;
cz $2, $13;
cz $86, $120;
cz $24, $31;
cz $4, $95;
cz $40, $72;
cz $16, $102;
cz $19, $116;
cz $57, $66;
cz $37, $92;
cz $15, $16;
cz $9, $13;
cz $64, $70;
cz $111, $116;
cz $92, $99;
cz $46, $55;
cz $46, $98;
cz $36, $75;
cz $17, $36;
cz $73, $77;
cz $36, $77;
cz $76, $118;
cz $30, $80;
cz $13, $39;
cz $6, $50;
cz $6, $72;
cz $55, $119;
cz $32, $92;
cz $26, $30;
cz $31, $122;
cz $30, $113;
cz $35, $116;
cz $87, $117;
cz $64, $117;
cz $3, $78;
cz $57, $102;
cz $55, $74;
cz $54, $83;
cz $6, $84;
cz $4, $11;
cz $30, $44;
cz $64, $110;
cz $24, $104;
cz $75, $109;
cz $87, $99;
cz $7, $56;
cz $17, $82;
cz $13, $49;
cz $13, $38;
cz $42, $89;
cz $34, $55;
cz $9, $78;
cz $12, $94;
cz $35, $80;
cz $17, $92;
cz $90, $99;
cz $105, $109;
cz $5, $13;
cz $33, $100;
cz $76, $122;
cz $87, $97;
cz $86, $90;
cz $43, $123;
cz $6, $80;
cz $3, $49;
cz $55, $63;
cz $42, $124;
cz $82, $84;
cz $0, $121;
cz $6, $42;
cz $106, $116;

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

// Phase 4: 100 feedback cycles (~30 CZ/cycle, random pairs)
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
cz $108, $30;
cz $21, $52;
cz $62, $61;
cz $27, $110;

// --- Cycle 1 (n/Z) ---
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
cz $128, $51;
cz $7, $21;
cz $48, $0;
cz $49, $33;
cz $118, $100;

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
cz $127, $100;
cz $58, $36;
cz $54, $89;
cz $122, $93;
cz $100, $71;

// --- Cycle 3 (n/Z) ---
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
cz $128, $84;
cz $62, $19;
cz $24, $37;
cz $27, $123;
cz $7, $74;

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
cz $127, $94;
cz $69, $7;
cz $95, $40;
cz $7, $6;
cz $74, $61;

// --- Cycle 5 (n/Z) ---
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
cz $128, $64;
cz $109, $67;
cz $20, $7;
cz $122, $65;
cz $10, $108;

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
cz $127, $23;
cz $8, $76;
cz $8, $86;
cz $110, $30;
cz $51, $15;

// --- Cycle 7 (n/Z) ---
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
cz $128, $120;
cz $72, $31;
cz $74, $76;
cz $5, $79;
cz $10, $53;

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
cz $127, $84;
cz $74, $72;
cz $66, $40;
cz $119, $33;
cz $26, $85;

// --- Cycle 9 (n/Z) ---
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
cz $128, $91;
cz $30, $33;
cz $50, $16;
cz $85, $82;
cz $38, $58;

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
cz $127, $40;
cz $118, $96;
cz $119, $9;
cz $1, $58;
cz $79, $72;

// --- Cycle 11 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $9;
}
cz $126, $128;
cz $128, $12;
cz $68, $27;
cz $64, $33;
cz $16, $119;
cz $44, $112;

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
cz $127, $8;
cz $112, $31;
cz $47, $36;
cz $20, $56;
cz $106, $69;

// --- Cycle 13 (n/Z) ---
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
cz $128, $90;
cz $78, $103;
cz $83, $67;
cz $1, $85;
cz $104, $70;

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
cz $127, $38;
cz $119, $84;
cz $13, $120;
cz $112, $17;
cz $33, $14;

// --- Cycle 15 (n/Z) ---
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
cz $128, $113;
cz $95, $70;
cz $19, $34;
cz $36, $77;
cz $26, $91;

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
cz $127, $43;
cz $26, $87;
cz $81, $109;
cz $33, $64;
cz $62, $32;

// --- Cycle 17 (n/Z) ---
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
cz $128, $115;
cz $108, $6;
cz $11, $81;
cz $54, $106;
cz $35, $5;

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
cz $127, $0;
cz $42, $98;
cz $16, $81;
cz $33, $20;
cz $94, $56;

// --- Cycle 19 (n/Z) ---
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
cz $128, $70;
cz $54, $71;
cz $1, $14;
cz $9, $120;
cz $113, $88;

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
cz $127, $115;
cz $19, $69;
cz $4, $106;
cz $47, $74;
cz $70, $18;

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
cz $128, $55;
cz $5, $39;
cz $46, $115;
cz $119, $101;
cz $124, $110;

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
cz $127, $5;
cz $115, $45;
cz $26, $87;
cz $31, $85;
cz $13, $45;

// --- Cycle 23 (n/Z) ---
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
cz $128, $99;
cz $113, $111;
cz $52, $124;
cz $79, $95;
cz $19, $118;

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
cz $30, $110;
cz $20, $124;
cz $102, $103;
cz $22, $112;

// --- Cycle 25 (n/Z) ---
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
cz $128, $52;
cz $22, $94;
cz $118, $42;
cz $100, $119;
cz $52, $102;

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
cz $127, $85;
cz $110, $94;
cz $103, $31;
cz $34, $20;
cz $100, $89;

// --- Cycle 27 (n/Z) ---
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
cz $128, $13;
cz $111, $4;
cz $109, $60;
cz $28, $25;
cz $104, $117;

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
cz $127, $58;
cz $44, $39;
cz $105, $101;
cz $111, $29;
cz $28, $3;

// --- Cycle 29 (n/Z) ---
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
cz $128, $84;
cz $51, $42;
cz $35, $110;
cz $8, $123;
cz $98, $35;

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
cz $127, $44;
cz $82, $65;
cz $51, $86;
cz $107, $68;
cz $42, $120;

// --- Cycle 31 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $14;
}
cz $126, $128;
cz $128, $3;
cz $112, $124;
cz $33, $22;
cz $74, $123;
cz $33, $4;

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
cz $127, $13;
cz $76, $55;
cz $44, $93;
cz $100, $40;
cz $55, $77;

// --- Cycle 33 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $14;
}
cz $126, $128;
cz $128, $65;
cz $49, $115;
cz $73, $24;
cz $32, $5;
cz $90, $55;

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
cz $66, $118;
cz $103, $68;
cz $87, $92;
cz $120, $94;

// --- Cycle 35 (n/Z) ---
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
cz $128, $94;
cz $25, $46;
cz $55, $8;
cz $121, $85;
cz $117, $42;

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
cz $127, $79;
cz $40, $84;
cz $108, $15;
cz $92, $115;
cz $38, $64;

// --- Cycle 37 (n/Z) ---
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
cz $128, $39;
cz $52, $41;
cz $51, $89;
cz $37, $70;
cz $16, $24;

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
cz $127, $53;
cz $85, $120;
cz $48, $86;
cz $95, $115;
cz $22, $78;

// --- Cycle 39 (n/Z) ---
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
cz $128, $72;
cz $51, $70;
cz $106, $0;
cz $38, $36;
cz $26, $55;

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
cz $127, $100;
cz $74, $77;
cz $83, $41;
cz $59, $56;
cz $56, $86;

// --- Cycle 41 (n/Z) ---
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
cz $128, $27;
cz $60, $101;
cz $115, $122;
cz $101, $94;
cz $21, $84;

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
cz $127, $10;
cz $36, $65;
cz $84, $81;
cz $79, $42;
cz $11, $104;

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
cz $128, $121;
cz $30, $86;
cz $39, $28;
cz $103, $25;
cz $18, $3;

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
cz $127, $5;
cz $31, $60;
cz $78, $108;
cz $98, $9;
cz $58, $53;

// --- Cycle 45 (n/Z) ---
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
cz $128, $113;
cz $73, $24;
cz $91, $89;
cz $49, $63;
cz $51, $31;

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
cz $127, $18;
cz $83, $88;
cz $0, $114;
cz $96, $110;
cz $98, $113;

// --- Cycle 47 (n/Z) ---
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
cz $128, $13;
cz $54, $28;
cz $22, $102;
cz $122, $89;
cz $66, $59;

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
cz $127, $6;
cz $71, $31;
cz $117, $108;
cz $15, $58;
cz $17, $102;

// --- Cycle 49 (n/Z) ---
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
cz $128, $59;
cz $67, $71;
cz $76, $40;
cz $121, $96;
cz $114, $56;

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
cz $127, $78;
cz $104, $92;
cz $114, $64;
cz $54, $106;
cz $116, $70;

// --- Cycle 51 (n/Z) ---
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
cz $128, $57;
cz $20, $95;
cz $110, $60;
cz $57, $33;
cz $96, $31;

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
cz $127, $107;
cz $81, $35;
cz $98, $99;
cz $66, $62;
cz $80, $30;

// --- Cycle 53 (n/Z) ---
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
cz $128, $35;
cz $9, $91;
cz $36, $30;
cz $34, $42;
cz $40, $114;

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
cz $127, $69;
cz $10, $17;
cz $19, $29;
cz $49, $88;
cz $19, $90;

// --- Cycle 55 (n/Z) ---
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
cz $128, $27;
cz $53, $52;
cz $42, $69;
cz $59, $53;
cz $7, $26;

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
cz $127, $106;
cz $53, $49;
cz $115, $98;
cz $74, $121;
cz $89, $2;

// --- Cycle 57 (n/Z) ---
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
cz $128, $109;
cz $97, $73;
cz $48, $61;
cz $0, $120;
cz $45, $38;

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
cz $127, $96;
cz $49, $109;
cz $114, $122;
cz $106, $53;
cz $68, $95;

// --- Cycle 59 (n/Z) ---
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
cz $128, $94;
cz $102, $77;
cz $114, $28;
cz $62, $28;
cz $34, $55;

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
cz $127, $62;
cz $3, $49;
cz $43, $85;
cz $86, $102;
cz $51, $92;

// --- Cycle 61 (n/Z) ---
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
cz $128, $21;
cz $59, $117;
cz $16, $79;
cz $68, $3;
cz $116, $50;

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
cz $127, $75;
cz $72, $84;
cz $3, $10;
cz $82, $54;
cz $17, $110;

// --- Cycle 63 (n/Z) ---
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
cz $128, $59;
cz $6, $33;
cz $48, $41;
cz $27, $58;
cz $41, $43;

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
cz $127, $97;
cz $112, $48;
cz $35, $96;
cz $121, $106;
cz $53, $32;

// --- Cycle 65 (n/Z) ---
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
cz $128, $106;
cz $60, $2;
cz $95, $69;
cz $6, $121;
cz $44, $28;

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
cz $127, $83;
cz $8, $99;
cz $122, $83;
cz $5, $96;
cz $3, $121;

// --- Cycle 67 (n/Z) ---
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
cz $128, $31;
cz $107, $2;
cz $79, $19;
cz $30, $16;
cz $60, $85;

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
cz $127, $14;
cz $72, $121;
cz $27, $59;
cz $89, $32;
cz $98, $47;

// --- Cycle 69 (n/Z) ---
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
cz $128, $21;
cz $77, $123;
cz $95, $91;
cz $14, $99;
cz $104, $20;

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
cz $127, $123;
cz $39, $13;
cz $74, $3;
cz $118, $39;
cz $73, $86;

// --- Cycle 71 (n/Z) ---
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
cz $128, $116;
cz $48, $50;
cz $120, $91;
cz $25, $9;
cz $75, $88;

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
cz $127, $106;
cz $80, $31;
cz $13, $89;
cz $98, $38;
cz $108, $87;

// --- Cycle 73 (n/Z) ---
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
cz $128, $76;
cz $15, $101;
cz $72, $100;
cz $5, $44;
cz $68, $54;

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
cz $127, $84;
cz $47, $8;
cz $64, $82;
cz $43, $1;
cz $108, $53;

// --- Cycle 75 (n/Z) ---
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
cz $128, $105;
cz $13, $55;
cz $122, $46;
cz $81, $114;
cz $106, $58;

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
cz $127, $90;
cz $19, $55;
cz $22, $93;
cz $66, $123;
cz $83, $34;

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
cz $128, $78;
cz $117, $68;
cz $99, $61;
cz $59, $55;
cz $105, $93;

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
cz $127, $75;
cz $34, $41;
cz $109, $31;
cz $106, $119;
cz $11, $35;

// --- Cycle 79 (n/Z) ---
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
cz $128, $112;
cz $31, $96;
cz $59, $72;
cz $78, $85;
cz $48, $43;

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
cz $127, $3;
cz $63, $108;
cz $41, $23;
cz $62, $27;
cz $45, $102;

// --- Cycle 81 (n/Z) ---
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
cz $128, $33;
cz $35, $112;
cz $76, $89;
cz $112, $35;
cz $71, $1;

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
cz $127, $66;
cz $121, $24;
cz $10, $30;
cz $92, $52;
cz $62, $71;

// --- Cycle 83 (n/Z) ---
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
cz $128, $97;
cz $88, $60;
cz $82, $91;
cz $62, $57;
cz $101, $2;

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
cz $127, $11;
cz $37, $28;
cz $51, $88;
cz $31, $39;
cz $84, $74;

// --- Cycle 85 (n/Z) ---
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
cz $128, $47;
cz $70, $67;
cz $44, $54;
cz $95, $70;
cz $42, $45;

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
cz $127, $89;
cz $58, $34;
cz $39, $32;
cz $29, $15;
cz $92, $24;

// --- Cycle 87 (n/Z) ---
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
cz $128, $40;
cz $95, $68;
cz $121, $97;
cz $88, $23;
cz $24, $27;

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
cz $61, $35;
cz $92, $75;
cz $97, $67;
cz $76, $36;

// --- Cycle 89 (n/Z) ---
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
cz $128, $12;
cz $24, $37;
cz $29, $46;
cz $22, $38;
cz $1, $90;

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
cz $127, $68;
cz $16, $35;
cz $5, $124;
cz $6, $70;
cz $37, $89;

// --- Cycle 91 (n/Z) ---
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
cz $128, $120;
cz $81, $111;
cz $96, $62;
cz $13, $111;
cz $1, $73;

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
cz $127, $36;
cz $60, $61;
cz $56, $43;
cz $23, $123;
cz $6, $32;

// --- Cycle 93 (n/Z) ---
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
cz $128, $120;
cz $61, $14;
cz $105, $8;
cz $51, $62;
cz $9, $73;

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
cz $127, $80;
cz $87, $6;
cz $19, $103;
cz $72, $121;
cz $38, $10;

// --- Cycle 95 (n/Z) ---
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
cz $128, $31;
cz $71, $97;
cz $53, $77;
cz $76, $101;
cz $79, $28;

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
cz $127, $99;
cz $66, $48;
cz $57, $116;
cz $56, $38;
cz $110, $75;

// --- Cycle 97 (n/Z) ---
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
cz $128, $54;
cz $72, $79;
cz $7, $78;
cz $122, $94;
cz $12, $121;

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
cz $127, $97;
cz $26, $80;
cz $27, $33;
cz $84, $10;
cz $20, $30;

// --- Cycle 99 (n/Z) ---
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
cz $128, $22;
cz $9, $20;
cz $0, $52;
cz $57, $88;
cz $76, $60;

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
