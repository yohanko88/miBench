	.arch armv5t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"matmul_large.c"
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 1240
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #1232
	sub	sp, sp, #12
	mov	r2, #13
	mov	fp, #1
	mov	r4, #8
	mov	r0, #11
	mov	r1, #12
	mov	r3, #14
	str	r2, [sp, #88]
	mov	r2, #17
	mov	r9, #2
	mov	sl, #3
	mov	r8, #4
	mov	r7, #5
	mov	r6, #6
	mov	r5, #7
	mov	lr, #9
	mov	ip, #10
	str	fp, [sp, #40]
	str	r4, [sp, #68]
	str	r0, [sp, #80]
	str	r1, [sp, #84]
	str	r3, [sp, #92]
	mov	r0, #15
	mov	r1, #16
	str	r2, [sp, #104]
	mov	r3, #18
	mov	r4, #19
	mov	fp, #26
	mov	r2, #31
	str	r9, [sp, #44]
	str	sl, [sp, #48]
	str	r8, [sp, #52]
	str	r7, [sp, #56]
	str	r6, [sp, #60]
	str	r5, [sp, #64]
	str	lr, [sp, #72]
	str	ip, [sp, #76]
	str	r0, [sp, #96]
	str	r1, [sp, #100]
	str	r3, [sp, #108]
	str	r4, [sp, #112]
	mov	r5, #20
	mov	r6, #21
	mov	r7, #22
	mov	r8, #23
	mov	r9, #24
	mov	sl, #25
	str	fp, [sp, #140]
	mov	ip, #27
	mov	lr, #28
	mov	r0, #29
	mov	r1, #30
	str	r2, [sp, #160]
	mov	r3, #32
	mov	r4, #33
	mov	fp, #40
	mov	r2, #45
	str	r5, [sp, #116]
	str	r6, [sp, #120]
	str	r7, [sp, #124]
	str	r8, [sp, #128]
	str	r9, [sp, #132]
	str	sl, [sp, #136]
	str	ip, [sp, #144]
	str	lr, [sp, #148]
	str	r0, [sp, #152]
	str	r1, [sp, #156]
	str	r3, [sp, #164]
	mov	ip, #41
	str	r4, [sp, #168]
	mov	r0, #43
	str	fp, [sp, #196]
	mov	r1, #44
	str	r2, [sp, #216]
	mov	r3, #46
	mov	fp, #52
	mov	r2, #57
	mov	r5, #34
	mov	r6, #35
	mov	r7, #36
	mov	r8, #37
	str	ip, [sp, #200]
	mov	lr, #42
	str	r0, [sp, #208]
	str	r1, [sp, #212]
	str	r3, [sp, #220]
	mov	r4, #47
	str	fp, [sp, #244]
	mov	ip, #53
	mov	r0, #55
	mov	r1, #56
	str	r2, [sp, #264]
	mov	r3, #58
	mov	fp, #60
	mov	r2, #64
	str	r5, [sp, #172]
	str	r6, [sp, #176]
	str	r7, [sp, #180]
	str	r8, [sp, #184]
	mov	r9, #38
	mov	sl, #39
	str	lr, [sp, #204]
	str	r4, [sp, #224]
	mov	r5, #48
	mov	r6, #49
	mov	r7, #50
	mov	r8, #51
	str	ip, [sp, #248]
	mov	lr, #54
	str	r0, [sp, #256]
	str	r1, [sp, #260]
	str	r3, [sp, #268]
	mov	r4, #59
	str	fp, [sp, #276]
	mov	ip, #61
	mov	r0, #62
	mov	r1, #63
	str	r2, [sp, #292]
	mov	r3, #65
	mov	fp, #66
	mov	r2, #67
	str	r9, [sp, #188]
	str	sl, [sp, #192]
	str	r5, [sp, #228]
	str	r6, [sp, #232]
	str	r7, [sp, #236]
	str	r8, [sp, #240]
	str	lr, [sp, #252]
	str	r4, [sp, #272]
	str	ip, [sp, #280]
	str	r0, [sp, #284]
	str	r1, [sp, #288]
	str	r3, [sp, #296]
	str	fp, [sp, #300]
	str	r2, [sp, #304]
	mov	r2, #70
	str	r2, [sp, #316]
	mov	r2, #71
	str	r2, [sp, #320]
	mov	r2, #72
	str	r2, [sp, #324]
	mov	r2, #73
	str	r2, [sp, #328]
	mov	r2, #74
	str	r2, [sp, #332]
	mov	r2, #75
	str	r2, [sp, #336]
	mov	r2, #76
	str	r2, [sp, #340]
	mov	r2, #77
	str	r2, [sp, #344]
	mov	r2, #78
	str	r2, [sp, #348]
	mov	r2, #79
	str	r2, [sp, #352]
	mov	r2, #80
	str	r2, [sp, #356]
	mov	r2, #81
	str	r2, [sp, #360]
	mov	r2, #82
	str	r2, [sp, #364]
	mov	r2, #83
	str	r2, [sp, #368]
	mov	r2, #84
	str	r2, [sp, #372]
	mov	r2, #85
	str	r2, [sp, #376]
	mov	r2, #86
	str	r2, [sp, #380]
	mov	r2, #87
	str	r2, [sp, #384]
	mov	r2, #88
	str	r2, [sp, #388]
	mov	r2, #89
	str	r2, [sp, #392]
	mov	r2, #90
	str	r2, [sp, #396]
	mov	r2, #91
	str	r2, [sp, #400]
	mov	r2, #92
	str	r2, [sp, #404]
	mov	r2, #93
	str	r2, [sp, #408]
	mov	r2, #94
	str	r2, [sp, #412]
	mov	r2, #95
	str	r2, [sp, #416]
	mov	r2, #96
	str	r2, [sp, #420]
	mov	r2, #97
	str	r2, [sp, #424]
	mov	r2, #98
	mov	r3, #68
	str	r2, [sp, #428]
	mov	r2, #99
	mov	r9, #101
	str	r3, [sp, #308]
	mov	fp, #69
	mov	r3, #113
	str	r2, [sp, #432]
	mov	r2, #100
	str	fp, [sp, #312]
	str	r2, [sp, #436]
	str	r9, [sp, #440]
	str	r3, [sp, #488]
	mov	r3, #115
	str	r3, [sp, #496]
	mov	r3, #116
	str	r3, [sp, #500]
	mov	r3, #117
	str	r3, [sp, #504]
	mov	r3, #118
	str	r3, [sp, #508]
	mov	r3, #119
	str	r3, [sp, #512]
	mov	r3, #120
	str	r3, [sp, #516]
	mov	r3, #121
	str	r3, [sp, #520]
	mov	r3, #122
	str	r3, [sp, #524]
	mov	r3, #123
	str	r3, [sp, #528]
	mov	r3, #124
	str	r3, [sp, #532]
	mov	r3, #125
	str	r3, [sp, #536]
	mov	r3, #126
	str	r3, [sp, #540]
	mov	r3, #127
	str	r3, [sp, #544]
	mov	r3, #128
	str	r3, [sp, #548]
	mov	r3, #129
	str	r3, [sp, #552]
	mov	r3, #130
	str	r3, [sp, #556]
	mov	r3, #131
	str	r3, [sp, #560]
	mov	r3, #132
	str	r3, [sp, #564]
	mov	r3, #133
	str	r3, [sp, #568]
	mov	r3, #134
	mov	sl, #102
	mov	r8, #103
	mov	r7, #104
	mov	r6, #105
	mov	r5, #106
	mov	r4, #107
	mov	lr, #108
	mov	ip, #109
	mov	r0, #110
	mov	r1, #111
	mov	fp, #114
	mov	r9, #136
	mov	r2, #112
	str	r3, [sp, #572]
	mov	r3, #135
	str	sl, [sp, #444]
	str	r8, [sp, #448]
	str	r7, [sp, #452]
	str	r6, [sp, #456]
	str	r5, [sp, #460]
	str	r4, [sp, #464]
	str	lr, [sp, #468]
	str	ip, [sp, #472]
	str	r0, [sp, #476]
	str	r1, [sp, #480]
	str	r2, [sp, #484]
	str	fp, [sp, #492]
	str	r3, [sp, #576]
	str	r9, [sp, #580]
	mov	r9, #148
	str	r9, [sp, #628]
	mov	r9, #151
	str	r9, [sp, #640]
	mov	r9, #152
	str	r9, [sp, #644]
	mov	r9, #153
	str	r9, [sp, #648]
	mov	r9, #154
	str	r9, [sp, #652]
	mov	r9, #155
	str	r9, [sp, #656]
	mov	r9, #156
	str	r9, [sp, #660]
	mov	r9, #157
	str	r9, [sp, #664]
	mov	r9, #158
	str	r9, [sp, #668]
	mov	r9, #159
	str	r9, [sp, #672]
	mov	r9, #160
	str	r9, [sp, #676]
	mov	r9, #161
	str	r9, [sp, #680]
	mov	r9, #162
	str	r9, [sp, #684]
	mov	r9, #163
	str	r9, [sp, #688]
	mov	r9, #164
	str	r9, [sp, #692]
	mov	r9, #165
	str	r9, [sp, #696]
	mov	r9, #166
	str	r9, [sp, #700]
	mov	r9, #167
	mov	fp, #149
	str	r9, [sp, #704]
	mov	r9, #168
	mov	sl, #137
	mov	r8, #138
	mov	r7, #139
	mov	r6, #140
	mov	r5, #141
	mov	r4, #142
	mov	lr, #143
	mov	ip, #144
	mov	r0, #145
	mov	r1, #146
	mov	r2, #147
	str	fp, [sp, #632]
	str	r9, [sp, #708]
	mov	fp, #150
	mov	r9, #169
	str	sl, [sp, #584]
	str	r8, [sp, #588]
	mov	sl, #172
	str	r7, [sp, #592]
	str	r6, [sp, #596]
	str	r5, [sp, #600]
	str	r4, [sp, #604]
	str	lr, [sp, #608]
	str	ip, [sp, #612]
	str	r0, [sp, #616]
	str	r1, [sp, #620]
	str	r2, [sp, #624]
	str	fp, [sp, #636]
	str	r9, [sp, #712]
	mov	fp, #184
	mov	r9, #170
	mov	r8, #173
	mov	r7, #174
	mov	r6, #175
	mov	r5, #176
	mov	r4, #177
	mov	lr, #178
	mov	ip, #179
	mov	r0, #180
	mov	r1, #181
	mov	r2, #182
	mov	r3, #183
	str	r9, [sp, #716]
	str	sl, [sp, #724]
	mov	r9, #171
	mov	sl, #185
	str	fp, [sp, #772]
	mov	fp, #186
	str	r9, [sp, #720]
	str	r8, [sp, #728]
	str	r7, [sp, #732]
	str	r6, [sp, #736]
	str	r5, [sp, #740]
	str	r4, [sp, #744]
	str	lr, [sp, #748]
	str	ip, [sp, #752]
	str	r0, [sp, #756]
	str	r1, [sp, #760]
	str	r2, [sp, #764]
	str	r3, [sp, #768]
	mov	r2, #191
	mov	r3, #192
	str	sl, [sp, #776]
	str	fp, [sp, #780]
	mov	ip, #187
	mov	lr, #188
	mov	r0, #189
	mov	r1, #190
	mov	r4, #193
	mov	r5, #194
	mov	r6, #195
	mov	r7, #196
	mov	r8, #197
	mov	r9, #198
	mov	sl, #199
	add	fp, sp, #440
	str	r2, [sp, #800]
	str	r3, [sp, #804]
	str	ip, [sp, #784]
	str	lr, [sp, #788]
	str	r0, [sp, #792]
	str	r1, [sp, #796]
	str	r4, [sp, #808]
	str	r5, [sp, #812]
	str	r6, [sp, #816]
	str	r7, [sp, #820]
	str	r8, [sp, #824]
	str	r9, [sp, #828]
	str	sl, [sp, #832]
	add	r3, sp, #40
	add	r2, sp, #840
	str	fp, [sp, #32]
.L2:
	mov	r1, #102
	ldmia	r3, {r0, ip}
	mov	r5, #114
	mul	sl, r1, r0
	mul	r7, r5, ip
	mov	lr, #101
	mul	r9, lr, r0
	mov	r4, #103
	mov	fp, #115
	mov	r1, #112
	mla	sl, r1, ip, sl
	mul	r8, r4, r0
	mul	r6, fp, ip
	mov	r5, #104
	mov	r1, #116
	mla	r7, r5, r0, r7
	mul	r5, r1, ip
	mov	lr, #111
	mla	r9, lr, ip, r9
	mov	r4, #113
	mov	lr, #105
	mla	fp, lr, r0, r6
	mla	r8, r4, ip, r8
	mov	r6, #117
	mov	r4, #106
	mla	r5, r4, r0, r5
	mul	r4, r6, ip
	mov	r6, #119
	mul	lr, r6, ip
	str	fp, [sp, #36]
	mov	fp, #107
	ldr	r1, [r3, #8]
	mla	r4, fp, r0, r4
	mov	fp, #109
	mla	lr, fp, r0, lr
	mov	fp, #121
	mla	r6, fp, r1, r9
	mov	r9, #122
	mov	fp, #123
	str	r6, [sp, #0]
	mla	r6, r9, r1, sl
	mla	sl, fp, r1, r8
	ldr	fp, [sp, #36]
	str	sl, [sp, #8]
	mov	sl, #125
	mla	r9, sl, r1, fp
	mov	r8, #124
	str	r6, [sp, #4]
	mla	r6, r8, r1, r7
	str	r9, [sp, #16]
	mov	r7, #126
	mov	r9, #127
	mla	r8, r9, r1, r4
	str	r6, [sp, #12]
	mov	fp, #129
	mla	r6, r7, r1, r5
	mov	r4, #118
	mov	r5, #120
	mla	sl, fp, r1, lr
	mul	fp, r4, ip
	mul	ip, r5, ip
	str	r6, [sp, #20]
	mov	r7, #110
	mov	r6, #108
	mla	fp, r6, r0, fp
	mla	r0, r7, r0, ip
	ldr	lr, [r3, #12]
	ldr	ip, [sp, #0]
	mov	r9, #130
	str	r8, [sp, #28]
	str	sl, [sp, #36]
	mla	r8, r9, r1, r0
	mov	sl, #131
	mla	r9, sl, lr, ip
	ldr	ip, [sp, #12]
	ldr	r5, [sp, #8]
	add	fp, fp, r1, asl #7
	mov	r6, #134
	ldr	r1, [sp, #4]
	mla	r7, r6, lr, ip
	mov	r0, #132
	ldr	ip, [sp, #20]
	mov	r4, #133
	str	r8, [sp, #24]
	mla	sl, r0, lr, r1
	mla	r8, r4, lr, r5
	ldr	r1, [sp, #16]
	mov	r4, #136
	mla	r5, r4, lr, ip
	mov	r0, #135
	ldr	r4, [sp, #28]
	mla	r6, r0, lr, r1
	mov	r1, #137
	mla	r0, r1, lr, r4
	ldr	r1, [sp, #36]
	str	r0, [sp, #20]
	mov	r0, #139
	mla	ip, r0, lr, r1
	mov	r4, #138
	mla	fp, r4, lr, fp
	ldr	r4, [sp, #24]
	mov	r1, #140
	str	ip, [sp, #36]
	mla	ip, r1, lr, r4
	ldr	r0, [r3, #16]
	str	ip, [sp, #28]
	mov	ip, #141
	mla	r9, ip, r0, r9
	mov	ip, #145
	mla	r6, ip, r0, r6
	mov	r4, #144
	ldr	ip, [sp, #20]
	mla	r7, r4, r0, r7
	mov	r1, #143
	mov	r4, #147
	mla	r8, r1, r0, r8
	mla	r1, r4, r0, ip
	mov	lr, #142
	ldr	r4, [sp, #36]
	mla	sl, lr, r0, sl
	str	r1, [sp, #24]
	mov	lr, #146
	mov	r1, #149
	mla	r5, lr, r0, r5
	mla	lr, r1, r0, r4
	mov	ip, #148
	mla	fp, ip, r0, fp
	ldr	ip, [sp, #28]
	mov	r4, #150
	str	lr, [sp, #20]
	mla	lr, r4, r0, ip
	ldr	r1, [r3, #20]
	str	lr, [sp, #36]
	mov	lr, #151
	mla	r9, lr, r1, r9
	mov	lr, #155
	mla	r6, lr, r1, r6
	mov	ip, #154
	ldr	lr, [sp, #24]
	mla	r7, ip, r1, r7
	mov	r4, #153
	mov	ip, #157
	mla	r8, r4, r1, r8
	mla	r4, ip, r1, lr
	mov	r0, #152
	ldr	ip, [sp, #20]
	str	r4, [sp, #28]
	mla	sl, r0, r1, sl
	mov	r4, #159
	mov	r0, #156
	mla	r5, r0, r1, r5
	mla	r0, r4, r1, ip
	mov	lr, #158
	mla	fp, lr, r1, fp
	ldr	lr, [sp, #36]
	str	r0, [sp, #24]
	mov	ip, #160
	ldr	r0, [r3, #24]
	mla	r4, ip, r1, lr
	mov	r1, #161
	mla	r9, r1, r0, r9
	mov	r1, #165
	mla	r6, r1, r0, r6
	mov	lr, #164
	ldr	r1, [sp, #28]
	mla	r7, lr, r0, r7
	mov	ip, #163
	mov	lr, #167
	mla	r8, ip, r0, r8
	mla	ip, lr, r0, r1
	str	r4, [sp, #36]
	ldr	lr, [sp, #24]
	mov	r4, #162
	str	ip, [sp, #28]
	mla	sl, r4, r0, sl
	mov	ip, #169
	mov	r4, #166
	mla	r5, r4, r0, r5
	mla	r4, ip, r0, lr
	mov	r1, #168
	ldr	lr, [sp, #36]
	mla	fp, r1, r0, fp
	mov	ip, #170
	ldr	r1, [r3, #28]
	str	r4, [sp, #24]
	mla	r4, ip, r0, lr
	mov	r0, #171
	mla	r9, r0, r1, r9
	mov	r0, #175
	mla	r6, r0, r1, r6
	mov	lr, #174
	ldr	r0, [sp, #28]
	mla	r7, lr, r1, r7
	mov	ip, #173
	mov	lr, #177
	mla	r8, ip, r1, r8
	mla	ip, lr, r1, r0
	str	r4, [sp, #36]
	ldr	lr, [sp, #24]
	mov	r4, #172
	str	ip, [sp, #28]
	mla	sl, r4, r1, sl
	mov	ip, #179
	mov	r4, #176
	mla	r5, r4, r1, r5
	mla	r4, ip, r1, lr
	ldr	lr, [sp, #36]
	mov	ip, #180
	str	r4, [sp, #24]
	mla	r4, ip, r1, lr
	mov	r0, #178
	mla	fp, r0, r1, fp
	ldr	r0, [r3, #32]
	mov	lr, #184
	str	r4, [sp, #36]
	mla	r7, lr, r0, r7
	mov	r4, #182
	ldr	lr, [sp, #28]
	mov	ip, #183
	mla	sl, r4, r0, sl
	mla	r8, ip, r0, r8
	mov	r4, #186
	mov	ip, #187
	mla	r5, r4, r0, r5
	mov	r1, #181
	mla	r4, ip, r0, lr
	ldr	lr, [sp, #24]
	mla	r9, r1, r0, r9
	mov	ip, #189
	mov	r1, #185
	mla	r6, r1, r0, r6
	mla	r1, ip, r0, lr
	mov	ip, #188
	str	r1, [sp, #28]
	mla	r1, ip, r0, fp
	ldr	ip, [sp, #36]
	mov	fp, #190
	mla	lr, fp, r0, ip
	str	r1, [sp, #24]
	ldr	r1, [r3, #36]
	mov	r0, #192
	mla	sl, r0, r1, sl
	mov	r0, #196
	str	lr, [sp, #36]
	mla	r5, r0, r1, r5
	mov	lr, #191
	ldr	r0, [sp, #28]
	mov	ip, #194
	mla	r9, lr, r1, r9
	mla	r7, ip, r1, r7
	mov	lr, #195
	mov	ip, #199
	mla	r6, lr, r1, r6
	mov	fp, #193
	mla	lr, ip, r1, r0
	ldr	r0, [sp, #24]
	mla	r8, fp, r1, r8
	mov	ip, #198
	mov	fp, #197
	mla	r4, fp, r1, r4
	mla	fp, ip, r1, r0
	ldr	ip, [sp, #32]
	add	r3, r3, #40
	add	r1, r1, r1, asl #2
	cmp	r3, ip
	ldr	ip, [sp, #36]
	add	r1, r1, r1, asl #2
	add	r0, ip, r1, asl #3
	stmia	r2, {r9, sl}
	str	r8, [r2, #8]
	str	r7, [r2, #12]
	str	r6, [r2, #16]
	str	r5, [r2, #20]
	str	r4, [r2, #24]
	str	lr, [r2, #32]
	str	fp, [r2, #28]
	str	r0, [r2, #36]
	add	r2, r2, #40
	bne	.L2
	ldr	r2, [sp, #840]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #844]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #848]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #852]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #856]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #860]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #864]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #868]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #872]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #876]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #880]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #884]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #888]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #892]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #896]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #900]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #904]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #908]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #912]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #916]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #920]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #924]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #928]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #932]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #936]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #940]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #944]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #948]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #952]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #956]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #960]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #964]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #968]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #972]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #976]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #980]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #984]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #988]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #992]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #996]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1000]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1004]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1008]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1012]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1016]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1020]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1024]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1028]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1032]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1036]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1040]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1044]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1048]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1052]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1056]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1060]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1064]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1068]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1072]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1076]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1080]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1084]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1088]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1092]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1096]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1100]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1104]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1108]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1112]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1116]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1120]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1124]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1128]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1132]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1136]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1140]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1144]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1148]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1152]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1156]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1160]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1164]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1168]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1172]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1176]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1180]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1184]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1188]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1192]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1196]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1200]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1204]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1208]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1212]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1216]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1220]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1224]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1228]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [sp, #1232]
	ldr	r1, .L5
	mov	r0, #1
	bl	__printf_chk
	ldr	r1, .L5
	ldr	r2, [sp, #1236]
	mov	r0, #1
	bl	__printf_chk
	mov	r0, #10
	bl	putchar
	mov	r0, #0
	add	sp, sp, #220
	add	sp, sp, #1024
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L6:
	.align	2
.L5:
	.word	.LC0
	.size	main, .-main
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%d \000"
	.ident	"GCC: (Ubuntu/Linaro 4.7.3-12ubuntu1) 4.7.3"
	.section	.note.GNU-stack,"",%progbits
