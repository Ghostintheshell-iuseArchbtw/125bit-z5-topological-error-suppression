OPENQASM 3.0;
include "stdgates.inc";
bit[1] m;
bit[1] n;
bit[125] c;

// =ablation5_depth_500cycles=
// Lattice: 5x5x5, Periodic: True, Vertices: 125, Edges: 375
// Feedback cycles: 500, Corrections: True

// Phase 1: Initialize data qubits to |+>
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

// Phase 2: Graph state creation (375 CZ gates)
cz $0, $1;
cz $0, $4;
cz $0, $5;
cz $0, $20;
cz $0, $25;
cz $0, $100;
cz $1, $2;
cz $1, $6;
cz $1, $21;
cz $1, $26;
cz $1, $101;
cz $2, $3;
cz $2, $7;
cz $2, $22;
cz $2, $27;
cz $2, $102;
cz $3, $4;
cz $3, $8;
cz $3, $23;
cz $3, $28;
cz $3, $103;
cz $4, $9;
cz $4, $24;
cz $4, $29;
cz $4, $104;
cz $5, $6;
cz $5, $9;
cz $5, $10;
cz $5, $30;
cz $5, $105;
cz $6, $7;
cz $6, $11;
cz $6, $31;
cz $6, $106;
cz $7, $8;
cz $7, $12;
cz $7, $32;
cz $7, $107;
cz $8, $9;
cz $8, $13;
cz $8, $33;
cz $8, $108;
cz $9, $14;
cz $9, $34;
cz $9, $109;
cz $10, $11;
cz $10, $14;
cz $10, $15;
cz $10, $35;
cz $10, $110;
cz $11, $12;
cz $11, $16;
cz $11, $36;
cz $11, $111;
cz $12, $13;
cz $12, $17;
cz $12, $37;
cz $12, $112;
cz $13, $14;
cz $13, $18;
cz $13, $38;
cz $13, $113;
cz $14, $19;
cz $14, $39;
cz $14, $114;
cz $15, $16;
cz $15, $19;
cz $15, $20;
cz $15, $40;
cz $15, $115;
cz $16, $17;
cz $16, $21;
cz $16, $41;
cz $16, $116;
cz $17, $18;
cz $17, $22;
cz $17, $42;
cz $17, $117;
cz $18, $19;
cz $18, $23;
cz $18, $43;
cz $18, $118;
cz $19, $24;
cz $19, $44;
cz $19, $119;
cz $20, $21;
cz $20, $24;
cz $20, $45;
cz $20, $120;
cz $21, $22;
cz $21, $46;
cz $21, $121;
cz $22, $23;
cz $22, $47;
cz $22, $122;
cz $23, $24;
cz $23, $48;
cz $23, $123;
cz $24, $49;
cz $24, $124;
cz $25, $26;
cz $25, $29;
cz $25, $30;
cz $25, $45;
cz $25, $50;
cz $26, $27;
cz $26, $31;
cz $26, $46;
cz $26, $51;
cz $27, $28;
cz $27, $32;
cz $27, $47;
cz $27, $52;
cz $28, $29;
cz $28, $33;
cz $28, $48;
cz $28, $53;
cz $29, $34;
cz $29, $49;
cz $29, $54;
cz $30, $31;
cz $30, $34;
cz $30, $35;
cz $30, $55;
cz $31, $32;
cz $31, $36;
cz $31, $56;
cz $32, $33;
cz $32, $37;
cz $32, $57;
cz $33, $34;
cz $33, $38;
cz $33, $58;
cz $34, $39;
cz $34, $59;
cz $35, $36;
cz $35, $39;
cz $35, $40;
cz $35, $60;
cz $36, $37;
cz $36, $41;
cz $36, $61;
cz $37, $38;
cz $37, $42;
cz $37, $62;
cz $38, $39;
cz $38, $43;
cz $38, $63;
cz $39, $44;
cz $39, $64;
cz $40, $41;
cz $40, $44;
cz $40, $45;
cz $40, $65;
cz $41, $42;
cz $41, $46;
cz $41, $66;
cz $42, $43;
cz $42, $47;
cz $42, $67;
cz $43, $44;
cz $43, $48;
cz $43, $68;
cz $44, $49;
cz $44, $69;
cz $45, $46;
cz $45, $49;
cz $45, $70;
cz $46, $47;
cz $46, $71;
cz $47, $48;
cz $47, $72;
cz $48, $49;
cz $48, $73;
cz $49, $74;
cz $50, $51;
cz $50, $54;
cz $50, $55;
cz $50, $70;
cz $50, $75;
cz $51, $52;
cz $51, $56;
cz $51, $71;
cz $51, $76;
cz $52, $53;
cz $52, $57;
cz $52, $72;
cz $52, $77;
cz $53, $54;
cz $53, $58;
cz $53, $73;
cz $53, $78;
cz $54, $59;
cz $54, $74;
cz $54, $79;
cz $55, $56;
cz $55, $59;
cz $55, $60;
cz $55, $80;
cz $56, $57;
cz $56, $61;
cz $56, $81;
cz $57, $58;
cz $57, $62;
cz $57, $82;
cz $58, $59;
cz $58, $63;
cz $58, $83;
cz $59, $64;
cz $59, $84;
cz $60, $61;
cz $60, $64;
cz $60, $65;
cz $60, $85;
cz $61, $62;
cz $61, $66;
cz $61, $86;
cz $62, $63;
cz $62, $67;
cz $62, $87;
cz $63, $64;
cz $63, $68;
cz $63, $88;
cz $64, $69;
cz $64, $89;
cz $65, $66;
cz $65, $69;
cz $65, $70;
cz $65, $90;
cz $66, $67;
cz $66, $71;
cz $66, $91;
cz $67, $68;
cz $67, $72;
cz $67, $92;
cz $68, $69;
cz $68, $73;
cz $68, $93;
cz $69, $74;
cz $69, $94;
cz $70, $71;
cz $70, $74;
cz $70, $95;
cz $71, $72;
cz $71, $96;
cz $72, $73;
cz $72, $97;
cz $73, $74;
cz $73, $98;
cz $74, $99;
cz $75, $76;
cz $75, $79;
cz $75, $80;
cz $75, $95;
cz $75, $100;
cz $76, $77;
cz $76, $81;
cz $76, $96;
cz $76, $101;
cz $77, $78;
cz $77, $82;
cz $77, $97;
cz $77, $102;
cz $78, $79;
cz $78, $83;
cz $78, $98;
cz $78, $103;
cz $79, $84;
cz $79, $99;
cz $79, $104;
cz $80, $81;
cz $80, $84;
cz $80, $85;
cz $80, $105;
cz $81, $82;
cz $81, $86;
cz $81, $106;
cz $82, $83;
cz $82, $87;
cz $82, $107;
cz $83, $84;
cz $83, $88;
cz $83, $108;
cz $84, $89;
cz $84, $109;
cz $85, $86;
cz $85, $89;
cz $85, $90;
cz $85, $110;
cz $86, $87;
cz $86, $91;
cz $86, $111;
cz $87, $88;
cz $87, $92;
cz $87, $112;
cz $88, $89;
cz $88, $93;
cz $88, $113;
cz $89, $94;
cz $89, $114;
cz $90, $91;
cz $90, $94;
cz $90, $95;
cz $90, $115;
cz $91, $92;
cz $91, $96;
cz $91, $116;
cz $92, $93;
cz $92, $97;
cz $92, $117;
cz $93, $94;
cz $93, $98;
cz $93, $118;
cz $94, $99;
cz $94, $119;
cz $95, $96;
cz $95, $99;
cz $95, $120;
cz $96, $97;
cz $96, $121;
cz $97, $98;
cz $97, $122;
cz $98, $99;
cz $98, $123;
cz $99, $124;
cz $100, $101;
cz $100, $104;
cz $100, $105;
cz $100, $120;
cz $101, $102;
cz $101, $106;
cz $101, $121;
cz $102, $103;
cz $102, $107;
cz $102, $122;
cz $103, $104;
cz $103, $108;
cz $103, $123;
cz $104, $109;
cz $104, $124;
cz $105, $106;
cz $105, $109;
cz $105, $110;
cz $106, $107;
cz $106, $111;
cz $107, $108;
cz $107, $112;
cz $108, $109;
cz $108, $113;
cz $109, $114;
cz $110, $111;
cz $110, $114;
cz $110, $115;
cz $111, $112;
cz $111, $116;
cz $112, $113;
cz $112, $117;
cz $113, $114;
cz $113, $118;
cz $114, $119;
cz $115, $116;
cz $115, $119;
cz $115, $120;
cz $116, $117;
cz $116, $121;
cz $117, $118;
cz $117, $122;
cz $118, $119;
cz $118, $123;
cz $119, $124;
cz $120, $121;
cz $120, $124;
cz $121, $122;
cz $122, $123;
cz $123, $124;

// Phase 3: Bootstrap ancilla qubits
reset $125;
rz(pi/2) $125;
sx $125;
rz(pi/2) $125;
reset $126;
rz(pi/2) $126;
sx $126;
rz(pi/2) $126;
cz $125, $126;

// Phase 3b: Initial ancilla-data entanglement
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

// Phase 4: 500 feedback cycles
// --- Cycle 0 (m/X) target=$0 ---
m[0] = measure $125;
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
cz $0, $100;
cz $100, $25;
cz $25, $20;

// --- Cycle 1 (n/Z) target=$1 ---
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
cz $128, $1;
cz $1, $101;
cz $101, $26;
cz $26, $21;

// --- Cycle 2 (m/X) target=$2 ---
m[0] = measure $125;
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
cz $2, $102;
cz $102, $27;
cz $27, $22;

// --- Cycle 3 (n/Z) target=$3 ---
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
cz $128, $3;
cz $3, $103;
cz $103, $28;
cz $28, $23;

// --- Cycle 4 (m/X) target=$4 ---
m[0] = measure $125;
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
cz $4, $104;
cz $104, $29;
cz $29, $24;

// --- Cycle 5 (n/Z) target=$5 ---
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
cz $128, $5;
cz $5, $105;
cz $105, $30;
cz $30, $0;

// --- Cycle 6 (m/X) target=$6 ---
m[0] = measure $125;
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
cz $6, $106;
cz $106, $31;
cz $31, $1;

// --- Cycle 7 (n/Z) target=$7 ---
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
cz $128, $7;
cz $7, $107;
cz $107, $32;
cz $32, $2;

// --- Cycle 8 (m/X) target=$8 ---
m[0] = measure $125;
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
cz $8, $108;
cz $108, $33;
cz $33, $3;

// --- Cycle 9 (n/Z) target=$9 ---
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
cz $128, $9;
cz $9, $109;
cz $109, $34;
cz $34, $4;

// --- Cycle 10 (m/X) target=$10 ---
m[0] = measure $125;
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
cz $10, $110;
cz $110, $35;
cz $35, $5;

// --- Cycle 11 (n/Z) target=$11 ---
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
cz $128, $11;
cz $11, $111;
cz $111, $36;
cz $36, $6;

// --- Cycle 12 (m/X) target=$12 ---
m[0] = measure $125;
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
cz $12, $112;
cz $112, $37;
cz $37, $7;

// --- Cycle 13 (n/Z) target=$13 ---
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
cz $128, $13;
cz $13, $113;
cz $113, $38;
cz $38, $8;

// --- Cycle 14 (m/X) target=$14 ---
m[0] = measure $125;
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
cz $14, $114;
cz $114, $39;
cz $39, $9;

// --- Cycle 15 (n/Z) target=$15 ---
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
cz $128, $15;
cz $15, $115;
cz $115, $40;
cz $40, $10;

// --- Cycle 16 (m/X) target=$16 ---
m[0] = measure $125;
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
cz $16, $116;
cz $116, $41;
cz $41, $11;

// --- Cycle 17 (n/Z) target=$17 ---
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
cz $128, $17;
cz $17, $117;
cz $117, $42;
cz $42, $12;

// --- Cycle 18 (m/X) target=$18 ---
m[0] = measure $125;
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
cz $18, $118;
cz $118, $43;
cz $43, $13;

// --- Cycle 19 (n/Z) target=$19 ---
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
cz $128, $19;
cz $19, $119;
cz $119, $44;
cz $44, $14;

// --- Cycle 20 (m/X) target=$20 ---
m[0] = measure $125;
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
cz $20, $120;
cz $120, $45;
cz $45, $15;

// --- Cycle 21 (n/Z) target=$21 ---
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
cz $128, $21;
cz $21, $121;
cz $121, $46;
cz $46, $16;

// --- Cycle 22 (m/X) target=$22 ---
m[0] = measure $125;
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
cz $22, $122;
cz $122, $47;
cz $47, $17;

// --- Cycle 23 (n/Z) target=$23 ---
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
cz $128, $23;
cz $23, $123;
cz $123, $48;
cz $48, $18;

// --- Cycle 24 (m/X) target=$24 ---
m[0] = measure $125;
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
cz $24, $124;
cz $124, $49;
cz $49, $19;

// --- Cycle 25 (n/Z) target=$25 ---
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
cz $128, $25;
cz $25, $0;
cz $0, $50;
cz $50, $45;

// --- Cycle 26 (m/X) target=$26 ---
m[0] = measure $125;
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
cz $26, $1;
cz $1, $51;
cz $51, $46;

// --- Cycle 27 (n/Z) target=$27 ---
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
cz $128, $27;
cz $27, $2;
cz $2, $52;
cz $52, $47;

// --- Cycle 28 (m/X) target=$28 ---
m[0] = measure $125;
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
cz $28, $3;
cz $3, $53;
cz $53, $48;

// --- Cycle 29 (n/Z) target=$29 ---
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
cz $29, $4;
cz $4, $54;
cz $54, $49;

// --- Cycle 30 (m/X) target=$30 ---
m[0] = measure $125;
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
cz $30, $5;
cz $5, $55;
cz $55, $25;

// --- Cycle 31 (n/Z) target=$31 ---
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
cz $128, $31;
cz $31, $6;
cz $6, $56;
cz $56, $26;

// --- Cycle 32 (m/X) target=$32 ---
m[0] = measure $125;
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
cz $32, $7;
cz $7, $57;
cz $57, $27;

// --- Cycle 33 (n/Z) target=$33 ---
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
cz $128, $33;
cz $33, $8;
cz $8, $58;
cz $58, $28;

// --- Cycle 34 (m/X) target=$34 ---
m[0] = measure $125;
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
cz $34, $9;
cz $9, $59;
cz $59, $29;

// --- Cycle 35 (n/Z) target=$35 ---
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
cz $128, $35;
cz $35, $10;
cz $10, $60;
cz $60, $30;

// --- Cycle 36 (m/X) target=$36 ---
m[0] = measure $125;
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
cz $36, $11;
cz $11, $61;
cz $61, $31;

// --- Cycle 37 (n/Z) target=$37 ---
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
cz $128, $37;
cz $37, $12;
cz $12, $62;
cz $62, $32;

// --- Cycle 38 (m/X) target=$38 ---
m[0] = measure $125;
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
cz $38, $13;
cz $13, $63;
cz $63, $33;

// --- Cycle 39 (n/Z) target=$39 ---
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
cz $128, $39;
cz $39, $14;
cz $14, $64;
cz $64, $34;

// --- Cycle 40 (m/X) target=$40 ---
m[0] = measure $125;
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
cz $40, $15;
cz $15, $65;
cz $65, $35;

// --- Cycle 41 (n/Z) target=$41 ---
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
cz $128, $41;
cz $41, $16;
cz $16, $66;
cz $66, $36;

// --- Cycle 42 (m/X) target=$42 ---
m[0] = measure $125;
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
cz $42, $17;
cz $17, $67;
cz $67, $37;

// --- Cycle 43 (n/Z) target=$43 ---
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
cz $128, $43;
cz $43, $18;
cz $18, $68;
cz $68, $38;

// --- Cycle 44 (m/X) target=$44 ---
m[0] = measure $125;
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
cz $44, $19;
cz $19, $69;
cz $69, $39;

// --- Cycle 45 (n/Z) target=$45 ---
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
cz $128, $45;
cz $45, $20;
cz $20, $70;
cz $70, $40;

// --- Cycle 46 (m/X) target=$46 ---
m[0] = measure $125;
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
cz $46, $21;
cz $21, $71;
cz $71, $41;

// --- Cycle 47 (n/Z) target=$47 ---
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
cz $128, $47;
cz $47, $22;
cz $22, $72;
cz $72, $42;

// --- Cycle 48 (m/X) target=$48 ---
m[0] = measure $125;
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
cz $48, $23;
cz $23, $73;
cz $73, $43;

// --- Cycle 49 (n/Z) target=$49 ---
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
cz $128, $49;
cz $49, $24;
cz $24, $74;
cz $74, $44;

// --- Cycle 50 (m/X) target=$50 ---
m[0] = measure $125;
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
cz $50, $25;
cz $25, $75;
cz $75, $70;

// --- Cycle 51 (n/Z) target=$51 ---
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
cz $128, $51;
cz $51, $26;
cz $26, $76;
cz $76, $71;

// --- Cycle 52 (m/X) target=$52 ---
m[0] = measure $125;
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
cz $52, $27;
cz $27, $77;
cz $77, $72;

// --- Cycle 53 (n/Z) target=$53 ---
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
cz $128, $53;
cz $53, $28;
cz $28, $78;
cz $78, $73;

// --- Cycle 54 (m/X) target=$54 ---
m[0] = measure $125;
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
cz $54, $29;
cz $29, $79;
cz $79, $74;

// --- Cycle 55 (n/Z) target=$55 ---
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
cz $128, $55;
cz $55, $30;
cz $30, $80;
cz $80, $50;

// --- Cycle 56 (m/X) target=$56 ---
m[0] = measure $125;
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
cz $56, $31;
cz $31, $81;
cz $81, $51;

// --- Cycle 57 (n/Z) target=$57 ---
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
cz $128, $57;
cz $57, $32;
cz $32, $82;
cz $82, $52;

// --- Cycle 58 (m/X) target=$58 ---
m[0] = measure $125;
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
cz $58, $33;
cz $33, $83;
cz $83, $53;

// --- Cycle 59 (n/Z) target=$59 ---
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
cz $128, $59;
cz $59, $34;
cz $34, $84;
cz $84, $54;

// --- Cycle 60 (m/X) target=$60 ---
m[0] = measure $125;
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
cz $60, $35;
cz $35, $85;
cz $85, $55;

// --- Cycle 61 (n/Z) target=$61 ---
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
cz $128, $61;
cz $61, $36;
cz $36, $86;
cz $86, $56;

// --- Cycle 62 (m/X) target=$62 ---
m[0] = measure $125;
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
cz $62, $37;
cz $37, $87;
cz $87, $57;

// --- Cycle 63 (n/Z) target=$63 ---
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
cz $128, $63;
cz $63, $38;
cz $38, $88;
cz $88, $58;

// --- Cycle 64 (m/X) target=$64 ---
m[0] = measure $125;
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
cz $64, $39;
cz $39, $89;
cz $89, $59;

// --- Cycle 65 (n/Z) target=$65 ---
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
cz $128, $65;
cz $65, $40;
cz $40, $90;
cz $90, $60;

// --- Cycle 66 (m/X) target=$66 ---
m[0] = measure $125;
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
cz $66, $41;
cz $41, $91;
cz $91, $61;

// --- Cycle 67 (n/Z) target=$67 ---
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
cz $128, $67;
cz $67, $42;
cz $42, $92;
cz $92, $62;

// --- Cycle 68 (m/X) target=$68 ---
m[0] = measure $125;
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
cz $68, $43;
cz $43, $93;
cz $93, $63;

// --- Cycle 69 (n/Z) target=$69 ---
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
cz $128, $69;
cz $69, $44;
cz $44, $94;
cz $94, $64;

// --- Cycle 70 (m/X) target=$70 ---
m[0] = measure $125;
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
cz $70, $45;
cz $45, $95;
cz $95, $65;

// --- Cycle 71 (n/Z) target=$71 ---
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
cz $128, $71;
cz $71, $46;
cz $46, $96;
cz $96, $66;

// --- Cycle 72 (m/X) target=$72 ---
m[0] = measure $125;
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
cz $72, $47;
cz $47, $97;
cz $97, $67;

// --- Cycle 73 (n/Z) target=$73 ---
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
cz $128, $73;
cz $73, $48;
cz $48, $98;
cz $98, $68;

// --- Cycle 74 (m/X) target=$74 ---
m[0] = measure $125;
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
cz $74, $49;
cz $49, $99;
cz $99, $69;

// --- Cycle 75 (n/Z) target=$75 ---
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
cz $128, $75;
cz $75, $50;
cz $50, $100;
cz $100, $95;

// --- Cycle 76 (m/X) target=$76 ---
m[0] = measure $125;
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
cz $76, $51;
cz $51, $101;
cz $101, $96;

// --- Cycle 77 (n/Z) target=$77 ---
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
cz $128, $77;
cz $77, $52;
cz $52, $102;
cz $102, $97;

// --- Cycle 78 (m/X) target=$78 ---
m[0] = measure $125;
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
cz $78, $53;
cz $53, $103;
cz $103, $98;

// --- Cycle 79 (n/Z) target=$79 ---
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
cz $128, $79;
cz $79, $54;
cz $54, $104;
cz $104, $99;

// --- Cycle 80 (m/X) target=$80 ---
m[0] = measure $125;
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
cz $80, $55;
cz $55, $105;
cz $105, $75;

// --- Cycle 81 (n/Z) target=$81 ---
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
cz $128, $81;
cz $81, $56;
cz $56, $106;
cz $106, $76;

// --- Cycle 82 (m/X) target=$82 ---
m[0] = measure $125;
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
cz $82, $57;
cz $57, $107;
cz $107, $77;

// --- Cycle 83 (n/Z) target=$83 ---
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
cz $128, $83;
cz $83, $58;
cz $58, $108;
cz $108, $78;

// --- Cycle 84 (m/X) target=$84 ---
m[0] = measure $125;
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
cz $84, $59;
cz $59, $109;
cz $109, $79;

// --- Cycle 85 (n/Z) target=$85 ---
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
cz $128, $85;
cz $85, $60;
cz $60, $110;
cz $110, $80;

// --- Cycle 86 (m/X) target=$86 ---
m[0] = measure $125;
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
cz $86, $61;
cz $61, $111;
cz $111, $81;

// --- Cycle 87 (n/Z) target=$87 ---
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
cz $128, $87;
cz $87, $62;
cz $62, $112;
cz $112, $82;

// --- Cycle 88 (m/X) target=$88 ---
m[0] = measure $125;
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
cz $88, $63;
cz $63, $113;
cz $113, $83;

// --- Cycle 89 (n/Z) target=$89 ---
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
cz $128, $89;
cz $89, $64;
cz $64, $114;
cz $114, $84;

// --- Cycle 90 (m/X) target=$90 ---
m[0] = measure $125;
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
cz $90, $65;
cz $65, $115;
cz $115, $85;

// --- Cycle 91 (n/Z) target=$91 ---
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
cz $128, $91;
cz $91, $66;
cz $66, $116;
cz $116, $86;

// --- Cycle 92 (m/X) target=$92 ---
m[0] = measure $125;
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
cz $92, $67;
cz $67, $117;
cz $117, $87;

// --- Cycle 93 (n/Z) target=$93 ---
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
cz $93, $68;
cz $68, $118;
cz $118, $88;

// --- Cycle 94 (m/X) target=$94 ---
m[0] = measure $125;
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
cz $94, $69;
cz $69, $119;
cz $119, $89;

// --- Cycle 95 (n/Z) target=$95 ---
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
cz $128, $95;
cz $95, $70;
cz $70, $120;
cz $120, $90;

// --- Cycle 96 (m/X) target=$96 ---
m[0] = measure $125;
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
cz $96, $71;
cz $71, $121;
cz $121, $91;

// --- Cycle 97 (n/Z) target=$97 ---
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
cz $128, $97;
cz $97, $72;
cz $72, $122;
cz $122, $92;

// --- Cycle 98 (m/X) target=$98 ---
m[0] = measure $125;
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
cz $98, $73;
cz $73, $123;
cz $123, $93;

// --- Cycle 99 (n/Z) target=$99 ---
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
cz $128, $99;
cz $99, $74;
cz $74, $124;
cz $124, $94;

// --- Cycle 100 (m/X) target=$100 ---
m[0] = measure $125;
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
cz $100, $75;
cz $75, $0;
cz $0, $120;

// --- Cycle 101 (n/Z) target=$101 ---
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
cz $128, $101;
cz $101, $76;
cz $76, $1;
cz $1, $121;

// --- Cycle 102 (m/X) target=$102 ---
m[0] = measure $125;
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
cz $102, $77;
cz $77, $2;
cz $2, $122;

// --- Cycle 103 (n/Z) target=$103 ---
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
cz $128, $103;
cz $103, $78;
cz $78, $3;
cz $3, $123;

// --- Cycle 104 (m/X) target=$104 ---
m[0] = measure $125;
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
cz $104, $79;
cz $79, $4;
cz $4, $124;

// --- Cycle 105 (n/Z) target=$105 ---
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
cz $105, $80;
cz $80, $5;
cz $5, $100;

// --- Cycle 106 (m/X) target=$106 ---
m[0] = measure $125;
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
cz $106, $81;
cz $81, $6;
cz $6, $101;

// --- Cycle 107 (n/Z) target=$107 ---
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
cz $128, $107;
cz $107, $82;
cz $82, $7;
cz $7, $102;

// --- Cycle 108 (m/X) target=$108 ---
m[0] = measure $125;
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
cz $108, $83;
cz $83, $8;
cz $8, $103;

// --- Cycle 109 (n/Z) target=$109 ---
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
cz $128, $109;
cz $109, $84;
cz $84, $9;
cz $9, $104;

// --- Cycle 110 (m/X) target=$110 ---
m[0] = measure $125;
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
cz $110, $85;
cz $85, $10;
cz $10, $105;

// --- Cycle 111 (n/Z) target=$111 ---
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
cz $128, $111;
cz $111, $86;
cz $86, $11;
cz $11, $106;

// --- Cycle 112 (m/X) target=$112 ---
m[0] = measure $125;
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
cz $112, $87;
cz $87, $12;
cz $12, $107;

// --- Cycle 113 (n/Z) target=$113 ---
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
cz $128, $113;
cz $113, $88;
cz $88, $13;
cz $13, $108;

// --- Cycle 114 (m/X) target=$114 ---
m[0] = measure $125;
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
cz $114, $89;
cz $89, $14;
cz $14, $109;

// --- Cycle 115 (n/Z) target=$115 ---
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
cz $128, $115;
cz $115, $90;
cz $90, $15;
cz $15, $110;

// --- Cycle 116 (m/X) target=$116 ---
m[0] = measure $125;
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
cz $116, $91;
cz $91, $16;
cz $16, $111;

// --- Cycle 117 (n/Z) target=$117 ---
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
cz $128, $117;
cz $117, $92;
cz $92, $17;
cz $17, $112;

// --- Cycle 118 (m/X) target=$118 ---
m[0] = measure $125;
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
cz $118, $93;
cz $93, $18;
cz $18, $113;

// --- Cycle 119 (n/Z) target=$119 ---
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
cz $128, $119;
cz $119, $94;
cz $94, $19;
cz $19, $114;

// --- Cycle 120 (m/X) target=$120 ---
m[0] = measure $125;
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
cz $120, $95;
cz $95, $20;
cz $20, $115;

// --- Cycle 121 (n/Z) target=$121 ---
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
cz $128, $121;
cz $121, $96;
cz $96, $21;
cz $21, $116;

// --- Cycle 122 (m/X) target=$122 ---
m[0] = measure $125;
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
cz $122, $97;
cz $97, $22;
cz $22, $117;

// --- Cycle 123 (n/Z) target=$123 ---
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
cz $128, $123;
cz $123, $98;
cz $98, $23;
cz $23, $118;

// --- Cycle 124 (m/X) target=$124 ---
m[0] = measure $125;
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
cz $124, $99;
cz $99, $24;
cz $24, $119;

// --- Cycle 125 (n/Z) target=$0 ---
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
cz $128, $0;
cz $0, $100;
cz $100, $25;
cz $25, $20;

// --- Cycle 126 (m/X) target=$1 ---
m[0] = measure $125;
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
cz $1, $101;
cz $101, $26;
cz $26, $21;

// --- Cycle 127 (n/Z) target=$2 ---
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
cz $128, $2;
cz $2, $102;
cz $102, $27;
cz $27, $22;

// --- Cycle 128 (m/X) target=$3 ---
m[0] = measure $125;
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
cz $3, $103;
cz $103, $28;
cz $28, $23;

// --- Cycle 129 (n/Z) target=$4 ---
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
cz $128, $4;
cz $4, $104;
cz $104, $29;
cz $29, $24;

// --- Cycle 130 (m/X) target=$5 ---
m[0] = measure $125;
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
cz $5, $105;
cz $105, $30;
cz $30, $0;

// --- Cycle 131 (n/Z) target=$6 ---
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
cz $128, $6;
cz $6, $106;
cz $106, $31;
cz $31, $1;

// --- Cycle 132 (m/X) target=$7 ---
m[0] = measure $125;
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
cz $7, $107;
cz $107, $32;
cz $32, $2;

// --- Cycle 133 (n/Z) target=$8 ---
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
cz $128, $8;
cz $8, $108;
cz $108, $33;
cz $33, $3;

// --- Cycle 134 (m/X) target=$9 ---
m[0] = measure $125;
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
cz $9, $109;
cz $109, $34;
cz $34, $4;

// --- Cycle 135 (n/Z) target=$10 ---
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
cz $128, $10;
cz $10, $110;
cz $110, $35;
cz $35, $5;

// --- Cycle 136 (m/X) target=$11 ---
m[0] = measure $125;
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
cz $11, $111;
cz $111, $36;
cz $36, $6;

// --- Cycle 137 (n/Z) target=$12 ---
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
cz $128, $12;
cz $12, $112;
cz $112, $37;
cz $37, $7;

// --- Cycle 138 (m/X) target=$13 ---
m[0] = measure $125;
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
cz $13, $113;
cz $113, $38;
cz $38, $8;

// --- Cycle 139 (n/Z) target=$14 ---
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
cz $128, $14;
cz $14, $114;
cz $114, $39;
cz $39, $9;

// --- Cycle 140 (m/X) target=$15 ---
m[0] = measure $125;
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
cz $15, $115;
cz $115, $40;
cz $40, $10;

// --- Cycle 141 (n/Z) target=$16 ---
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
cz $128, $16;
cz $16, $116;
cz $116, $41;
cz $41, $11;

// --- Cycle 142 (m/X) target=$17 ---
m[0] = measure $125;
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
cz $17, $117;
cz $117, $42;
cz $42, $12;

// --- Cycle 143 (n/Z) target=$18 ---
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
cz $128, $18;
cz $18, $118;
cz $118, $43;
cz $43, $13;

// --- Cycle 144 (m/X) target=$19 ---
m[0] = measure $125;
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
cz $19, $119;
cz $119, $44;
cz $44, $14;

// --- Cycle 145 (n/Z) target=$20 ---
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
cz $128, $20;
cz $20, $120;
cz $120, $45;
cz $45, $15;

// --- Cycle 146 (m/X) target=$21 ---
m[0] = measure $125;
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
cz $21, $121;
cz $121, $46;
cz $46, $16;

// --- Cycle 147 (n/Z) target=$22 ---
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
cz $128, $22;
cz $22, $122;
cz $122, $47;
cz $47, $17;

// --- Cycle 148 (m/X) target=$23 ---
m[0] = measure $125;
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
cz $23, $123;
cz $123, $48;
cz $48, $18;

// --- Cycle 149 (n/Z) target=$24 ---
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
cz $128, $24;
cz $24, $124;
cz $124, $49;
cz $49, $19;

// --- Cycle 150 (m/X) target=$25 ---
m[0] = measure $125;
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
cz $25, $0;
cz $0, $50;
cz $50, $45;

// --- Cycle 151 (n/Z) target=$26 ---
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
cz $128, $26;
cz $26, $1;
cz $1, $51;
cz $51, $46;

// --- Cycle 152 (m/X) target=$27 ---
m[0] = measure $125;
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
cz $27, $2;
cz $2, $52;
cz $52, $47;

// --- Cycle 153 (n/Z) target=$28 ---
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
cz $128, $28;
cz $28, $3;
cz $3, $53;
cz $53, $48;

// --- Cycle 154 (m/X) target=$29 ---
m[0] = measure $125;
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
cz $29, $4;
cz $4, $54;
cz $54, $49;

// --- Cycle 155 (n/Z) target=$30 ---
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
cz $128, $30;
cz $30, $5;
cz $5, $55;
cz $55, $25;

// --- Cycle 156 (m/X) target=$31 ---
m[0] = measure $125;
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
cz $31, $6;
cz $6, $56;
cz $56, $26;

// --- Cycle 157 (n/Z) target=$32 ---
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
cz $128, $32;
cz $32, $7;
cz $7, $57;
cz $57, $27;

// --- Cycle 158 (m/X) target=$33 ---
m[0] = measure $125;
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
cz $33, $8;
cz $8, $58;
cz $58, $28;

// --- Cycle 159 (n/Z) target=$34 ---
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
cz $128, $34;
cz $34, $9;
cz $9, $59;
cz $59, $29;

// --- Cycle 160 (m/X) target=$35 ---
m[0] = measure $125;
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
cz $35, $10;
cz $10, $60;
cz $60, $30;

// --- Cycle 161 (n/Z) target=$36 ---
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
cz $128, $36;
cz $36, $11;
cz $11, $61;
cz $61, $31;

// --- Cycle 162 (m/X) target=$37 ---
m[0] = measure $125;
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
cz $37, $12;
cz $12, $62;
cz $62, $32;

// --- Cycle 163 (n/Z) target=$38 ---
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
cz $128, $38;
cz $38, $13;
cz $13, $63;
cz $63, $33;

// --- Cycle 164 (m/X) target=$39 ---
m[0] = measure $125;
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
cz $39, $14;
cz $14, $64;
cz $64, $34;

// --- Cycle 165 (n/Z) target=$40 ---
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
cz $128, $40;
cz $40, $15;
cz $15, $65;
cz $65, $35;

// --- Cycle 166 (m/X) target=$41 ---
m[0] = measure $125;
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
cz $41, $16;
cz $16, $66;
cz $66, $36;

// --- Cycle 167 (n/Z) target=$42 ---
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
cz $128, $42;
cz $42, $17;
cz $17, $67;
cz $67, $37;

// --- Cycle 168 (m/X) target=$43 ---
m[0] = measure $125;
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
cz $43, $18;
cz $18, $68;
cz $68, $38;

// --- Cycle 169 (n/Z) target=$44 ---
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
cz $128, $44;
cz $44, $19;
cz $19, $69;
cz $69, $39;

// --- Cycle 170 (m/X) target=$45 ---
m[0] = measure $125;
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
cz $45, $20;
cz $20, $70;
cz $70, $40;

// --- Cycle 171 (n/Z) target=$46 ---
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
cz $128, $46;
cz $46, $21;
cz $21, $71;
cz $71, $41;

// --- Cycle 172 (m/X) target=$47 ---
m[0] = measure $125;
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
cz $47, $22;
cz $22, $72;
cz $72, $42;

// --- Cycle 173 (n/Z) target=$48 ---
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
cz $128, $48;
cz $48, $23;
cz $23, $73;
cz $73, $43;

// --- Cycle 174 (m/X) target=$49 ---
m[0] = measure $125;
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
cz $49, $24;
cz $24, $74;
cz $74, $44;

// --- Cycle 175 (n/Z) target=$50 ---
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
cz $128, $50;
cz $50, $25;
cz $25, $75;
cz $75, $70;

// --- Cycle 176 (m/X) target=$51 ---
m[0] = measure $125;
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
cz $51, $26;
cz $26, $76;
cz $76, $71;

// --- Cycle 177 (n/Z) target=$52 ---
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
cz $128, $52;
cz $52, $27;
cz $27, $77;
cz $77, $72;

// --- Cycle 178 (m/X) target=$53 ---
m[0] = measure $125;
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
cz $53, $28;
cz $28, $78;
cz $78, $73;

// --- Cycle 179 (n/Z) target=$54 ---
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
cz $128, $54;
cz $54, $29;
cz $29, $79;
cz $79, $74;

// --- Cycle 180 (m/X) target=$55 ---
m[0] = measure $125;
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
cz $55, $30;
cz $30, $80;
cz $80, $50;

// --- Cycle 181 (n/Z) target=$56 ---
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
cz $128, $56;
cz $56, $31;
cz $31, $81;
cz $81, $51;

// --- Cycle 182 (m/X) target=$57 ---
m[0] = measure $125;
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
cz $57, $32;
cz $32, $82;
cz $82, $52;

// --- Cycle 183 (n/Z) target=$58 ---
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
cz $128, $58;
cz $58, $33;
cz $33, $83;
cz $83, $53;

// --- Cycle 184 (m/X) target=$59 ---
m[0] = measure $125;
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
cz $59, $34;
cz $34, $84;
cz $84, $54;

// --- Cycle 185 (n/Z) target=$60 ---
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
cz $128, $60;
cz $60, $35;
cz $35, $85;
cz $85, $55;

// --- Cycle 186 (m/X) target=$61 ---
m[0] = measure $125;
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
cz $61, $36;
cz $36, $86;
cz $86, $56;

// --- Cycle 187 (n/Z) target=$62 ---
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
cz $128, $62;
cz $62, $37;
cz $37, $87;
cz $87, $57;

// --- Cycle 188 (m/X) target=$63 ---
m[0] = measure $125;
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
cz $63, $38;
cz $38, $88;
cz $88, $58;

// --- Cycle 189 (n/Z) target=$64 ---
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
cz $128, $64;
cz $64, $39;
cz $39, $89;
cz $89, $59;

// --- Cycle 190 (m/X) target=$65 ---
m[0] = measure $125;
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
cz $65, $40;
cz $40, $90;
cz $90, $60;

// --- Cycle 191 (n/Z) target=$66 ---
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
cz $128, $66;
cz $66, $41;
cz $41, $91;
cz $91, $61;

// --- Cycle 192 (m/X) target=$67 ---
m[0] = measure $125;
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
cz $67, $42;
cz $42, $92;
cz $92, $62;

// --- Cycle 193 (n/Z) target=$68 ---
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
cz $128, $68;
cz $68, $43;
cz $43, $93;
cz $93, $63;

// --- Cycle 194 (m/X) target=$69 ---
m[0] = measure $125;
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
cz $69, $44;
cz $44, $94;
cz $94, $64;

// --- Cycle 195 (n/Z) target=$70 ---
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
cz $128, $70;
cz $70, $45;
cz $45, $95;
cz $95, $65;

// --- Cycle 196 (m/X) target=$71 ---
m[0] = measure $125;
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
cz $71, $46;
cz $46, $96;
cz $96, $66;

// --- Cycle 197 (n/Z) target=$72 ---
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
cz $128, $72;
cz $72, $47;
cz $47, $97;
cz $97, $67;

// --- Cycle 198 (m/X) target=$73 ---
m[0] = measure $125;
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
cz $73, $48;
cz $48, $98;
cz $98, $68;

// --- Cycle 199 (n/Z) target=$74 ---
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
cz $128, $74;
cz $74, $49;
cz $49, $99;
cz $99, $69;

// --- Cycle 200 (m/X) target=$75 ---
m[0] = measure $125;
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
cz $75, $50;
cz $50, $100;
cz $100, $95;

// --- Cycle 201 (n/Z) target=$76 ---
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
cz $128, $76;
cz $76, $51;
cz $51, $101;
cz $101, $96;

// --- Cycle 202 (m/X) target=$77 ---
m[0] = measure $125;
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
cz $77, $52;
cz $52, $102;
cz $102, $97;

// --- Cycle 203 (n/Z) target=$78 ---
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
cz $128, $78;
cz $78, $53;
cz $53, $103;
cz $103, $98;

// --- Cycle 204 (m/X) target=$79 ---
m[0] = measure $125;
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
cz $79, $54;
cz $54, $104;
cz $104, $99;

// --- Cycle 205 (n/Z) target=$80 ---
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
cz $128, $80;
cz $80, $55;
cz $55, $105;
cz $105, $75;

// --- Cycle 206 (m/X) target=$81 ---
m[0] = measure $125;
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
cz $81, $56;
cz $56, $106;
cz $106, $76;

// --- Cycle 207 (n/Z) target=$82 ---
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
cz $128, $82;
cz $82, $57;
cz $57, $107;
cz $107, $77;

// --- Cycle 208 (m/X) target=$83 ---
m[0] = measure $125;
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
cz $83, $58;
cz $58, $108;
cz $108, $78;

// --- Cycle 209 (n/Z) target=$84 ---
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
cz $128, $84;
cz $84, $59;
cz $59, $109;
cz $109, $79;

// --- Cycle 210 (m/X) target=$85 ---
m[0] = measure $125;
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
cz $85, $60;
cz $60, $110;
cz $110, $80;

// --- Cycle 211 (n/Z) target=$86 ---
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
cz $128, $86;
cz $86, $61;
cz $61, $111;
cz $111, $81;

// --- Cycle 212 (m/X) target=$87 ---
m[0] = measure $125;
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
cz $87, $62;
cz $62, $112;
cz $112, $82;

// --- Cycle 213 (n/Z) target=$88 ---
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
cz $128, $88;
cz $88, $63;
cz $63, $113;
cz $113, $83;

// --- Cycle 214 (m/X) target=$89 ---
m[0] = measure $125;
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
cz $89, $64;
cz $64, $114;
cz $114, $84;

// --- Cycle 215 (n/Z) target=$90 ---
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
cz $128, $90;
cz $90, $65;
cz $65, $115;
cz $115, $85;

// --- Cycle 216 (m/X) target=$91 ---
m[0] = measure $125;
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
cz $91, $66;
cz $66, $116;
cz $116, $86;

// --- Cycle 217 (n/Z) target=$92 ---
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
cz $128, $92;
cz $92, $67;
cz $67, $117;
cz $117, $87;

// --- Cycle 218 (m/X) target=$93 ---
m[0] = measure $125;
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
cz $93, $68;
cz $68, $118;
cz $118, $88;

// --- Cycle 219 (n/Z) target=$94 ---
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
cz $128, $94;
cz $94, $69;
cz $69, $119;
cz $119, $89;

// --- Cycle 220 (m/X) target=$95 ---
m[0] = measure $125;
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
cz $95, $70;
cz $70, $120;
cz $120, $90;

// --- Cycle 221 (n/Z) target=$96 ---
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
cz $96, $71;
cz $71, $121;
cz $121, $91;

// --- Cycle 222 (m/X) target=$97 ---
m[0] = measure $125;
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
cz $97, $72;
cz $72, $122;
cz $122, $92;

// --- Cycle 223 (n/Z) target=$98 ---
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
cz $128, $98;
cz $98, $73;
cz $73, $123;
cz $123, $93;

// --- Cycle 224 (m/X) target=$99 ---
m[0] = measure $125;
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
cz $99, $74;
cz $74, $124;
cz $124, $94;

// --- Cycle 225 (n/Z) target=$100 ---
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
cz $128, $100;
cz $100, $75;
cz $75, $0;
cz $0, $120;

// --- Cycle 226 (m/X) target=$101 ---
m[0] = measure $125;
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
cz $101, $76;
cz $76, $1;
cz $1, $121;

// --- Cycle 227 (n/Z) target=$102 ---
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
cz $128, $102;
cz $102, $77;
cz $77, $2;
cz $2, $122;

// --- Cycle 228 (m/X) target=$103 ---
m[0] = measure $125;
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
cz $103, $78;
cz $78, $3;
cz $3, $123;

// --- Cycle 229 (n/Z) target=$104 ---
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
cz $128, $104;
cz $104, $79;
cz $79, $4;
cz $4, $124;

// --- Cycle 230 (m/X) target=$105 ---
m[0] = measure $125;
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
cz $105, $80;
cz $80, $5;
cz $5, $100;

// --- Cycle 231 (n/Z) target=$106 ---
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
cz $128, $106;
cz $106, $81;
cz $81, $6;
cz $6, $101;

// --- Cycle 232 (m/X) target=$107 ---
m[0] = measure $125;
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
cz $107, $82;
cz $82, $7;
cz $7, $102;

// --- Cycle 233 (n/Z) target=$108 ---
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
cz $128, $108;
cz $108, $83;
cz $83, $8;
cz $8, $103;

// --- Cycle 234 (m/X) target=$109 ---
m[0] = measure $125;
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
cz $109, $84;
cz $84, $9;
cz $9, $104;

// --- Cycle 235 (n/Z) target=$110 ---
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
cz $128, $110;
cz $110, $85;
cz $85, $10;
cz $10, $105;

// --- Cycle 236 (m/X) target=$111 ---
m[0] = measure $125;
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
cz $111, $86;
cz $86, $11;
cz $11, $106;

// --- Cycle 237 (n/Z) target=$112 ---
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
cz $128, $112;
cz $112, $87;
cz $87, $12;
cz $12, $107;

// --- Cycle 238 (m/X) target=$113 ---
m[0] = measure $125;
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
cz $113, $88;
cz $88, $13;
cz $13, $108;

// --- Cycle 239 (n/Z) target=$114 ---
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
cz $128, $114;
cz $114, $89;
cz $89, $14;
cz $14, $109;

// --- Cycle 240 (m/X) target=$115 ---
m[0] = measure $125;
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
cz $115, $90;
cz $90, $15;
cz $15, $110;

// --- Cycle 241 (n/Z) target=$116 ---
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
cz $128, $116;
cz $116, $91;
cz $91, $16;
cz $16, $111;

// --- Cycle 242 (m/X) target=$117 ---
m[0] = measure $125;
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
cz $117, $92;
cz $92, $17;
cz $17, $112;

// --- Cycle 243 (n/Z) target=$118 ---
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
cz $128, $118;
cz $118, $93;
cz $93, $18;
cz $18, $113;

// --- Cycle 244 (m/X) target=$119 ---
m[0] = measure $125;
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
cz $119, $94;
cz $94, $19;
cz $19, $114;

// --- Cycle 245 (n/Z) target=$120 ---
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
cz $128, $120;
cz $120, $95;
cz $95, $20;
cz $20, $115;

// --- Cycle 246 (m/X) target=$121 ---
m[0] = measure $125;
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
cz $121, $96;
cz $96, $21;
cz $21, $116;

// --- Cycle 247 (n/Z) target=$122 ---
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
cz $128, $122;
cz $122, $97;
cz $97, $22;
cz $22, $117;

// --- Cycle 248 (m/X) target=$123 ---
m[0] = measure $125;
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
cz $123, $98;
cz $98, $23;
cz $23, $118;

// --- Cycle 249 (n/Z) target=$124 ---
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
cz $128, $124;
cz $124, $99;
cz $99, $24;
cz $24, $119;

// --- Cycle 250 (m/X) target=$0 ---
m[0] = measure $125;
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
cz $0, $100;
cz $100, $25;
cz $25, $20;

// --- Cycle 251 (n/Z) target=$1 ---
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
cz $128, $1;
cz $1, $101;
cz $101, $26;
cz $26, $21;

// --- Cycle 252 (m/X) target=$2 ---
m[0] = measure $125;
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
cz $2, $102;
cz $102, $27;
cz $27, $22;

// --- Cycle 253 (n/Z) target=$3 ---
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
cz $128, $3;
cz $3, $103;
cz $103, $28;
cz $28, $23;

// --- Cycle 254 (m/X) target=$4 ---
m[0] = measure $125;
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
cz $4, $104;
cz $104, $29;
cz $29, $24;

// --- Cycle 255 (n/Z) target=$5 ---
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
cz $128, $5;
cz $5, $105;
cz $105, $30;
cz $30, $0;

// --- Cycle 256 (m/X) target=$6 ---
m[0] = measure $125;
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
cz $6, $106;
cz $106, $31;
cz $31, $1;

// --- Cycle 257 (n/Z) target=$7 ---
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
cz $128, $7;
cz $7, $107;
cz $107, $32;
cz $32, $2;

// --- Cycle 258 (m/X) target=$8 ---
m[0] = measure $125;
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
cz $8, $108;
cz $108, $33;
cz $33, $3;

// --- Cycle 259 (n/Z) target=$9 ---
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
cz $128, $9;
cz $9, $109;
cz $109, $34;
cz $34, $4;

// --- Cycle 260 (m/X) target=$10 ---
m[0] = measure $125;
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
cz $10, $110;
cz $110, $35;
cz $35, $5;

// --- Cycle 261 (n/Z) target=$11 ---
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
cz $128, $11;
cz $11, $111;
cz $111, $36;
cz $36, $6;

// --- Cycle 262 (m/X) target=$12 ---
m[0] = measure $125;
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
cz $12, $112;
cz $112, $37;
cz $37, $7;

// --- Cycle 263 (n/Z) target=$13 ---
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
cz $128, $13;
cz $13, $113;
cz $113, $38;
cz $38, $8;

// --- Cycle 264 (m/X) target=$14 ---
m[0] = measure $125;
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
cz $14, $114;
cz $114, $39;
cz $39, $9;

// --- Cycle 265 (n/Z) target=$15 ---
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
cz $128, $15;
cz $15, $115;
cz $115, $40;
cz $40, $10;

// --- Cycle 266 (m/X) target=$16 ---
m[0] = measure $125;
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
cz $16, $116;
cz $116, $41;
cz $41, $11;

// --- Cycle 267 (n/Z) target=$17 ---
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
cz $128, $17;
cz $17, $117;
cz $117, $42;
cz $42, $12;

// --- Cycle 268 (m/X) target=$18 ---
m[0] = measure $125;
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
cz $18, $118;
cz $118, $43;
cz $43, $13;

// --- Cycle 269 (n/Z) target=$19 ---
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
cz $128, $19;
cz $19, $119;
cz $119, $44;
cz $44, $14;

// --- Cycle 270 (m/X) target=$20 ---
m[0] = measure $125;
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
cz $20, $120;
cz $120, $45;
cz $45, $15;

// --- Cycle 271 (n/Z) target=$21 ---
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
cz $128, $21;
cz $21, $121;
cz $121, $46;
cz $46, $16;

// --- Cycle 272 (m/X) target=$22 ---
m[0] = measure $125;
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
cz $22, $122;
cz $122, $47;
cz $47, $17;

// --- Cycle 273 (n/Z) target=$23 ---
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
cz $128, $23;
cz $23, $123;
cz $123, $48;
cz $48, $18;

// --- Cycle 274 (m/X) target=$24 ---
m[0] = measure $125;
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
cz $24, $124;
cz $124, $49;
cz $49, $19;

// --- Cycle 275 (n/Z) target=$25 ---
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
cz $128, $25;
cz $25, $0;
cz $0, $50;
cz $50, $45;

// --- Cycle 276 (m/X) target=$26 ---
m[0] = measure $125;
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
cz $26, $1;
cz $1, $51;
cz $51, $46;

// --- Cycle 277 (n/Z) target=$27 ---
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
cz $128, $27;
cz $27, $2;
cz $2, $52;
cz $52, $47;

// --- Cycle 278 (m/X) target=$28 ---
m[0] = measure $125;
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
cz $28, $3;
cz $3, $53;
cz $53, $48;

// --- Cycle 279 (n/Z) target=$29 ---
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
cz $128, $29;
cz $29, $4;
cz $4, $54;
cz $54, $49;

// --- Cycle 280 (m/X) target=$30 ---
m[0] = measure $125;
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
cz $30, $5;
cz $5, $55;
cz $55, $25;

// --- Cycle 281 (n/Z) target=$31 ---
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
cz $128, $31;
cz $31, $6;
cz $6, $56;
cz $56, $26;

// --- Cycle 282 (m/X) target=$32 ---
m[0] = measure $125;
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
cz $32, $7;
cz $7, $57;
cz $57, $27;

// --- Cycle 283 (n/Z) target=$33 ---
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
cz $128, $33;
cz $33, $8;
cz $8, $58;
cz $58, $28;

// --- Cycle 284 (m/X) target=$34 ---
m[0] = measure $125;
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
cz $34, $9;
cz $9, $59;
cz $59, $29;

// --- Cycle 285 (n/Z) target=$35 ---
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
cz $128, $35;
cz $35, $10;
cz $10, $60;
cz $60, $30;

// --- Cycle 286 (m/X) target=$36 ---
m[0] = measure $125;
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
cz $36, $11;
cz $11, $61;
cz $61, $31;

// --- Cycle 287 (n/Z) target=$37 ---
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
cz $128, $37;
cz $37, $12;
cz $12, $62;
cz $62, $32;

// --- Cycle 288 (m/X) target=$38 ---
m[0] = measure $125;
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
cz $38, $13;
cz $13, $63;
cz $63, $33;

// --- Cycle 289 (n/Z) target=$39 ---
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
cz $128, $39;
cz $39, $14;
cz $14, $64;
cz $64, $34;

// --- Cycle 290 (m/X) target=$40 ---
m[0] = measure $125;
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
cz $40, $15;
cz $15, $65;
cz $65, $35;

// --- Cycle 291 (n/Z) target=$41 ---
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
cz $128, $41;
cz $41, $16;
cz $16, $66;
cz $66, $36;

// --- Cycle 292 (m/X) target=$42 ---
m[0] = measure $125;
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
cz $42, $17;
cz $17, $67;
cz $67, $37;

// --- Cycle 293 (n/Z) target=$43 ---
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
cz $43, $18;
cz $18, $68;
cz $68, $38;

// --- Cycle 294 (m/X) target=$44 ---
m[0] = measure $125;
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
cz $44, $19;
cz $19, $69;
cz $69, $39;

// --- Cycle 295 (n/Z) target=$45 ---
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
cz $45, $20;
cz $20, $70;
cz $70, $40;

// --- Cycle 296 (m/X) target=$46 ---
m[0] = measure $125;
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
cz $46, $21;
cz $21, $71;
cz $71, $41;

// --- Cycle 297 (n/Z) target=$47 ---
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
cz $128, $47;
cz $47, $22;
cz $22, $72;
cz $72, $42;

// --- Cycle 298 (m/X) target=$48 ---
m[0] = measure $125;
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
cz $48, $23;
cz $23, $73;
cz $73, $43;

// --- Cycle 299 (n/Z) target=$49 ---
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
cz $128, $49;
cz $49, $24;
cz $24, $74;
cz $74, $44;

// --- Cycle 300 (m/X) target=$50 ---
m[0] = measure $125;
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
cz $50, $25;
cz $25, $75;
cz $75, $70;

// --- Cycle 301 (n/Z) target=$51 ---
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
cz $128, $51;
cz $51, $26;
cz $26, $76;
cz $76, $71;

// --- Cycle 302 (m/X) target=$52 ---
m[0] = measure $125;
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
cz $52, $27;
cz $27, $77;
cz $77, $72;

// --- Cycle 303 (n/Z) target=$53 ---
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
cz $128, $53;
cz $53, $28;
cz $28, $78;
cz $78, $73;

// --- Cycle 304 (m/X) target=$54 ---
m[0] = measure $125;
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
cz $54, $29;
cz $29, $79;
cz $79, $74;

// --- Cycle 305 (n/Z) target=$55 ---
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
cz $128, $55;
cz $55, $30;
cz $30, $80;
cz $80, $50;

// --- Cycle 306 (m/X) target=$56 ---
m[0] = measure $125;
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
cz $56, $31;
cz $31, $81;
cz $81, $51;

// --- Cycle 307 (n/Z) target=$57 ---
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
cz $128, $57;
cz $57, $32;
cz $32, $82;
cz $82, $52;

// --- Cycle 308 (m/X) target=$58 ---
m[0] = measure $125;
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
cz $58, $33;
cz $33, $83;
cz $83, $53;

// --- Cycle 309 (n/Z) target=$59 ---
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
cz $59, $34;
cz $34, $84;
cz $84, $54;

// --- Cycle 310 (m/X) target=$60 ---
m[0] = measure $125;
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
cz $60, $35;
cz $35, $85;
cz $85, $55;

// --- Cycle 311 (n/Z) target=$61 ---
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
cz $128, $61;
cz $61, $36;
cz $36, $86;
cz $86, $56;

// --- Cycle 312 (m/X) target=$62 ---
m[0] = measure $125;
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
cz $62, $37;
cz $37, $87;
cz $87, $57;

// --- Cycle 313 (n/Z) target=$63 ---
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
cz $128, $63;
cz $63, $38;
cz $38, $88;
cz $88, $58;

// --- Cycle 314 (m/X) target=$64 ---
m[0] = measure $125;
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
cz $64, $39;
cz $39, $89;
cz $89, $59;

// --- Cycle 315 (n/Z) target=$65 ---
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
cz $128, $65;
cz $65, $40;
cz $40, $90;
cz $90, $60;

// --- Cycle 316 (m/X) target=$66 ---
m[0] = measure $125;
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
cz $66, $41;
cz $41, $91;
cz $91, $61;

// --- Cycle 317 (n/Z) target=$67 ---
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
cz $128, $67;
cz $67, $42;
cz $42, $92;
cz $92, $62;

// --- Cycle 318 (m/X) target=$68 ---
m[0] = measure $125;
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
cz $68, $43;
cz $43, $93;
cz $93, $63;

// --- Cycle 319 (n/Z) target=$69 ---
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
cz $128, $69;
cz $69, $44;
cz $44, $94;
cz $94, $64;

// --- Cycle 320 (m/X) target=$70 ---
m[0] = measure $125;
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
cz $70, $45;
cz $45, $95;
cz $95, $65;

// --- Cycle 321 (n/Z) target=$71 ---
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
cz $128, $71;
cz $71, $46;
cz $46, $96;
cz $96, $66;

// --- Cycle 322 (m/X) target=$72 ---
m[0] = measure $125;
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
cz $72, $47;
cz $47, $97;
cz $97, $67;

// --- Cycle 323 (n/Z) target=$73 ---
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
cz $128, $73;
cz $73, $48;
cz $48, $98;
cz $98, $68;

// --- Cycle 324 (m/X) target=$74 ---
m[0] = measure $125;
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
cz $74, $49;
cz $49, $99;
cz $99, $69;

// --- Cycle 325 (n/Z) target=$75 ---
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
cz $128, $75;
cz $75, $50;
cz $50, $100;
cz $100, $95;

// --- Cycle 326 (m/X) target=$76 ---
m[0] = measure $125;
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
cz $76, $51;
cz $51, $101;
cz $101, $96;

// --- Cycle 327 (n/Z) target=$77 ---
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
cz $128, $77;
cz $77, $52;
cz $52, $102;
cz $102, $97;

// --- Cycle 328 (m/X) target=$78 ---
m[0] = measure $125;
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
cz $78, $53;
cz $53, $103;
cz $103, $98;

// --- Cycle 329 (n/Z) target=$79 ---
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
cz $128, $79;
cz $79, $54;
cz $54, $104;
cz $104, $99;

// --- Cycle 330 (m/X) target=$80 ---
m[0] = measure $125;
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
cz $80, $55;
cz $55, $105;
cz $105, $75;

// --- Cycle 331 (n/Z) target=$81 ---
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
cz $128, $81;
cz $81, $56;
cz $56, $106;
cz $106, $76;

// --- Cycle 332 (m/X) target=$82 ---
m[0] = measure $125;
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
cz $82, $57;
cz $57, $107;
cz $107, $77;

// --- Cycle 333 (n/Z) target=$83 ---
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
cz $128, $83;
cz $83, $58;
cz $58, $108;
cz $108, $78;

// --- Cycle 334 (m/X) target=$84 ---
m[0] = measure $125;
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
cz $84, $59;
cz $59, $109;
cz $109, $79;

// --- Cycle 335 (n/Z) target=$85 ---
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
cz $128, $85;
cz $85, $60;
cz $60, $110;
cz $110, $80;

// --- Cycle 336 (m/X) target=$86 ---
m[0] = measure $125;
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
cz $86, $61;
cz $61, $111;
cz $111, $81;

// --- Cycle 337 (n/Z) target=$87 ---
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
cz $128, $87;
cz $87, $62;
cz $62, $112;
cz $112, $82;

// --- Cycle 338 (m/X) target=$88 ---
m[0] = measure $125;
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
cz $88, $63;
cz $63, $113;
cz $113, $83;

// --- Cycle 339 (n/Z) target=$89 ---
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
cz $89, $64;
cz $64, $114;
cz $114, $84;

// --- Cycle 340 (m/X) target=$90 ---
m[0] = measure $125;
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
cz $90, $65;
cz $65, $115;
cz $115, $85;

// --- Cycle 341 (n/Z) target=$91 ---
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
cz $128, $91;
cz $91, $66;
cz $66, $116;
cz $116, $86;

// --- Cycle 342 (m/X) target=$92 ---
m[0] = measure $125;
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
cz $92, $67;
cz $67, $117;
cz $117, $87;

// --- Cycle 343 (n/Z) target=$93 ---
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
cz $128, $93;
cz $93, $68;
cz $68, $118;
cz $118, $88;

// --- Cycle 344 (m/X) target=$94 ---
m[0] = measure $125;
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
cz $94, $69;
cz $69, $119;
cz $119, $89;

// --- Cycle 345 (n/Z) target=$95 ---
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
cz $128, $95;
cz $95, $70;
cz $70, $120;
cz $120, $90;

// --- Cycle 346 (m/X) target=$96 ---
m[0] = measure $125;
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
cz $96, $71;
cz $71, $121;
cz $121, $91;

// --- Cycle 347 (n/Z) target=$97 ---
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
cz $128, $97;
cz $97, $72;
cz $72, $122;
cz $122, $92;

// --- Cycle 348 (m/X) target=$98 ---
m[0] = measure $125;
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
cz $98, $73;
cz $73, $123;
cz $123, $93;

// --- Cycle 349 (n/Z) target=$99 ---
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
cz $128, $99;
cz $99, $74;
cz $74, $124;
cz $124, $94;

// --- Cycle 350 (m/X) target=$100 ---
m[0] = measure $125;
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
cz $100, $75;
cz $75, $0;
cz $0, $120;

// --- Cycle 351 (n/Z) target=$101 ---
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
cz $128, $101;
cz $101, $76;
cz $76, $1;
cz $1, $121;

// --- Cycle 352 (m/X) target=$102 ---
m[0] = measure $125;
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
cz $102, $77;
cz $77, $2;
cz $2, $122;

// --- Cycle 353 (n/Z) target=$103 ---
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
cz $128, $103;
cz $103, $78;
cz $78, $3;
cz $3, $123;

// --- Cycle 354 (m/X) target=$104 ---
m[0] = measure $125;
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
cz $104, $79;
cz $79, $4;
cz $4, $124;

// --- Cycle 355 (n/Z) target=$105 ---
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
cz $128, $105;
cz $105, $80;
cz $80, $5;
cz $5, $100;

// --- Cycle 356 (m/X) target=$106 ---
m[0] = measure $125;
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
cz $106, $81;
cz $81, $6;
cz $6, $101;

// --- Cycle 357 (n/Z) target=$107 ---
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
cz $128, $107;
cz $107, $82;
cz $82, $7;
cz $7, $102;

// --- Cycle 358 (m/X) target=$108 ---
m[0] = measure $125;
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
cz $108, $83;
cz $83, $8;
cz $8, $103;

// --- Cycle 359 (n/Z) target=$109 ---
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
cz $128, $109;
cz $109, $84;
cz $84, $9;
cz $9, $104;

// --- Cycle 360 (m/X) target=$110 ---
m[0] = measure $125;
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
cz $110, $85;
cz $85, $10;
cz $10, $105;

// --- Cycle 361 (n/Z) target=$111 ---
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
cz $128, $111;
cz $111, $86;
cz $86, $11;
cz $11, $106;

// --- Cycle 362 (m/X) target=$112 ---
m[0] = measure $125;
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
cz $112, $87;
cz $87, $12;
cz $12, $107;

// --- Cycle 363 (n/Z) target=$113 ---
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
cz $128, $113;
cz $113, $88;
cz $88, $13;
cz $13, $108;

// --- Cycle 364 (m/X) target=$114 ---
m[0] = measure $125;
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
cz $114, $89;
cz $89, $14;
cz $14, $109;

// --- Cycle 365 (n/Z) target=$115 ---
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
cz $115, $90;
cz $90, $15;
cz $15, $110;

// --- Cycle 366 (m/X) target=$116 ---
m[0] = measure $125;
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
cz $116, $91;
cz $91, $16;
cz $16, $111;

// --- Cycle 367 (n/Z) target=$117 ---
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
cz $128, $117;
cz $117, $92;
cz $92, $17;
cz $17, $112;

// --- Cycle 368 (m/X) target=$118 ---
m[0] = measure $125;
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
cz $118, $93;
cz $93, $18;
cz $18, $113;

// --- Cycle 369 (n/Z) target=$119 ---
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
cz $128, $119;
cz $119, $94;
cz $94, $19;
cz $19, $114;

// --- Cycle 370 (m/X) target=$120 ---
m[0] = measure $125;
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
cz $120, $95;
cz $95, $20;
cz $20, $115;

// --- Cycle 371 (n/Z) target=$121 ---
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
cz $128, $121;
cz $121, $96;
cz $96, $21;
cz $21, $116;

// --- Cycle 372 (m/X) target=$122 ---
m[0] = measure $125;
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
cz $122, $97;
cz $97, $22;
cz $22, $117;

// --- Cycle 373 (n/Z) target=$123 ---
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
cz $128, $123;
cz $123, $98;
cz $98, $23;
cz $23, $118;

// --- Cycle 374 (m/X) target=$124 ---
m[0] = measure $125;
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
cz $124, $99;
cz $99, $24;
cz $24, $119;

// --- Cycle 375 (n/Z) target=$0 ---
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
cz $128, $0;
cz $0, $100;
cz $100, $25;
cz $25, $20;

// --- Cycle 376 (m/X) target=$1 ---
m[0] = measure $125;
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
cz $1, $101;
cz $101, $26;
cz $26, $21;

// --- Cycle 377 (n/Z) target=$2 ---
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
cz $128, $2;
cz $2, $102;
cz $102, $27;
cz $27, $22;

// --- Cycle 378 (m/X) target=$3 ---
m[0] = measure $125;
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
cz $3, $103;
cz $103, $28;
cz $28, $23;

// --- Cycle 379 (n/Z) target=$4 ---
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
cz $128, $4;
cz $4, $104;
cz $104, $29;
cz $29, $24;

// --- Cycle 380 (m/X) target=$5 ---
m[0] = measure $125;
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
cz $5, $105;
cz $105, $30;
cz $30, $0;

// --- Cycle 381 (n/Z) target=$6 ---
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
cz $128, $6;
cz $6, $106;
cz $106, $31;
cz $31, $1;

// --- Cycle 382 (m/X) target=$7 ---
m[0] = measure $125;
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
cz $7, $107;
cz $107, $32;
cz $32, $2;

// --- Cycle 383 (n/Z) target=$8 ---
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
cz $128, $8;
cz $8, $108;
cz $108, $33;
cz $33, $3;

// --- Cycle 384 (m/X) target=$9 ---
m[0] = measure $125;
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
cz $9, $109;
cz $109, $34;
cz $34, $4;

// --- Cycle 385 (n/Z) target=$10 ---
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
cz $128, $10;
cz $10, $110;
cz $110, $35;
cz $35, $5;

// --- Cycle 386 (m/X) target=$11 ---
m[0] = measure $125;
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
cz $11, $111;
cz $111, $36;
cz $36, $6;

// --- Cycle 387 (n/Z) target=$12 ---
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
cz $128, $12;
cz $12, $112;
cz $112, $37;
cz $37, $7;

// --- Cycle 388 (m/X) target=$13 ---
m[0] = measure $125;
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
cz $13, $113;
cz $113, $38;
cz $38, $8;

// --- Cycle 389 (n/Z) target=$14 ---
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
cz $14, $114;
cz $114, $39;
cz $39, $9;

// --- Cycle 390 (m/X) target=$15 ---
m[0] = measure $125;
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
cz $15, $115;
cz $115, $40;
cz $40, $10;

// --- Cycle 391 (n/Z) target=$16 ---
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
cz $128, $16;
cz $16, $116;
cz $116, $41;
cz $41, $11;

// --- Cycle 392 (m/X) target=$17 ---
m[0] = measure $125;
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
cz $17, $117;
cz $117, $42;
cz $42, $12;

// --- Cycle 393 (n/Z) target=$18 ---
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
cz $128, $18;
cz $18, $118;
cz $118, $43;
cz $43, $13;

// --- Cycle 394 (m/X) target=$19 ---
m[0] = measure $125;
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
cz $19, $119;
cz $119, $44;
cz $44, $14;

// --- Cycle 395 (n/Z) target=$20 ---
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
cz $128, $20;
cz $20, $120;
cz $120, $45;
cz $45, $15;

// --- Cycle 396 (m/X) target=$21 ---
m[0] = measure $125;
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
cz $21, $121;
cz $121, $46;
cz $46, $16;

// --- Cycle 397 (n/Z) target=$22 ---
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
cz $128, $22;
cz $22, $122;
cz $122, $47;
cz $47, $17;

// --- Cycle 398 (m/X) target=$23 ---
m[0] = measure $125;
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
cz $23, $123;
cz $123, $48;
cz $48, $18;

// --- Cycle 399 (n/Z) target=$24 ---
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
cz $128, $24;
cz $24, $124;
cz $124, $49;
cz $49, $19;

// --- Cycle 400 (m/X) target=$25 ---
m[0] = measure $125;
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
cz $25, $0;
cz $0, $50;
cz $50, $45;

// --- Cycle 401 (n/Z) target=$26 ---
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
cz $128, $26;
cz $26, $1;
cz $1, $51;
cz $51, $46;

// --- Cycle 402 (m/X) target=$27 ---
m[0] = measure $125;
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
cz $27, $2;
cz $2, $52;
cz $52, $47;

// --- Cycle 403 (n/Z) target=$28 ---
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
cz $128, $28;
cz $28, $3;
cz $3, $53;
cz $53, $48;

// --- Cycle 404 (m/X) target=$29 ---
m[0] = measure $125;
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
cz $29, $4;
cz $4, $54;
cz $54, $49;

// --- Cycle 405 (n/Z) target=$30 ---
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
cz $128, $30;
cz $30, $5;
cz $5, $55;
cz $55, $25;

// --- Cycle 406 (m/X) target=$31 ---
m[0] = measure $125;
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
cz $31, $6;
cz $6, $56;
cz $56, $26;

// --- Cycle 407 (n/Z) target=$32 ---
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
cz $128, $32;
cz $32, $7;
cz $7, $57;
cz $57, $27;

// --- Cycle 408 (m/X) target=$33 ---
m[0] = measure $125;
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
cz $33, $8;
cz $8, $58;
cz $58, $28;

// --- Cycle 409 (n/Z) target=$34 ---
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
cz $128, $34;
cz $34, $9;
cz $9, $59;
cz $59, $29;

// --- Cycle 410 (m/X) target=$35 ---
m[0] = measure $125;
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
cz $35, $10;
cz $10, $60;
cz $60, $30;

// --- Cycle 411 (n/Z) target=$36 ---
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
cz $128, $36;
cz $36, $11;
cz $11, $61;
cz $61, $31;

// --- Cycle 412 (m/X) target=$37 ---
m[0] = measure $125;
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
cz $37, $12;
cz $12, $62;
cz $62, $32;

// --- Cycle 413 (n/Z) target=$38 ---
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
cz $128, $38;
cz $38, $13;
cz $13, $63;
cz $63, $33;

// --- Cycle 414 (m/X) target=$39 ---
m[0] = measure $125;
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
cz $39, $14;
cz $14, $64;
cz $64, $34;

// --- Cycle 415 (n/Z) target=$40 ---
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
cz $128, $40;
cz $40, $15;
cz $15, $65;
cz $65, $35;

// --- Cycle 416 (m/X) target=$41 ---
m[0] = measure $125;
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
cz $41, $16;
cz $16, $66;
cz $66, $36;

// --- Cycle 417 (n/Z) target=$42 ---
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
cz $128, $42;
cz $42, $17;
cz $17, $67;
cz $67, $37;

// --- Cycle 418 (m/X) target=$43 ---
m[0] = measure $125;
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
cz $43, $18;
cz $18, $68;
cz $68, $38;

// --- Cycle 419 (n/Z) target=$44 ---
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
cz $128, $44;
cz $44, $19;
cz $19, $69;
cz $69, $39;

// --- Cycle 420 (m/X) target=$45 ---
m[0] = measure $125;
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
cz $45, $20;
cz $20, $70;
cz $70, $40;

// --- Cycle 421 (n/Z) target=$46 ---
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
cz $128, $46;
cz $46, $21;
cz $21, $71;
cz $71, $41;

// --- Cycle 422 (m/X) target=$47 ---
m[0] = measure $125;
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
cz $47, $22;
cz $22, $72;
cz $72, $42;

// --- Cycle 423 (n/Z) target=$48 ---
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
cz $128, $48;
cz $48, $23;
cz $23, $73;
cz $73, $43;

// --- Cycle 424 (m/X) target=$49 ---
m[0] = measure $125;
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
cz $49, $24;
cz $24, $74;
cz $74, $44;

// --- Cycle 425 (n/Z) target=$50 ---
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
cz $128, $50;
cz $50, $25;
cz $25, $75;
cz $75, $70;

// --- Cycle 426 (m/X) target=$51 ---
m[0] = measure $125;
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
cz $51, $26;
cz $26, $76;
cz $76, $71;

// --- Cycle 427 (n/Z) target=$52 ---
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
cz $128, $52;
cz $52, $27;
cz $27, $77;
cz $77, $72;

// --- Cycle 428 (m/X) target=$53 ---
m[0] = measure $125;
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
cz $53, $28;
cz $28, $78;
cz $78, $73;

// --- Cycle 429 (n/Z) target=$54 ---
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
cz $128, $54;
cz $54, $29;
cz $29, $79;
cz $79, $74;

// --- Cycle 430 (m/X) target=$55 ---
m[0] = measure $125;
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
cz $55, $30;
cz $30, $80;
cz $80, $50;

// --- Cycle 431 (n/Z) target=$56 ---
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
cz $128, $56;
cz $56, $31;
cz $31, $81;
cz $81, $51;

// --- Cycle 432 (m/X) target=$57 ---
m[0] = measure $125;
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
cz $57, $32;
cz $32, $82;
cz $82, $52;

// --- Cycle 433 (n/Z) target=$58 ---
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
cz $128, $58;
cz $58, $33;
cz $33, $83;
cz $83, $53;

// --- Cycle 434 (m/X) target=$59 ---
m[0] = measure $125;
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
cz $59, $34;
cz $34, $84;
cz $84, $54;

// --- Cycle 435 (n/Z) target=$60 ---
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
cz $128, $60;
cz $60, $35;
cz $35, $85;
cz $85, $55;

// --- Cycle 436 (m/X) target=$61 ---
m[0] = measure $125;
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
cz $61, $36;
cz $36, $86;
cz $86, $56;

// --- Cycle 437 (n/Z) target=$62 ---
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
cz $128, $62;
cz $62, $37;
cz $37, $87;
cz $87, $57;

// --- Cycle 438 (m/X) target=$63 ---
m[0] = measure $125;
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
cz $63, $38;
cz $38, $88;
cz $88, $58;

// --- Cycle 439 (n/Z) target=$64 ---
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
cz $128, $64;
cz $64, $39;
cz $39, $89;
cz $89, $59;

// --- Cycle 440 (m/X) target=$65 ---
m[0] = measure $125;
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
cz $65, $40;
cz $40, $90;
cz $90, $60;

// --- Cycle 441 (n/Z) target=$66 ---
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
cz $128, $66;
cz $66, $41;
cz $41, $91;
cz $91, $61;

// --- Cycle 442 (m/X) target=$67 ---
m[0] = measure $125;
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
cz $67, $42;
cz $42, $92;
cz $92, $62;

// --- Cycle 443 (n/Z) target=$68 ---
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
cz $128, $68;
cz $68, $43;
cz $43, $93;
cz $93, $63;

// --- Cycle 444 (m/X) target=$69 ---
m[0] = measure $125;
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
cz $69, $44;
cz $44, $94;
cz $94, $64;

// --- Cycle 445 (n/Z) target=$70 ---
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
cz $128, $70;
cz $70, $45;
cz $45, $95;
cz $95, $65;

// --- Cycle 446 (m/X) target=$71 ---
m[0] = measure $125;
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
cz $71, $46;
cz $46, $96;
cz $96, $66;

// --- Cycle 447 (n/Z) target=$72 ---
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
cz $128, $72;
cz $72, $47;
cz $47, $97;
cz $97, $67;

// --- Cycle 448 (m/X) target=$73 ---
m[0] = measure $125;
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
cz $73, $48;
cz $48, $98;
cz $98, $68;

// --- Cycle 449 (n/Z) target=$74 ---
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
cz $128, $74;
cz $74, $49;
cz $49, $99;
cz $99, $69;

// --- Cycle 450 (m/X) target=$75 ---
m[0] = measure $125;
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
cz $75, $50;
cz $50, $100;
cz $100, $95;

// --- Cycle 451 (n/Z) target=$76 ---
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
cz $128, $76;
cz $76, $51;
cz $51, $101;
cz $101, $96;

// --- Cycle 452 (m/X) target=$77 ---
m[0] = measure $125;
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
cz $77, $52;
cz $52, $102;
cz $102, $97;

// --- Cycle 453 (n/Z) target=$78 ---
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
cz $128, $78;
cz $78, $53;
cz $53, $103;
cz $103, $98;

// --- Cycle 454 (m/X) target=$79 ---
m[0] = measure $125;
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
cz $79, $54;
cz $54, $104;
cz $104, $99;

// --- Cycle 455 (n/Z) target=$80 ---
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
cz $128, $80;
cz $80, $55;
cz $55, $105;
cz $105, $75;

// --- Cycle 456 (m/X) target=$81 ---
m[0] = measure $125;
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
cz $81, $56;
cz $56, $106;
cz $106, $76;

// --- Cycle 457 (n/Z) target=$82 ---
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
cz $128, $82;
cz $82, $57;
cz $57, $107;
cz $107, $77;

// --- Cycle 458 (m/X) target=$83 ---
m[0] = measure $125;
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
cz $83, $58;
cz $58, $108;
cz $108, $78;

// --- Cycle 459 (n/Z) target=$84 ---
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
cz $128, $84;
cz $84, $59;
cz $59, $109;
cz $109, $79;

// --- Cycle 460 (m/X) target=$85 ---
m[0] = measure $125;
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
cz $85, $60;
cz $60, $110;
cz $110, $80;

// --- Cycle 461 (n/Z) target=$86 ---
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
cz $128, $86;
cz $86, $61;
cz $61, $111;
cz $111, $81;

// --- Cycle 462 (m/X) target=$87 ---
m[0] = measure $125;
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
cz $87, $62;
cz $62, $112;
cz $112, $82;

// --- Cycle 463 (n/Z) target=$88 ---
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
cz $128, $88;
cz $88, $63;
cz $63, $113;
cz $113, $83;

// --- Cycle 464 (m/X) target=$89 ---
m[0] = measure $125;
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
cz $89, $64;
cz $64, $114;
cz $114, $84;

// --- Cycle 465 (n/Z) target=$90 ---
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
cz $128, $90;
cz $90, $65;
cz $65, $115;
cz $115, $85;

// --- Cycle 466 (m/X) target=$91 ---
m[0] = measure $125;
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
cz $91, $66;
cz $66, $116;
cz $116, $86;

// --- Cycle 467 (n/Z) target=$92 ---
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
cz $128, $92;
cz $92, $67;
cz $67, $117;
cz $117, $87;

// --- Cycle 468 (m/X) target=$93 ---
m[0] = measure $125;
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
cz $93, $68;
cz $68, $118;
cz $118, $88;

// --- Cycle 469 (n/Z) target=$94 ---
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
cz $128, $94;
cz $94, $69;
cz $69, $119;
cz $119, $89;

// --- Cycle 470 (m/X) target=$95 ---
m[0] = measure $125;
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
cz $95, $70;
cz $70, $120;
cz $120, $90;

// --- Cycle 471 (n/Z) target=$96 ---
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
cz $128, $96;
cz $96, $71;
cz $71, $121;
cz $121, $91;

// --- Cycle 472 (m/X) target=$97 ---
m[0] = measure $125;
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
cz $97, $72;
cz $72, $122;
cz $122, $92;

// --- Cycle 473 (n/Z) target=$98 ---
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
cz $128, $98;
cz $98, $73;
cz $73, $123;
cz $123, $93;

// --- Cycle 474 (m/X) target=$99 ---
m[0] = measure $125;
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
cz $99, $74;
cz $74, $124;
cz $124, $94;

// --- Cycle 475 (n/Z) target=$100 ---
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
cz $128, $100;
cz $100, $75;
cz $75, $0;
cz $0, $120;

// --- Cycle 476 (m/X) target=$101 ---
m[0] = measure $125;
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
cz $101, $76;
cz $76, $1;
cz $1, $121;

// --- Cycle 477 (n/Z) target=$102 ---
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
cz $128, $102;
cz $102, $77;
cz $77, $2;
cz $2, $122;

// --- Cycle 478 (m/X) target=$103 ---
m[0] = measure $125;
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
cz $103, $78;
cz $78, $3;
cz $3, $123;

// --- Cycle 479 (n/Z) target=$104 ---
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
cz $128, $104;
cz $104, $79;
cz $79, $4;
cz $4, $124;

// --- Cycle 480 (m/X) target=$105 ---
m[0] = measure $125;
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
cz $105, $80;
cz $80, $5;
cz $5, $100;

// --- Cycle 481 (n/Z) target=$106 ---
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
cz $128, $106;
cz $106, $81;
cz $81, $6;
cz $6, $101;

// --- Cycle 482 (m/X) target=$107 ---
m[0] = measure $125;
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
cz $107, $82;
cz $82, $7;
cz $7, $102;

// --- Cycle 483 (n/Z) target=$108 ---
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
cz $128, $108;
cz $108, $83;
cz $83, $8;
cz $8, $103;

// --- Cycle 484 (m/X) target=$109 ---
m[0] = measure $125;
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
cz $109, $84;
cz $84, $9;
cz $9, $104;

// --- Cycle 485 (n/Z) target=$110 ---
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
cz $128, $110;
cz $110, $85;
cz $85, $10;
cz $10, $105;

// --- Cycle 486 (m/X) target=$111 ---
m[0] = measure $125;
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
cz $111, $86;
cz $86, $11;
cz $11, $106;

// --- Cycle 487 (n/Z) target=$112 ---
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
cz $128, $112;
cz $112, $87;
cz $87, $12;
cz $12, $107;

// --- Cycle 488 (m/X) target=$113 ---
m[0] = measure $125;
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
cz $113, $88;
cz $88, $13;
cz $13, $108;

// --- Cycle 489 (n/Z) target=$114 ---
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
cz $128, $114;
cz $114, $89;
cz $89, $14;
cz $14, $109;

// --- Cycle 490 (m/X) target=$115 ---
m[0] = measure $125;
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
cz $115, $90;
cz $90, $15;
cz $15, $110;

// --- Cycle 491 (n/Z) target=$116 ---
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
cz $128, $116;
cz $116, $91;
cz $91, $16;
cz $16, $111;

// --- Cycle 492 (m/X) target=$117 ---
m[0] = measure $125;
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
cz $117, $92;
cz $92, $17;
cz $17, $112;

// --- Cycle 493 (n/Z) target=$118 ---
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
cz $128, $118;
cz $118, $93;
cz $93, $18;
cz $18, $113;

// --- Cycle 494 (m/X) target=$119 ---
m[0] = measure $125;
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
cz $119, $94;
cz $94, $19;
cz $19, $114;

// --- Cycle 495 (n/Z) target=$120 ---
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
cz $128, $120;
cz $120, $95;
cz $95, $20;
cz $20, $115;

// --- Cycle 496 (m/X) target=$121 ---
m[0] = measure $125;
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
cz $121, $96;
cz $96, $21;
cz $21, $116;

// --- Cycle 497 (n/Z) target=$122 ---
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
cz $122, $97;
cz $97, $22;
cz $22, $117;

// --- Cycle 498 (m/X) target=$123 ---
m[0] = measure $125;
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
cz $123, $98;
cz $98, $23;
cz $23, $118;

// --- Cycle 499 (n/Z) target=$124 ---
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
cz $128, $124;
cz $124, $99;
cz $99, $24;
cz $24, $119;

// Phase 5: Final measurement of all data qubits
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
