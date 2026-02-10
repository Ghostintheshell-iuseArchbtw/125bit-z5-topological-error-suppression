OPENQASM 3.0;
include "stdgates.inc";
bit[1] m;
bit[1] n;
bit[125] c;

// =ABLATION #1: Random Circuit Control (random_depth_500)=
// Qubits: 125, CZ: 17000, Feedback: 500, Seed: 42
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

// Phase 4: 500 feedback cycles (~33 CZ/cycle, random pairs)
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
cz $127, $37;
cz $4, $29;
cz $36, $90;
cz $36, $89;
cz $110, $58;

// --- Cycle 101 (n/Z) ---
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
cz $128, $9;
cz $29, $118;
cz $33, $100;
cz $101, $80;
cz $75, $84;

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
cz $127, $102;
cz $119, $25;
cz $54, $14;
cz $69, $28;
cz $82, $19;

// --- Cycle 103 (n/Z) ---
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
cz $128, $116;
cz $105, $18;
cz $9, $7;
cz $21, $101;
cz $39, $76;

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
cz $127, $95;
cz $105, $72;
cz $117, $36;
cz $56, $15;
cz $59, $88;

// --- Cycle 105 (n/Z) ---
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
cz $128, $38;
cz $51, $120;
cz $34, $64;
cz $69, $63;
cz $56, $10;

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
cz $127, $76;
cz $5, $113;
cz $55, $94;
cz $41, $77;
cz $32, $3;

// --- Cycle 107 (n/Z) ---
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
cz $128, $11;
cz $123, $86;
cz $107, $110;
cz $73, $75;
cz $121, $2;

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
cz $127, $97;
cz $86, $105;
cz $34, $73;
cz $5, $97;
cz $96, $22;

// --- Cycle 109 (n/Z) ---
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
cz $128, $60;
cz $83, $56;
cz $117, $35;
cz $23, $74;
cz $55, $81;

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
cz $127, $104;
cz $62, $124;
cz $11, $60;
cz $44, $52;
cz $42, $41;

// --- Cycle 111 (n/Z) ---
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
cz $128, $85;
cz $109, $20;
cz $42, $52;
cz $88, $63;
cz $36, $84;

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
cz $127, $120;
cz $51, $104;
cz $97, $70;
cz $4, $58;
cz $11, $40;

// --- Cycle 113 (n/Z) ---
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
cz $128, $32;
cz $14, $124;
cz $98, $51;
cz $110, $65;
cz $105, $0;

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
cz $127, $84;
cz $111, $69;
cz $59, $52;
cz $6, $24;
cz $66, $46;

// --- Cycle 115 (n/Z) ---
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
cz $128, $79;
cz $63, $80;
cz $56, $97;
cz $6, $26;
cz $34, $70;

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
cz $127, $16;
cz $118, $36;
cz $56, $112;
cz $89, $62;
cz $15, $3;

// --- Cycle 117 (n/Z) ---
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
cz $128, $124;
cz $77, $102;
cz $30, $90;
cz $20, $39;
cz $70, $1;

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
cz $127, $70;
cz $52, $11;
cz $28, $107;
cz $116, $14;
cz $59, $121;

// --- Cycle 119 (n/Z) ---
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
cz $128, $15;
cz $106, $19;
cz $63, $119;
cz $91, $37;
cz $65, $90;

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
cz $127, $34;
cz $53, $106;
cz $61, $60;
cz $31, $58;
cz $70, $18;

// --- Cycle 121 (n/Z) ---
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
cz $128, $49;
cz $117, $76;
cz $65, $95;
cz $112, $17;
cz $110, $8;

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
cz $127, $35;
cz $98, $101;
cz $109, $53;
cz $43, $119;
cz $100, $64;

// --- Cycle 123 (n/Z) ---
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
cz $128, $34;
cz $0, $36;
cz $92, $38;
cz $107, $75;
cz $74, $84;

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
cz $110, $19;
cz $57, $68;
cz $61, $44;
cz $42, $70;

// --- Cycle 125 (n/Z) ---
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
cz $128, $97;
cz $48, $58;
cz $119, $41;
cz $111, $24;
cz $89, $30;

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
cz $127, $73;
cz $49, $29;
cz $109, $99;
cz $52, $5;
cz $40, $95;

// --- Cycle 127 (n/Z) ---
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
cz $128, $60;
cz $116, $103;
cz $48, $49;
cz $84, $101;
cz $105, $83;

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
cz $63, $123;
cz $4, $16;
cz $64, $123;
cz $75, $42;

// --- Cycle 129 (n/Z) ---
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
cz $128, $111;
cz $111, $108;
cz $56, $12;
cz $67, $116;
cz $58, $1;

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
cz $127, $92;
cz $18, $52;
cz $111, $83;
cz $124, $19;
cz $9, $60;

// --- Cycle 131 (n/Z) ---
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
cz $128, $100;
cz $33, $43;
cz $79, $88;
cz $50, $83;
cz $10, $109;

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
cz $127, $42;
cz $109, $86;
cz $109, $68;
cz $48, $122;
cz $40, $80;

// --- Cycle 133 (n/Z) ---
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
cz $128, $91;
cz $97, $62;
cz $111, $69;
cz $4, $79;
cz $8, $30;

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
cz $127, $80;
cz $87, $117;
cz $36, $29;
cz $95, $11;
cz $55, $12;

// --- Cycle 135 (n/Z) ---
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
cz $128, $97;
cz $90, $111;
cz $12, $56;
cz $21, $88;
cz $38, $115;

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
cz $127, $3;
cz $5, $41;
cz $101, $7;
cz $37, $45;
cz $47, $55;

// --- Cycle 137 (n/Z) ---
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
cz $128, $18;
cz $67, $52;
cz $72, $87;
cz $101, $23;
cz $21, $22;

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
cz $127, $10;
cz $78, $111;
cz $48, $79;
cz $87, $30;
cz $63, $116;

// --- Cycle 139 (n/Z) ---
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
cz $128, $74;
cz $29, $59;
cz $81, $32;
cz $58, $32;
cz $85, $1;

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
cz $127, $115;
cz $102, $59;
cz $115, $36;
cz $86, $69;
cz $20, $9;

// --- Cycle 141 (n/Z) ---
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
cz $128, $56;
cz $44, $75;
cz $38, $81;
cz $123, $54;
cz $88, $32;

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
cz $127, $58;
cz $108, $38;
cz $25, $49;
cz $109, $61;
cz $13, $30;

// --- Cycle 143 (n/Z) ---
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
cz $128, $48;
cz $45, $73;
cz $37, $89;
cz $37, $2;
cz $106, $84;

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
cz $127, $50;
cz $35, $1;
cz $72, $110;
cz $87, $99;
cz $95, $124;

// --- Cycle 145 (n/Z) ---
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
cz $128, $6;
cz $77, $95;
cz $63, $106;
cz $115, $36;
cz $99, $102;

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
cz $127, $29;
cz $77, $102;
cz $45, $28;
cz $81, $24;
cz $79, $32;

// --- Cycle 147 (n/Z) ---
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
cz $128, $86;
cz $92, $98;
cz $84, $87;
cz $107, $17;
cz $80, $12;

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
cz $127, $115;
cz $80, $82;
cz $5, $39;
cz $100, $56;
cz $4, $74;

// --- Cycle 149 (n/Z) ---
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
cz $128, $46;
cz $16, $11;
cz $116, $37;
cz $41, $95;
cz $53, $22;

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
cz $127, $25;
cz $16, $100;
cz $69, $112;
cz $124, $46;
cz $67, $64;

// --- Cycle 151 (n/Z) ---
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
cz $128, $116;
cz $106, $21;
cz $32, $116;
cz $105, $120;
cz $61, $123;

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
cz $127, $103;
cz $37, $95;
cz $111, $43;
cz $102, $14;
cz $59, $123;

// --- Cycle 153 (n/Z) ---
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
cz $128, $9;
cz $96, $123;
cz $28, $110;
cz $86, $92;
cz $86, $50;

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
cz $127, $123;
cz $108, $102;
cz $71, $46;
cz $11, $101;
cz $50, $1;

// --- Cycle 155 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $68;
}
cz $126, $128;
cz $128, $33;
cz $15, $58;
cz $47, $86;
cz $95, $86;
cz $33, $74;

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
cz $127, $48;
cz $105, $81;
cz $120, $47;
cz $13, $86;
cz $29, $60;

// --- Cycle 157 (n/Z) ---
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
cz $128, $3;
cz $113, $120;
cz $71, $41;
cz $117, $78;
cz $28, $82;

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
cz $127, $8;
cz $81, $105;
cz $59, $116;
cz $89, $38;
cz $83, $52;

// --- Cycle 159 (n/Z) ---
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
cz $128, $14;
cz $5, $121;
cz $4, $38;
cz $63, $14;
cz $12, $30;

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
cz $127, $113;
cz $68, $17;
cz $49, $58;
cz $47, $85;
cz $121, $95;

// --- Cycle 161 (n/Z) ---
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
cz $128, $89;
cz $69, $53;
cz $75, $95;
cz $93, $19;
cz $113, $53;

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
cz $127, $83;
cz $12, $106;
cz $62, $78;
cz $52, $120;
cz $121, $35;

// --- Cycle 163 (n/Z) ---
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
cz $128, $4;
cz $47, $27;
cz $56, $121;
cz $30, $109;
cz $46, $12;

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
cz $127, $87;
cz $47, $69;
cz $115, $82;
cz $45, $7;
cz $50, $35;

// --- Cycle 165 (n/Z) ---
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
cz $128, $24;
cz $15, $121;
cz $108, $105;
cz $58, $11;
cz $84, $27;

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
cz $127, $82;
cz $81, $76;
cz $124, $2;
cz $6, $100;
cz $42, $31;

// --- Cycle 167 (n/Z) ---
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
cz $128, $16;
cz $72, $26;
cz $8, $106;
cz $97, $70;
cz $26, $75;

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
cz $127, $27;
cz $104, $111;
cz $29, $42;
cz $99, $18;
cz $100, $115;

// --- Cycle 169 (n/Z) ---
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
cz $128, $76;
cz $35, $109;
cz $18, $16;
cz $69, $32;
cz $102, $22;

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
cz $127, $14;
cz $84, $110;
cz $3, $16;
cz $1, $45;
cz $101, $100;

// --- Cycle 171 (n/Z) ---
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
cz $128, $30;
cz $41, $2;
cz $22, $33;
cz $6, $16;
cz $94, $53;

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
cz $127, $67;
cz $14, $95;
cz $8, $60;
cz $57, $99;
cz $46, $65;

// --- Cycle 173 (n/Z) ---
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
cz $128, $75;
cz $57, $64;
cz $28, $121;
cz $78, $5;
cz $93, $100;

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
cz $127, $116;
cz $110, $84;
cz $66, $38;
cz $58, $82;
cz $123, $3;

// --- Cycle 175 (n/Z) ---
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
cz $128, $7;
cz $108, $51;
cz $54, $87;
cz $13, $62;
cz $91, $116;

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
cz $127, $56;
cz $9, $115;
cz $10, $41;
cz $77, $18;
cz $8, $16;

// --- Cycle 177 (n/Z) ---
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
cz $128, $35;
cz $81, $74;
cz $70, $91;
cz $41, $48;
cz $76, $67;

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
cz $127, $37;
cz $58, $64;
cz $77, $55;
cz $12, $101;
cz $89, $14;

// --- Cycle 179 (n/Z) ---
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
cz $128, $109;
cz $83, $112;
cz $98, $70;
cz $92, $110;
cz $27, $55;

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
cz $127, $57;
cz $113, $29;
cz $52, $43;
cz $105, $58;
cz $51, $53;

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
cz $128, $93;
cz $40, $54;
cz $40, $85;
cz $32, $47;
cz $122, $19;

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
cz $127, $87;
cz $118, $60;
cz $8, $11;
cz $106, $10;
cz $11, $55;

// --- Cycle 183 (n/Z) ---
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
cz $128, $12;
cz $94, $47;
cz $103, $16;
cz $71, $7;
cz $75, $122;

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
cz $127, $71;
cz $71, $42;
cz $85, $15;
cz $52, $45;
cz $111, $85;

// --- Cycle 185 (n/Z) ---
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
cz $128, $120;
cz $54, $111;
cz $117, $92;
cz $6, $123;
cz $36, $76;

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
cz $127, $39;
cz $45, $13;
cz $73, $64;
cz $27, $19;
cz $84, $61;

// --- Cycle 187 (n/Z) ---
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
cz $128, $28;
cz $13, $44;
cz $108, $71;
cz $47, $14;
cz $97, $35;

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
cz $127, $73;
cz $28, $103;
cz $54, $108;
cz $71, $124;
cz $98, $104;

// --- Cycle 189 (n/Z) ---
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
cz $128, $79;
cz $86, $82;
cz $71, $3;
cz $77, $118;
cz $84, $106;

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
cz $127, $88;
cz $34, $3;
cz $23, $34;
cz $89, $97;
cz $39, $117;

// --- Cycle 191 (n/Z) ---
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
cz $128, $43;
cz $0, $23;
cz $111, $18;
cz $72, $84;
cz $51, $8;

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
cz $127, $18;
cz $94, $81;
cz $124, $3;
cz $11, $95;
cz $67, $27;

// --- Cycle 193 (n/Z) ---
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
cz $128, $48;
cz $58, $43;
cz $20, $47;
cz $39, $92;
cz $41, $99;

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
cz $127, $120;
cz $72, $76;
cz $10, $113;
cz $6, $19;
cz $20, $96;

// --- Cycle 195 (n/Z) ---
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
cz $128, $79;
cz $86, $10;
cz $34, $56;
cz $84, $54;
cz $62, $77;

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
cz $127, $56;
cz $53, $34;
cz $27, $96;
cz $65, $14;
cz $44, $55;

// --- Cycle 197 (n/Z) ---
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
cz $128, $14;
cz $86, $75;
cz $62, $67;
cz $85, $39;
cz $5, $28;

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
cz $127, $50;
cz $76, $7;
cz $0, $26;
cz $38, $121;
cz $27, $98;

// --- Cycle 199 (n/Z) ---
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
cz $128, $17;
cz $32, $37;
cz $41, $15;
cz $0, $63;
cz $95, $55;

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
cz $127, $22;
cz $16, $48;
cz $68, $90;
cz $29, $64;
cz $71, $106;

// --- Cycle 201 (n/Z) ---
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
cz $128, $85;
cz $45, $9;
cz $50, $110;
cz $94, $5;
cz $55, $2;

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
cz $127, $58;
cz $117, $9;
cz $110, $40;
cz $73, $54;
cz $73, $51;

// --- Cycle 203 (n/Z) ---
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
cz $128, $90;
cz $53, $37;
cz $14, $51;
cz $2, $123;
cz $41, $21;

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
cz $127, $102;
cz $121, $79;
cz $58, $106;
cz $88, $117;
cz $46, $11;

// --- Cycle 205 (n/Z) ---
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
cz $128, $55;
cz $13, $31;
cz $55, $75;
cz $51, $67;
cz $10, $50;

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
cz $127, $111;
cz $39, $95;
cz $43, $28;
cz $42, $99;
cz $21, $9;

// --- Cycle 207 (n/Z) ---
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
cz $128, $65;
cz $14, $67;
cz $65, $24;
cz $115, $99;
cz $44, $93;

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
cz $127, $122;
cz $104, $82;
cz $104, $18;
cz $30, $13;
cz $18, $32;

// --- Cycle 209 (n/Z) ---
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
cz $128, $25;
cz $77, $19;
cz $97, $83;
cz $9, $22;
cz $121, $98;

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
cz $127, $80;
cz $63, $59;
cz $96, $72;
cz $97, $74;
cz $57, $87;

// --- Cycle 211 (n/Z) ---
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
cz $128, $118;
cz $72, $82;
cz $81, $79;
cz $41, $110;
cz $124, $80;

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
cz $127, $40;
cz $19, $56;
cz $8, $60;
cz $56, $80;
cz $38, $101;

// --- Cycle 213 (n/Z) ---
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
cz $128, $35;
cz $7, $45;
cz $64, $9;
cz $39, $59;
cz $57, $4;

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
cz $127, $7;
cz $47, $106;
cz $36, $9;
cz $82, $110;
cz $109, $11;

// --- Cycle 215 (n/Z) ---
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
cz $128, $78;
cz $64, $49;
cz $59, $74;
cz $70, $122;
cz $101, $94;

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
cz $127, $114;
cz $5, $57;
cz $116, $103;
cz $73, $83;
cz $24, $41;

// --- Cycle 217 (n/Z) ---
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
cz $128, $77;
cz $64, $19;
cz $122, $7;
cz $57, $13;
cz $103, $115;

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
cz $127, $107;
cz $43, $91;
cz $10, $64;
cz $82, $22;
cz $5, $31;

// --- Cycle 219 (n/Z) ---
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
cz $128, $90;
cz $56, $67;
cz $66, $78;
cz $20, $46;
cz $47, $117;

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
cz $127, $36;
cz $49, $52;
cz $99, $43;
cz $86, $76;
cz $6, $101;

// --- Cycle 221 (n/Z) ---
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
cz $128, $80;
cz $42, $8;
cz $42, $12;
cz $71, $86;
cz $49, $36;

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
cz $127, $32;
cz $92, $109;
cz $84, $123;
cz $116, $77;
cz $111, $19;

// --- Cycle 223 (n/Z) ---
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
cz $74, $84;
cz $18, $117;
cz $44, $39;
cz $123, $83;

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
cz $127, $89;
cz $84, $50;
cz $16, $76;
cz $90, $120;
cz $10, $39;

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
cz $128, $71;
cz $82, $101;
cz $42, $104;
cz $16, $85;
cz $89, $106;

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
cz $127, $121;
cz $94, $87;
cz $116, $67;
cz $11, $82;
cz $85, $54;

// --- Cycle 227 (n/Z) ---
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
cz $128, $65;
cz $2, $46;
cz $39, $23;
cz $121, $27;
cz $43, $121;

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
cz $127, $98;
cz $62, $24;
cz $28, $17;
cz $19, $9;
cz $37, $108;

// --- Cycle 229 (n/Z) ---
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
cz $128, $100;
cz $64, $98;
cz $69, $106;
cz $94, $113;
cz $67, $4;

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
cz $127, $84;
cz $43, $112;
cz $98, $79;
cz $16, $76;
cz $48, $19;

// --- Cycle 231 (n/Z) ---
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
cz $128, $20;
cz $106, $88;
cz $98, $79;
cz $103, $115;
cz $21, $92;

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
cz $127, $56;
cz $5, $52;
cz $46, $86;
cz $92, $30;
cz $124, $56;

// --- Cycle 233 (n/Z) ---
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
cz $128, $78;
cz $96, $95;
cz $100, $57;
cz $29, $68;
cz $30, $39;

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
cz $127, $123;
cz $103, $100;
cz $60, $115;
cz $106, $24;
cz $47, $86;

// --- Cycle 235 (n/Z) ---
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
cz $128, $121;
cz $56, $59;
cz $98, $36;
cz $99, $48;
cz $64, $67;

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
cz $127, $53;
cz $123, $20;
cz $104, $25;
cz $102, $77;
cz $17, $111;

// --- Cycle 237 (n/Z) ---
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
cz $128, $32;
cz $82, $61;
cz $111, $47;
cz $70, $119;
cz $13, $91;

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
cz $127, $108;
cz $66, $108;
cz $15, $36;
cz $10, $97;
cz $20, $34;

// --- Cycle 239 (n/Z) ---
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
cz $128, $57;
cz $65, $18;
cz $106, $55;
cz $11, $121;
cz $116, $28;

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
cz $127, $104;
cz $57, $113;
cz $44, $119;
cz $3, $53;
cz $6, $50;

// --- Cycle 241 (n/Z) ---
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
cz $128, $64;
cz $30, $49;
cz $10, $47;
cz $28, $3;
cz $40, $119;

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
cz $127, $12;
cz $107, $91;
cz $83, $42;
cz $101, $18;
cz $17, $4;

// --- Cycle 243 (n/Z) ---
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
cz $128, $36;
cz $106, $60;
cz $89, $106;
cz $17, $97;
cz $90, $60;

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
cz $127, $57;
cz $78, $0;
cz $115, $10;
cz $2, $32;
cz $27, $106;

// --- Cycle 245 (n/Z) ---
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
cz $128, $19;
cz $120, $93;
cz $77, $67;
cz $54, $14;
cz $99, $36;

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
cz $127, $30;
cz $38, $15;
cz $6, $30;
cz $53, $81;
cz $101, $79;

// --- Cycle 247 (n/Z) ---
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
cz $14, $107;
cz $115, $63;
cz $76, $68;
cz $2, $80;

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
cz $127, $65;
cz $73, $30;
cz $91, $18;
cz $37, $54;
cz $0, $78;

// --- Cycle 249 (n/Z) ---
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
cz $128, $45;
cz $73, $53;
cz $23, $85;
cz $85, $10;
cz $67, $124;

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
cz $127, $46;
cz $8, $122;
cz $67, $69;
cz $64, $100;
cz $64, $70;

// --- Cycle 251 (n/Z) ---
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
cz $128, $2;
cz $111, $60;
cz $5, $81;
cz $49, $47;
cz $32, $95;

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
cz $127, $2;
cz $45, $100;
cz $8, $44;
cz $30, $93;
cz $84, $80;

// --- Cycle 253 (n/Z) ---
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
cz $128, $13;
cz $74, $94;
cz $96, $42;
cz $17, $5;
cz $45, $69;

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
cz $127, $43;
cz $104, $82;
cz $22, $106;
cz $99, $87;
cz $59, $89;

// --- Cycle 255 (n/Z) ---
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
cz $128, $61;
cz $23, $103;
cz $17, $8;
cz $91, $99;
cz $120, $58;

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
cz $127, $4;
cz $37, $25;
cz $5, $101;
cz $25, $113;
cz $5, $40;

// --- Cycle 257 (n/Z) ---
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
cz $128, $119;
cz $65, $50;
cz $104, $69;
cz $60, $32;
cz $4, $96;

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
cz $127, $82;
cz $24, $36;
cz $45, $110;
cz $99, $6;
cz $110, $83;

// --- Cycle 259 (n/Z) ---
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
cz $128, $42;
cz $15, $102;
cz $47, $55;
cz $113, $51;
cz $95, $56;

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
cz $127, $114;
cz $122, $49;
cz $43, $124;
cz $23, $63;
cz $88, $63;

// --- Cycle 261 (n/Z) ---
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
cz $128, $47;
cz $102, $66;
cz $34, $102;
cz $10, $93;
cz $54, $10;

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
cz $127, $55;
cz $77, $105;
cz $23, $69;
cz $37, $41;
cz $13, $10;

// --- Cycle 263 (n/Z) ---
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
cz $128, $41;
cz $37, $39;
cz $57, $77;
cz $91, $54;
cz $21, $88;

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
cz $127, $56;
cz $44, $57;
cz $5, $93;
cz $111, $116;
cz $45, $78;

// --- Cycle 265 (n/Z) ---
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
cz $128, $55;
cz $81, $101;
cz $121, $7;
cz $9, $85;
cz $81, $51;

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
cz $127, $46;
cz $65, $102;
cz $95, $86;
cz $20, $121;
cz $3, $18;

// --- Cycle 267 (n/Z) ---
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
cz $128, $108;
cz $86, $100;
cz $56, $4;
cz $16, $8;
cz $30, $99;

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
cz $127, $82;
cz $46, $49;
cz $121, $72;
cz $4, $77;
cz $19, $86;

// --- Cycle 269 (n/Z) ---
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
cz $128, $57;
cz $47, $56;
cz $97, $9;
cz $73, $17;
cz $67, $46;

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
cz $127, $50;
cz $40, $83;
cz $35, $31;
cz $122, $14;
cz $3, $94;

// --- Cycle 271 (n/Z) ---
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
cz $128, $23;
cz $66, $49;
cz $116, $71;
cz $15, $33;
cz $99, $33;

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
cz $127, $90;
cz $57, $27;
cz $78, $36;
cz $88, $117;
cz $62, $25;

// --- Cycle 273 (n/Z) ---
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
cz $128, $15;
cz $109, $9;
cz $57, $22;
cz $115, $91;
cz $56, $11;

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
cz $127, $103;
cz $87, $123;
cz $108, $40;
cz $85, $44;
cz $90, $8;

// --- Cycle 275 (n/Z) ---
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
cz $128, $70;
cz $37, $114;
cz $38, $108;
cz $20, $91;
cz $90, $118;

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
cz $127, $89;
cz $81, $22;
cz $101, $46;
cz $65, $28;
cz $15, $25;

// --- Cycle 277 (n/Z) ---
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
cz $128, $101;
cz $30, $101;
cz $63, $3;
cz $46, $70;
cz $73, $47;

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
cz $127, $59;
cz $102, $70;
cz $16, $78;
cz $113, $11;
cz $8, $39;

// --- Cycle 279 (n/Z) ---
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
cz $128, $50;
cz $92, $61;
cz $67, $52;
cz $98, $52;
cz $105, $73;

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
cz $127, $9;
cz $16, $124;
cz $40, $82;
cz $9, $57;
cz $59, $87;

// --- Cycle 281 (n/Z) ---
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
cz $128, $66;
cz $16, $112;
cz $106, $99;
cz $70, $81;
cz $75, $23;

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
cz $127, $98;
cz $123, $16;
cz $55, $64;
cz $116, $111;
cz $7, $106;

// --- Cycle 283 (n/Z) ---
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
cz $128, $15;
cz $19, $38;
cz $21, $20;
cz $41, $119;
cz $90, $28;

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
cz $127, $44;
cz $121, $120;
cz $66, $114;
cz $36, $108;
cz $10, $32;

// --- Cycle 285 (n/Z) ---
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
cz $128, $25;
cz $122, $70;
cz $35, $16;
cz $80, $38;
cz $78, $68;

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
cz $127, $11;
cz $64, $82;
cz $21, $75;
cz $120, $74;
cz $19, $21;

// --- Cycle 287 (n/Z) ---
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
cz $128, $84;
cz $92, $115;
cz $77, $43;
cz $107, $118;
cz $72, $5;

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
cz $127, $105;
cz $110, $3;
cz $10, $5;
cz $121, $82;
cz $98, $73;

// --- Cycle 289 (n/Z) ---
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
cz $128, $33;
cz $26, $98;
cz $73, $53;
cz $79, $81;
cz $3, $63;

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
cz $127, $113;
cz $80, $69;
cz $37, $82;
cz $122, $38;
cz $61, $31;

// --- Cycle 291 (n/Z) ---
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
cz $128, $103;
cz $87, $51;
cz $38, $58;
cz $9, $88;
cz $7, $20;

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
cz $127, $56;
cz $53, $61;
cz $59, $26;
cz $43, $77;
cz $18, $40;

// --- Cycle 293 (n/Z) ---
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
cz $128, $110;
cz $40, $93;
cz $110, $44;
cz $124, $51;
cz $16, $97;

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
cz $127, $47;
cz $65, $71;
cz $13, $40;
cz $30, $59;
cz $15, $34;

// --- Cycle 295 (n/Z) ---
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
cz $128, $57;
cz $18, $12;
cz $6, $37;
cz $121, $49;
cz $110, $78;

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
cz $127, $53;
cz $31, $123;
cz $110, $115;
cz $20, $104;
cz $41, $119;

// --- Cycle 297 (n/Z) ---
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
cz $128, $73;
cz $40, $24;
cz $97, $20;
cz $63, $65;
cz $59, $63;

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
cz $127, $112;
cz $39, $63;
cz $2, $11;
cz $120, $50;
cz $64, $58;

// --- Cycle 299 (n/Z) ---
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
cz $128, $123;
cz $27, $74;
cz $45, $6;
cz $6, $36;
cz $63, $76;

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
cz $127, $112;
cz $107, $83;
cz $86, $60;
cz $36, $68;
cz $1, $108;

// --- Cycle 301 (n/Z) ---
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
cz $128, $13;
cz $17, $112;
cz $33, $93;
cz $46, $97;
cz $51, $46;

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
cz $127, $5;
cz $51, $6;
cz $72, $71;
cz $24, $46;
cz $70, $36;

// --- Cycle 303 (n/Z) ---
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
cz $128, $9;
cz $64, $57;
cz $97, $70;
cz $35, $105;
cz $79, $87;

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
cz $127, $78;
cz $15, $16;
cz $124, $12;
cz $50, $47;
cz $101, $43;

// --- Cycle 305 (n/Z) ---
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
cz $128, $71;
cz $46, $96;
cz $18, $25;
cz $77, $65;
cz $51, $64;

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
cz $127, $5;
cz $5, $4;
cz $17, $91;
cz $42, $102;
cz $60, $66;

// --- Cycle 307 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $19;
}
cz $126, $128;
cz $128, $58;
cz $77, $114;
cz $65, $17;
cz $41, $119;
cz $78, $40;

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
cz $127, $20;
cz $50, $78;
cz $94, $107;
cz $38, $75;
cz $43, $64;

// --- Cycle 309 (n/Z) ---
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
cz $128, $106;
cz $68, $62;
cz $90, $72;
cz $38, $60;
cz $104, $2;

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
cz $127, $47;
cz $42, $86;
cz $14, $53;
cz $74, $39;
cz $101, $115;

// --- Cycle 311 (n/Z) ---
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
cz $128, $92;
cz $88, $80;
cz $3, $76;
cz $60, $33;
cz $123, $83;

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
cz $127, $100;
cz $124, $99;
cz $74, $73;
cz $29, $92;
cz $6, $74;

// --- Cycle 313 (n/Z) ---
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
cz $128, $61;
cz $67, $80;
cz $92, $79;
cz $99, $107;
cz $48, $18;

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
cz $127, $105;
cz $87, $31;
cz $4, $73;
cz $121, $89;
cz $14, $24;

// --- Cycle 315 (n/Z) ---
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
cz $128, $2;
cz $40, $53;
cz $19, $52;
cz $88, $26;
cz $52, $64;

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
cz $127, $99;
cz $78, $117;
cz $60, $111;
cz $108, $94;
cz $93, $7;

// --- Cycle 317 (n/Z) ---
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
cz $128, $90;
cz $66, $26;
cz $71, $41;
cz $84, $61;
cz $67, $48;

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
cz $127, $40;
cz $122, $22;
cz $58, $116;
cz $68, $43;
cz $69, $45;

// --- Cycle 319 (n/Z) ---
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
cz $128, $86;
cz $111, $92;
cz $87, $82;
cz $102, $88;
cz $33, $78;

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
cz $127, $61;
cz $24, $122;
cz $31, $35;
cz $71, $38;
cz $28, $120;

// --- Cycle 321 (n/Z) ---
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
cz $128, $124;
cz $98, $36;
cz $90, $26;
cz $88, $90;
cz $62, $40;

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
cz $127, $61;
cz $44, $71;
cz $119, $101;
cz $92, $35;
cz $36, $15;

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
cz $128, $73;
cz $69, $48;
cz $114, $50;
cz $104, $44;
cz $122, $98;

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
cz $127, $102;
cz $18, $37;
cz $5, $36;
cz $122, $91;
cz $10, $44;

// --- Cycle 325 (n/Z) ---
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
cz $128, $118;
cz $83, $32;
cz $95, $61;
cz $27, $25;
cz $105, $68;

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
cz $127, $34;
cz $119, $71;
cz $89, $34;
cz $17, $13;
cz $78, $94;

// --- Cycle 327 (n/Z) ---
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
cz $128, $75;
cz $31, $6;
cz $85, $115;
cz $67, $28;
cz $81, $29;

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
cz $127, $6;
cz $12, $52;
cz $42, $91;
cz $60, $12;
cz $87, $98;

// --- Cycle 329 (n/Z) ---
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
cz $128, $17;
cz $123, $70;
cz $118, $20;
cz $52, $83;
cz $119, $112;

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
cz $127, $112;
cz $60, $61;
cz $83, $25;
cz $96, $123;
cz $36, $41;

// --- Cycle 331 (n/Z) ---
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
cz $128, $36;
cz $7, $116;
cz $98, $11;
cz $83, $73;
cz $29, $68;

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
cz $127, $94;
cz $92, $108;
cz $119, $4;
cz $116, $117;
cz $22, $53;

// --- Cycle 333 (n/Z) ---
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
cz $128, $112;
cz $22, $119;
cz $117, $4;
cz $107, $50;
cz $100, $63;

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
cz $127, $23;
cz $119, $95;
cz $123, $111;
cz $118, $37;
cz $112, $4;

// --- Cycle 335 (n/Z) ---
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
cz $128, $1;
cz $72, $77;
cz $13, $118;
cz $42, $36;
cz $58, $82;

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
cz $127, $69;
cz $67, $63;
cz $113, $120;
cz $17, $108;
cz $64, $59;

// --- Cycle 337 (n/Z) ---
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
cz $128, $34;
cz $103, $14;
cz $42, $20;
cz $93, $58;
cz $82, $32;

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
cz $127, $91;
cz $23, $1;
cz $94, $43;
cz $101, $37;
cz $72, $86;

// --- Cycle 339 (n/Z) ---
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
cz $128, $96;
cz $22, $78;
cz $109, $81;
cz $114, $51;
cz $105, $54;

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
cz $127, $65;
cz $41, $11;
cz $51, $85;
cz $12, $23;
cz $17, $61;

// --- Cycle 341 (n/Z) ---
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
cz $128, $41;
cz $31, $0;
cz $33, $49;
cz $30, $57;
cz $96, $34;

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
cz $127, $122;
cz $42, $38;
cz $74, $92;
cz $73, $1;
cz $33, $83;

// --- Cycle 343 (n/Z) ---
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
cz $128, $46;
cz $30, $7;
cz $85, $15;
cz $59, $39;
cz $20, $51;

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
cz $127, $87;
cz $64, $118;
cz $114, $113;
cz $90, $98;
cz $39, $88;

// --- Cycle 345 (n/Z) ---
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
cz $128, $15;
cz $117, $120;
cz $37, $47;
cz $78, $28;
cz $28, $122;

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
cz $127, $17;
cz $61, $19;
cz $58, $95;
cz $77, $47;
cz $53, $89;

// --- Cycle 347 (n/Z) ---
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
cz $128, $70;
cz $60, $96;
cz $68, $102;
cz $85, $105;
cz $27, $97;

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
cz $127, $31;
cz $87, $96;
cz $76, $111;
cz $100, $10;
cz $67, $57;

// --- Cycle 349 (n/Z) ---
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
cz $128, $67;
cz $46, $9;
cz $117, $72;
cz $14, $7;
cz $106, $70;

// --- Cycle 350 (m/X) ---
m[0] = measure $125;
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
cz $64, $25;
cz $73, $68;
cz $19, $21;
cz $41, $109;

// --- Cycle 351 (n/Z) ---
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
cz $128, $66;
cz $14, $87;
cz $26, $91;
cz $74, $62;
cz $11, $115;

// --- Cycle 352 (m/X) ---
m[0] = measure $125;
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
cz $57, $103;
cz $7, $58;
cz $16, $65;
cz $53, $58;

// --- Cycle 353 (n/Z) ---
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
cz $128, $72;
cz $71, $59;
cz $86, $103;
cz $39, $92;
cz $2, $50;

// --- Cycle 354 (m/X) ---
m[0] = measure $125;
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
cz $104, $0;
cz $95, $27;
cz $74, $9;
cz $5, $54;

// --- Cycle 355 (n/Z) ---
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
cz $128, $44;
cz $8, $69;
cz $7, $119;
cz $114, $8;
cz $119, $60;

// --- Cycle 356 (m/X) ---
m[0] = measure $125;
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
cz $36, $52;
cz $23, $98;
cz $17, $98;
cz $82, $93;

// --- Cycle 357 (n/Z) ---
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
cz $128, $82;
cz $53, $47;
cz $114, $48;
cz $57, $111;
cz $117, $116;

// --- Cycle 358 (m/X) ---
m[0] = measure $125;
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
cz $48, $10;
cz $87, $123;
cz $84, $111;
cz $69, $17;

// --- Cycle 359 (n/Z) ---
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
cz $128, $83;
cz $44, $15;
cz $22, $68;
cz $50, $67;
cz $16, $93;

// --- Cycle 360 (m/X) ---
m[0] = measure $125;
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
cz $106, $0;
cz $96, $2;
cz $38, $59;
cz $86, $92;

// --- Cycle 361 (n/Z) ---
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
cz $128, $69;
cz $68, $48;
cz $105, $29;
cz $31, $58;
cz $44, $19;

// --- Cycle 362 (m/X) ---
m[0] = measure $125;
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
cz $24, $119;
cz $112, $92;
cz $97, $14;
cz $4, $103;

// --- Cycle 363 (n/Z) ---
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
cz $128, $84;
cz $78, $98;
cz $119, $113;
cz $113, $2;
cz $30, $26;

// --- Cycle 364 (m/X) ---
m[0] = measure $125;
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
cz $12, $76;
cz $4, $57;
cz $76, $86;
cz $90, $111;

// --- Cycle 365 (n/Z) ---
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
cz $94, $5;
cz $51, $56;
cz $29, $69;
cz $27, $96;

// --- Cycle 366 (m/X) ---
m[0] = measure $125;
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
cz $99, $7;
cz $17, $64;
cz $37, $29;
cz $104, $117;

// --- Cycle 367 (n/Z) ---
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
cz $128, $93;
cz $40, $73;
cz $76, $98;
cz $86, $104;
cz $41, $30;

// --- Cycle 368 (m/X) ---
m[0] = measure $125;
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
cz $112, $18;
cz $84, $66;
cz $28, $52;
cz $38, $35;

// --- Cycle 369 (n/Z) ---
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
cz $128, $7;
cz $121, $75;
cz $112, $94;
cz $116, $22;
cz $80, $86;

// --- Cycle 370 (m/X) ---
m[0] = measure $125;
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
cz $71, $63;
cz $6, $124;
cz $44, $120;
cz $82, $85;

// --- Cycle 371 (n/Z) ---
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
cz $128, $48;
cz $67, $40;
cz $89, $53;
cz $52, $19;
cz $38, $48;

// --- Cycle 372 (m/X) ---
m[0] = measure $125;
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
cz $96, $68;
cz $60, $30;
cz $108, $28;
cz $38, $109;

// --- Cycle 373 (n/Z) ---
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
cz $128, $90;
cz $103, $59;
cz $117, $7;
cz $71, $52;
cz $123, $53;

// --- Cycle 374 (m/X) ---
m[0] = measure $125;
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
cz $67, $17;
cz $49, $31;
cz $32, $26;
cz $42, $82;

// --- Cycle 375 (n/Z) ---
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
cz $128, $10;
cz $57, $108;
cz $47, $11;
cz $68, $92;
cz $106, $24;

// --- Cycle 376 (m/X) ---
m[0] = measure $125;
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
cz $34, $48;
cz $86, $77;
cz $77, $5;
cz $111, $9;

// --- Cycle 377 (n/Z) ---
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
cz $128, $24;
cz $97, $75;
cz $92, $85;
cz $71, $27;
cz $61, $26;

// --- Cycle 378 (m/X) ---
m[0] = measure $125;
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
cz $116, $42;
cz $38, $122;
cz $116, $1;
cz $27, $119;

// --- Cycle 379 (n/Z) ---
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
cz $128, $24;
cz $94, $15;
cz $95, $96;
cz $61, $117;
cz $31, $89;

// --- Cycle 380 (m/X) ---
m[0] = measure $125;
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
cz $90, $26;
cz $50, $117;
cz $30, $70;
cz $41, $99;

// --- Cycle 381 (n/Z) ---
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
cz $59, $68;
cz $83, $45;
cz $39, $33;
cz $46, $65;

// --- Cycle 382 (m/X) ---
m[0] = measure $125;
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
cz $63, $59;
cz $12, $102;
cz $92, $60;
cz $97, $107;

// --- Cycle 383 (n/Z) ---
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
cz $128, $40;
cz $26, $47;
cz $40, $52;
cz $5, $72;
cz $110, $28;

// --- Cycle 384 (m/X) ---
m[0] = measure $125;
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
cz $18, $2;
cz $33, $70;
cz $119, $74;
cz $74, $92;

// --- Cycle 385 (n/Z) ---
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
cz $128, $53;
cz $19, $25;
cz $42, $29;
cz $48, $72;
cz $106, $31;

// --- Cycle 386 (m/X) ---
m[0] = measure $125;
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
cz $70, $83;
cz $120, $87;
cz $43, $32;
cz $97, $105;

// --- Cycle 387 (n/Z) ---
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
cz $128, $62;
cz $92, $82;
cz $94, $62;
cz $58, $21;
cz $93, $101;

// --- Cycle 388 (m/X) ---
m[0] = measure $125;
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
cz $21, $17;
cz $92, $69;
cz $62, $23;
cz $117, $113;

// --- Cycle 389 (n/Z) ---
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
cz $128, $69;
cz $122, $7;
cz $67, $4;
cz $107, $108;
cz $9, $120;

// --- Cycle 390 (m/X) ---
m[0] = measure $125;
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
cz $85, $6;
cz $97, $0;
cz $52, $17;
cz $107, $80;

// --- Cycle 391 (n/Z) ---
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
cz $128, $29;
cz $90, $19;
cz $1, $27;
cz $64, $58;
cz $47, $7;

// --- Cycle 392 (m/X) ---
m[0] = measure $125;
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
cz $81, $85;
cz $119, $78;
cz $116, $61;
cz $84, $62;

// --- Cycle 393 (n/Z) ---
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
cz $128, $2;
cz $68, $70;
cz $52, $1;
cz $2, $67;
cz $92, $35;

// --- Cycle 394 (m/X) ---
m[0] = measure $125;
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
cz $36, $2;
cz $64, $104;
cz $89, $86;
cz $55, $103;

// --- Cycle 395 (n/Z) ---
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
cz $128, $120;
cz $22, $13;
cz $117, $12;
cz $67, $19;
cz $30, $24;

// --- Cycle 396 (m/X) ---
m[0] = measure $125;
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
cz $67, $32;
cz $104, $45;
cz $34, $101;
cz $50, $10;

// --- Cycle 397 (n/Z) ---
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
cz $128, $47;
cz $51, $58;
cz $72, $31;
cz $89, $28;
cz $38, $87;

// --- Cycle 398 (m/X) ---
m[0] = measure $125;
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
cz $108, $10;
cz $83, $109;
cz $83, $97;
cz $4, $11;

// --- Cycle 399 (n/Z) ---
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
cz $128, $51;
cz $48, $70;
cz $60, $7;
cz $81, $1;
cz $89, $21;

// --- Cycle 400 (m/X) ---
m[0] = measure $125;
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
cz $63, $108;
cz $55, $82;
cz $100, $42;
cz $72, $109;

// --- Cycle 401 (n/Z) ---
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
cz $128, $124;
cz $114, $67;
cz $117, $5;
cz $29, $27;
cz $115, $111;

// --- Cycle 402 (m/X) ---
m[0] = measure $125;
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
cz $113, $72;
cz $60, $34;
cz $5, $118;
cz $9, $87;

// --- Cycle 403 (n/Z) ---
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
cz $128, $118;
cz $115, $69;
cz $72, $84;
cz $4, $22;
cz $118, $108;

// --- Cycle 404 (m/X) ---
m[0] = measure $125;
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
cz $2, $123;
cz $26, $75;
cz $18, $96;
cz $105, $91;

// --- Cycle 405 (n/Z) ---
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
cz $128, $105;
cz $118, $9;
cz $38, $20;
cz $72, $30;
cz $72, $106;

// --- Cycle 406 (m/X) ---
m[0] = measure $125;
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
cz $49, $86;
cz $114, $69;
cz $42, $49;
cz $96, $94;

// --- Cycle 407 (n/Z) ---
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
cz $128, $17;
cz $88, $92;
cz $10, $64;
cz $95, $124;
cz $44, $6;

// --- Cycle 408 (m/X) ---
m[0] = measure $125;
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
cz $55, $29;
cz $107, $9;
cz $43, $77;
cz $98, $78;

// --- Cycle 409 (n/Z) ---
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
cz $128, $122;
cz $50, $124;
cz $99, $41;
cz $3, $81;
cz $34, $100;

// --- Cycle 410 (m/X) ---
m[0] = measure $125;
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
cz $62, $29;
cz $45, $70;
cz $120, $48;
cz $55, $23;

// --- Cycle 411 (n/Z) ---
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
cz $128, $87;
cz $84, $48;
cz $10, $98;
cz $79, $37;
cz $102, $31;

// --- Cycle 412 (m/X) ---
m[0] = measure $125;
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
cz $9, $10;
cz $34, $19;
cz $48, $91;
cz $100, $81;

// --- Cycle 413 (n/Z) ---
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
cz $128, $19;
cz $49, $40;
cz $46, $13;
cz $11, $0;
cz $120, $39;

// --- Cycle 414 (m/X) ---
m[0] = measure $125;
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
cz $46, $97;
cz $34, $13;
cz $16, $11;
cz $23, $55;

// --- Cycle 415 (n/Z) ---
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
cz $128, $57;
cz $71, $65;
cz $52, $13;
cz $3, $11;
cz $45, $70;

// --- Cycle 416 (m/X) ---
m[0] = measure $125;
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
cz $76, $100;
cz $41, $110;
cz $49, $1;
cz $37, $52;

// --- Cycle 417 (n/Z) ---
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
cz $128, $49;
cz $10, $92;
cz $115, $71;
cz $115, $31;
cz $73, $66;

// --- Cycle 418 (m/X) ---
m[0] = measure $125;
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
cz $87, $48;
cz $21, $17;
cz $34, $38;
cz $34, $63;

// --- Cycle 419 (n/Z) ---
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
cz $128, $18;
cz $21, $55;
cz $35, $53;
cz $38, $61;
cz $100, $9;

// --- Cycle 420 (m/X) ---
m[0] = measure $125;
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
cz $32, $120;
cz $31, $92;
cz $80, $63;
cz $76, $78;

// --- Cycle 421 (n/Z) ---
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
cz $128, $25;
cz $13, $17;
cz $38, $0;
cz $121, $50;
cz $42, $107;

// --- Cycle 422 (m/X) ---
m[0] = measure $125;
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
cz $48, $102;
cz $110, $42;
cz $56, $42;
cz $55, $104;

// --- Cycle 423 (n/Z) ---
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
cz $128, $105;
cz $83, $124;
cz $76, $17;
cz $38, $41;
cz $77, $121;

// --- Cycle 424 (m/X) ---
m[0] = measure $125;
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
cz $25, $61;
cz $40, $22;
cz $123, $50;
cz $123, $40;

// --- Cycle 425 (n/Z) ---
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
cz $128, $37;
cz $88, $81;
cz $62, $123;
cz $73, $100;
cz $31, $41;

// --- Cycle 426 (m/X) ---
m[0] = measure $125;
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
cz $35, $104;
cz $100, $50;
cz $46, $14;
cz $119, $72;

// --- Cycle 427 (n/Z) ---
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
cz $128, $25;
cz $69, $23;
cz $87, $98;
cz $70, $3;
cz $121, $93;

// --- Cycle 428 (m/X) ---
m[0] = measure $125;
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
cz $120, $90;
cz $26, $56;
cz $102, $37;
cz $106, $88;

// --- Cycle 429 (n/Z) ---
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
cz $128, $8;
cz $108, $101;
cz $101, $52;
cz $86, $63;
cz $17, $81;

// --- Cycle 430 (m/X) ---
m[0] = measure $125;
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
cz $30, $32;
cz $84, $19;
cz $91, $54;
cz $101, $48;

// --- Cycle 431 (n/Z) ---
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
cz $128, $9;
cz $76, $61;
cz $74, $51;
cz $68, $64;
cz $118, $117;

// --- Cycle 432 (m/X) ---
m[0] = measure $125;
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
cz $88, $53;
cz $69, $4;
cz $101, $123;
cz $46, $89;

// --- Cycle 433 (n/Z) ---
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
cz $128, $114;
cz $68, $76;
cz $81, $117;
cz $10, $13;
cz $98, $31;

// --- Cycle 434 (m/X) ---
m[0] = measure $125;
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
cz $85, $45;
cz $21, $82;
cz $78, $5;
cz $72, $82;

// --- Cycle 435 (n/Z) ---
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
cz $128, $86;
cz $51, $123;
cz $96, $42;
cz $123, $101;
cz $55, $13;

// --- Cycle 436 (m/X) ---
m[0] = measure $125;
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
cz $12, $33;
cz $28, $65;
cz $95, $66;
cz $71, $74;

// --- Cycle 437 (n/Z) ---
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
cz $128, $88;
cz $28, $57;
cz $47, $50;
cz $59, $98;
cz $86, $75;

// --- Cycle 438 (m/X) ---
m[0] = measure $125;
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
cz $64, $19;
cz $44, $3;
cz $61, $13;
cz $37, $53;

// --- Cycle 439 (n/Z) ---
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
cz $128, $117;
cz $10, $14;
cz $106, $120;
cz $93, $18;
cz $44, $39;

// --- Cycle 440 (m/X) ---
m[0] = measure $125;
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
cz $58, $100;
cz $26, $66;
cz $61, $44;
cz $60, $12;

// --- Cycle 441 (n/Z) ---
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
cz $128, $56;
cz $89, $57;
cz $40, $8;
cz $38, $5;
cz $103, $90;

// --- Cycle 442 (m/X) ---
m[0] = measure $125;
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
cz $2, $108;
cz $43, $82;
cz $13, $86;
cz $102, $21;

// --- Cycle 443 (n/Z) ---
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
cz $128, $119;
cz $31, $66;
cz $22, $70;
cz $20, $42;
cz $71, $54;

// --- Cycle 444 (m/X) ---
m[0] = measure $125;
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
cz $59, $29;
cz $102, $51;
cz $80, $23;
cz $23, $81;

// --- Cycle 445 (n/Z) ---
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
cz $128, $84;
cz $50, $3;
cz $94, $78;
cz $113, $25;
cz $57, $75;

// --- Cycle 446 (m/X) ---
m[0] = measure $125;
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
cz $49, $0;
cz $90, $27;
cz $26, $35;
cz $96, $90;

// --- Cycle 447 (n/Z) ---
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
cz $128, $103;
cz $8, $73;
cz $13, $102;
cz $111, $68;
cz $23, $46;

// --- Cycle 448 (m/X) ---
m[0] = measure $125;
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
cz $25, $58;
cz $14, $33;
cz $85, $110;
cz $62, $67;

// --- Cycle 449 (n/Z) ---
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
cz $128, $123;
cz $40, $76;
cz $49, $78;
cz $50, $75;
cz $14, $44;

// --- Cycle 450 (m/X) ---
m[0] = measure $125;
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
cz $108, $58;
cz $79, $22;
cz $104, $86;
cz $90, $102;

// --- Cycle 451 (n/Z) ---
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
cz $78, $75;
cz $10, $86;
cz $17, $40;
cz $15, $30;

// --- Cycle 452 (m/X) ---
m[0] = measure $125;
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
cz $14, $23;
cz $47, $88;
cz $18, $65;
cz $49, $53;

// --- Cycle 453 (n/Z) ---
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
cz $128, $76;
cz $73, $49;
cz $54, $23;
cz $62, $81;
cz $68, $88;

// --- Cycle 454 (m/X) ---
m[0] = measure $125;
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
cz $82, $119;
cz $22, $71;
cz $21, $62;
cz $36, $17;

// --- Cycle 455 (n/Z) ---
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
cz $128, $23;
cz $107, $57;
cz $79, $6;
cz $110, $45;
cz $121, $1;

// --- Cycle 456 (m/X) ---
m[0] = measure $125;
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
cz $17, $24;
cz $104, $49;
cz $123, $71;
cz $64, $83;

// --- Cycle 457 (n/Z) ---
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
cz $128, $63;
cz $87, $62;
cz $53, $90;
cz $107, $56;
cz $62, $21;

// --- Cycle 458 (m/X) ---
m[0] = measure $125;
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
cz $72, $3;
cz $101, $97;
cz $28, $37;
cz $4, $35;

// --- Cycle 459 (n/Z) ---
n[0] = measure $126;
reset $126;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
if (n[0] == true) {
  rz(pi) $68;
}
cz $126, $128;
cz $128, $28;
cz $36, $21;
cz $99, $58;
cz $72, $95;
cz $98, $63;

// --- Cycle 460 (m/X) ---
m[0] = measure $125;
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
cz $65, $14;
cz $73, $14;
cz $34, $99;
cz $69, $105;

// --- Cycle 461 (n/Z) ---
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
cz $128, $46;
cz $105, $96;
cz $5, $97;
cz $92, $56;
cz $69, $27;

// --- Cycle 462 (m/X) ---
m[0] = measure $125;
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
cz $13, $94;
cz $106, $83;
cz $96, $31;
cz $38, $111;

// --- Cycle 463 (n/Z) ---
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
cz $128, $4;
cz $33, $44;
cz $110, $104;
cz $11, $56;
cz $110, $15;

// --- Cycle 464 (m/X) ---
m[0] = measure $125;
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
cz $103, $30;
cz $26, $103;
cz $94, $75;
cz $88, $44;

// --- Cycle 465 (n/Z) ---
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
cz $128, $110;
cz $78, $80;
cz $54, $21;
cz $78, $17;
cz $100, $26;

// --- Cycle 466 (m/X) ---
m[0] = measure $125;
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
cz $26, $103;
cz $7, $72;
cz $44, $68;
cz $35, $76;

// --- Cycle 467 (n/Z) ---
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
cz $128, $68;
cz $41, $90;
cz $37, $73;
cz $34, $121;
cz $109, $65;

// --- Cycle 468 (m/X) ---
m[0] = measure $125;
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
cz $86, $104;
cz $12, $17;
cz $123, $96;
cz $100, $52;

// --- Cycle 469 (n/Z) ---
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
cz $128, $117;
cz $35, $110;
cz $83, $16;
cz $89, $110;
cz $16, $31;

// --- Cycle 470 (m/X) ---
m[0] = measure $125;
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
cz $91, $41;
cz $106, $31;
cz $97, $107;
cz $86, $50;

// --- Cycle 471 (n/Z) ---
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
cz $128, $62;
cz $73, $80;
cz $34, $80;
cz $53, $48;
cz $57, $9;

// --- Cycle 472 (m/X) ---
m[0] = measure $125;
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
cz $101, $112;
cz $98, $11;
cz $51, $65;
cz $95, $35;

// --- Cycle 473 (n/Z) ---
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
cz $128, $88;
cz $112, $47;
cz $58, $121;
cz $62, $41;
cz $74, $0;

// --- Cycle 474 (m/X) ---
m[0] = measure $125;
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
cz $99, $108;
cz $93, $11;
cz $93, $124;
cz $58, $81;

// --- Cycle 475 (n/Z) ---
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
cz $128, $85;
cz $45, $108;
cz $8, $101;
cz $68, $50;
cz $27, $123;

// --- Cycle 476 (m/X) ---
m[0] = measure $125;
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
cz $105, $27;
cz $63, $34;
cz $41, $106;
cz $36, $43;

// --- Cycle 477 (n/Z) ---
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
cz $128, $70;
cz $16, $72;
cz $109, $62;
cz $100, $43;
cz $114, $87;

// --- Cycle 478 (m/X) ---
m[0] = measure $125;
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
cz $6, $5;
cz $12, $80;
cz $100, $107;
cz $58, $2;

// --- Cycle 479 (n/Z) ---
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
cz $128, $15;
cz $109, $20;
cz $56, $58;
cz $0, $122;
cz $54, $25;

// --- Cycle 480 (m/X) ---
m[0] = measure $125;
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
cz $116, $16;
cz $112, $83;
cz $38, $20;
cz $111, $119;

// --- Cycle 481 (n/Z) ---
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
cz $128, $112;
cz $11, $83;
cz $46, $32;
cz $10, $47;
cz $85, $115;

// --- Cycle 482 (m/X) ---
m[0] = measure $125;
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
cz $21, $6;
cz $50, $80;
cz $39, $92;
cz $89, $96;

// --- Cycle 483 (n/Z) ---
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
cz $128, $29;
cz $83, $11;
cz $90, $12;
cz $0, $27;
cz $61, $9;

// --- Cycle 484 (m/X) ---
m[0] = measure $125;
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
cz $75, $28;
cz $66, $87;
cz $56, $1;
cz $1, $89;

// --- Cycle 485 (n/Z) ---
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
cz $128, $43;
cz $15, $110;
cz $54, $88;
cz $16, $61;
cz $9, $29;

// --- Cycle 486 (m/X) ---
m[0] = measure $125;
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
cz $11, $93;
cz $103, $13;
cz $13, $40;
cz $47, $112;

// --- Cycle 487 (n/Z) ---
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
cz $128, $38;
cz $48, $99;
cz $104, $96;
cz $111, $17;
cz $82, $86;

// --- Cycle 488 (m/X) ---
m[0] = measure $125;
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
cz $8, $67;
cz $72, $1;
cz $78, $83;
cz $21, $56;

// --- Cycle 489 (n/Z) ---
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
cz $128, $44;
cz $27, $80;
cz $95, $19;
cz $117, $52;
cz $78, $87;

// --- Cycle 490 (m/X) ---
m[0] = measure $125;
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
cz $110, $27;
cz $11, $114;
cz $12, $17;
cz $96, $15;

// --- Cycle 491 (n/Z) ---
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
cz $128, $75;
cz $49, $44;
cz $123, $54;
cz $40, $101;
cz $17, $31;

// --- Cycle 492 (m/X) ---
m[0] = measure $125;
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
cz $82, $10;
cz $31, $70;
cz $76, $92;
cz $77, $36;

// --- Cycle 493 (n/Z) ---
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
cz $128, $99;
cz $88, $3;
cz $108, $84;
cz $112, $38;
cz $26, $66;

// --- Cycle 494 (m/X) ---
m[0] = measure $125;
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
cz $65, $24;
cz $95, $50;
cz $37, $82;
cz $6, $100;

// --- Cycle 495 (n/Z) ---
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
cz $128, $114;
cz $122, $30;
cz $63, $49;
cz $14, $30;
cz $63, $81;

// --- Cycle 496 (m/X) ---
m[0] = measure $125;
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
cz $9, $67;
cz $113, $1;
cz $46, $119;
cz $40, $16;

// --- Cycle 497 (n/Z) ---
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
cz $128, $49;
cz $107, $72;
cz $53, $46;
cz $69, $87;
cz $22, $97;

// --- Cycle 498 (m/X) ---
m[0] = measure $125;
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
cz $122, $98;
cz $9, $2;
cz $75, $8;
cz $1, $33;

// --- Cycle 499 (n/Z) ---
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
cz $128, $27;
cz $118, $7;
cz $121, $101;
cz $50, $64;
cz $36, $80;

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
