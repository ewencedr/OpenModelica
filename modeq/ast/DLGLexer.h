#ifndef DLGLexer_h
#define DLGLexer_h
/*
 * D L G L e x e r  C l a s s  D e f i n i t i o n
 *
 * Generated from: parser.dlg
 *
 * 1989-1994 by  Will Cohen, Terence Parr, and Hank Dietz
 * Purdue University Electrical Engineering
 * DLG Version 1.33
 */


#include "DLexerBase.h"

class DLGLexer : public DLGLexerBase {
public:
	static const int MAX_MODE;
	static const int DfaStates;
	static const int START;
	static const int C_STYLE_COMMENT;
	typedef unsigned short DfaState;

	DLGLexer(DLGInputStream *in,
		unsigned bufsize=2000)
		: DLGLexerBase(in, bufsize, 0)
	{
	;
	}
	void	mode(int);
	ANTLRTokenType nextTokenType(void);
	void	advance(void);
protected:
	ANTLRTokenType act1();
	ANTLRTokenType act2();
	ANTLRTokenType act3();
	ANTLRTokenType act4();
	ANTLRTokenType act5();
	ANTLRTokenType act6();
	ANTLRTokenType act7();
	ANTLRTokenType act8();
	ANTLRTokenType act9();
	ANTLRTokenType act10();
	ANTLRTokenType act11();
	ANTLRTokenType act12();
	ANTLRTokenType act13();
	ANTLRTokenType act14();
	ANTLRTokenType act15();
	ANTLRTokenType act16();
	ANTLRTokenType act17();
	ANTLRTokenType act18();
	ANTLRTokenType act19();
	ANTLRTokenType act20();
	ANTLRTokenType act21();
	ANTLRTokenType act22();
	ANTLRTokenType act23();
	ANTLRTokenType act24();
	ANTLRTokenType act25();
	ANTLRTokenType act26();
	ANTLRTokenType act27();
	ANTLRTokenType act28();
	ANTLRTokenType act29();
	ANTLRTokenType act30();
	ANTLRTokenType act31();
	ANTLRTokenType act32();
	ANTLRTokenType act33();
	ANTLRTokenType act34();
	ANTLRTokenType act35();
	ANTLRTokenType act36();
	ANTLRTokenType act37();
	ANTLRTokenType act38();
	ANTLRTokenType act39();
	ANTLRTokenType act40();
	ANTLRTokenType act41();
	ANTLRTokenType act42();
	ANTLRTokenType act43();
	ANTLRTokenType act44();
	ANTLRTokenType act45();
	ANTLRTokenType act46();
	ANTLRTokenType act47();
	ANTLRTokenType act48();
	ANTLRTokenType act49();
	ANTLRTokenType act50();
	ANTLRTokenType act51();
	ANTLRTokenType act52();
	ANTLRTokenType act53();
	ANTLRTokenType act54();
	ANTLRTokenType act55();
	ANTLRTokenType act56();
	ANTLRTokenType act57();
	ANTLRTokenType act58();
	ANTLRTokenType act59();
	ANTLRTokenType act60();
	ANTLRTokenType act61();
	ANTLRTokenType act62();
	ANTLRTokenType act63();
	ANTLRTokenType act64();
	ANTLRTokenType act65();
	ANTLRTokenType act66();
	ANTLRTokenType act67();
	ANTLRTokenType act68();
	ANTLRTokenType act69();
	ANTLRTokenType act70();
	ANTLRTokenType act71();
	ANTLRTokenType act72();
	ANTLRTokenType act73();
	ANTLRTokenType act74();
	ANTLRTokenType act75();
	ANTLRTokenType act76();
	ANTLRTokenType act77();
	static DfaState st0[51];
	static DfaState st1[51];
	static DfaState st2[51];
	static DfaState st3[51];
	static DfaState st4[51];
	static DfaState st5[51];
	static DfaState st6[51];
	static DfaState st7[51];
	static DfaState st8[51];
	static DfaState st9[51];
	static DfaState st10[51];
	static DfaState st11[51];
	static DfaState st12[51];
	static DfaState st13[51];
	static DfaState st14[51];
	static DfaState st15[51];
	static DfaState st16[51];
	static DfaState st17[51];
	static DfaState st18[51];
	static DfaState st19[51];
	static DfaState st20[51];
	static DfaState st21[51];
	static DfaState st22[51];
	static DfaState st23[51];
	static DfaState st24[51];
	static DfaState st25[51];
	static DfaState st26[51];
	static DfaState st27[51];
	static DfaState st28[51];
	static DfaState st29[51];
	static DfaState st30[51];
	static DfaState st31[51];
	static DfaState st32[51];
	static DfaState st33[51];
	static DfaState st34[51];
	static DfaState st35[51];
	static DfaState st36[51];
	static DfaState st37[51];
	static DfaState st38[51];
	static DfaState st39[51];
	static DfaState st40[51];
	static DfaState st41[51];
	static DfaState st42[51];
	static DfaState st43[51];
	static DfaState st44[51];
	static DfaState st45[51];
	static DfaState st46[51];
	static DfaState st47[51];
	static DfaState st48[51];
	static DfaState st49[51];
	static DfaState st50[51];
	static DfaState st51[51];
	static DfaState st52[51];
	static DfaState st53[51];
	static DfaState st54[51];
	static DfaState st55[51];
	static DfaState st56[51];
	static DfaState st57[51];
	static DfaState st58[51];
	static DfaState st59[51];
	static DfaState st60[51];
	static DfaState st61[51];
	static DfaState st62[51];
	static DfaState st63[51];
	static DfaState st64[51];
	static DfaState st65[51];
	static DfaState st66[51];
	static DfaState st67[51];
	static DfaState st68[51];
	static DfaState st69[51];
	static DfaState st70[51];
	static DfaState st71[51];
	static DfaState st72[51];
	static DfaState st73[51];
	static DfaState st74[51];
	static DfaState st75[51];
	static DfaState st76[51];
	static DfaState st77[51];
	static DfaState st78[51];
	static DfaState st79[51];
	static DfaState st80[51];
	static DfaState st81[51];
	static DfaState st82[51];
	static DfaState st83[51];
	static DfaState st84[51];
	static DfaState st85[51];
	static DfaState st86[51];
	static DfaState st87[51];
	static DfaState st88[51];
	static DfaState st89[51];
	static DfaState st90[51];
	static DfaState st91[51];
	static DfaState st92[51];
	static DfaState st93[51];
	static DfaState st94[51];
	static DfaState st95[51];
	static DfaState st96[51];
	static DfaState st97[51];
	static DfaState st98[51];
	static DfaState st99[51];
	static DfaState st100[51];
	static DfaState st101[51];
	static DfaState st102[51];
	static DfaState st103[51];
	static DfaState st104[51];
	static DfaState st105[51];
	static DfaState st106[51];
	static DfaState st107[51];
	static DfaState st108[51];
	static DfaState st109[51];
	static DfaState st110[51];
	static DfaState st111[51];
	static DfaState st112[51];
	static DfaState st113[51];
	static DfaState st114[51];
	static DfaState st115[51];
	static DfaState st116[51];
	static DfaState st117[51];
	static DfaState st118[51];
	static DfaState st119[51];
	static DfaState st120[51];
	static DfaState st121[51];
	static DfaState st122[51];
	static DfaState st123[51];
	static DfaState st124[51];
	static DfaState st125[51];
	static DfaState st126[51];
	static DfaState st127[51];
	static DfaState st128[51];
	static DfaState st129[51];
	static DfaState st130[51];
	static DfaState st131[51];
	static DfaState st132[51];
	static DfaState st133[51];
	static DfaState st134[51];
	static DfaState st135[51];
	static DfaState st136[51];
	static DfaState st137[51];
	static DfaState st138[51];
	static DfaState st139[51];
	static DfaState st140[51];
	static DfaState st141[51];
	static DfaState st142[51];
	static DfaState st143[51];
	static DfaState st144[51];
	static DfaState st145[51];
	static DfaState st146[51];
	static DfaState st147[51];
	static DfaState st148[51];
	static DfaState st149[51];
	static DfaState st150[51];
	static DfaState st151[51];
	static DfaState st152[51];
	static DfaState st153[51];
	static DfaState st154[51];
	static DfaState st155[51];
	static DfaState st156[51];
	static DfaState st157[51];
	static DfaState st158[51];
	static DfaState st159[51];
	static DfaState st160[51];
	static DfaState st161[51];
	static DfaState st162[51];
	static DfaState st163[51];
	static DfaState st164[51];
	static DfaState st165[51];
	static DfaState st166[51];
	static DfaState st167[51];
	static DfaState st168[51];
	static DfaState st169[51];
	static DfaState st170[51];
	static DfaState st171[51];
	static DfaState st172[51];
	static DfaState st173[51];
	static DfaState st174[51];
	static DfaState st175[51];
	static DfaState st176[51];
	static DfaState st177[51];
	static DfaState st178[51];
	static DfaState st179[51];
	static DfaState st180[51];
	static DfaState st181[51];
	static DfaState st182[51];
	static DfaState st183[51];
	static DfaState st184[51];
	static DfaState st185[51];
	static DfaState st186[51];
	static DfaState st187[51];
	static DfaState st188[51];
	static DfaState st189[51];
	static DfaState st190[51];
	static DfaState st191[51];
	static DfaState st192[51];
	static DfaState st193[51];
	static DfaState st194[51];
	static DfaState st195[51];
	static DfaState st196[51];
	static DfaState st197[51];
	static DfaState st198[51];
	static DfaState st199[51];
	static DfaState st200[51];
	static DfaState st201[51];
	static DfaState st202[51];
	static DfaState st203[51];
	static DfaState st204[51];
	static DfaState st205[51];
	static DfaState st206[51];
	static DfaState st207[51];
	static DfaState st208[51];
	static DfaState st209[51];
	static DfaState st210[51];
	static DfaState st211[51];
	static DfaState st212[51];
	static DfaState st213[51];
	static DfaState st214[51];
	static DfaState st215[51];
	static DfaState st216[51];
	static DfaState st217[51];
	static DfaState st218[51];
	static DfaState st219[51];
	static DfaState st220[51];
	static DfaState st221[51];
	static DfaState st222[51];
	static DfaState st223[51];
	static DfaState st224[51];
	static DfaState st225[51];
	static DfaState st226[51];
	static DfaState st227[51];
	static DfaState st228[51];
	static DfaState st229[51];
	static DfaState st230[51];
	static DfaState st231[51];
	static DfaState st232[51];
	static DfaState st233[51];
	static DfaState st234[51];
	static DfaState st235[51];
	static DfaState st236[51];
	static DfaState st237[51];
	static DfaState st238[51];
	static DfaState st239[51];
	static DfaState st240[51];
	static DfaState st241[51];
	static DfaState st242[51];
	static DfaState st243[51];
	static DfaState st244[51];
	static DfaState st245[6];
	static DfaState st246[6];
	static DfaState st247[6];
	static DfaState st248[6];
	static DfaState st249[6];
	static DfaState st250[6];
	static DfaState *dfa[251];
	static DfaState dfa_base[];
	static unsigned char *b_class_no[];
	static DfaState accepts[252];
	static DLGChar alternatives[252];
	static ANTLRTokenType (DLGLexer::*actions[78])();
	static unsigned char shift0[257];
	static unsigned char shift1[257];
	int ZZSHIFT(int c) { return b_class_no[automaton][1+c]; }
};
typedef ANTLRTokenType (DLGLexer::*PtrDLGLexerMemberFunc)();
#endif
