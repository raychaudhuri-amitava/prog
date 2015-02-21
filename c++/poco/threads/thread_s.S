
./thread:     file format elf64-x86-64


Disassembly of section .init:

00000000004020f8 <_init>:
  4020f8:	48 83 ec 08          	sub    $0x8,%rsp
  4020fc:	48 8b 05 c5 5e 21 00 	mov    0x215ec5(%rip),%rax        # 617fc8 <_DYNAMIC+0x200>
  402103:	48 85 c0             	test   %rax,%rax
  402106:	74 05                	je     40210d <_init+0x15>
  402108:	e8 a3 00 00 00       	callq  4021b0 <__gmon_start__@plt>
  40210d:	48 83 c4 08          	add    $0x8,%rsp
  402111:	c3                   	retq   

Disassembly of section .plt:

0000000000402120 <_ZNSs6appendEPKcm@plt-0x10>:
  402120:	ff 35 e2 5e 21 00    	pushq  0x215ee2(%rip)        # 618008 <_GLOBAL_OFFSET_TABLE_+0x8>
  402126:	ff 25 e4 5e 21 00    	jmpq   *0x215ee4(%rip)        # 618010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40212c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402130 <_ZNSs6appendEPKcm@plt>:
  402130:	ff 25 e2 5e 21 00    	jmpq   *0x215ee2(%rip)        # 618018 <_GLOBAL_OFFSET_TABLE_+0x18>
  402136:	68 00 00 00 00       	pushq  $0x0
  40213b:	e9 e0 ff ff ff       	jmpq   402120 <_init+0x28>

0000000000402140 <pthread_getspecific@plt>:
  402140:	ff 25 da 5e 21 00    	jmpq   *0x215eda(%rip)        # 618020 <_GLOBAL_OFFSET_TABLE_+0x20>
  402146:	68 01 00 00 00       	pushq  $0x1
  40214b:	e9 d0 ff ff ff       	jmpq   402120 <_init+0x28>

0000000000402150 <pthread_cond_destroy@plt>:
  402150:	ff 25 d2 5e 21 00    	jmpq   *0x215ed2(%rip)        # 618028 <_GLOBAL_OFFSET_TABLE_+0x28>
  402156:	68 02 00 00 00       	pushq  $0x2
  40215b:	e9 c0 ff ff ff       	jmpq   402120 <_init+0x28>

0000000000402160 <_ZNSolsEi@plt>:
  402160:	ff 25 ca 5e 21 00    	jmpq   *0x215eca(%rip)        # 618030 <_GLOBAL_OFFSET_TABLE_+0x30>
  402166:	68 03 00 00 00       	pushq  $0x3
  40216b:	e9 b0 ff ff ff       	jmpq   402120 <_init+0x28>

0000000000402170 <pthread_mutex_timedlock@plt>:
  402170:	ff 25 c2 5e 21 00    	jmpq   *0x215ec2(%rip)        # 618038 <_GLOBAL_OFFSET_TABLE_+0x38>
  402176:	68 04 00 00 00       	pushq  $0x4
  40217b:	e9 a0 ff ff ff       	jmpq   402120 <_init+0x28>

0000000000402180 <pthread_setspecific@plt>:
  402180:	ff 25 ba 5e 21 00    	jmpq   *0x215eba(%rip)        # 618040 <_GLOBAL_OFFSET_TABLE_+0x40>
  402186:	68 05 00 00 00       	pushq  $0x5
  40218b:	e9 90 ff ff ff       	jmpq   402120 <_init+0x28>

0000000000402190 <_ZNSt8ios_baseC2Ev@plt>:
  402190:	ff 25 b2 5e 21 00    	jmpq   *0x215eb2(%rip)        # 618048 <_GLOBAL_OFFSET_TABLE_+0x48>
  402196:	68 06 00 00 00       	pushq  $0x6
  40219b:	e9 80 ff ff ff       	jmpq   402120 <_init+0x28>

00000000004021a0 <__cxa_guard_acquire@plt>:
  4021a0:	ff 25 aa 5e 21 00    	jmpq   *0x215eaa(%rip)        # 618050 <_GLOBAL_OFFSET_TABLE_+0x50>
  4021a6:	68 07 00 00 00       	pushq  $0x7
  4021ab:	e9 70 ff ff ff       	jmpq   402120 <_init+0x28>

00000000004021b0 <__gmon_start__@plt>:
  4021b0:	ff 25 a2 5e 21 00    	jmpq   *0x215ea2(%rip)        # 618058 <_GLOBAL_OFFSET_TABLE_+0x58>
  4021b6:	68 08 00 00 00       	pushq  $0x8
  4021bb:	e9 60 ff ff ff       	jmpq   402120 <_init+0x28>

00000000004021c0 <_ZdlPv@plt>:
  4021c0:	ff 25 9a 5e 21 00    	jmpq   *0x215e9a(%rip)        # 618060 <_GLOBAL_OFFSET_TABLE_+0x60>
  4021c6:	68 09 00 00 00       	pushq  $0x9
  4021cb:	e9 50 ff ff ff       	jmpq   402120 <_init+0x28>

00000000004021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>:
  4021d0:	ff 25 92 5e 21 00    	jmpq   *0x215e92(%rip)        # 618068 <_GLOBAL_OFFSET_TABLE_+0x68>
  4021d6:	68 0a 00 00 00       	pushq  $0xa
  4021db:	e9 40 ff ff ff       	jmpq   402120 <_init+0x28>

00000000004021e0 <pthread_mutexattr_destroy@plt>:
  4021e0:	ff 25 8a 5e 21 00    	jmpq   *0x215e8a(%rip)        # 618070 <_GLOBAL_OFFSET_TABLE_+0x70>
  4021e6:	68 0b 00 00 00       	pushq  $0xb
  4021eb:	e9 30 ff ff ff       	jmpq   402120 <_init+0x28>

00000000004021f0 <gettimeofday@plt>:
  4021f0:	ff 25 82 5e 21 00    	jmpq   *0x215e82(%rip)        # 618078 <_GLOBAL_OFFSET_TABLE_+0x78>
  4021f6:	68 0c 00 00 00       	pushq  $0xc
  4021fb:	e9 20 ff ff ff       	jmpq   402120 <_init+0x28>

0000000000402200 <_ZNSt8ios_base4InitC1Ev@plt>:
  402200:	ff 25 7a 5e 21 00    	jmpq   *0x215e7a(%rip)        # 618080 <_GLOBAL_OFFSET_TABLE_+0x80>
  402206:	68 0d 00 00 00       	pushq  $0xd
  40220b:	e9 10 ff ff ff       	jmpq   402120 <_init+0x28>

0000000000402210 <__libc_start_main@plt>:
  402210:	ff 25 72 5e 21 00    	jmpq   *0x215e72(%rip)        # 618088 <_GLOBAL_OFFSET_TABLE_+0x88>
  402216:	68 0e 00 00 00       	pushq  $0xe
  40221b:	e9 00 ff ff ff       	jmpq   402120 <_init+0x28>

0000000000402220 <_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base@plt>:
  402220:	ff 25 6a 5e 21 00    	jmpq   *0x215e6a(%rip)        # 618090 <_GLOBAL_OFFSET_TABLE_+0x90>
  402226:	68 0f 00 00 00       	pushq  $0xf
  40222b:	e9 f0 fe ff ff       	jmpq   402120 <_init+0x28>

0000000000402230 <_ZNSs4_Rep9_S_createEmmRKSaIcE@plt>:
  402230:	ff 25 62 5e 21 00    	jmpq   *0x215e62(%rip)        # 618098 <_GLOBAL_OFFSET_TABLE_+0x98>
  402236:	68 10 00 00 00       	pushq  $0x10
  40223b:	e9 e0 fe ff ff       	jmpq   402120 <_init+0x28>

0000000000402240 <pthread_cond_timedwait@plt>:
  402240:	ff 25 5a 5e 21 00    	jmpq   *0x215e5a(%rip)        # 6180a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  402246:	68 11 00 00 00       	pushq  $0x11
  40224b:	e9 d0 fe ff ff       	jmpq   402120 <_init+0x28>

0000000000402250 <_ZNSsC1ERKSs@plt>:
  402250:	ff 25 52 5e 21 00    	jmpq   *0x215e52(%rip)        # 6180a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  402256:	68 12 00 00 00       	pushq  $0x12
  40225b:	e9 c0 fe ff ff       	jmpq   402120 <_init+0x28>

0000000000402260 <__cxa_atexit@plt>:
  402260:	ff 25 4a 5e 21 00    	jmpq   *0x215e4a(%rip)        # 6180b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  402266:	68 13 00 00 00       	pushq  $0x13
  40226b:	e9 b0 fe ff ff       	jmpq   402120 <_init+0x28>

0000000000402270 <pthread_mutex_init@plt>:
  402270:	ff 25 42 5e 21 00    	jmpq   *0x215e42(%rip)        # 6180b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  402276:	68 14 00 00 00       	pushq  $0x14
  40227b:	e9 a0 fe ff ff       	jmpq   402120 <_init+0x28>

0000000000402280 <pthread_attr_destroy@plt>:
  402280:	ff 25 3a 5e 21 00    	jmpq   *0x215e3a(%rip)        # 6180c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  402286:	68 15 00 00 00       	pushq  $0x15
  40228b:	e9 90 fe ff ff       	jmpq   402120 <_init+0x28>

0000000000402290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
  402290:	ff 25 32 5e 21 00    	jmpq   *0x215e32(%rip)        # 6180c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  402296:	68 16 00 00 00       	pushq  $0x16
  40229b:	e9 80 fe ff ff       	jmpq   402120 <_init+0x28>

00000000004022a0 <strlen@plt>:
  4022a0:	ff 25 2a 5e 21 00    	jmpq   *0x215e2a(%rip)        # 6180d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
  4022a6:	68 17 00 00 00       	pushq  $0x17
  4022ab:	e9 70 fe ff ff       	jmpq   402120 <_init+0x28>

00000000004022b0 <_ZNSs4_Rep10_M_destroyERKSaIcE@plt>:
  4022b0:	ff 25 22 5e 21 00    	jmpq   *0x215e22(%rip)        # 6180d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
  4022b6:	68 18 00 00 00       	pushq  $0x18
  4022bb:	e9 60 fe ff ff       	jmpq   402120 <_init+0x28>

00000000004022c0 <pthread_create@plt>:
  4022c0:	ff 25 1a 5e 21 00    	jmpq   *0x215e1a(%rip)        # 6180e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  4022c6:	68 19 00 00 00       	pushq  $0x19
  4022cb:	e9 50 fe ff ff       	jmpq   402120 <_init+0x28>

00000000004022d0 <pthread_cond_init@plt>:
  4022d0:	ff 25 12 5e 21 00    	jmpq   *0x215e12(%rip)        # 6180e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
  4022d6:	68 1a 00 00 00       	pushq  $0x1a
  4022db:	e9 40 fe ff ff       	jmpq   402120 <_init+0x28>

00000000004022e0 <pthread_key_delete@plt>:
  4022e0:	ff 25 0a 5e 21 00    	jmpq   *0x215e0a(%rip)        # 6180f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
  4022e6:	68 1b 00 00 00       	pushq  $0x1b
  4022eb:	e9 30 fe ff ff       	jmpq   402120 <_init+0x28>

00000000004022f0 <__cxa_guard_release@plt>:
  4022f0:	ff 25 02 5e 21 00    	jmpq   *0x215e02(%rip)        # 6180f8 <_GLOBAL_OFFSET_TABLE_+0xf8>
  4022f6:	68 1c 00 00 00       	pushq  $0x1c
  4022fb:	e9 20 fe ff ff       	jmpq   402120 <_init+0x28>

0000000000402300 <pthread_self@plt>:
  402300:	ff 25 fa 5d 21 00    	jmpq   *0x215dfa(%rip)        # 618100 <_GLOBAL_OFFSET_TABLE_+0x100>
  402306:	68 1d 00 00 00       	pushq  $0x1d
  40230b:	e9 10 fe ff ff       	jmpq   402120 <_init+0x28>

0000000000402310 <pthread_join@plt>:
  402310:	ff 25 f2 5d 21 00    	jmpq   *0x215df2(%rip)        # 618108 <_GLOBAL_OFFSET_TABLE_+0x108>
  402316:	68 1e 00 00 00       	pushq  $0x1e
  40231b:	e9 00 fe ff ff       	jmpq   402120 <_init+0x28>

0000000000402320 <_ZNSsC1EPKcRKSaIcE@plt>:
  402320:	ff 25 ea 5d 21 00    	jmpq   *0x215dea(%rip)        # 618110 <_GLOBAL_OFFSET_TABLE_+0x110>
  402326:	68 1f 00 00 00       	pushq  $0x1f
  40232b:	e9 f0 fd ff ff       	jmpq   402120 <_init+0x28>

0000000000402330 <pthread_attr_setstacksize@plt>:
  402330:	ff 25 e2 5d 21 00    	jmpq   *0x215de2(%rip)        # 618118 <_GLOBAL_OFFSET_TABLE_+0x118>
  402336:	68 20 00 00 00       	pushq  $0x20
  40233b:	e9 e0 fd ff ff       	jmpq   402120 <_init+0x28>

0000000000402340 <__cxa_call_unexpected@plt>:
  402340:	ff 25 da 5d 21 00    	jmpq   *0x215dda(%rip)        # 618120 <_GLOBAL_OFFSET_TABLE_+0x120>
  402346:	68 21 00 00 00       	pushq  $0x21
  40234b:	e9 d0 fd ff ff       	jmpq   402120 <_init+0x28>

0000000000402350 <_ZNSt6localeC1Ev@plt>:
  402350:	ff 25 d2 5d 21 00    	jmpq   *0x215dd2(%rip)        # 618128 <_GLOBAL_OFFSET_TABLE_+0x128>
  402356:	68 22 00 00 00       	pushq  $0x22
  40235b:	e9 c0 fd ff ff       	jmpq   402120 <_init+0x28>

0000000000402360 <__cxa_pure_virtual@plt>:
  402360:	ff 25 ca 5d 21 00    	jmpq   *0x215dca(%rip)        # 618130 <_GLOBAL_OFFSET_TABLE_+0x130>
  402366:	68 23 00 00 00       	pushq  $0x23
  40236b:	e9 b0 fd ff ff       	jmpq   402120 <_init+0x28>

0000000000402370 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>:
  402370:	ff 25 c2 5d 21 00    	jmpq   *0x215dc2(%rip)        # 618138 <_GLOBAL_OFFSET_TABLE_+0x138>
  402376:	68 24 00 00 00       	pushq  $0x24
  40237b:	e9 a0 fd ff ff       	jmpq   402120 <_init+0x28>

0000000000402380 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>:
  402380:	ff 25 ba 5d 21 00    	jmpq   *0x215dba(%rip)        # 618140 <_GLOBAL_OFFSET_TABLE_+0x140>
  402386:	68 25 00 00 00       	pushq  $0x25
  40238b:	e9 90 fd ff ff       	jmpq   402120 <_init+0x28>

0000000000402390 <__errno_location@plt>:
  402390:	ff 25 b2 5d 21 00    	jmpq   *0x215db2(%rip)        # 618148 <_GLOBAL_OFFSET_TABLE_+0x148>
  402396:	68 26 00 00 00       	pushq  $0x26
  40239b:	e9 80 fd ff ff       	jmpq   402120 <_init+0x28>

00000000004023a0 <_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_@plt>:
  4023a0:	ff 25 aa 5d 21 00    	jmpq   *0x215daa(%rip)        # 618150 <_GLOBAL_OFFSET_TABLE_+0x150>
  4023a6:	68 27 00 00 00       	pushq  $0x27
  4023ab:	e9 70 fd ff ff       	jmpq   402120 <_init+0x28>

00000000004023b0 <sigaddset@plt>:
  4023b0:	ff 25 a2 5d 21 00    	jmpq   *0x215da2(%rip)        # 618158 <_GLOBAL_OFFSET_TABLE_+0x158>
  4023b6:	68 28 00 00 00       	pushq  $0x28
  4023bb:	e9 60 fd ff ff       	jmpq   402120 <_init+0x28>

00000000004023c0 <pthread_mutexattr_settype@plt>:
  4023c0:	ff 25 9a 5d 21 00    	jmpq   *0x215d9a(%rip)        # 618160 <_GLOBAL_OFFSET_TABLE_+0x160>
  4023c6:	68 29 00 00 00       	pushq  $0x29
  4023cb:	e9 50 fd ff ff       	jmpq   402120 <_init+0x28>

00000000004023d0 <__stack_chk_fail@plt>:
  4023d0:	ff 25 92 5d 21 00    	jmpq   *0x215d92(%rip)        # 618168 <_GLOBAL_OFFSET_TABLE_+0x168>
  4023d6:	68 2a 00 00 00       	pushq  $0x2a
  4023db:	e9 40 fd ff ff       	jmpq   402120 <_init+0x28>

00000000004023e0 <_ZNSt8ios_baseD2Ev@plt>:
  4023e0:	ff 25 8a 5d 21 00    	jmpq   *0x215d8a(%rip)        # 618170 <_GLOBAL_OFFSET_TABLE_+0x170>
  4023e6:	68 2b 00 00 00       	pushq  $0x2b
  4023eb:	e9 30 fd ff ff       	jmpq   402120 <_init+0x28>

00000000004023f0 <_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev@plt>:
  4023f0:	ff 25 82 5d 21 00    	jmpq   *0x215d82(%rip)        # 618178 <_GLOBAL_OFFSET_TABLE_+0x178>
  4023f6:	68 2c 00 00 00       	pushq  $0x2c
  4023fb:	e9 20 fd ff ff       	jmpq   402120 <_init+0x28>

0000000000402400 <__cxa_allocate_exception@plt>:
  402400:	ff 25 7a 5d 21 00    	jmpq   *0x215d7a(%rip)        # 618180 <_GLOBAL_OFFSET_TABLE_+0x180>
  402406:	68 2d 00 00 00       	pushq  $0x2d
  40240b:	e9 10 fd ff ff       	jmpq   402120 <_init+0x28>

0000000000402410 <_ZNSt9exceptionD2Ev@plt>:
  402410:	ff 25 72 5d 21 00    	jmpq   *0x215d72(%rip)        # 618188 <_GLOBAL_OFFSET_TABLE_+0x188>
  402416:	68 2e 00 00 00       	pushq  $0x2e
  40241b:	e9 00 fd ff ff       	jmpq   402120 <_init+0x28>

0000000000402420 <__cxa_free_exception@plt>:
  402420:	ff 25 6a 5d 21 00    	jmpq   *0x215d6a(%rip)        # 618190 <_GLOBAL_OFFSET_TABLE_+0x190>
  402426:	68 2f 00 00 00       	pushq  $0x2f
  40242b:	e9 f0 fc ff ff       	jmpq   402120 <_init+0x28>

0000000000402430 <_ZNSs6assignERKSs@plt>:
  402430:	ff 25 62 5d 21 00    	jmpq   *0x215d62(%rip)        # 618198 <_GLOBAL_OFFSET_TABLE_+0x198>
  402436:	68 30 00 00 00       	pushq  $0x30
  40243b:	e9 e0 fc ff ff       	jmpq   402120 <_init+0x28>

0000000000402440 <nanosleep@plt>:
  402440:	ff 25 5a 5d 21 00    	jmpq   *0x215d5a(%rip)        # 6181a0 <_GLOBAL_OFFSET_TABLE_+0x1a0>
  402446:	68 31 00 00 00       	pushq  $0x31
  40244b:	e9 d0 fc ff ff       	jmpq   402120 <_init+0x28>

0000000000402450 <_ZSt19__throw_logic_errorPKc@plt>:
  402450:	ff 25 52 5d 21 00    	jmpq   *0x215d52(%rip)        # 6181a8 <_GLOBAL_OFFSET_TABLE_+0x1a8>
  402456:	68 32 00 00 00       	pushq  $0x32
  40245b:	e9 c0 fc ff ff       	jmpq   402120 <_init+0x28>

0000000000402460 <pthread_cond_wait@plt>:
  402460:	ff 25 4a 5d 21 00    	jmpq   *0x215d4a(%rip)        # 6181b0 <_GLOBAL_OFFSET_TABLE_+0x1b0>
  402466:	68 33 00 00 00       	pushq  $0x33
  40246b:	e9 b0 fc ff ff       	jmpq   402120 <_init+0x28>

0000000000402470 <pthread_detach@plt>:
  402470:	ff 25 42 5d 21 00    	jmpq   *0x215d42(%rip)        # 6181b8 <_GLOBAL_OFFSET_TABLE_+0x1b8>
  402476:	68 34 00 00 00       	pushq  $0x34
  40247b:	e9 a0 fc ff ff       	jmpq   402120 <_init+0x28>

0000000000402480 <_ZNSs6appendEPKc@plt>:
  402480:	ff 25 3a 5d 21 00    	jmpq   *0x215d3a(%rip)        # 6181c0 <_GLOBAL_OFFSET_TABLE_+0x1c0>
  402486:	68 35 00 00 00       	pushq  $0x35
  40248b:	e9 90 fc ff ff       	jmpq   402120 <_init+0x28>

0000000000402490 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>:
  402490:	ff 25 32 5d 21 00    	jmpq   *0x215d32(%rip)        # 6181c8 <_GLOBAL_OFFSET_TABLE_+0x1c8>
  402496:	68 36 00 00 00       	pushq  $0x36
  40249b:	e9 80 fc ff ff       	jmpq   402120 <_init+0x28>

00000000004024a0 <__cxa_throw@plt>:
  4024a0:	ff 25 2a 5d 21 00    	jmpq   *0x215d2a(%rip)        # 6181d0 <_GLOBAL_OFFSET_TABLE_+0x1d0>
  4024a6:	68 37 00 00 00       	pushq  $0x37
  4024ab:	e9 70 fc ff ff       	jmpq   402120 <_init+0x28>

00000000004024b0 <_ZNSolsEPFRSoS_E@plt>:
  4024b0:	ff 25 22 5d 21 00    	jmpq   *0x215d22(%rip)        # 6181d8 <_GLOBAL_OFFSET_TABLE_+0x1d8>
  4024b6:	68 38 00 00 00       	pushq  $0x38
  4024bb:	e9 60 fc ff ff       	jmpq   402120 <_init+0x28>

00000000004024c0 <pthread_attr_init@plt>:
  4024c0:	ff 25 1a 5d 21 00    	jmpq   *0x215d1a(%rip)        # 6181e0 <_GLOBAL_OFFSET_TABLE_+0x1e0>
  4024c6:	68 39 00 00 00       	pushq  $0x39
  4024cb:	e9 50 fc ff ff       	jmpq   402120 <_init+0x28>

00000000004024d0 <_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base@plt>:
  4024d0:	ff 25 12 5d 21 00    	jmpq   *0x215d12(%rip)        # 6181e8 <_GLOBAL_OFFSET_TABLE_+0x1e8>
  4024d6:	68 3a 00 00 00       	pushq  $0x3a
  4024db:	e9 40 fc ff ff       	jmpq   402120 <_init+0x28>

00000000004024e0 <__cxa_end_catch@plt>:
  4024e0:	ff 25 0a 5d 21 00    	jmpq   *0x215d0a(%rip)        # 6181f0 <_GLOBAL_OFFSET_TABLE_+0x1f0>
  4024e6:	68 3b 00 00 00       	pushq  $0x3b
  4024eb:	e9 30 fc ff ff       	jmpq   402120 <_init+0x28>

00000000004024f0 <sched_get_priority_max@plt>:
  4024f0:	ff 25 02 5d 21 00    	jmpq   *0x215d02(%rip)        # 6181f8 <_GLOBAL_OFFSET_TABLE_+0x1f8>
  4024f6:	68 3c 00 00 00       	pushq  $0x3c
  4024fb:	e9 20 fc ff ff       	jmpq   402120 <_init+0x28>

0000000000402500 <sigemptyset@plt>:
  402500:	ff 25 fa 5c 21 00    	jmpq   *0x215cfa(%rip)        # 618200 <_GLOBAL_OFFSET_TABLE_+0x200>
  402506:	68 3d 00 00 00       	pushq  $0x3d
  40250b:	e9 10 fc ff ff       	jmpq   402120 <_init+0x28>

0000000000402510 <__cxa_guard_abort@plt>:
  402510:	ff 25 f2 5c 21 00    	jmpq   *0x215cf2(%rip)        # 618208 <_GLOBAL_OFFSET_TABLE_+0x208>
  402516:	68 3e 00 00 00       	pushq  $0x3e
  40251b:	e9 00 fc ff ff       	jmpq   402120 <_init+0x28>

0000000000402520 <__pthread_key_create@plt>:
  402520:	ff 25 ea 5c 21 00    	jmpq   *0x215cea(%rip)        # 618210 <_GLOBAL_OFFSET_TABLE_+0x210>
  402526:	68 3f 00 00 00       	pushq  $0x3f
  40252b:	e9 f0 fb ff ff       	jmpq   402120 <_init+0x28>

0000000000402530 <pthread_sigmask@plt>:
  402530:	ff 25 e2 5c 21 00    	jmpq   *0x215ce2(%rip)        # 618218 <_GLOBAL_OFFSET_TABLE_+0x218>
  402536:	68 40 00 00 00       	pushq  $0x40
  40253b:	e9 e0 fb ff ff       	jmpq   402120 <_init+0x28>

0000000000402540 <pthread_setschedparam@plt>:
  402540:	ff 25 da 5c 21 00    	jmpq   *0x215cda(%rip)        # 618220 <_GLOBAL_OFFSET_TABLE_+0x220>
  402546:	68 41 00 00 00       	pushq  $0x41
  40254b:	e9 d0 fb ff ff       	jmpq   402120 <_init+0x28>

0000000000402550 <__cxa_begin_catch@plt>:
  402550:	ff 25 d2 5c 21 00    	jmpq   *0x215cd2(%rip)        # 618228 <_GLOBAL_OFFSET_TABLE_+0x228>
  402556:	68 42 00 00 00       	pushq  $0x42
  40255b:	e9 c0 fb ff ff       	jmpq   402120 <_init+0x28>

0000000000402560 <pthread_mutex_lock@plt>:
  402560:	ff 25 ca 5c 21 00    	jmpq   *0x215cca(%rip)        # 618230 <_GLOBAL_OFFSET_TABLE_+0x230>
  402566:	68 43 00 00 00       	pushq  $0x43
  40256b:	e9 b0 fb ff ff       	jmpq   402120 <_init+0x28>

0000000000402570 <pthread_mutexattr_init@plt>:
  402570:	ff 25 c2 5c 21 00    	jmpq   *0x215cc2(%rip)        # 618238 <_GLOBAL_OFFSET_TABLE_+0x238>
  402576:	68 44 00 00 00       	pushq  $0x44
  40257b:	e9 a0 fb ff ff       	jmpq   402120 <_init+0x28>

0000000000402580 <pthread_key_create@plt>:
  402580:	ff 25 ba 5c 21 00    	jmpq   *0x215cba(%rip)        # 618240 <_GLOBAL_OFFSET_TABLE_+0x240>
  402586:	68 45 00 00 00       	pushq  $0x45
  40258b:	e9 90 fb ff ff       	jmpq   402120 <_init+0x28>

0000000000402590 <__gxx_personality_v0@plt>:
  402590:	ff 25 b2 5c 21 00    	jmpq   *0x215cb2(%rip)        # 618248 <_GLOBAL_OFFSET_TABLE_+0x248>
  402596:	68 46 00 00 00       	pushq  $0x46
  40259b:	e9 80 fb ff ff       	jmpq   402120 <_init+0x28>

00000000004025a0 <pthread_mutex_destroy@plt>:
  4025a0:	ff 25 aa 5c 21 00    	jmpq   *0x215caa(%rip)        # 618250 <_GLOBAL_OFFSET_TABLE_+0x250>
  4025a6:	68 47 00 00 00       	pushq  $0x47
  4025ab:	e9 70 fb ff ff       	jmpq   402120 <_init+0x28>

00000000004025b0 <_Znwm@plt>:
  4025b0:	ff 25 a2 5c 21 00    	jmpq   *0x215ca2(%rip)        # 618258 <_GLOBAL_OFFSET_TABLE_+0x258>
  4025b6:	68 48 00 00 00       	pushq  $0x48
  4025bb:	e9 60 fb ff ff       	jmpq   402120 <_init+0x28>

00000000004025c0 <_Unwind_Resume@plt>:
  4025c0:	ff 25 9a 5c 21 00    	jmpq   *0x215c9a(%rip)        # 618260 <_GLOBAL_OFFSET_TABLE_+0x260>
  4025c6:	68 49 00 00 00       	pushq  $0x49
  4025cb:	e9 50 fb ff ff       	jmpq   402120 <_init+0x28>

00000000004025d0 <pthread_cond_broadcast@plt>:
  4025d0:	ff 25 92 5c 21 00    	jmpq   *0x215c92(%rip)        # 618268 <_GLOBAL_OFFSET_TABLE_+0x268>
  4025d6:	68 4a 00 00 00       	pushq  $0x4a
  4025db:	e9 40 fb ff ff       	jmpq   402120 <_init+0x28>

00000000004025e0 <sched_get_priority_min@plt>:
  4025e0:	ff 25 8a 5c 21 00    	jmpq   *0x215c8a(%rip)        # 618270 <_GLOBAL_OFFSET_TABLE_+0x270>
  4025e6:	68 4b 00 00 00       	pushq  $0x4b
  4025eb:	e9 30 fb ff ff       	jmpq   402120 <_init+0x28>

00000000004025f0 <_ZNSt6localeD1Ev@plt>:
  4025f0:	ff 25 82 5c 21 00    	jmpq   *0x215c82(%rip)        # 618278 <_GLOBAL_OFFSET_TABLE_+0x278>
  4025f6:	68 4c 00 00 00       	pushq  $0x4c
  4025fb:	e9 20 fb ff ff       	jmpq   402120 <_init+0x28>

0000000000402600 <pthread_mutex_unlock@plt>:
  402600:	ff 25 7a 5c 21 00    	jmpq   *0x215c7a(%rip)        # 618280 <_GLOBAL_OFFSET_TABLE_+0x280>
  402606:	68 4d 00 00 00       	pushq  $0x4d
  40260b:	e9 10 fb ff ff       	jmpq   402120 <_init+0x28>

0000000000402610 <memcpy@plt>:
  402610:	ff 25 72 5c 21 00    	jmpq   *0x215c72(%rip)        # 618288 <_GLOBAL_OFFSET_TABLE_+0x288>
  402616:	68 4e 00 00 00       	pushq  $0x4e
  40261b:	e9 00 fb ff ff       	jmpq   402120 <_init+0x28>

0000000000402620 <_ZNSs6appendERKSs@plt>:
  402620:	ff 25 6a 5c 21 00    	jmpq   *0x215c6a(%rip)        # 618290 <_GLOBAL_OFFSET_TABLE_+0x290>
  402626:	68 4f 00 00 00       	pushq  $0x4f
  40262b:	e9 f0 fa ff ff       	jmpq   402120 <_init+0x28>

Disassembly of section .text:

0000000000402630 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.6>:
  402630:	50                   	push   %rax
  402631:	48 8b 07             	mov    (%rdi),%rax
  402634:	48 03 78 e8          	add    -0x18(%rax),%rdi
  402638:	8b 77 20             	mov    0x20(%rdi),%esi
  40263b:	83 ce 01             	or     $0x1,%esi
  40263e:	e8 4d fe ff ff       	callq  402490 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  402643:	5a                   	pop    %rdx
  402644:	c3                   	retq   
  402645:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40264c:	00 00 00 
  40264f:	90                   	nop

0000000000402650 <_GLOBAL__sub_I__ZN4Poco10ThreadImpl20_currentThreadHolderE>:
  402650:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
  402657:	48 89 e7             	mov    %rsp,%rdi
  40265a:	e8 a1 fe ff ff       	callq  402500 <sigemptyset@plt>
  40265f:	48 89 e7             	mov    %rsp,%rdi
  402662:	be 0d 00 00 00       	mov    $0xd,%esi
  402667:	e8 44 fd ff ff       	callq  4023b0 <sigaddset@plt>
  40266c:	48 89 e6             	mov    %rsp,%rsi
  40266f:	31 d2                	xor    %edx,%edx
  402671:	31 ff                	xor    %edi,%edi
  402673:	e8 b8 fe ff ff       	callq  402530 <pthread_sigmask@plt>
  402678:	ba a0 82 61 00       	mov    $0x6182a0,%edx
  40267d:	be c8 85 61 00       	mov    $0x6185c8,%esi
  402682:	bf 00 2d 40 00       	mov    $0x402d00,%edi
  402687:	e8 d4 fb ff ff       	callq  402260 <__cxa_atexit@plt>
  40268c:	bf 80 85 61 00       	mov    $0x618580,%edi
  402691:	e8 ea 2b 00 00       	callq  405280 <_ZN4Poco10ThreadImpl19CurrentThreadHolderC1Ev>
  402696:	ba a0 82 61 00       	mov    $0x6182a0,%edx
  40269b:	be 80 85 61 00       	mov    $0x618580,%esi
  4026a0:	bf 40 50 40 00       	mov    $0x405040,%edi
  4026a5:	e8 b6 fb ff ff       	callq  402260 <__cxa_atexit@plt>
  4026aa:	bf a0 85 61 00       	mov    $0x6185a0,%edi
  4026af:	e8 6c a3 00 00       	callq  40ca20 <_ZN4Poco9FastMutexC1Ev>
  4026b4:	ba a0 82 61 00       	mov    $0x6182a0,%edx
  4026b9:	be a0 85 61 00       	mov    $0x6185a0,%esi
  4026be:	bf 30 ca 40 00       	mov    $0x40ca30,%edi
  4026c3:	e8 98 fb ff ff       	callq  402260 <__cxa_atexit@plt>
  4026c8:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
  4026cf:	c3                   	retq   

00000000004026d0 <_GLOBAL__sub_I__ZN4Poco15TLSAbstractSlotC2Ev>:
  4026d0:	48 83 ec 08          	sub    $0x8,%rsp
  4026d4:	bf e8 85 61 00       	mov    $0x6185e8,%edi
  4026d9:	48 c7 05 fc 5e 21 00 	movq   $0x0,0x215efc(%rip)        # 6185e0 <_ZN4Poco12_GLOBAL__N_1L2shE>
  4026e0:	00 00 00 00 
  4026e4:	e8 37 a3 00 00       	callq  40ca20 <_ZN4Poco9FastMutexC1Ev>
  4026e9:	ba a0 82 61 00       	mov    $0x6182a0,%edx
  4026ee:	be e0 85 61 00       	mov    $0x6185e0,%esi
  4026f3:	bf e0 58 40 00       	mov    $0x4058e0,%edi
  4026f8:	48 83 c4 08          	add    $0x8,%rsp
  4026fc:	e9 5f fb ff ff       	jmpq   402260 <__cxa_atexit@plt>
  402701:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402708:	00 00 00 
  40270b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402710 <_GLOBAL__sub_I__ZN4Poco12ErrorHandler9_pHandlerE>:
  402710:	48 83 ec 08          	sub    $0x8,%rsp
  402714:	e8 77 4c 00 00       	callq  407390 <_ZN4Poco12ErrorHandler14defaultHandlerEv>
  402719:	bf 20 86 61 00       	mov    $0x618620,%edi
  40271e:	48 89 05 23 5f 21 00 	mov    %rax,0x215f23(%rip)        # 618648 <_ZN4Poco12ErrorHandler9_pHandlerE>
  402725:	e8 f6 a2 00 00       	callq  40ca20 <_ZN4Poco9FastMutexC1Ev>
  40272a:	ba a0 82 61 00       	mov    $0x6182a0,%edx
  40272f:	be 20 86 61 00       	mov    $0x618620,%esi
  402734:	bf 30 ca 40 00       	mov    $0x40ca30,%edi
  402739:	48 83 c4 08          	add    $0x8,%rsp
  40273d:	e9 1e fb ff ff       	jmpq   402260 <__cxa_atexit@plt>

0000000000402742 <_start>:
  402742:	31 ed                	xor    %ebp,%ebp
  402744:	49 89 d1             	mov    %rdx,%r9
  402747:	5e                   	pop    %rsi
  402748:	48 89 e2             	mov    %rsp,%rdx
  40274b:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40274f:	50                   	push   %rax
  402750:	54                   	push   %rsp
  402751:	49 c7 c0 00 cb 40 00 	mov    $0x40cb00,%r8
  402758:	48 c7 c1 90 ca 40 00 	mov    $0x40ca90,%rcx
  40275f:	48 c7 c7 2d 28 40 00 	mov    $0x40282d,%rdi
  402766:	e8 a5 fa ff ff       	callq  402210 <__libc_start_main@plt>
  40276b:	f4                   	hlt    
  40276c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402770 <deregister_tm_clones>:
  402770:	b8 b7 82 61 00       	mov    $0x6182b7,%eax
  402775:	55                   	push   %rbp
  402776:	48 2d b0 82 61 00    	sub    $0x6182b0,%rax
  40277c:	48 83 f8 0e          	cmp    $0xe,%rax
  402780:	48 89 e5             	mov    %rsp,%rbp
  402783:	77 02                	ja     402787 <deregister_tm_clones+0x17>
  402785:	5d                   	pop    %rbp
  402786:	c3                   	retq   
  402787:	b8 00 00 00 00       	mov    $0x0,%eax
  40278c:	48 85 c0             	test   %rax,%rax
  40278f:	74 f4                	je     402785 <deregister_tm_clones+0x15>
  402791:	5d                   	pop    %rbp
  402792:	bf b0 82 61 00       	mov    $0x6182b0,%edi
  402797:	ff e0                	jmpq   *%rax
  402799:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004027a0 <register_tm_clones>:
  4027a0:	b8 b0 82 61 00       	mov    $0x6182b0,%eax
  4027a5:	55                   	push   %rbp
  4027a6:	48 2d b0 82 61 00    	sub    $0x6182b0,%rax
  4027ac:	48 c1 f8 03          	sar    $0x3,%rax
  4027b0:	48 89 e5             	mov    %rsp,%rbp
  4027b3:	48 89 c2             	mov    %rax,%rdx
  4027b6:	48 c1 ea 3f          	shr    $0x3f,%rdx
  4027ba:	48 01 d0             	add    %rdx,%rax
  4027bd:	48 d1 f8             	sar    %rax
  4027c0:	75 02                	jne    4027c4 <register_tm_clones+0x24>
  4027c2:	5d                   	pop    %rbp
  4027c3:	c3                   	retq   
  4027c4:	ba 00 00 00 00       	mov    $0x0,%edx
  4027c9:	48 85 d2             	test   %rdx,%rdx
  4027cc:	74 f4                	je     4027c2 <register_tm_clones+0x22>
  4027ce:	5d                   	pop    %rbp
  4027cf:	48 89 c6             	mov    %rax,%rsi
  4027d2:	bf b0 82 61 00       	mov    $0x6182b0,%edi
  4027d7:	ff e2                	jmpq   *%rdx
  4027d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004027e0 <__do_global_dtors_aux>:
  4027e0:	80 3d 79 5d 21 00 00 	cmpb   $0x0,0x215d79(%rip)        # 618560 <completed.6972>
  4027e7:	75 11                	jne    4027fa <__do_global_dtors_aux+0x1a>
  4027e9:	55                   	push   %rbp
  4027ea:	48 89 e5             	mov    %rsp,%rbp
  4027ed:	e8 7e ff ff ff       	callq  402770 <deregister_tm_clones>
  4027f2:	5d                   	pop    %rbp
  4027f3:	c6 05 66 5d 21 00 01 	movb   $0x1,0x215d66(%rip)        # 618560 <completed.6972>
  4027fa:	f3 c3                	repz retq 
  4027fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402800 <frame_dummy>:
  402800:	48 83 3d 70 55 21 00 	cmpq   $0x0,0x215570(%rip)        # 617d78 <__JCR_END__>
  402807:	00 
  402808:	74 1e                	je     402828 <frame_dummy+0x28>
  40280a:	b8 00 00 00 00       	mov    $0x0,%eax
  40280f:	48 85 c0             	test   %rax,%rax
  402812:	74 14                	je     402828 <frame_dummy+0x28>
  402814:	55                   	push   %rbp
  402815:	bf 78 7d 61 00       	mov    $0x617d78,%edi
  40281a:	48 89 e5             	mov    %rsp,%rbp
  40281d:	ff d0                	callq  *%rax
  40281f:	5d                   	pop    %rbp
  402820:	e9 7b ff ff ff       	jmpq   4027a0 <register_tm_clones>
  402825:	0f 1f 00             	nopl   (%rax)
  402828:	e9 73 ff ff ff       	jmpq   4027a0 <register_tm_clones>

000000000040282d <main>:
private:
  int n;
};

int main()
{
  40282d:	55                   	push   %rbp
  40282e:	48 89 e5             	mov    %rsp,%rbp
  402831:	41 55                	push   %r13
  402833:	41 54                	push   %r12
  402835:	53                   	push   %rbx
  402836:	48 81 ec 58 02 00 00 	sub    $0x258,%rsp
  const int N = 5;
  40283d:	c7 85 9c fd ff ff 05 	movl   $0x5,-0x264(%rbp)
  402844:	00 00 00 

  MyWorker w[N];
  402847:	4c 8d a5 b0 fd ff ff 	lea    -0x250(%rbp),%r12
  40284e:	bb 04 00 00 00       	mov    $0x4,%ebx
  402853:	4d 89 e5             	mov    %r12,%r13
  402856:	eb 15                	jmp    40286d <main+0x40>
  402858:	be ff ff ff ff       	mov    $0xffffffff,%esi
  40285d:	4c 89 ef             	mov    %r13,%rdi
  402860:	e8 1d 03 00 00       	callq  402b82 <_ZN8MyWorkerC1Ei>
  402865:	49 83 c5 10          	add    $0x10,%r13
  402869:	48 83 eb 01          	sub    $0x1,%rbx
  40286d:	48 83 fb ff          	cmp    $0xffffffffffffffff,%rbx
  402871:	75 e5                	jne    402858 <main+0x2b>
  for (int i = 0; i < N; i++) w[i] = MyWorker(i);
  402873:	c7 85 90 fd ff ff 00 	movl   $0x0,-0x270(%rbp)
  40287a:	00 00 00 
  40287d:	eb 56                	jmp    4028d5 <main+0xa8>
  40287f:	8b 95 90 fd ff ff    	mov    -0x270(%rbp),%edx
  402885:	48 8d 85 a0 fd ff ff 	lea    -0x260(%rbp),%rax
  40288c:	89 d6                	mov    %edx,%esi
  40288e:	48 89 c7             	mov    %rax,%rdi
  402891:	e8 ec 02 00 00       	callq  402b82 <_ZN8MyWorkerC1Ei>
  402896:	48 8d 85 b0 fd ff ff 	lea    -0x250(%rbp),%rax
  40289d:	8b 95 90 fd ff ff    	mov    -0x270(%rbp),%edx
  4028a3:	48 63 d2             	movslq %edx,%rdx
  4028a6:	48 c1 e2 04          	shl    $0x4,%rdx
  4028aa:	48 01 c2             	add    %rax,%rdx
  4028ad:	48 8d 85 a0 fd ff ff 	lea    -0x260(%rbp),%rax
  4028b4:	48 89 c6             	mov    %rax,%rsi
  4028b7:	48 89 d7             	mov    %rdx,%rdi
  4028ba:	e8 6d 03 00 00       	callq  402c2c <_ZN8MyWorkeraSERKS_>
  4028bf:	48 8d 85 a0 fd ff ff 	lea    -0x260(%rbp),%rax
  4028c6:	48 89 c7             	mov    %rax,%rdi
  4028c9:	e8 96 03 00 00       	callq  402c64 <_ZN8MyWorkerD1Ev>
  4028ce:	83 85 90 fd ff ff 01 	addl   $0x1,-0x270(%rbp)
  4028d5:	83 bd 90 fd ff ff 04 	cmpl   $0x4,-0x270(%rbp)
  4028dc:	7e a1                	jle    40287f <main+0x52>

  Thread t[N];
  4028de:	48 8d 9d 00 fe ff ff 	lea    -0x200(%rbp),%rbx
  4028e5:	41 bc 04 00 00 00    	mov    $0x4,%r12d
  4028eb:	49 89 dd             	mov    %rbx,%r13
  4028ee:	eb 10                	jmp    402900 <main+0xd3>
  4028f0:	4c 89 ef             	mov    %r13,%rdi
  4028f3:	e8 a8 26 00 00       	callq  404fa0 <_ZN4Poco6ThreadC1Ev>
  4028f8:	49 83 c5 60          	add    $0x60,%r13
  4028fc:	49 83 ec 01          	sub    $0x1,%r12
  402900:	49 83 fc ff          	cmp    $0xffffffffffffffff,%r12
  402904:	75 ea                	jne    4028f0 <main+0xc3>
  for (int i = 0; i < N; i++) t[i].start(w[i]);
  402906:	c7 85 94 fd ff ff 00 	movl   $0x0,-0x26c(%rbp)
  40290d:	00 00 00 
  402910:	eb 4a                	jmp    40295c <main+0x12f>
  402912:	48 8d 85 b0 fd ff ff 	lea    -0x250(%rbp),%rax
  402919:	8b 95 94 fd ff ff    	mov    -0x26c(%rbp),%edx
  40291f:	48 63 d2             	movslq %edx,%rdx
  402922:	48 c1 e2 04          	shl    $0x4,%rdx
  402926:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
  40292a:	48 8d b5 00 fe ff ff 	lea    -0x200(%rbp),%rsi
  402931:	8b 85 94 fd ff ff    	mov    -0x26c(%rbp),%eax
  402937:	48 63 d0             	movslq %eax,%rdx
  40293a:	48 89 d0             	mov    %rdx,%rax
  40293d:	48 01 c0             	add    %rax,%rax
  402940:	48 01 d0             	add    %rdx,%rax
  402943:	48 c1 e0 05          	shl    $0x5,%rax
  402947:	48 01 f0             	add    %rsi,%rax
  40294a:	48 89 ce             	mov    %rcx,%rsi
  40294d:	48 89 c7             	mov    %rax,%rdi
  402950:	e8 8b 1d 00 00       	callq  4046e0 <_ZN4Poco6Thread5startERNS_8RunnableE>
  402955:	83 85 94 fd ff ff 01 	addl   $0x1,-0x26c(%rbp)
  40295c:	83 bd 94 fd ff ff 04 	cmpl   $0x4,-0x26c(%rbp)
  402963:	7e ad                	jle    402912 <main+0xe5>
  for (int i = 0; i < N; i++) t[i].join();  // wait for all threads to end
  402965:	c7 85 98 fd ff ff 00 	movl   $0x0,-0x268(%rbp)
  40296c:	00 00 00 
  40296f:	eb 2f                	jmp    4029a0 <main+0x173>
  402971:	48 8d 8d 00 fe ff ff 	lea    -0x200(%rbp),%rcx
  402978:	8b 85 98 fd ff ff    	mov    -0x268(%rbp),%eax
  40297e:	48 63 d0             	movslq %eax,%rdx
  402981:	48 89 d0             	mov    %rdx,%rax
  402984:	48 01 c0             	add    %rax,%rax
  402987:	48 01 d0             	add    %rdx,%rax
  40298a:	48 c1 e0 05          	shl    $0x5,%rax
  40298e:	48 01 c8             	add    %rcx,%rax
  402991:	48 89 c7             	mov    %rax,%rdi
  402994:	e8 e7 15 00 00       	callq  403f80 <_ZN4Poco6Thread4joinEv>
  402999:	83 85 98 fd ff ff 01 	addl   $0x1,-0x268(%rbp)
  4029a0:	83 bd 98 fd ff ff 04 	cmpl   $0x4,-0x268(%rbp)
  4029a7:	7e c8                	jle    402971 <main+0x144>

  cout << endl << "Threads joined" << endl;
  4029a9:	48 8b 05 30 56 21 00 	mov    0x215630(%rip),%rax        # 617fe0 <_DYNAMIC+0x218>
  4029b0:	48 89 c6             	mov    %rax,%rsi
  4029b3:	48 8b 05 1e 56 21 00 	mov    0x21561e(%rip),%rax        # 617fd8 <_DYNAMIC+0x210>
  4029ba:	48 89 c7             	mov    %rax,%rdi
  4029bd:	e8 ee fa ff ff       	callq  4024b0 <_ZNSolsEPFRSoS_E@plt>
  4029c2:	48 8d 35 5d a1 00 00 	lea    0xa15d(%rip),%rsi        # 40cb26 <_IO_stdin_used+0x6>
  4029c9:	48 89 c7             	mov    %rax,%rdi
  4029cc:	e8 bf f8 ff ff       	callq  402290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4029d1:	48 8b 15 08 56 21 00 	mov    0x215608(%rip),%rdx        # 617fe0 <_DYNAMIC+0x218>
  4029d8:	48 89 d6             	mov    %rdx,%rsi
  4029db:	48 89 c7             	mov    %rax,%rdi
  4029de:	e8 cd fa ff ff       	callq  4024b0 <_ZNSolsEPFRSoS_E@plt>

  return 0;
  4029e3:	41 bc 00 00 00 00    	mov    $0x0,%r12d
  const int N = 5;

  MyWorker w[N];
  for (int i = 0; i < N; i++) w[i] = MyWorker(i);

  Thread t[N];
  4029e9:	48 8d 9d 00 fe ff ff 	lea    -0x200(%rbp),%rbx
  4029f0:	48 81 c3 e0 01 00 00 	add    $0x1e0,%rbx
  4029f7:	48 8d 85 00 fe ff ff 	lea    -0x200(%rbp),%rax
  4029fe:	48 39 c3             	cmp    %rax,%rbx
  402a01:	74 0e                	je     402a11 <main+0x1e4>
  402a03:	48 83 eb 60          	sub    $0x60,%rbx
  402a07:	48 89 df             	mov    %rbx,%rdi
  402a0a:	e8 61 14 00 00       	callq  403e70 <_ZN4Poco6ThreadD1Ev>
  402a0f:	eb e6                	jmp    4029f7 <main+0x1ca>
  for (int i = 0; i < N; i++) t[i].start(w[i]);
  for (int i = 0; i < N; i++) t[i].join();  // wait for all threads to end

  cout << endl << "Threads joined" << endl;

  return 0;
  402a11:	48 8d 9d b0 fd ff ff 	lea    -0x250(%rbp),%rbx
  402a18:	48 83 c3 50          	add    $0x50,%rbx
  402a1c:	48 8d 85 b0 fd ff ff 	lea    -0x250(%rbp),%rax
  402a23:	48 39 c3             	cmp    %rax,%rbx
  402a26:	74 11                	je     402a39 <main+0x20c>
  402a28:	48 83 eb 10          	sub    $0x10,%rbx

int main()
{
  const int N = 5;

  MyWorker w[N];
  402a2c:	48 8b 03             	mov    (%rbx),%rax
  402a2f:	48 8b 00             	mov    (%rax),%rax
  402a32:	48 89 df             	mov    %rbx,%rdi
  402a35:	ff d0                	callq  *%rax
  for (int i = 0; i < N; i++) t[i].start(w[i]);
  for (int i = 0; i < N; i++) t[i].join();  // wait for all threads to end

  cout << endl << "Threads joined" << endl;

  return 0;
  402a37:	eb e3                	jmp    402a1c <main+0x1ef>
  402a39:	44 89 e0             	mov    %r12d,%eax
  402a3c:	e9 d6 00 00 00       	jmpq   402b17 <main+0x2ea>
  402a41:	49 89 c5             	mov    %rax,%r13
  402a44:	4d 85 e4             	test   %r12,%r12
  402a47:	74 26                	je     402a6f <main+0x242>

int main()
{
  const int N = 5;

  MyWorker w[N];
  402a49:	b8 04 00 00 00       	mov    $0x4,%eax
  402a4e:	48 29 d8             	sub    %rbx,%rax
  402a51:	48 c1 e0 04          	shl    $0x4,%rax
  402a55:	49 8d 1c 04          	lea    (%r12,%rax,1),%rbx
  402a59:	4c 39 e3             	cmp    %r12,%rbx
  402a5c:	74 11                	je     402a6f <main+0x242>
  402a5e:	48 83 eb 10          	sub    $0x10,%rbx
  402a62:	48 8b 03             	mov    (%rbx),%rax
  402a65:	48 8b 00             	mov    (%rax),%rax
  402a68:	48 89 df             	mov    %rbx,%rdi
  402a6b:	ff d0                	callq  *%rax
  402a6d:	eb ea                	jmp    402a59 <main+0x22c>
  402a6f:	4c 89 e8             	mov    %r13,%rax
  402a72:	48 89 c7             	mov    %rax,%rdi
  402a75:	e8 46 fb ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  402a7a:	49 89 c5             	mov    %rax,%r13
  402a7d:	48 85 db             	test   %rbx,%rbx
  402a80:	74 2f                	je     402ab1 <main+0x284>
  for (int i = 0; i < N; i++) w[i] = MyWorker(i);

  Thread t[N];
  402a82:	b8 04 00 00 00       	mov    $0x4,%eax
  402a87:	4c 29 e0             	sub    %r12,%rax
  402a8a:	48 89 c2             	mov    %rax,%rdx
  402a8d:	48 89 d0             	mov    %rdx,%rax
  402a90:	48 01 c0             	add    %rax,%rax
  402a93:	48 01 d0             	add    %rdx,%rax
  402a96:	48 c1 e0 05          	shl    $0x5,%rax
  402a9a:	4c 8d 24 03          	lea    (%rbx,%rax,1),%r12
  402a9e:	49 39 dc             	cmp    %rbx,%r12
  402aa1:	74 0e                	je     402ab1 <main+0x284>
  402aa3:	49 83 ec 60          	sub    $0x60,%r12
  402aa7:	4c 89 e7             	mov    %r12,%rdi
  402aaa:	e8 c1 13 00 00       	callq  403e70 <_ZN4Poco6ThreadD1Ev>
  402aaf:	eb ed                	jmp    402a9e <main+0x271>
  402ab1:	4d 89 ec             	mov    %r13,%r12
  402ab4:	eb 2e                	jmp    402ae4 <main+0x2b7>
  402ab6:	49 89 c4             	mov    %rax,%r12
  402ab9:	48 8d 9d 00 fe ff ff 	lea    -0x200(%rbp),%rbx
  402ac0:	48 81 c3 e0 01 00 00 	add    $0x1e0,%rbx
  402ac7:	48 8d 85 00 fe ff ff 	lea    -0x200(%rbp),%rax
  402ace:	48 39 c3             	cmp    %rax,%rbx
  402ad1:	74 11                	je     402ae4 <main+0x2b7>
  402ad3:	48 83 eb 60          	sub    $0x60,%rbx
  402ad7:	48 89 df             	mov    %rbx,%rdi
  402ada:	e8 91 13 00 00       	callq  403e70 <_ZN4Poco6ThreadD1Ev>
  402adf:	eb e6                	jmp    402ac7 <main+0x29a>
  402ae1:	49 89 c4             	mov    %rax,%r12
  for (int i = 0; i < N; i++) t[i].start(w[i]);
  for (int i = 0; i < N; i++) t[i].join();  // wait for all threads to end

  cout << endl << "Threads joined" << endl;

  return 0;
  402ae4:	48 8d 9d b0 fd ff ff 	lea    -0x250(%rbp),%rbx
  402aeb:	48 83 c3 50          	add    $0x50,%rbx
  402aef:	48 8d 85 b0 fd ff ff 	lea    -0x250(%rbp),%rax
  402af6:	48 39 c3             	cmp    %rax,%rbx
  402af9:	74 11                	je     402b0c <main+0x2df>
  402afb:	48 83 eb 10          	sub    $0x10,%rbx

int main()
{
  const int N = 5;

  MyWorker w[N];
  402aff:	48 8b 03             	mov    (%rbx),%rax
  402b02:	48 8b 00             	mov    (%rax),%rax
  402b05:	48 89 df             	mov    %rbx,%rdi
  402b08:	ff d0                	callq  *%rax
  for (int i = 0; i < N; i++) t[i].start(w[i]);
  for (int i = 0; i < N; i++) t[i].join();  // wait for all threads to end

  cout << endl << "Threads joined" << endl;

  return 0;
  402b0a:	eb e3                	jmp    402aef <main+0x2c2>
  402b0c:	4c 89 e0             	mov    %r12,%rax
  402b0f:	48 89 c7             	mov    %rax,%rdi
  402b12:	e8 a9 fa ff ff       	callq  4025c0 <_Unwind_Resume@plt>
}
  402b17:	48 81 c4 58 02 00 00 	add    $0x258,%rsp
  402b1e:	5b                   	pop    %rbx
  402b1f:	41 5c                	pop    %r12
  402b21:	41 5d                	pop    %r13
  402b23:	5d                   	pop    %rbp
  402b24:	c3                   	retq   

0000000000402b25 <_Z41__static_initialization_and_destruction_0ii>:
  402b25:	55                   	push   %rbp
  402b26:	48 89 e5             	mov    %rsp,%rbp
  402b29:	48 83 ec 10          	sub    $0x10,%rsp
  402b2d:	89 7d fc             	mov    %edi,-0x4(%rbp)
  402b30:	89 75 f8             	mov    %esi,-0x8(%rbp)
  402b33:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
  402b37:	75 32                	jne    402b6b <_Z41__static_initialization_and_destruction_0ii+0x46>
  402b39:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
  402b40:	75 29                	jne    402b6b <_Z41__static_initialization_and_destruction_0ii+0x46>
  extern wostream wclog;	/// Linked to standard error (buffered)
#endif
  //@}

  // For construction of filebuffers for cout, cin, cerr, clog et. al.
  static ios_base::Init __ioinit;
  402b42:	48 8d 3d 18 5a 21 00 	lea    0x215a18(%rip),%rdi        # 618561 <_ZStL8__ioinit>
  402b49:	e8 b2 f6 ff ff       	callq  402200 <_ZNSt8ios_base4InitC1Ev@plt>
  402b4e:	48 8d 15 4b 57 21 00 	lea    0x21574b(%rip),%rdx        # 6182a0 <__dso_handle>
  402b55:	48 8d 35 05 5a 21 00 	lea    0x215a05(%rip),%rsi        # 618561 <_ZStL8__ioinit>
  402b5c:	48 8b 05 6d 54 21 00 	mov    0x21546d(%rip),%rax        # 617fd0 <_DYNAMIC+0x208>
  402b63:	48 89 c7             	mov    %rax,%rdi
  402b66:	e8 f5 f6 ff ff       	callq  402260 <__cxa_atexit@plt>
  402b6b:	c9                   	leaveq 
  402b6c:	c3                   	retq   

0000000000402b6d <_GLOBAL__sub_I_thread.cc>:
  402b6d:	55                   	push   %rbp
  402b6e:	48 89 e5             	mov    %rsp,%rbp
  402b71:	be ff ff 00 00       	mov    $0xffff,%esi
  402b76:	bf 01 00 00 00       	mov    $0x1,%edi
  402b7b:	e8 a5 ff ff ff       	callq  402b25 <_Z41__static_initialization_and_destruction_0ii>
  402b80:	5d                   	pop    %rbp
  402b81:	c3                   	retq   

0000000000402b82 <_ZN8MyWorkerC1Ei>:
using namespace std;

class MyWorker : public Runnable
{
public:
  MyWorker(int k = -1) : Runnable(), n(k) {}
  402b82:	55                   	push   %rbp
  402b83:	48 89 e5             	mov    %rsp,%rbp
  402b86:	48 83 ec 10          	sub    $0x10,%rsp
  402b8a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402b8e:	89 75 f4             	mov    %esi,-0xc(%rbp)
  402b91:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402b95:	48 89 c7             	mov    %rax,%rdi
  402b98:	e8 53 01 00 00       	callq  402cf0 <_ZN4Poco8RunnableC1Ev>
  402b9d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402ba1:	48 8d 15 d8 51 21 00 	lea    0x2151d8(%rip),%rdx        # 617d80 <_ZTV8MyWorker>
  402ba8:	48 8d 52 10          	lea    0x10(%rdx),%rdx
  402bac:	48 89 10             	mov    %rdx,(%rax)
  402baf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402bb3:	8b 55 f4             	mov    -0xc(%rbp),%edx
  402bb6:	89 50 08             	mov    %edx,0x8(%rax)
  402bb9:	c9                   	leaveq 
  402bba:	c3                   	retq   
  402bbb:	90                   	nop

0000000000402bbc <_ZN8MyWorker3runEv>:

  virtual void run()
  402bbc:	55                   	push   %rbp
  402bbd:	48 89 e5             	mov    %rsp,%rbp
  402bc0:	48 83 ec 20          	sub    $0x20,%rsp
  402bc4:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  {
    for (int i = 1; i <= 10; i++)
  402bc8:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
  402bcf:	eb 41                	jmp    402c12 <_ZN8MyWorker3runEv+0x56>
    {
      for (int j = 0; j < 1000000; j++) ; // do nothing
  402bd1:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  402bd8:	eb 04                	jmp    402bde <_ZN8MyWorker3runEv+0x22>
  402bda:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  402bde:	81 7d fc 3f 42 0f 00 	cmpl   $0xf423f,-0x4(%rbp)
  402be5:	7e f3                	jle    402bda <_ZN8MyWorker3runEv+0x1e>
      cout << n << " ";
  402be7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402beb:	8b 40 08             	mov    0x8(%rax),%eax
  402bee:	89 c6                	mov    %eax,%esi
  402bf0:	48 8b 05 e1 53 21 00 	mov    0x2153e1(%rip),%rax        # 617fd8 <_DYNAMIC+0x210>
  402bf7:	48 89 c7             	mov    %rax,%rdi
  402bfa:	e8 61 f5 ff ff       	callq  402160 <_ZNSolsEi@plt>
  402bff:	48 8d 35 1e 9f 00 00 	lea    0x9f1e(%rip),%rsi        # 40cb24 <_IO_stdin_used+0x4>
  402c06:	48 89 c7             	mov    %rax,%rdi
  402c09:	e8 82 f6 ff ff       	callq  402290 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
public:
  MyWorker(int k = -1) : Runnable(), n(k) {}

  virtual void run()
  {
    for (int i = 1; i <= 10; i++)
  402c0e:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
  402c12:	83 7d f8 0a          	cmpl   $0xa,-0x8(%rbp)
  402c16:	7e b9                	jle    402bd1 <_ZN8MyWorker3runEv+0x15>
    {
      for (int j = 0; j < 1000000; j++) ; // do nothing
      cout << n << " ";
    }
  }
  402c18:	c9                   	leaveq 
  402c19:	c3                   	retq   

0000000000402c1a <_ZN4Poco8RunnableaSERKS0_>:


namespace Poco {


class Foundation_API Runnable
  402c1a:	55                   	push   %rbp
  402c1b:	48 89 e5             	mov    %rsp,%rbp
  402c1e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402c22:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  402c26:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402c2a:	5d                   	pop    %rbp
  402c2b:	c3                   	retq   

0000000000402c2c <_ZN8MyWorkeraSERKS_>:
#include<iostream>

using namespace Poco;
using namespace std;

class MyWorker : public Runnable
  402c2c:	55                   	push   %rbp
  402c2d:	48 89 e5             	mov    %rsp,%rbp
  402c30:	48 83 ec 10          	sub    $0x10,%rsp
  402c34:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402c38:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  402c3c:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  402c40:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402c44:	48 89 d6             	mov    %rdx,%rsi
  402c47:	48 89 c7             	mov    %rax,%rdi
  402c4a:	e8 cb ff ff ff       	callq  402c1a <_ZN4Poco8RunnableaSERKS0_>
  402c4f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402c53:	8b 50 08             	mov    0x8(%rax),%edx
  402c56:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402c5a:	89 50 08             	mov    %edx,0x8(%rax)
  402c5d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402c61:	c9                   	leaveq 
  402c62:	c3                   	retq   
  402c63:	90                   	nop

0000000000402c64 <_ZN8MyWorkerD1Ev>:
  402c64:	55                   	push   %rbp
  402c65:	48 89 e5             	mov    %rsp,%rbp
  402c68:	48 83 ec 10          	sub    $0x10,%rsp
  402c6c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402c70:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402c74:	48 8d 15 05 51 21 00 	lea    0x215105(%rip),%rdx        # 617d80 <_ZTV8MyWorker>
  402c7b:	48 8d 52 10          	lea    0x10(%rdx),%rdx
  402c7f:	48 89 10             	mov    %rdx,(%rax)
  402c82:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402c86:	48 89 c7             	mov    %rax,%rdi
  402c89:	e8 42 00 00 00       	callq  402cd0 <_ZN4Poco8RunnableD1Ev>
  402c8e:	b8 00 00 00 00       	mov    $0x0,%eax
  402c93:	85 c0                	test   %eax,%eax
  402c95:	74 0c                	je     402ca3 <_ZN8MyWorkerD1Ev+0x3f>
  402c97:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402c9b:	48 89 c7             	mov    %rax,%rdi
  402c9e:	e8 1d f5 ff ff       	callq  4021c0 <_ZdlPv@plt>
  402ca3:	c9                   	leaveq 
  402ca4:	c3                   	retq   
  402ca5:	90                   	nop

0000000000402ca6 <_ZN8MyWorkerD0Ev>:
  402ca6:	55                   	push   %rbp
  402ca7:	48 89 e5             	mov    %rsp,%rbp
  402caa:	48 83 ec 10          	sub    $0x10,%rsp
  402cae:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402cb2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402cb6:	48 89 c7             	mov    %rax,%rdi
  402cb9:	e8 a6 ff ff ff       	callq  402c64 <_ZN8MyWorkerD1Ev>
  402cbe:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402cc2:	48 89 c7             	mov    %rax,%rdi
  402cc5:	e8 f6 f4 ff ff       	callq  4021c0 <_ZdlPv@plt>
  402cca:	c9                   	leaveq 
  402ccb:	c3                   	retq   
  402ccc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402cd0 <_ZN4Poco8RunnableD1Ev>:
  402cd0:	48 c7 07 90 cb 40 00 	movq   $0x40cb90,(%rdi)
  402cd7:	c3                   	retq   
  402cd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402cdf:	00 

0000000000402ce0 <_ZN4Poco8RunnableD0Ev>:
  402ce0:	48 c7 07 90 cb 40 00 	movq   $0x40cb90,(%rdi)
  402ce7:	e9 d4 f4 ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  402cec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402cf0 <_ZN4Poco8RunnableC1Ev>:
  402cf0:	48 c7 07 90 cb 40 00 	movq   $0x40cb90,(%rdi)
  402cf7:	c3                   	retq   
  402cf8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402cff:	00 

0000000000402d00 <_ZN12_GLOBAL__N_113SignalBlockerD1Ev>:
  402d00:	f3 c3                	repz retq 
  402d02:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  402d09:	1f 84 00 00 00 00 00 

0000000000402d10 <_ZN4Poco10ThreadImpl13runnableEntryEPv>:
  402d10:	41 55                	push   %r13
  402d12:	48 89 fe             	mov    %rdi,%rsi
  402d15:	41 54                	push   %r12
  402d17:	55                   	push   %rbp
  402d18:	53                   	push   %rbx
  402d19:	48 89 fb             	mov    %rdi,%rbx
  402d1c:	48 81 ec b8 00 00 00 	sub    $0xb8,%rsp
  402d23:	8b 3d 57 58 21 00    	mov    0x215857(%rip),%edi        # 618580 <_ZN4Poco10ThreadImpl20_currentThreadHolderE>
  402d29:	e8 52 f4 ff ff       	callq  402180 <pthread_setspecific@plt>
  402d2e:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402d33:	e8 c8 f7 ff ff       	callq  402500 <sigemptyset@plt>
  402d38:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402d3d:	be 03 00 00 00       	mov    $0x3,%esi
  402d42:	e8 69 f6 ff ff       	callq  4023b0 <sigaddset@plt>
  402d47:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402d4c:	be 0f 00 00 00       	mov    $0xf,%esi
  402d51:	e8 5a f6 ff ff       	callq  4023b0 <sigaddset@plt>
  402d56:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402d5b:	be 0d 00 00 00       	mov    $0xd,%esi
  402d60:	e8 4b f6 ff ff       	callq  4023b0 <sigaddset@plt>
  402d65:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  402d6a:	31 d2                	xor    %edx,%edx
  402d6c:	31 ff                	xor    %edi,%edi
  402d6e:	e8 bd f7 ff ff       	callq  402530 <pthread_sigmask@plt>
  402d73:	48 8b 1b             	mov    (%rbx),%rbx
  402d76:	48 85 db             	test   %rbx,%rbx
  402d79:	0f 84 81 00 00 00    	je     402e00 <_ZN4Poco10ThreadImpl13runnableEntryEPv+0xf0>
  402d7f:	f0 83 43 08 01       	lock addl $0x1,0x8(%rbx)
  402d84:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
  402d88:	48 8b 07             	mov    (%rdi),%rax
  402d8b:	ff 50 10             	callq  *0x10(%rax)
  402d8e:	48 85 db             	test   %rbx,%rbx
  402d91:	0f 84 2d 01 00 00    	je     402ec4 <_ZN4Poco10ThreadImpl13runnableEntryEPv+0x1b4>
  402d97:	48 8d 6b 40          	lea    0x40(%rbx),%rbp
  402d9b:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  402da2:	00 
  402da3:	48 89 ef             	mov    %rbp,%rdi
  402da6:	e8 b5 f7 ff ff       	callq  402560 <pthread_mutex_lock@plt>
  402dab:	85 c0                	test   %eax,%eax
  402dad:	0f 85 3a 01 00 00    	jne    402eed <_ZN4Poco10ThreadImpl13runnableEntryEPv+0x1dd>
  402db3:	48 8d 7b 68          	lea    0x68(%rbx),%rdi
  402db7:	c6 43 39 01          	movb   $0x1,0x39(%rbx)
  402dbb:	e8 10 f8 ff ff       	callq  4025d0 <pthread_cond_broadcast@plt>
  402dc0:	85 c0                	test   %eax,%eax
  402dc2:	48 89 ef             	mov    %rbp,%rdi
  402dc5:	0f 85 8c 00 00 00    	jne    402e57 <_ZN4Poco10ThreadImpl13runnableEntryEPv+0x147>
  402dcb:	e8 30 f8 ff ff       	callq  402600 <pthread_mutex_unlock@plt>
  402dd0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402dd5:	f0 0f c1 43 08       	lock xadd %eax,0x8(%rbx)
  402dda:	83 e8 01             	sub    $0x1,%eax
  402ddd:	85 c0                	test   %eax,%eax
  402ddf:	75 09                	jne    402dea <_ZN4Poco10ThreadImpl13runnableEntryEPv+0xda>
  402de1:	48 8b 03             	mov    (%rbx),%rax
  402de4:	48 89 df             	mov    %rbx,%rdi
  402de7:	ff 50 08             	callq  *0x8(%rax)
  402dea:	48 81 c4 b8 00 00 00 	add    $0xb8,%rsp
  402df1:	31 c0                	xor    %eax,%eax
  402df3:	5b                   	pop    %rbx
  402df4:	5d                   	pop    %rbp
  402df5:	41 5c                	pop    %r12
  402df7:	41 5d                	pop    %r13
  402df9:	c3                   	retq   
  402dfa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402e00:	bf 20 00 00 00       	mov    $0x20,%edi
  402e05:	e8 f6 f5 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  402e0a:	31 f6                	xor    %esi,%esi
  402e0c:	48 89 c7             	mov    %rax,%rdi
  402e0f:	48 89 c5             	mov    %rax,%rbp
  402e12:	e8 f9 7a 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  402e17:	ba 90 7f 40 00       	mov    $0x407f90,%edx
  402e1c:	be 50 d4 40 00       	mov    $0x40d450,%esi
  402e21:	48 89 ef             	mov    %rbp,%rdi
  402e24:	e8 77 f6 ff ff       	callq  4024a0 <__cxa_throw@plt>
  402e29:	48 89 c7             	mov    %rax,%rdi
  402e2c:	48 83 fa 01          	cmp    $0x1,%rdx
  402e30:	0f 84 a4 01 00 00    	je     402fda <_ZN4Poco10ThreadImpl13runnableEntryEPv+0x2ca>
  402e36:	48 83 fa 02          	cmp    $0x2,%rdx
  402e3a:	0f 85 81 01 00 00    	jne    402fc1 <_ZN4Poco10ThreadImpl13runnableEntryEPv+0x2b1>
  402e40:	e8 0b f7 ff ff       	callq  402550 <__cxa_begin_catch@plt>
  402e45:	48 89 c7             	mov    %rax,%rdi
  402e48:	e8 03 42 00 00       	callq  407050 <_ZN4Poco12ErrorHandler6handleERKSt9exception>
  402e4d:	e8 8e f6 ff ff       	callq  4024e0 <__cxa_end_catch@plt>
  402e52:	e9 37 ff ff ff       	jmpq   402d8e <_ZN4Poco10ThreadImpl13runnableEntryEPv+0x7e>
  402e57:	e8 a4 f7 ff ff       	callq  402600 <pthread_mutex_unlock@plt>
  402e5c:	bf 20 00 00 00       	mov    $0x20,%edi
  402e61:	e8 9a f5 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  402e66:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  402e6b:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  402e70:	be c3 cb 40 00       	mov    $0x40cbc3,%esi
  402e75:	48 89 c5             	mov    %rax,%rbp
  402e78:	e8 a3 f4 ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  402e7d:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  402e82:	31 d2                	xor    %edx,%edx
  402e84:	48 89 ef             	mov    %rbp,%rdi
  402e87:	e8 44 84 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  402e8c:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  402e91:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  402e96:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  402e9a:	e8 31 f3 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  402e9f:	ba 30 82 40 00       	mov    $0x408230,%edx
  402ea4:	be 20 d8 40 00       	mov    $0x40d820,%esi
  402ea9:	48 89 ef             	mov    %rbp,%rdi
  402eac:	e8 ef f5 ff ff       	callq  4024a0 <__cxa_throw@plt>
  402eb1:	48 89 c5             	mov    %rax,%rbp
  402eb4:	48 89 df             	mov    %rbx,%rdi
  402eb7:	e8 74 22 00 00       	callq  405130 <_ZNK4Poco16RefCountedObject7releaseEv>
  402ebc:	48 89 ef             	mov    %rbp,%rdi
  402ebf:	e8 fc f6 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  402ec4:	bf 20 00 00 00       	mov    $0x20,%edi
  402ec9:	e8 32 f5 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  402ece:	31 f6                	xor    %esi,%esi
  402ed0:	48 89 c7             	mov    %rax,%rdi
  402ed3:	48 89 c3             	mov    %rax,%rbx
  402ed6:	e8 35 7a 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  402edb:	ba 90 7f 40 00       	mov    $0x407f90,%edx
  402ee0:	be 50 d4 40 00       	mov    $0x40d450,%esi
  402ee5:	48 89 df             	mov    %rbx,%rdi
  402ee8:	e8 b3 f5 ff ff       	callq  4024a0 <__cxa_throw@plt>
  402eed:	bf 20 00 00 00       	mov    $0x20,%edi
  402ef2:	e8 09 f5 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  402ef7:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
  402efc:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  402f01:	be a8 cb 40 00       	mov    $0x40cba8,%esi
  402f06:	48 89 c5             	mov    %rax,%rbp
  402f09:	e8 12 f4 ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  402f0e:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  402f13:	31 d2                	xor    %edx,%edx
  402f15:	48 89 ef             	mov    %rbp,%rdi
  402f18:	e8 b3 83 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  402f1d:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  402f22:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  402f27:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  402f2b:	e8 a0 f2 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  402f30:	ba 30 82 40 00       	mov    $0x408230,%edx
  402f35:	be 20 d8 40 00       	mov    $0x40d820,%esi
  402f3a:	48 89 ef             	mov    %rbp,%rdi
  402f3d:	e8 5e f5 ff ff       	callq  4024a0 <__cxa_throw@plt>
  402f42:	49 89 c5             	mov    %rax,%r13
  402f45:	49 89 d4             	mov    %rdx,%r12
  402f48:	48 89 ef             	mov    %rbp,%rdi
  402f4b:	e8 d0 f4 ff ff       	callq  402420 <__cxa_free_exception@plt>
  402f50:	4c 89 ef             	mov    %r13,%rdi
  402f53:	4c 89 e2             	mov    %r12,%rdx
  402f56:	e9 d1 fe ff ff       	jmpq   402e2c <_ZN4Poco10ThreadImpl13runnableEntryEPv+0x11c>
  402f5b:	48 89 c5             	mov    %rax,%rbp
  402f5e:	e8 7d f5 ff ff       	callq  4024e0 <__cxa_end_catch@plt>
  402f63:	48 85 db             	test   %rbx,%rbx
  402f66:	0f 85 48 ff ff ff    	jne    402eb4 <_ZN4Poco10ThreadImpl13runnableEntryEPv+0x1a4>
  402f6c:	e9 4b ff ff ff       	jmpq   402ebc <_ZN4Poco10ThreadImpl13runnableEntryEPv+0x1ac>
  402f71:	49 89 c4             	mov    %rax,%r12
  402f74:	48 89 ef             	mov    %rbp,%rdi
  402f77:	4c 89 e5             	mov    %r12,%rbp
  402f7a:	e8 a1 f4 ff ff       	callq  402420 <__cxa_free_exception@plt>
  402f7f:	e9 30 ff ff ff       	jmpq   402eb4 <_ZN4Poco10ThreadImpl13runnableEntryEPv+0x1a4>
  402f84:	48 83 c2 01          	add    $0x1,%rdx
  402f88:	48 89 c7             	mov    %rax,%rdi
  402f8b:	0f 85 2e ff ff ff    	jne    402ebf <_ZN4Poco10ThreadImpl13runnableEntryEPv+0x1af>
  402f91:	e8 aa f3 ff ff       	callq  402340 <__cxa_call_unexpected@plt>
  402f96:	49 89 c4             	mov    %rax,%r12
  402f99:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  402f9e:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  402fa3:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  402fa7:	e8 24 f2 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  402fac:	eb c6                	jmp    402f74 <_ZN4Poco10ThreadImpl13runnableEntryEPv+0x264>
  402fae:	48 89 c5             	mov    %rax,%rbp
  402fb1:	48 89 df             	mov    %rbx,%rdi
  402fb4:	e8 67 f4 ff ff       	callq  402420 <__cxa_free_exception@plt>
  402fb9:	48 89 ef             	mov    %rbp,%rdi
  402fbc:	e8 ff f5 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  402fc1:	e8 8a f5 ff ff       	callq  402550 <__cxa_begin_catch@plt>
  402fc6:	e8 25 42 00 00       	callq  4071f0 <_ZN4Poco12ErrorHandler6handleEv>
  402fcb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402fd0:	e8 0b f5 ff ff       	callq  4024e0 <__cxa_end_catch@plt>
  402fd5:	e9 b4 fd ff ff       	jmpq   402d8e <_ZN4Poco10ThreadImpl13runnableEntryEPv+0x7e>
  402fda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402fe0:	e8 6b f5 ff ff       	callq  402550 <__cxa_begin_catch@plt>
  402fe5:	48 89 c7             	mov    %rax,%rdi
  402fe8:	e8 c3 3e 00 00       	callq  406eb0 <_ZN4Poco12ErrorHandler6handleERKNS_9ExceptionE>
  402fed:	e9 5b fe ff ff       	jmpq   402e4d <_ZN4Poco10ThreadImpl13runnableEntryEPv+0x13d>
  402ff2:	48 89 c5             	mov    %rax,%rbp
  402ff5:	e9 69 ff ff ff       	jmpq   402f63 <_ZN4Poco10ThreadImpl13runnableEntryEPv+0x253>
  402ffa:	49 89 c4             	mov    %rax,%r12
  402ffd:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  403002:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  403007:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  40300b:	e8 c0 f1 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  403010:	e9 5f ff ff ff       	jmpq   402f74 <_ZN4Poco10ThreadImpl13runnableEntryEPv+0x264>
  403015:	e9 57 ff ff ff       	jmpq   402f71 <_ZN4Poco10ThreadImpl13runnableEntryEPv+0x261>
  40301a:	48 89 c5             	mov    %rax,%rbp
  40301d:	0f 1f 00             	nopl   (%rax)
  403020:	e8 bb f4 ff ff       	callq  4024e0 <__cxa_end_catch@plt>
  403025:	e9 39 ff ff ff       	jmpq   402f63 <_ZN4Poco10ThreadImpl13runnableEntryEPv+0x253>
  40302a:	e9 2c ff ff ff       	jmpq   402f5b <_ZN4Poco10ThreadImpl13runnableEntryEPv+0x24b>
  40302f:	90                   	nop

0000000000403030 <_ZN4Poco10ThreadImpl13callableEntryEPv>:
  403030:	41 55                	push   %r13
  403032:	48 89 fe             	mov    %rdi,%rsi
  403035:	41 54                	push   %r12
  403037:	55                   	push   %rbp
  403038:	53                   	push   %rbx
  403039:	48 89 fb             	mov    %rdi,%rbx
  40303c:	48 81 ec b8 00 00 00 	sub    $0xb8,%rsp
  403043:	8b 3d 37 55 21 00    	mov    0x215537(%rip),%edi        # 618580 <_ZN4Poco10ThreadImpl20_currentThreadHolderE>
  403049:	e8 32 f1 ff ff       	callq  402180 <pthread_setspecific@plt>
  40304e:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  403053:	e8 a8 f4 ff ff       	callq  402500 <sigemptyset@plt>
  403058:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  40305d:	be 03 00 00 00       	mov    $0x3,%esi
  403062:	e8 49 f3 ff ff       	callq  4023b0 <sigaddset@plt>
  403067:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  40306c:	be 0f 00 00 00       	mov    $0xf,%esi
  403071:	e8 3a f3 ff ff       	callq  4023b0 <sigaddset@plt>
  403076:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  40307b:	be 0d 00 00 00       	mov    $0xd,%esi
  403080:	e8 2b f3 ff ff       	callq  4023b0 <sigaddset@plt>
  403085:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  40308a:	31 d2                	xor    %edx,%edx
  40308c:	31 ff                	xor    %edi,%edi
  40308e:	e8 9d f4 ff ff       	callq  402530 <pthread_sigmask@plt>
  403093:	48 8b 1b             	mov    (%rbx),%rbx
  403096:	48 85 db             	test   %rbx,%rbx
  403099:	0f 84 a1 00 00 00    	je     403140 <_ZN4Poco10ThreadImpl13callableEntryEPv+0x110>
  40309f:	f0 83 43 08 01       	lock addl $0x1,0x8(%rbx)
  4030a4:	48 8b 43 18          	mov    0x18(%rbx),%rax
  4030a8:	48 85 c0             	test   %rax,%rax
  4030ab:	0f 84 d1 01 00 00    	je     403282 <_ZN4Poco10ThreadImpl13callableEntryEPv+0x252>
  4030b1:	48 8b 78 18          	mov    0x18(%rax),%rdi
  4030b5:	ff 50 10             	callq  *0x10(%rax)
  4030b8:	48 85 db             	test   %rbx,%rbx
  4030bb:	0f 84 ea 01 00 00    	je     4032ab <_ZN4Poco10ThreadImpl13callableEntryEPv+0x27b>
  4030c1:	48 8b 43 18          	mov    0x18(%rbx),%rax
  4030c5:	48 85 c0             	test   %rax,%rax
  4030c8:	0f 84 8b 01 00 00    	je     403259 <_ZN4Poco10ThreadImpl13callableEntryEPv+0x229>
  4030ce:	48 8d 6b 40          	lea    0x40(%rbx),%rbp
  4030d2:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
  4030d9:	00 
  4030da:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
  4030e1:	00 
  4030e2:	48 89 ef             	mov    %rbp,%rdi
  4030e5:	e8 76 f4 ff ff       	callq  402560 <pthread_mutex_lock@plt>
  4030ea:	85 c0                	test   %eax,%eax
  4030ec:	0f 85 12 01 00 00    	jne    403204 <_ZN4Poco10ThreadImpl13callableEntryEPv+0x1d4>
  4030f2:	48 8d 7b 68          	lea    0x68(%rbx),%rdi
  4030f6:	c6 43 39 01          	movb   $0x1,0x39(%rbx)
  4030fa:	e8 d1 f4 ff ff       	callq  4025d0 <pthread_cond_broadcast@plt>
  4030ff:	85 c0                	test   %eax,%eax
  403101:	48 89 ef             	mov    %rbp,%rdi
  403104:	0f 85 8d 00 00 00    	jne    403197 <_ZN4Poco10ThreadImpl13callableEntryEPv+0x167>
  40310a:	e8 f1 f4 ff ff       	callq  402600 <pthread_mutex_unlock@plt>
  40310f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403114:	f0 0f c1 43 08       	lock xadd %eax,0x8(%rbx)
  403119:	83 e8 01             	sub    $0x1,%eax
  40311c:	85 c0                	test   %eax,%eax
  40311e:	75 09                	jne    403129 <_ZN4Poco10ThreadImpl13callableEntryEPv+0xf9>
  403120:	48 8b 03             	mov    (%rbx),%rax
  403123:	48 89 df             	mov    %rbx,%rdi
  403126:	ff 50 08             	callq  *0x8(%rax)
  403129:	48 81 c4 b8 00 00 00 	add    $0xb8,%rsp
  403130:	31 c0                	xor    %eax,%eax
  403132:	5b                   	pop    %rbx
  403133:	5d                   	pop    %rbp
  403134:	41 5c                	pop    %r12
  403136:	41 5d                	pop    %r13
  403138:	c3                   	retq   
  403139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  403140:	bf 20 00 00 00       	mov    $0x20,%edi
  403145:	e8 b6 f2 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  40314a:	31 f6                	xor    %esi,%esi
  40314c:	48 89 c7             	mov    %rax,%rdi
  40314f:	48 89 c5             	mov    %rax,%rbp
  403152:	e8 b9 77 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  403157:	ba 90 7f 40 00       	mov    $0x407f90,%edx
  40315c:	be 50 d4 40 00       	mov    $0x40d450,%esi
  403161:	48 89 ef             	mov    %rbp,%rdi
  403164:	e8 37 f3 ff ff       	callq  4024a0 <__cxa_throw@plt>
  403169:	48 89 c7             	mov    %rax,%rdi
  40316c:	48 83 fa 01          	cmp    $0x1,%rdx
  403170:	0f 84 f9 01 00 00    	je     40336f <_ZN4Poco10ThreadImpl13callableEntryEPv+0x33f>
  403176:	48 83 fa 02          	cmp    $0x2,%rdx
  40317a:	0f 85 d5 01 00 00    	jne    403355 <_ZN4Poco10ThreadImpl13callableEntryEPv+0x325>
  403180:	e8 cb f3 ff ff       	callq  402550 <__cxa_begin_catch@plt>
  403185:	48 89 c7             	mov    %rax,%rdi
  403188:	e8 c3 3e 00 00       	callq  407050 <_ZN4Poco12ErrorHandler6handleERKSt9exception>
  40318d:	e8 4e f3 ff ff       	callq  4024e0 <__cxa_end_catch@plt>
  403192:	e9 21 ff ff ff       	jmpq   4030b8 <_ZN4Poco10ThreadImpl13callableEntryEPv+0x88>
  403197:	e8 64 f4 ff ff       	callq  402600 <pthread_mutex_unlock@plt>
  40319c:	bf 20 00 00 00       	mov    $0x20,%edi
  4031a1:	e8 5a f2 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  4031a6:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  4031ab:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  4031b0:	be c3 cb 40 00       	mov    $0x40cbc3,%esi
  4031b5:	48 89 c5             	mov    %rax,%rbp
  4031b8:	e8 63 f1 ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  4031bd:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  4031c2:	31 d2                	xor    %edx,%edx
  4031c4:	48 89 ef             	mov    %rbp,%rdi
  4031c7:	e8 04 81 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  4031cc:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  4031d1:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  4031d6:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4031da:	e8 f1 ef ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  4031df:	ba 30 82 40 00       	mov    $0x408230,%edx
  4031e4:	be 20 d8 40 00       	mov    $0x40d820,%esi
  4031e9:	48 89 ef             	mov    %rbp,%rdi
  4031ec:	e8 af f2 ff ff       	callq  4024a0 <__cxa_throw@plt>
  4031f1:	48 89 c5             	mov    %rax,%rbp
  4031f4:	48 89 df             	mov    %rbx,%rdi
  4031f7:	e8 34 1f 00 00       	callq  405130 <_ZNK4Poco16RefCountedObject7releaseEv>
  4031fc:	48 89 ef             	mov    %rbp,%rdi
  4031ff:	e8 bc f3 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  403204:	bf 20 00 00 00       	mov    $0x20,%edi
  403209:	e8 f2 f1 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  40320e:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
  403213:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  403218:	be a8 cb 40 00       	mov    $0x40cba8,%esi
  40321d:	48 89 c5             	mov    %rax,%rbp
  403220:	e8 fb f0 ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  403225:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  40322a:	31 d2                	xor    %edx,%edx
  40322c:	48 89 ef             	mov    %rbp,%rdi
  40322f:	e8 9c 80 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  403234:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  403239:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  40323e:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  403242:	e8 89 ef ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  403247:	ba 30 82 40 00       	mov    $0x408230,%edx
  40324c:	be 20 d8 40 00       	mov    $0x40d820,%esi
  403251:	48 89 ef             	mov    %rbp,%rdi
  403254:	e8 47 f2 ff ff       	callq  4024a0 <__cxa_throw@plt>
  403259:	bf 20 00 00 00       	mov    $0x20,%edi
  40325e:	e8 9d f1 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  403263:	31 f6                	xor    %esi,%esi
  403265:	48 89 c7             	mov    %rax,%rdi
  403268:	48 89 c5             	mov    %rax,%rbp
  40326b:	e8 a0 76 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  403270:	ba 90 7f 40 00       	mov    $0x407f90,%edx
  403275:	be 50 d4 40 00       	mov    $0x40d450,%esi
  40327a:	48 89 ef             	mov    %rbp,%rdi
  40327d:	e8 1e f2 ff ff       	callq  4024a0 <__cxa_throw@plt>
  403282:	bf 20 00 00 00       	mov    $0x20,%edi
  403287:	e8 74 f1 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  40328c:	31 f6                	xor    %esi,%esi
  40328e:	48 89 c7             	mov    %rax,%rdi
  403291:	48 89 c5             	mov    %rax,%rbp
  403294:	e8 77 76 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  403299:	ba 90 7f 40 00       	mov    $0x407f90,%edx
  40329e:	be 50 d4 40 00       	mov    $0x40d450,%esi
  4032a3:	48 89 ef             	mov    %rbp,%rdi
  4032a6:	e8 f5 f1 ff ff       	callq  4024a0 <__cxa_throw@plt>
  4032ab:	bf 20 00 00 00       	mov    $0x20,%edi
  4032b0:	e8 4b f1 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  4032b5:	31 f6                	xor    %esi,%esi
  4032b7:	48 89 c7             	mov    %rax,%rdi
  4032ba:	48 89 c3             	mov    %rax,%rbx
  4032bd:	e8 4e 76 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  4032c2:	ba 90 7f 40 00       	mov    $0x407f90,%edx
  4032c7:	be 50 d4 40 00       	mov    $0x40d450,%esi
  4032cc:	48 89 df             	mov    %rbx,%rdi
  4032cf:	e8 cc f1 ff ff       	callq  4024a0 <__cxa_throw@plt>
  4032d4:	49 89 c4             	mov    %rax,%r12
  4032d7:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  4032dc:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  4032e1:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4032e5:	e8 e6 ee ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  4032ea:	48 89 ef             	mov    %rbp,%rdi
  4032ed:	4c 89 e5             	mov    %r12,%rbp
  4032f0:	e8 2b f1 ff ff       	callq  402420 <__cxa_free_exception@plt>
  4032f5:	e9 fa fe ff ff       	jmpq   4031f4 <_ZN4Poco10ThreadImpl13callableEntryEPv+0x1c4>
  4032fa:	48 89 c5             	mov    %rax,%rbp
  4032fd:	48 89 df             	mov    %rbx,%rdi
  403300:	e8 1b f1 ff ff       	callq  402420 <__cxa_free_exception@plt>
  403305:	48 89 ef             	mov    %rbp,%rdi
  403308:	e8 b3 f2 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40330d:	49 89 c4             	mov    %rax,%r12
  403310:	eb d8                	jmp    4032ea <_ZN4Poco10ThreadImpl13callableEntryEPv+0x2ba>
  403312:	48 83 c2 01          	add    $0x1,%rdx
  403316:	48 89 c7             	mov    %rax,%rdi
  403319:	0f 85 e0 fe ff ff    	jne    4031ff <_ZN4Poco10ThreadImpl13callableEntryEPv+0x1cf>
  40331f:	e8 1c f0 ff ff       	callq  402340 <__cxa_call_unexpected@plt>
  403324:	49 89 c5             	mov    %rax,%r13
  403327:	49 89 d4             	mov    %rdx,%r12
  40332a:	48 89 ef             	mov    %rbp,%rdi
  40332d:	e8 ee f0 ff ff       	callq  402420 <__cxa_free_exception@plt>
  403332:	4c 89 ef             	mov    %r13,%rdi
  403335:	4c 89 e2             	mov    %r12,%rdx
  403338:	e9 2f fe ff ff       	jmpq   40316c <_ZN4Poco10ThreadImpl13callableEntryEPv+0x13c>
  40333d:	48 89 c5             	mov    %rax,%rbp
  403340:	e8 9b f1 ff ff       	callq  4024e0 <__cxa_end_catch@plt>
  403345:	48 85 db             	test   %rbx,%rbx
  403348:	0f 85 a6 fe ff ff    	jne    4031f4 <_ZN4Poco10ThreadImpl13callableEntryEPv+0x1c4>
  40334e:	66 90                	xchg   %ax,%ax
  403350:	e9 a7 fe ff ff       	jmpq   4031fc <_ZN4Poco10ThreadImpl13callableEntryEPv+0x1cc>
  403355:	e8 f6 f1 ff ff       	callq  402550 <__cxa_begin_catch@plt>
  40335a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403360:	e8 8b 3e 00 00       	callq  4071f0 <_ZN4Poco12ErrorHandler6handleEv>
  403365:	e8 76 f1 ff ff       	callq  4024e0 <__cxa_end_catch@plt>
  40336a:	e9 49 fd ff ff       	jmpq   4030b8 <_ZN4Poco10ThreadImpl13callableEntryEPv+0x88>
  40336f:	90                   	nop
  403370:	e8 db f1 ff ff       	callq  402550 <__cxa_begin_catch@plt>
  403375:	48 89 c7             	mov    %rax,%rdi
  403378:	e8 33 3b 00 00       	callq  406eb0 <_ZN4Poco12ErrorHandler6handleERKNS_9ExceptionE>
  40337d:	e9 0b fe ff ff       	jmpq   40318d <_ZN4Poco10ThreadImpl13callableEntryEPv+0x15d>
  403382:	48 89 c5             	mov    %rax,%rbp
  403385:	eb be                	jmp    403345 <_ZN4Poco10ThreadImpl13callableEntryEPv+0x315>
  403387:	48 89 c5             	mov    %rax,%rbp
  40338a:	e8 51 f1 ff ff       	callq  4024e0 <__cxa_end_catch@plt>
  40338f:	90                   	nop
  403390:	eb b3                	jmp    403345 <_ZN4Poco10ThreadImpl13callableEntryEPv+0x315>
  403392:	eb a9                	jmp    40333d <_ZN4Poco10ThreadImpl13callableEntryEPv+0x30d>
  403394:	49 89 c4             	mov    %rax,%r12
  403397:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40339c:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  4033a1:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4033a5:	e8 26 ee ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  4033aa:	e9 3b ff ff ff       	jmpq   4032ea <_ZN4Poco10ThreadImpl13callableEntryEPv+0x2ba>
  4033af:	e9 59 ff ff ff       	jmpq   40330d <_ZN4Poco10ThreadImpl13callableEntryEPv+0x2dd>
  4033b4:	e9 54 ff ff ff       	jmpq   40330d <_ZN4Poco10ThreadImpl13callableEntryEPv+0x2dd>
  4033b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4033c0:	e9 5f ff ff ff       	jmpq   403324 <_ZN4Poco10ThreadImpl13callableEntryEPv+0x2f4>
  4033c5:	90                   	nop
  4033c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4033cd:	00 00 00 

00000000004033d0 <_ZN4Poco10ThreadImplC1Ev>:
  4033d0:	55                   	push   %rbp
  4033d1:	48 89 fd             	mov    %rdi,%rbp
  4033d4:	bf a0 00 00 00       	mov    $0xa0,%edi
  4033d9:	53                   	push   %rbx
  4033da:	48 83 ec 08          	sub    $0x8,%rsp
  4033de:	e8 cd f1 ff ff       	callq  4025b0 <_Znwm@plt>
  4033e3:	48 89 c7             	mov    %rax,%rdi
  4033e6:	48 89 c3             	mov    %rax,%rbx
  4033e9:	e8 82 96 00 00       	callq  40ca70 <_ZN4Poco16RefCountedObjectC1Ev>
  4033ee:	48 8d 7b 38          	lea    0x38(%rbx),%rdi
  4033f2:	48 c7 03 50 ce 40 00 	movq   $0x40ce50,(%rbx)
  4033f9:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  403400:	00 
  403401:	48 c7 43 18 00 00 00 	movq   $0x0,0x18(%rbx)
  403408:	00 
  403409:	48 c7 43 20 00 00 00 	movq   $0x0,0x20(%rbx)
  403410:	00 
  403411:	31 f6                	xor    %esi,%esi
  403413:	c7 43 28 02 00 00 00 	movl   $0x2,0x28(%rbx)
  40341a:	c7 43 30 00 00 00 00 	movl   $0x0,0x30(%rbx)
  403421:	e8 0a 38 00 00       	callq  406c30 <_ZN4Poco5EventC1Eb>
  403426:	48 c7 83 98 00 00 00 	movq   $0x0,0x98(%rbx)
  40342d:	00 00 00 00 
  403431:	48 89 5d 00          	mov    %rbx,0x0(%rbp)
  403435:	48 c7 45 08 00 00 00 	movq   $0x0,0x8(%rbp)
  40343c:	00 
  40343d:	48 c7 45 10 00 00 00 	movq   $0x0,0x10(%rbp)
  403444:	00 
  403445:	48 c7 45 18 00 00 00 	movq   $0x0,0x18(%rbp)
  40344c:	00 
  40344d:	48 83 c4 08          	add    $0x8,%rsp
  403451:	5b                   	pop    %rbx
  403452:	5d                   	pop    %rbp
  403453:	c3                   	retq   
  403454:	48 89 c5             	mov    %rax,%rbp
  403457:	48 89 df             	mov    %rbx,%rdi
  40345a:	e8 61 ed ff ff       	callq  4021c0 <_ZdlPv@plt>
  40345f:	48 89 ef             	mov    %rbp,%rdi
  403462:	e8 59 f1 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  403467:	48 8b 7b 18          	mov    0x18(%rbx),%rdi
  40346b:	48 89 c5             	mov    %rax,%rbp
  40346e:	48 85 ff             	test   %rdi,%rdi
  403471:	74 05                	je     403478 <_ZN4Poco10ThreadImplC1Ev+0xa8>
  403473:	e8 b8 1c 00 00       	callq  405130 <_ZNK4Poco16RefCountedObject7releaseEv>
  403478:	48 89 df             	mov    %rbx,%rdi
  40347b:	e8 c0 95 00 00       	callq  40ca40 <_ZN4Poco16RefCountedObjectD1Ev>
  403480:	eb d5                	jmp    403457 <_ZN4Poco10ThreadImplC1Ev+0x87>
  403482:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  403489:	1f 84 00 00 00 00 00 

0000000000403490 <_ZN4Poco10ThreadImplD1Ev>:
  403490:	41 54                	push   %r12
  403492:	55                   	push   %rbp
  403493:	53                   	push   %rbx
  403494:	48 8b 07             	mov    (%rdi),%rax
  403497:	48 89 fb             	mov    %rdi,%rbx
  40349a:	48 85 c0             	test   %rax,%rax
  40349d:	74 5b                	je     4034fa <_ZN4Poco10ThreadImplD1Ev+0x6a>
  40349f:	48 83 78 10 00       	cmpq   $0x0,0x10(%rax)
  4034a4:	74 42                	je     4034e8 <_ZN4Poco10ThreadImplD1Ev+0x58>
  4034a6:	48 8b 78 20          	mov    0x20(%rax),%rdi
  4034aa:	e8 c1 ef ff ff       	callq  402470 <pthread_detach@plt>
  4034af:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
  4034b3:	48 85 ff             	test   %rdi,%rdi
  4034b6:	74 05                	je     4034bd <_ZN4Poco10ThreadImplD1Ev+0x2d>
  4034b8:	e8 03 ed ff ff       	callq  4021c0 <_ZdlPv@plt>
  4034bd:	48 8b 3b             	mov    (%rbx),%rdi
  4034c0:	48 85 ff             	test   %rdi,%rdi
  4034c3:	74 17                	je     4034dc <_ZN4Poco10ThreadImplD1Ev+0x4c>
  4034c5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4034ca:	f0 0f c1 47 08       	lock xadd %eax,0x8(%rdi)
  4034cf:	83 e8 01             	sub    $0x1,%eax
  4034d2:	85 c0                	test   %eax,%eax
  4034d4:	75 06                	jne    4034dc <_ZN4Poco10ThreadImplD1Ev+0x4c>
  4034d6:	48 8b 07             	mov    (%rdi),%rax
  4034d9:	ff 50 08             	callq  *0x8(%rax)
  4034dc:	5b                   	pop    %rbx
  4034dd:	5d                   	pop    %rbp
  4034de:	41 5c                	pop    %r12
  4034e0:	c3                   	retq   
  4034e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4034e8:	48 8b 50 18          	mov    0x18(%rax),%rdx
  4034ec:	48 85 d2             	test   %rdx,%rdx
  4034ef:	74 be                	je     4034af <_ZN4Poco10ThreadImplD1Ev+0x1f>
  4034f1:	48 83 7a 10 00       	cmpq   $0x0,0x10(%rdx)
  4034f6:	75 ae                	jne    4034a6 <_ZN4Poco10ThreadImplD1Ev+0x16>
  4034f8:	eb b5                	jmp    4034af <_ZN4Poco10ThreadImplD1Ev+0x1f>
  4034fa:	bf 20 00 00 00       	mov    $0x20,%edi
  4034ff:	e8 fc ee ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  403504:	31 f6                	xor    %esi,%esi
  403506:	48 89 c7             	mov    %rax,%rdi
  403509:	48 89 c5             	mov    %rax,%rbp
  40350c:	e8 ff 73 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  403511:	ba 90 7f 40 00       	mov    $0x407f90,%edx
  403516:	be 50 d4 40 00       	mov    $0x40d450,%esi
  40351b:	48 89 ef             	mov    %rbp,%rdi
  40351e:	e8 7d ef ff ff       	callq  4024a0 <__cxa_throw@plt>
  403523:	48 89 c5             	mov    %rax,%rbp
  403526:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
  40352a:	48 85 ff             	test   %rdi,%rdi
  40352d:	74 05                	je     403534 <_ZN4Poco10ThreadImplD1Ev+0xa4>
  40352f:	e8 8c ec ff ff       	callq  4021c0 <_ZdlPv@plt>
  403534:	48 8b 3b             	mov    (%rbx),%rdi
  403537:	48 85 ff             	test   %rdi,%rdi
  40353a:	74 05                	je     403541 <_ZN4Poco10ThreadImplD1Ev+0xb1>
  40353c:	e8 ef 1b 00 00       	callq  405130 <_ZNK4Poco16RefCountedObject7releaseEv>
  403541:	48 89 ef             	mov    %rbp,%rdi
  403544:	e8 77 f0 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  403549:	49 89 c4             	mov    %rax,%r12
  40354c:	48 89 ef             	mov    %rbp,%rdi
  40354f:	e8 cc ee ff ff       	callq  402420 <__cxa_free_exception@plt>
  403554:	4c 89 e5             	mov    %r12,%rbp
  403557:	eb cd                	jmp    403526 <_ZN4Poco10ThreadImplD1Ev+0x96>
  403559:	48 83 c2 01          	add    $0x1,%rdx
  40355d:	48 89 c7             	mov    %rax,%rdi
  403560:	75 e2                	jne    403544 <_ZN4Poco10ThreadImplD1Ev+0xb4>
  403562:	e8 d9 ed ff ff       	callq  402340 <__cxa_call_unexpected@plt>
  403567:	90                   	nop
  403568:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40356f:	00 

0000000000403570 <_ZN4Poco10ThreadImpl20getMinOSPriorityImplEi>:
  403570:	e9 6b f0 ff ff       	jmpq   4025e0 <sched_get_priority_min@plt>
  403575:	90                   	nop
  403576:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40357d:	00 00 00 

0000000000403580 <_ZN4Poco10ThreadImpl20getMaxOSPriorityImplEi>:
  403580:	e9 6b ef ff ff       	jmpq   4024f0 <sched_get_priority_max@plt>
  403585:	90                   	nop
  403586:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40358d:	00 00 00 

0000000000403590 <_ZN4Poco10ThreadImpl16setStackSizeImplEi>:
  403590:	85 f6                	test   %esi,%esi
  403592:	74 0e                	je     4035a2 <_ZN4Poco10ThreadImpl16setStackSizeImplEi+0x12>
  403594:	81 fe ff 3f 00 00    	cmp    $0x3fff,%esi
  40359a:	b8 00 40 00 00       	mov    $0x4000,%eax
  40359f:	0f 4e f0             	cmovle %eax,%esi
  4035a2:	48 8b 07             	mov    (%rdi),%rax
  4035a5:	48 85 c0             	test   %rax,%rax
  4035a8:	74 0b                	je     4035b5 <_ZN4Poco10ThreadImpl16setStackSizeImplEi+0x25>
  4035aa:	48 63 f6             	movslq %esi,%rsi
  4035ad:	48 89 b0 98 00 00 00 	mov    %rsi,0x98(%rax)
  4035b4:	c3                   	retq   
  4035b5:	55                   	push   %rbp
  4035b6:	bf 20 00 00 00       	mov    $0x20,%edi
  4035bb:	53                   	push   %rbx
  4035bc:	50                   	push   %rax
  4035bd:	e8 3e ee ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  4035c2:	31 f6                	xor    %esi,%esi
  4035c4:	48 89 c7             	mov    %rax,%rdi
  4035c7:	48 89 c3             	mov    %rax,%rbx
  4035ca:	e8 41 73 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  4035cf:	ba 90 7f 40 00       	mov    $0x407f90,%edx
  4035d4:	be 50 d4 40 00       	mov    $0x40d450,%esi
  4035d9:	48 89 df             	mov    %rbx,%rdi
  4035dc:	e8 bf ee ff ff       	callq  4024a0 <__cxa_throw@plt>
  4035e1:	48 89 c5             	mov    %rax,%rbp
  4035e4:	48 89 df             	mov    %rbx,%rdi
  4035e7:	e8 34 ee ff ff       	callq  402420 <__cxa_free_exception@plt>
  4035ec:	48 89 ef             	mov    %rbp,%rdi
  4035ef:	e8 cc ef ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4035f4:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4035fb:	00 00 00 00 00 

0000000000403600 <_ZN4Poco10ThreadImpl8joinImplEv>:
  403600:	55                   	push   %rbp
  403601:	53                   	push   %rbx
  403602:	48 89 fb             	mov    %rdi,%rbx
  403605:	48 83 ec 28          	sub    $0x28,%rsp
  403609:	48 8b 3f             	mov    (%rdi),%rdi
  40360c:	48 85 ff             	test   %rdi,%rdi
  40360f:	74 2e                	je     40363f <_ZN4Poco10ThreadImpl8joinImplEv+0x3f>
  403611:	48 83 c7 38          	add    $0x38,%rdi
  403615:	e8 d6 32 00 00       	callq  4068f0 <_ZN4Poco9EventImpl8waitImplEv>
  40361a:	48 8b 03             	mov    (%rbx),%rax
  40361d:	48 85 c0             	test   %rax,%rax
  403620:	0f 84 97 00 00 00    	je     4036bd <_ZN4Poco10ThreadImpl8joinImplEv+0xbd>
  403626:	48 8b 78 20          	mov    0x20(%rax),%rdi
  40362a:	48 8d 74 24 18       	lea    0x18(%rsp),%rsi
  40362f:	e8 dc ec ff ff       	callq  402310 <pthread_join@plt>
  403634:	85 c0                	test   %eax,%eax
  403636:	75 30                	jne    403668 <_ZN4Poco10ThreadImpl8joinImplEv+0x68>
  403638:	48 83 c4 28          	add    $0x28,%rsp
  40363c:	5b                   	pop    %rbx
  40363d:	5d                   	pop    %rbp
  40363e:	c3                   	retq   
  40363f:	bf 20 00 00 00       	mov    $0x20,%edi
  403644:	e8 b7 ed ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  403649:	31 f6                	xor    %esi,%esi
  40364b:	48 89 c7             	mov    %rax,%rdi
  40364e:	48 89 c3             	mov    %rax,%rbx
  403651:	e8 ba 72 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  403656:	ba 90 7f 40 00       	mov    $0x407f90,%edx
  40365b:	be 50 d4 40 00       	mov    $0x40d450,%esi
  403660:	48 89 df             	mov    %rbx,%rdi
  403663:	e8 38 ee ff ff       	callq  4024a0 <__cxa_throw@plt>
  403668:	bf 20 00 00 00       	mov    $0x20,%edi
  40366d:	e8 8e ed ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  403672:	48 8d 54 24 0e       	lea    0xe(%rsp),%rdx
  403677:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  40367c:	be d7 cb 40 00       	mov    $0x40cbd7,%esi
  403681:	48 89 c3             	mov    %rax,%rbx
  403684:	e8 97 ec ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  403689:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40368e:	31 d2                	xor    %edx,%edx
  403690:	48 89 df             	mov    %rbx,%rdi
  403693:	e8 38 7c 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  403698:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  40369d:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  4036a2:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4036a6:	e8 25 eb ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  4036ab:	ba 30 82 40 00       	mov    $0x408230,%edx
  4036b0:	be 20 d8 40 00       	mov    $0x40d820,%esi
  4036b5:	48 89 df             	mov    %rbx,%rdi
  4036b8:	e8 e3 ed ff ff       	callq  4024a0 <__cxa_throw@plt>
  4036bd:	bf 20 00 00 00       	mov    $0x20,%edi
  4036c2:	e8 39 ed ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  4036c7:	31 f6                	xor    %esi,%esi
  4036c9:	48 89 c7             	mov    %rax,%rdi
  4036cc:	48 89 c3             	mov    %rax,%rbx
  4036cf:	e8 3c 72 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  4036d4:	eb 80                	jmp    403656 <_ZN4Poco10ThreadImpl8joinImplEv+0x56>
  4036d6:	48 89 c5             	mov    %rax,%rbp
  4036d9:	48 89 df             	mov    %rbx,%rdi
  4036dc:	e8 3f ed ff ff       	callq  402420 <__cxa_free_exception@plt>
  4036e1:	48 89 ef             	mov    %rbp,%rdi
  4036e4:	e8 d7 ee ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4036e9:	eb eb                	jmp    4036d6 <_ZN4Poco10ThreadImpl8joinImplEv+0xd6>
  4036eb:	48 89 c5             	mov    %rax,%rbp
  4036ee:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  4036f3:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  4036f8:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4036fc:	e8 cf ea ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  403701:	eb d6                	jmp    4036d9 <_ZN4Poco10ThreadImpl8joinImplEv+0xd9>
  403703:	eb d1                	jmp    4036d6 <_ZN4Poco10ThreadImpl8joinImplEv+0xd6>
  403705:	90                   	nop
  403706:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40370d:	00 00 00 

0000000000403710 <_ZN4Poco10ThreadImpl8joinImplEl>:
  403710:	55                   	push   %rbp
  403711:	48 89 fd             	mov    %rdi,%rbp
  403714:	53                   	push   %rbx
  403715:	48 83 ec 28          	sub    $0x28,%rsp
  403719:	48 8b 07             	mov    (%rdi),%rax
  40371c:	48 85 c0             	test   %rax,%rax
  40371f:	0f 84 8f 00 00 00    	je     4037b4 <_ZN4Poco10ThreadImpl8joinImplEl+0xa4>
  403725:	48 8d 78 38          	lea    0x38(%rax),%rdi
  403729:	e8 42 33 00 00       	callq  406a70 <_ZN4Poco9EventImpl8waitImplEl>
  40372e:	84 c0                	test   %al,%al
  403730:	89 c3                	mov    %eax,%ebx
  403732:	75 0c                	jne    403740 <_ZN4Poco10ThreadImpl8joinImplEl+0x30>
  403734:	48 83 c4 28          	add    $0x28,%rsp
  403738:	89 d8                	mov    %ebx,%eax
  40373a:	5b                   	pop    %rbx
  40373b:	5d                   	pop    %rbp
  40373c:	c3                   	retq   
  40373d:	0f 1f 00             	nopl   (%rax)
  403740:	48 8b 45 00          	mov    0x0(%rbp),%rax
  403744:	48 85 c0             	test   %rax,%rax
  403747:	0f 84 90 00 00 00    	je     4037dd <_ZN4Poco10ThreadImpl8joinImplEl+0xcd>
  40374d:	48 8b 78 20          	mov    0x20(%rax),%rdi
  403751:	48 8d 74 24 18       	lea    0x18(%rsp),%rsi
  403756:	e8 b5 eb ff ff       	callq  402310 <pthread_join@plt>
  40375b:	85 c0                	test   %eax,%eax
  40375d:	74 d5                	je     403734 <_ZN4Poco10ThreadImpl8joinImplEl+0x24>
  40375f:	bf 20 00 00 00       	mov    $0x20,%edi
  403764:	e8 97 ec ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  403769:	48 8d 54 24 0e       	lea    0xe(%rsp),%rdx
  40376e:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  403773:	be d7 cb 40 00       	mov    $0x40cbd7,%esi
  403778:	48 89 c3             	mov    %rax,%rbx
  40377b:	e8 a0 eb ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  403780:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  403785:	31 d2                	xor    %edx,%edx
  403787:	48 89 df             	mov    %rbx,%rdi
  40378a:	e8 41 7b 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  40378f:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  403794:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  403799:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  40379d:	e8 2e ea ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  4037a2:	ba 30 82 40 00       	mov    $0x408230,%edx
  4037a7:	be 20 d8 40 00       	mov    $0x40d820,%esi
  4037ac:	48 89 df             	mov    %rbx,%rdi
  4037af:	e8 ec ec ff ff       	callq  4024a0 <__cxa_throw@plt>
  4037b4:	bf 20 00 00 00       	mov    $0x20,%edi
  4037b9:	e8 42 ec ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  4037be:	31 f6                	xor    %esi,%esi
  4037c0:	48 89 c7             	mov    %rax,%rdi
  4037c3:	48 89 c3             	mov    %rax,%rbx
  4037c6:	e8 45 71 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  4037cb:	ba 90 7f 40 00       	mov    $0x407f90,%edx
  4037d0:	be 50 d4 40 00       	mov    $0x40d450,%esi
  4037d5:	48 89 df             	mov    %rbx,%rdi
  4037d8:	e8 c3 ec ff ff       	callq  4024a0 <__cxa_throw@plt>
  4037dd:	bf 20 00 00 00       	mov    $0x20,%edi
  4037e2:	e8 19 ec ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  4037e7:	31 f6                	xor    %esi,%esi
  4037e9:	48 89 c7             	mov    %rax,%rdi
  4037ec:	48 89 c3             	mov    %rax,%rbx
  4037ef:	e8 1c 71 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  4037f4:	eb d5                	jmp    4037cb <_ZN4Poco10ThreadImpl8joinImplEl+0xbb>
  4037f6:	48 89 c5             	mov    %rax,%rbp
  4037f9:	48 89 df             	mov    %rbx,%rdi
  4037fc:	e8 1f ec ff ff       	callq  402420 <__cxa_free_exception@plt>
  403801:	48 89 ef             	mov    %rbp,%rdi
  403804:	e8 b7 ed ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  403809:	eb eb                	jmp    4037f6 <_ZN4Poco10ThreadImpl8joinImplEl+0xe6>
  40380b:	48 89 c5             	mov    %rax,%rbp
  40380e:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  403813:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  403818:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  40381c:	e8 af e9 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  403821:	eb d6                	jmp    4037f9 <_ZN4Poco10ThreadImpl8joinImplEl+0xe9>
  403823:	eb d1                	jmp    4037f6 <_ZN4Poco10ThreadImpl8joinImplEl+0xe6>
  403825:	90                   	nop
  403826:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40382d:	00 00 00 

0000000000403830 <_ZN4Poco10ThreadImpl11currentImplEv>:
  403830:	8b 3d 4a 4d 21 00    	mov    0x214d4a(%rip),%edi        # 618580 <_ZN4Poco10ThreadImpl20_currentThreadHolderE>
  403836:	e9 05 e9 ff ff       	jmpq   402140 <pthread_getspecific@plt>
  40383b:	90                   	nop
  40383c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000403840 <_ZN4Poco10ThreadImpl14currentTidImplEv>:
  403840:	e9 bb ea ff ff       	jmpq   402300 <pthread_self@plt>
  403845:	90                   	nop
  403846:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40384d:	00 00 00 

0000000000403850 <_ZN4Poco10ThreadImpl9sleepImplEl>:
  403850:	41 54                	push   %r12
  403852:	48 69 f7 e8 03 00 00 	imul   $0x3e8,%rdi,%rsi
  403859:	55                   	push   %rbp
  40385a:	53                   	push   %rbx
  40385b:	48 83 ec 60          	sub    $0x60,%rsp
  40385f:	48 89 e7             	mov    %rsp,%rdi
  403862:	e8 f9 21 00 00       	callq  405a60 <_ZN4Poco8TimespanC1El>
  403867:	48 8b 0c 24          	mov    (%rsp),%rcx
  40386b:	4c 8b 25 66 96 00 00 	mov    0x9666(%rip),%r12        # 40ced8 <_ZN4Poco8Timespan7SECONDSE>
  403872:	48 89 c8             	mov    %rcx,%rax
  403875:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  40387a:	48 99                	cqto   
  40387c:	49 f7 fc             	idiv   %r12
  40387f:	48 ba db 34 b6 d7 82 	movabs $0x431bde82d7b634db,%rdx
  403886:	de 1b 43 
  403889:	48 98                	cltq   
  40388b:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  403890:	48 89 c8             	mov    %rcx,%rax
  403893:	48 f7 ea             	imul   %rdx
  403896:	48 89 c8             	mov    %rcx,%rax
  403899:	48 c1 f8 3f          	sar    $0x3f,%rax
  40389d:	48 c1 fa 12          	sar    $0x12,%rdx
  4038a1:	48 29 c2             	sub    %rax,%rdx
  4038a4:	48 69 d2 40 42 0f 00 	imul   $0xf4240,%rdx,%rdx
  4038ab:	48 29 d1             	sub    %rdx,%rcx
  4038ae:	48 69 c9 e8 03 00 00 	imul   $0x3e8,%rcx,%rcx
  4038b5:	48 89 4c 24 58       	mov    %rcx,0x58(%rsp)
  4038ba:	e8 b1 24 00 00       	callq  405d70 <_ZN4Poco9TimestampC1Ev>
  4038bf:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
  4038c4:	31 f6                	xor    %esi,%esi
  4038c6:	e8 75 eb ff ff       	callq  402440 <nanosleep@plt>
  4038cb:	85 c0                	test   %eax,%eax
  4038cd:	89 c3                	mov    %eax,%ebx
  4038cf:	78 2f                	js     403900 <_ZN4Poco10ThreadImpl9sleepImplEl+0xb0>
  4038d1:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  4038d6:	e8 55 23 00 00       	callq  405c30 <_ZN4Poco9TimestampD1Ev>
  4038db:	48 8b 2c 24          	mov    (%rsp),%rbp
  4038df:	48 85 ed             	test   %rbp,%rbp
  4038e2:	7e 08                	jle    4038ec <_ZN4Poco10ThreadImpl9sleepImplEl+0x9c>
  4038e4:	85 db                	test   %ebx,%ebx
  4038e6:	0f 88 8c 00 00 00    	js     403978 <_ZN4Poco10ThreadImpl9sleepImplEl+0x128>
  4038ec:	48 89 e7             	mov    %rsp,%rdi
  4038ef:	e8 ec 21 00 00       	callq  405ae0 <_ZN4Poco8TimespanD1Ev>
  4038f4:	48 83 c4 60          	add    $0x60,%rsp
  4038f8:	5b                   	pop    %rbx
  4038f9:	5d                   	pop    %rbp
  4038fa:	41 5c                	pop    %r12
  4038fc:	c3                   	retq   
  4038fd:	0f 1f 00             	nopl   (%rax)
  403900:	e8 8b ea ff ff       	callq  402390 <__errno_location@plt>
  403905:	83 38 04             	cmpl   $0x4,(%rax)
  403908:	75 c7                	jne    4038d1 <_ZN4Poco10ThreadImpl9sleepImplEl+0x81>
  40390a:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  40390f:	e8 5c 24 00 00       	callq  405d70 <_ZN4Poco9TimestampC1Ev>
  403914:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  403919:	e8 52 24 00 00       	callq  405d70 <_ZN4Poco9TimestampC1Ev>
  40391e:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  403923:	48 8b 6c 24 40       	mov    0x40(%rsp),%rbp
  403928:	48 2b 6c 24 10       	sub    0x10(%rsp),%rbp
  40392d:	e8 fe 22 00 00       	callq  405c30 <_ZN4Poco9TimestampD1Ev>
  403932:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  403937:	48 89 ee             	mov    %rbp,%rsi
  40393a:	e8 21 21 00 00       	callq  405a60 <_ZN4Poco8TimespanC1El>
  40393f:	48 8b 04 24          	mov    (%rsp),%rax
  403943:	48 39 44 24 30       	cmp    %rax,0x30(%rsp)
  403948:	0f 8d a2 00 00 00    	jge    4039f0 <_ZN4Poco10ThreadImpl9sleepImplEl+0x1a0>
  40394e:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  403953:	48 89 e7             	mov    %rsp,%rdi
  403956:	e8 65 22 00 00       	callq  405bc0 <_ZN4Poco8TimespanmIERKS0_>
  40395b:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  403960:	e8 7b 21 00 00       	callq  405ae0 <_ZN4Poco8TimespanD1Ev>
  403965:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  40396a:	e8 c1 22 00 00       	callq  405c30 <_ZN4Poco9TimestampD1Ev>
  40396f:	e9 5d ff ff ff       	jmpq   4038d1 <_ZN4Poco10ThreadImpl9sleepImplEl+0x81>
  403974:	0f 1f 40 00          	nopl   0x0(%rax)
  403978:	e8 13 ea ff ff       	callq  402390 <__errno_location@plt>
  40397d:	83 38 04             	cmpl   $0x4,(%rax)
  403980:	74 5e                	je     4039e0 <_ZN4Poco10ThreadImpl9sleepImplEl+0x190>
  403982:	bf 20 00 00 00       	mov    $0x20,%edi
  403987:	e8 74 ea ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  40398c:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
  403991:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
  403996:	be 00 cd 40 00       	mov    $0x40cd00,%esi
  40399b:	48 89 c3             	mov    %rax,%rbx
  40399e:	e8 7d e9 ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  4039a3:	48 8d 74 24 50       	lea    0x50(%rsp),%rsi
  4039a8:	31 d2                	xor    %edx,%edx
  4039aa:	48 89 df             	mov    %rbx,%rdi
  4039ad:	e8 1e 79 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  4039b2:	48 8b 44 24 50       	mov    0x50(%rsp),%rax
  4039b7:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  4039bc:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4039c0:	e8 0b e8 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  4039c5:	ba 30 82 40 00       	mov    $0x408230,%edx
  4039ca:	be 20 d8 40 00       	mov    $0x40d820,%esi
  4039cf:	48 89 df             	mov    %rbx,%rdi
  4039d2:	e8 c9 ea ff ff       	callq  4024a0 <__cxa_throw@plt>
  4039d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4039de:	00 00 
  4039e0:	48 89 e9             	mov    %rbp,%rcx
  4039e3:	e9 8a fe ff ff       	jmpq   403872 <_ZN4Poco10ThreadImpl9sleepImplEl+0x22>
  4039e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4039ef:	00 
  4039f0:	31 f6                	xor    %esi,%esi
  4039f2:	48 89 e7             	mov    %rsp,%rdi
  4039f5:	e8 06 21 00 00       	callq  405b00 <_ZN4Poco8TimespanaSEl>
  4039fa:	e9 5c ff ff ff       	jmpq   40395b <_ZN4Poco10ThreadImpl9sleepImplEl+0x10b>
  4039ff:	48 89 c3             	mov    %rax,%rbx
  403a02:	48 89 e7             	mov    %rsp,%rdi
  403a05:	e8 d6 20 00 00       	callq  405ae0 <_ZN4Poco8TimespanD1Ev>
  403a0a:	48 89 df             	mov    %rbx,%rdi
  403a0d:	e8 ae eb ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  403a12:	48 89 c5             	mov    %rax,%rbp
  403a15:	48 8b 44 24 50       	mov    0x50(%rsp),%rax
  403a1a:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  403a1f:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  403a23:	e8 a8 e7 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  403a28:	48 89 df             	mov    %rbx,%rdi
  403a2b:	48 89 eb             	mov    %rbp,%rbx
  403a2e:	e8 ed e9 ff ff       	callq  402420 <__cxa_free_exception@plt>
  403a33:	eb cd                	jmp    403a02 <_ZN4Poco10ThreadImpl9sleepImplEl+0x1b2>
  403a35:	48 89 c5             	mov    %rax,%rbp
  403a38:	eb ee                	jmp    403a28 <_ZN4Poco10ThreadImpl9sleepImplEl+0x1d8>
  403a3a:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  403a3f:	48 89 c3             	mov    %rax,%rbx
  403a42:	e8 99 20 00 00       	callq  405ae0 <_ZN4Poco8TimespanD1Ev>
  403a47:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  403a4c:	e8 df 21 00 00       	callq  405c30 <_ZN4Poco9TimestampD1Ev>
  403a51:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  403a56:	e8 d5 21 00 00       	callq  405c30 <_ZN4Poco9TimestampD1Ev>
  403a5b:	eb a5                	jmp    403a02 <_ZN4Poco10ThreadImpl9sleepImplEl+0x1b2>
  403a5d:	48 89 c3             	mov    %rax,%rbx
  403a60:	eb e5                	jmp    403a47 <_ZN4Poco10ThreadImpl9sleepImplEl+0x1f7>
  403a62:	48 89 c3             	mov    %rax,%rbx
  403a65:	eb ea                	jmp    403a51 <_ZN4Poco10ThreadImpl9sleepImplEl+0x201>
  403a67:	90                   	nop
  403a68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  403a6f:	00 

0000000000403a70 <_ZN4Poco10ThreadImpl7mapPrioEii>:
  403a70:	41 54                	push   %r12
  403a72:	55                   	push   %rbp
  403a73:	89 fd                	mov    %edi,%ebp
  403a75:	89 f7                	mov    %esi,%edi
  403a77:	53                   	push   %rbx
  403a78:	89 f3                	mov    %esi,%ebx
  403a7a:	e8 61 eb ff ff       	callq  4025e0 <sched_get_priority_min@plt>
  403a7f:	89 df                	mov    %ebx,%edi
  403a81:	41 89 c4             	mov    %eax,%r12d
  403a84:	e8 67 ea ff ff       	callq  4024f0 <sched_get_priority_max@plt>
  403a89:	83 fd 04             	cmp    $0x4,%ebp
  403a8c:	77 0a                	ja     403a98 <_ZN4Poco10ThreadImpl7mapPrioEii+0x28>
  403a8e:	ff 24 ed 58 cd 40 00 	jmpq   *0x40cd58(,%rbp,8)
  403a95:	0f 1f 00             	nopl   (%rax)
  403a98:	ba ca 01 00 00       	mov    $0x1ca,%edx
  403a9d:	be ea cb 40 00       	mov    $0x40cbea,%esi
  403aa2:	bf ff cb 40 00       	mov    $0x40cbff,%edi
  403aa7:	e8 54 2b 00 00       	callq  406600 <_ZN4Poco8Bugcheck8bugcheckEPKcS2_i>
  403aac:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403ab1:	5b                   	pop    %rbx
  403ab2:	5d                   	pop    %rbp
  403ab3:	41 5c                	pop    %r12
  403ab5:	c3                   	retq   
  403ab6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  403abd:	00 00 00 
  403ac0:	44 29 e0             	sub    %r12d,%eax
  403ac3:	8d 04 40             	lea    (%rax,%rax,2),%eax
  403ac6:	5b                   	pop    %rbx
  403ac7:	8d 50 03             	lea    0x3(%rax),%edx
  403aca:	85 c0                	test   %eax,%eax
  403acc:	5d                   	pop    %rbp
  403acd:	0f 49 d0             	cmovns %eax,%edx
  403ad0:	c1 fa 02             	sar    $0x2,%edx
  403ad3:	42 8d 04 22          	lea    (%rdx,%r12,1),%eax
  403ad7:	41 5c                	pop    %r12
  403ad9:	c3                   	retq   
  403ada:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403ae0:	5b                   	pop    %rbx
  403ae1:	5d                   	pop    %rbp
  403ae2:	44 89 e0             	mov    %r12d,%eax
  403ae5:	41 5c                	pop    %r12
  403ae7:	c3                   	retq   
  403ae8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  403aef:	00 
  403af0:	44 29 e0             	sub    %r12d,%eax
  403af3:	89 c2                	mov    %eax,%edx
  403af5:	8d 40 03             	lea    0x3(%rax),%eax
  403af8:	85 d2                	test   %edx,%edx
  403afa:	0f 48 d0             	cmovs  %eax,%edx
  403afd:	5b                   	pop    %rbx
  403afe:	c1 fa 02             	sar    $0x2,%edx
  403b01:	5d                   	pop    %rbp
  403b02:	42 8d 04 22          	lea    (%rdx,%r12,1),%eax
  403b06:	41 5c                	pop    %r12
  403b08:	c3                   	retq   
  403b09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  403b10:	44 29 e0             	sub    %r12d,%eax
  403b13:	89 c2                	mov    %eax,%edx
  403b15:	c1 e8 1f             	shr    $0x1f,%eax
  403b18:	01 c2                	add    %eax,%edx
  403b1a:	5b                   	pop    %rbx
  403b1b:	d1 fa                	sar    %edx
  403b1d:	5d                   	pop    %rbp
  403b1e:	42 8d 04 22          	lea    (%rdx,%r12,1),%eax
  403b22:	41 5c                	pop    %r12
  403b24:	c3                   	retq   
  403b25:	90                   	nop
  403b26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  403b2d:	00 00 00 

0000000000403b30 <_ZN4Poco10ThreadImpl15setPriorityImplEi>:
  403b30:	55                   	push   %rbp
  403b31:	53                   	push   %rbx
  403b32:	48 89 fb             	mov    %rdi,%rbx
  403b35:	48 83 ec 38          	sub    $0x38,%rsp
  403b39:	48 8b 07             	mov    (%rdi),%rax
  403b3c:	48 85 c0             	test   %rax,%rax
  403b3f:	0f 84 b2 00 00 00    	je     403bf7 <_ZN4Poco10ThreadImpl15setPriorityImplEi+0xc7>
  403b45:	39 70 28             	cmp    %esi,0x28(%rax)
  403b48:	89 f7                	mov    %esi,%edi
  403b4a:	74 3c                	je     403b88 <_ZN4Poco10ThreadImpl15setPriorityImplEi+0x58>
  403b4c:	48 83 78 10 00       	cmpq   $0x0,0x10(%rax)
  403b51:	89 70 28             	mov    %esi,0x28(%rax)
  403b54:	c7 40 30 00 00 00 00 	movl   $0x0,0x30(%rax)
  403b5b:	74 33                	je     403b90 <_ZN4Poco10ThreadImpl15setPriorityImplEi+0x60>
  403b5d:	31 f6                	xor    %esi,%esi
  403b5f:	e8 0c ff ff ff       	callq  403a70 <_ZN4Poco10ThreadImpl7mapPrioEii>
  403b64:	89 44 24 10          	mov    %eax,0x10(%rsp)
  403b68:	48 8b 03             	mov    (%rbx),%rax
  403b6b:	48 85 c0             	test   %rax,%rax
  403b6e:	0f 84 ac 00 00 00    	je     403c20 <_ZN4Poco10ThreadImpl15setPriorityImplEi+0xf0>
  403b74:	48 8b 78 20          	mov    0x20(%rax),%rdi
  403b78:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
  403b7d:	31 f6                	xor    %esi,%esi
  403b7f:	e8 bc e9 ff ff       	callq  402540 <pthread_setschedparam@plt>
  403b84:	85 c0                	test   %eax,%eax
  403b86:	75 1a                	jne    403ba2 <_ZN4Poco10ThreadImpl15setPriorityImplEi+0x72>
  403b88:	48 83 c4 38          	add    $0x38,%rsp
  403b8c:	5b                   	pop    %rbx
  403b8d:	5d                   	pop    %rbp
  403b8e:	c3                   	retq   
  403b8f:	90                   	nop
  403b90:	48 8b 40 18          	mov    0x18(%rax),%rax
  403b94:	48 85 c0             	test   %rax,%rax
  403b97:	74 ef                	je     403b88 <_ZN4Poco10ThreadImpl15setPriorityImplEi+0x58>
  403b99:	48 83 78 10 00       	cmpq   $0x0,0x10(%rax)
  403b9e:	75 bd                	jne    403b5d <_ZN4Poco10ThreadImpl15setPriorityImplEi+0x2d>
  403ba0:	eb e6                	jmp    403b88 <_ZN4Poco10ThreadImpl15setPriorityImplEi+0x58>
  403ba2:	bf 20 00 00 00       	mov    $0x20,%edi
  403ba7:	e8 54 e8 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  403bac:	48 8d 54 24 0e       	lea    0xe(%rsp),%rdx
  403bb1:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  403bb6:	be 17 cc 40 00       	mov    $0x40cc17,%esi
  403bbb:	48 89 c3             	mov    %rax,%rbx
  403bbe:	e8 5d e7 ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  403bc3:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  403bc8:	31 d2                	xor    %edx,%edx
  403bca:	48 89 df             	mov    %rbx,%rdi
  403bcd:	e8 fe 76 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  403bd2:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  403bd7:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  403bdc:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  403be0:	e8 eb e5 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  403be5:	ba 30 82 40 00       	mov    $0x408230,%edx
  403bea:	be 20 d8 40 00       	mov    $0x40d820,%esi
  403bef:	48 89 df             	mov    %rbx,%rdi
  403bf2:	e8 a9 e8 ff ff       	callq  4024a0 <__cxa_throw@plt>
  403bf7:	bf 20 00 00 00       	mov    $0x20,%edi
  403bfc:	e8 ff e7 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  403c01:	31 f6                	xor    %esi,%esi
  403c03:	48 89 c7             	mov    %rax,%rdi
  403c06:	48 89 c3             	mov    %rax,%rbx
  403c09:	e8 02 6d 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  403c0e:	ba 90 7f 40 00       	mov    $0x407f90,%edx
  403c13:	be 50 d4 40 00       	mov    $0x40d450,%esi
  403c18:	48 89 df             	mov    %rbx,%rdi
  403c1b:	e8 80 e8 ff ff       	callq  4024a0 <__cxa_throw@plt>
  403c20:	bf 20 00 00 00       	mov    $0x20,%edi
  403c25:	e8 d6 e7 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  403c2a:	31 f6                	xor    %esi,%esi
  403c2c:	48 89 c7             	mov    %rax,%rdi
  403c2f:	48 89 c3             	mov    %rax,%rbx
  403c32:	e8 d9 6c 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  403c37:	eb d5                	jmp    403c0e <_ZN4Poco10ThreadImpl15setPriorityImplEi+0xde>
  403c39:	48 89 c5             	mov    %rax,%rbp
  403c3c:	48 89 df             	mov    %rbx,%rdi
  403c3f:	e8 dc e7 ff ff       	callq  402420 <__cxa_free_exception@plt>
  403c44:	48 89 ef             	mov    %rbp,%rdi
  403c47:	e8 74 e9 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  403c4c:	eb eb                	jmp    403c39 <_ZN4Poco10ThreadImpl15setPriorityImplEi+0x109>
  403c4e:	48 89 c5             	mov    %rax,%rbp
  403c51:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  403c56:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  403c5b:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  403c5f:	e8 6c e5 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  403c64:	eb d6                	jmp    403c3c <_ZN4Poco10ThreadImpl15setPriorityImplEi+0x10c>
  403c66:	eb d1                	jmp    403c39 <_ZN4Poco10ThreadImpl15setPriorityImplEi+0x109>
  403c68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  403c6f:	00 

0000000000403c70 <_ZN4Poco10ThreadImpl14reverseMapPrioEii>:
  403c70:	85 f6                	test   %esi,%esi
  403c72:	74 0c                	je     403c80 <_ZN4Poco10ThreadImpl14reverseMapPrioEii+0x10>
  403c74:	b8 04 00 00 00       	mov    $0x4,%eax
  403c79:	c3                   	retq   
  403c7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403c80:	55                   	push   %rbp
  403c81:	53                   	push   %rbx
  403c82:	89 fb                	mov    %edi,%ebx
  403c84:	31 ff                	xor    %edi,%edi
  403c86:	48 83 ec 08          	sub    $0x8,%rsp
  403c8a:	e8 51 e9 ff ff       	callq  4025e0 <sched_get_priority_min@plt>
  403c8f:	31 ff                	xor    %edi,%edi
  403c91:	89 c5                	mov    %eax,%ebp
  403c93:	e8 58 e8 ff ff       	callq  4024f0 <sched_get_priority_max@plt>
  403c98:	39 c3                	cmp    %eax,%ebx
  403c9a:	74 24                	je     403cc0 <_ZN4Poco10ThreadImpl14reverseMapPrioEii+0x50>
  403c9c:	29 e8                	sub    %ebp,%eax
  403c9e:	89 c2                	mov    %eax,%edx
  403ca0:	c1 e8 1f             	shr    $0x1f,%eax
  403ca3:	01 c2                	add    %eax,%edx
  403ca5:	b8 03 00 00 00       	mov    $0x3,%eax
  403caa:	d1 fa                	sar    %edx
  403cac:	01 ea                	add    %ebp,%edx
  403cae:	39 da                	cmp    %ebx,%edx
  403cb0:	7d 1e                	jge    403cd0 <_ZN4Poco10ThreadImpl14reverseMapPrioEii+0x60>
  403cb2:	48 83 c4 08          	add    $0x8,%rsp
  403cb6:	5b                   	pop    %rbx
  403cb7:	5d                   	pop    %rbp
  403cb8:	c3                   	retq   
  403cb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  403cc0:	b8 04 00 00 00       	mov    $0x4,%eax
  403cc5:	eb eb                	jmp    403cb2 <_ZN4Poco10ThreadImpl14reverseMapPrioEii+0x42>
  403cc7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  403cce:	00 00 
  403cd0:	39 d3                	cmp    %edx,%ebx
  403cd2:	b0 02                	mov    $0x2,%al
  403cd4:	74 dc                	je     403cb2 <_ZN4Poco10ThreadImpl14reverseMapPrioEii+0x42>
  403cd6:	31 c0                	xor    %eax,%eax
  403cd8:	39 eb                	cmp    %ebp,%ebx
  403cda:	0f 9f c0             	setg   %al
  403cdd:	eb d3                	jmp    403cb2 <_ZN4Poco10ThreadImpl14reverseMapPrioEii+0x42>
  403cdf:	90                   	nop

0000000000403ce0 <_ZN4Poco10ThreadImpl17setOSPriorityImplEii>:
  403ce0:	41 55                	push   %r13
  403ce2:	41 54                	push   %r12
  403ce4:	49 89 fc             	mov    %rdi,%r12
  403ce7:	55                   	push   %rbp
  403ce8:	53                   	push   %rbx
  403ce9:	48 83 ec 38          	sub    $0x38,%rsp
  403ced:	48 8b 1f             	mov    (%rdi),%rbx
  403cf0:	48 85 db             	test   %rbx,%rbx
  403cf3:	0f 84 d7 00 00 00    	je     403dd0 <_ZN4Poco10ThreadImpl17setOSPriorityImplEii+0xf0>
  403cf9:	39 73 2c             	cmp    %esi,0x2c(%rbx)
  403cfc:	89 f5                	mov    %esi,%ebp
  403cfe:	41 89 d5             	mov    %edx,%r13d
  403d01:	74 5d                	je     403d60 <_ZN4Poco10ThreadImpl17setOSPriorityImplEii+0x80>
  403d03:	48 83 7b 10 00       	cmpq   $0x0,0x10(%rbx)
  403d08:	0f 84 b2 00 00 00    	je     403dc0 <_ZN4Poco10ThreadImpl17setOSPriorityImplEii+0xe0>
  403d0e:	48 8b 7b 20          	mov    0x20(%rbx),%rdi
  403d12:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
  403d17:	44 89 ee             	mov    %r13d,%esi
  403d1a:	89 6c 24 10          	mov    %ebp,0x10(%rsp)
  403d1e:	e8 1d e8 ff ff       	callq  402540 <pthread_setschedparam@plt>
  403d23:	85 c0                	test   %eax,%eax
  403d25:	75 40                	jne    403d67 <_ZN4Poco10ThreadImpl17setOSPriorityImplEii+0x87>
  403d27:	49 8b 1c 24          	mov    (%r12),%rbx
  403d2b:	48 85 db             	test   %rbx,%rbx
  403d2e:	0f 84 de 00 00 00    	je     403e12 <_ZN4Poco10ThreadImpl17setOSPriorityImplEii+0x132>
  403d34:	44 89 ee             	mov    %r13d,%esi
  403d37:	89 ef                	mov    %ebp,%edi
  403d39:	e8 32 ff ff ff       	callq  403c70 <_ZN4Poco10ThreadImpl14reverseMapPrioEii>
  403d3e:	89 43 28             	mov    %eax,0x28(%rbx)
  403d41:	49 8b 04 24          	mov    (%r12),%rax
  403d45:	48 85 c0             	test   %rax,%rax
  403d48:	0f 84 ab 00 00 00    	je     403df9 <_ZN4Poco10ThreadImpl17setOSPriorityImplEii+0x119>
  403d4e:	89 68 2c             	mov    %ebp,0x2c(%rax)
  403d51:	44 89 68 30          	mov    %r13d,0x30(%rax)
  403d55:	48 83 c4 38          	add    $0x38,%rsp
  403d59:	5b                   	pop    %rbx
  403d5a:	5d                   	pop    %rbp
  403d5b:	41 5c                	pop    %r12
  403d5d:	41 5d                	pop    %r13
  403d5f:	c3                   	retq   
  403d60:	39 53 30             	cmp    %edx,0x30(%rbx)
  403d63:	75 9e                	jne    403d03 <_ZN4Poco10ThreadImpl17setOSPriorityImplEii+0x23>
  403d65:	eb ee                	jmp    403d55 <_ZN4Poco10ThreadImpl17setOSPriorityImplEii+0x75>
  403d67:	bf 20 00 00 00       	mov    $0x20,%edi
  403d6c:	e8 8f e6 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  403d71:	48 8d 54 24 0e       	lea    0xe(%rsp),%rdx
  403d76:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  403d7b:	be 17 cc 40 00       	mov    $0x40cc17,%esi
  403d80:	48 89 c3             	mov    %rax,%rbx
  403d83:	e8 98 e5 ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  403d88:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  403d8d:	31 d2                	xor    %edx,%edx
  403d8f:	48 89 df             	mov    %rbx,%rdi
  403d92:	e8 39 75 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  403d97:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  403d9c:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  403da1:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  403da5:	e8 26 e4 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  403daa:	ba 30 82 40 00       	mov    $0x408230,%edx
  403daf:	be 20 d8 40 00       	mov    $0x40d820,%esi
  403db4:	48 89 df             	mov    %rbx,%rdi
  403db7:	e8 e4 e6 ff ff       	callq  4024a0 <__cxa_throw@plt>
  403dbc:	0f 1f 40 00          	nopl   0x0(%rax)
  403dc0:	48 83 7b 18 00       	cmpq   $0x0,0x18(%rbx)
  403dc5:	0f 85 43 ff ff ff    	jne    403d0e <_ZN4Poco10ThreadImpl17setOSPriorityImplEii+0x2e>
  403dcb:	e9 64 ff ff ff       	jmpq   403d34 <_ZN4Poco10ThreadImpl17setOSPriorityImplEii+0x54>
  403dd0:	bf 20 00 00 00       	mov    $0x20,%edi
  403dd5:	e8 26 e6 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  403dda:	31 f6                	xor    %esi,%esi
  403ddc:	48 89 c7             	mov    %rax,%rdi
  403ddf:	48 89 c3             	mov    %rax,%rbx
  403de2:	e8 29 6b 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  403de7:	ba 90 7f 40 00       	mov    $0x407f90,%edx
  403dec:	be 50 d4 40 00       	mov    $0x40d450,%esi
  403df1:	48 89 df             	mov    %rbx,%rdi
  403df4:	e8 a7 e6 ff ff       	callq  4024a0 <__cxa_throw@plt>
  403df9:	bf 20 00 00 00       	mov    $0x20,%edi
  403dfe:	e8 fd e5 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  403e03:	31 f6                	xor    %esi,%esi
  403e05:	48 89 c7             	mov    %rax,%rdi
  403e08:	48 89 c3             	mov    %rax,%rbx
  403e0b:	e8 00 6b 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  403e10:	eb d5                	jmp    403de7 <_ZN4Poco10ThreadImpl17setOSPriorityImplEii+0x107>
  403e12:	bf 20 00 00 00       	mov    $0x20,%edi
  403e17:	e8 e4 e5 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  403e1c:	31 f6                	xor    %esi,%esi
  403e1e:	48 89 c7             	mov    %rax,%rdi
  403e21:	48 89 c3             	mov    %rax,%rbx
  403e24:	e8 e7 6a 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  403e29:	eb bc                	jmp    403de7 <_ZN4Poco10ThreadImpl17setOSPriorityImplEii+0x107>
  403e2b:	48 89 c5             	mov    %rax,%rbp
  403e2e:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  403e33:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  403e38:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  403e3c:	e8 8f e3 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  403e41:	48 89 df             	mov    %rbx,%rdi
  403e44:	e8 d7 e5 ff ff       	callq  402420 <__cxa_free_exception@plt>
  403e49:	48 89 ef             	mov    %rbp,%rdi
  403e4c:	e8 6f e7 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  403e51:	48 89 c5             	mov    %rax,%rbp
  403e54:	eb eb                	jmp    403e41 <_ZN4Poco10ThreadImpl17setOSPriorityImplEii+0x161>
  403e56:	eb f9                	jmp    403e51 <_ZN4Poco10ThreadImpl17setOSPriorityImplEii+0x171>
  403e58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  403e5f:	00 
  403e60:	eb ef                	jmp    403e51 <_ZN4Poco10ThreadImpl17setOSPriorityImplEii+0x171>
  403e62:	eb ed                	jmp    403e51 <_ZN4Poco10ThreadImpl17setOSPriorityImplEii+0x171>
  403e64:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  403e6b:	00 00 00 00 00 

0000000000403e70 <_ZN4Poco6ThreadD1Ev>:
  403e70:	55                   	push   %rbp
  403e71:	53                   	push   %rbx
  403e72:	48 89 fb             	mov    %rdi,%rbx
  403e75:	48 83 ec 18          	sub    $0x18,%rsp
  403e79:	48 8b 6f 30          	mov    0x30(%rdi),%rbp
  403e7d:	48 85 ed             	test   %rbp,%rbp
  403e80:	74 10                	je     403e92 <_ZN4Poco6ThreadD1Ev+0x22>
  403e82:	48 89 ef             	mov    %rbp,%rdi
  403e85:	e8 46 19 00 00       	callq  4057d0 <_ZN4Poco18ThreadLocalStorageD1Ev>
  403e8a:	48 89 ef             	mov    %rbp,%rdi
  403e8d:	e8 2e e3 ff ff       	callq  4021c0 <_ZdlPv@plt>
  403e92:	48 8d 7b 38          	lea    0x38(%rbx),%rdi
  403e96:	e8 95 8b 00 00       	callq  40ca30 <_ZN4Poco9FastMutexD1Ev>
  403e9b:	48 8b 43 28          	mov    0x28(%rbx),%rax
  403e9f:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  403ea3:	48 81 ff 40 85 61 00 	cmp    $0x618540,%rdi
  403eaa:	75 0f                	jne    403ebb <_ZN4Poco6ThreadD1Ev+0x4b>
  403eac:	48 89 df             	mov    %rbx,%rdi
  403eaf:	e8 dc f5 ff ff       	callq  403490 <_ZN4Poco10ThreadImplD1Ev>
  403eb4:	48 83 c4 18          	add    $0x18,%rsp
  403eb8:	5b                   	pop    %rbx
  403eb9:	5d                   	pop    %rbp
  403eba:	c3                   	retq   
  403ebb:	b9 20 25 40 00       	mov    $0x402520,%ecx
  403ec0:	48 8d 57 10          	lea    0x10(%rdi),%rdx
  403ec4:	48 85 c9             	test   %rcx,%rcx
  403ec7:	74 4a                	je     403f13 <_ZN4Poco6ThreadD1Ev+0xa3>
  403ec9:	83 c8 ff             	or     $0xffffffff,%eax
  403ecc:	f0 0f c1 02          	lock xadd %eax,(%rdx)
  403ed0:	85 c0                	test   %eax,%eax
  403ed2:	7f d8                	jg     403eac <_ZN4Poco6ThreadD1Ev+0x3c>
  403ed4:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  403ed9:	e8 d2 e3 ff ff       	callq  4022b0 <_ZNSs4_Rep10_M_destroyERKSaIcE@plt>
  403ede:	eb cc                	jmp    403eac <_ZN4Poco6ThreadD1Ev+0x3c>
  403ee0:	48 89 c5             	mov    %rax,%rbp
  403ee3:	48 8b 43 28          	mov    0x28(%rbx),%rax
  403ee7:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  403eec:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  403ef0:	e8 db e2 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  403ef5:	48 89 df             	mov    %rbx,%rdi
  403ef8:	e8 93 f5 ff ff       	callq  403490 <_ZN4Poco10ThreadImplD1Ev>
  403efd:	48 89 ef             	mov    %rbp,%rdi
  403f00:	e8 bb e6 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  403f05:	48 8d 7b 38          	lea    0x38(%rbx),%rdi
  403f09:	48 89 c5             	mov    %rax,%rbp
  403f0c:	e8 1f 8b 00 00       	callq  40ca30 <_ZN4Poco9FastMutexD1Ev>
  403f11:	eb d0                	jmp    403ee3 <_ZN4Poco6ThreadD1Ev+0x73>
  403f13:	8b 50 f8             	mov    -0x8(%rax),%edx
  403f16:	8d 4a ff             	lea    -0x1(%rdx),%ecx
  403f19:	89 48 f8             	mov    %ecx,-0x8(%rax)
  403f1c:	89 d0                	mov    %edx,%eax
  403f1e:	eb b0                	jmp    403ed0 <_ZN4Poco6ThreadD1Ev+0x60>

0000000000403f20 <_ZN4Poco6Thread11setPriorityENS0_8PriorityE>:
  403f20:	e9 0b fc ff ff       	jmpq   403b30 <_ZN4Poco10ThreadImpl15setPriorityImplEi>
  403f25:	90                   	nop
  403f26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  403f2d:	00 00 00 

0000000000403f30 <_ZNK4Poco6Thread11getPriorityEv>:
  403f30:	48 8b 07             	mov    (%rdi),%rax
  403f33:	48 85 c0             	test   %rax,%rax
  403f36:	74 04                	je     403f3c <_ZNK4Poco6Thread11getPriorityEv+0xc>
  403f38:	8b 40 28             	mov    0x28(%rax),%eax
  403f3b:	c3                   	retq   
  403f3c:	55                   	push   %rbp
  403f3d:	bf 20 00 00 00       	mov    $0x20,%edi
  403f42:	53                   	push   %rbx
  403f43:	50                   	push   %rax
  403f44:	e8 b7 e4 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  403f49:	31 f6                	xor    %esi,%esi
  403f4b:	48 89 c7             	mov    %rax,%rdi
  403f4e:	48 89 c3             	mov    %rax,%rbx
  403f51:	e8 ba 69 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  403f56:	ba 90 7f 40 00       	mov    $0x407f90,%edx
  403f5b:	be 50 d4 40 00       	mov    $0x40d450,%esi
  403f60:	48 89 df             	mov    %rbx,%rdi
  403f63:	e8 38 e5 ff ff       	callq  4024a0 <__cxa_throw@plt>
  403f68:	48 89 c5             	mov    %rax,%rbp
  403f6b:	48 89 df             	mov    %rbx,%rdi
  403f6e:	e8 ad e4 ff ff       	callq  402420 <__cxa_free_exception@plt>
  403f73:	48 89 ef             	mov    %rbp,%rdi
  403f76:	e8 45 e6 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  403f7b:	90                   	nop
  403f7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000403f80 <_ZN4Poco6Thread4joinEv>:
  403f80:	e9 7b f6 ff ff       	jmpq   403600 <_ZN4Poco10ThreadImpl8joinImplEv>
  403f85:	90                   	nop
  403f86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  403f8d:	00 00 00 

0000000000403f90 <_ZN4Poco6Thread4joinEl>:
  403f90:	55                   	push   %rbp
  403f91:	53                   	push   %rbx
  403f92:	48 83 ec 08          	sub    $0x8,%rsp
  403f96:	e8 75 f7 ff ff       	callq  403710 <_ZN4Poco10ThreadImpl8joinImplEl>
  403f9b:	84 c0                	test   %al,%al
  403f9d:	74 07                	je     403fa6 <_ZN4Poco6Thread4joinEl+0x16>
  403f9f:	48 83 c4 08          	add    $0x8,%rsp
  403fa3:	5b                   	pop    %rbx
  403fa4:	5d                   	pop    %rbp
  403fa5:	c3                   	retq   
  403fa6:	bf 20 00 00 00       	mov    $0x20,%edi
  403fab:	e8 50 e4 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  403fb0:	31 f6                	xor    %esi,%esi
  403fb2:	48 89 c7             	mov    %rax,%rdi
  403fb5:	48 89 c3             	mov    %rax,%rbx
  403fb8:	e8 43 72 00 00       	callq  40b200 <_ZN4Poco16TimeoutExceptionC1Ei>
  403fbd:	ba 00 82 40 00       	mov    $0x408200,%edx
  403fc2:	be e0 d7 40 00       	mov    $0x40d7e0,%esi
  403fc7:	48 89 df             	mov    %rbx,%rdi
  403fca:	e8 d1 e4 ff ff       	callq  4024a0 <__cxa_throw@plt>
  403fcf:	48 89 c5             	mov    %rax,%rbp
  403fd2:	48 89 df             	mov    %rbx,%rdi
  403fd5:	e8 46 e4 ff ff       	callq  402420 <__cxa_free_exception@plt>
  403fda:	48 89 ef             	mov    %rbp,%rdi
  403fdd:	e8 de e5 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  403fe2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  403fe9:	1f 84 00 00 00 00 00 

0000000000403ff0 <_ZN4Poco6Thread7tryJoinEl>:
  403ff0:	e9 1b f7 ff ff       	jmpq   403710 <_ZN4Poco10ThreadImpl8joinImplEl>
  403ff5:	90                   	nop
  403ff6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  403ffd:	00 00 00 

0000000000404000 <_ZN4Poco6Thread3tlsEv>:
  404000:	55                   	push   %rbp
  404001:	53                   	push   %rbx
  404002:	48 89 fb             	mov    %rdi,%rbx
  404005:	48 83 ec 08          	sub    $0x8,%rsp
  404009:	48 8b 47 30          	mov    0x30(%rdi),%rax
  40400d:	48 85 c0             	test   %rax,%rax
  404010:	74 0e                	je     404020 <_ZN4Poco6Thread3tlsEv+0x20>
  404012:	48 83 c4 08          	add    $0x8,%rsp
  404016:	5b                   	pop    %rbx
  404017:	5d                   	pop    %rbp
  404018:	c3                   	retq   
  404019:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404020:	bf 30 00 00 00       	mov    $0x30,%edi
  404025:	e8 86 e5 ff ff       	callq  4025b0 <_Znwm@plt>
  40402a:	48 89 c7             	mov    %rax,%rdi
  40402d:	48 89 c5             	mov    %rax,%rbp
  404030:	e8 3b 15 00 00       	callq  405570 <_ZN4Poco18ThreadLocalStorageC1Ev>
  404035:	48 89 6b 30          	mov    %rbp,0x30(%rbx)
  404039:	48 83 c4 08          	add    $0x8,%rsp
  40403d:	48 89 e8             	mov    %rbp,%rax
  404040:	5b                   	pop    %rbx
  404041:	5d                   	pop    %rbp
  404042:	c3                   	retq   
  404043:	48 89 c3             	mov    %rax,%rbx
  404046:	48 89 ef             	mov    %rbp,%rdi
  404049:	e8 72 e1 ff ff       	callq  4021c0 <_ZdlPv@plt>
  40404e:	48 89 df             	mov    %rbx,%rdi
  404051:	e8 6a e5 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  404056:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40405d:	00 00 00 

0000000000404060 <_ZN4Poco6Thread8clearTLSEv>:
  404060:	55                   	push   %rbp
  404061:	48 89 fd             	mov    %rdi,%rbp
  404064:	53                   	push   %rbx
  404065:	48 83 ec 08          	sub    $0x8,%rsp
  404069:	48 8b 5f 30          	mov    0x30(%rdi),%rbx
  40406d:	48 85 db             	test   %rbx,%rbx
  404070:	74 18                	je     40408a <_ZN4Poco6Thread8clearTLSEv+0x2a>
  404072:	48 89 df             	mov    %rbx,%rdi
  404075:	e8 56 17 00 00       	callq  4057d0 <_ZN4Poco18ThreadLocalStorageD1Ev>
  40407a:	48 89 df             	mov    %rbx,%rdi
  40407d:	e8 3e e1 ff ff       	callq  4021c0 <_ZdlPv@plt>
  404082:	48 c7 45 30 00 00 00 	movq   $0x0,0x30(%rbp)
  404089:	00 
  40408a:	48 83 c4 08          	add    $0x8,%rsp
  40408e:	5b                   	pop    %rbx
  40408f:	5d                   	pop    %rbp
  404090:	c3                   	retq   
  404091:	90                   	nop
  404092:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  404099:	1f 84 00 00 00 00 00 

00000000004040a0 <_ZN4Poco6Thread8uniqueIdEv>:
  4040a0:	80 3d e1 44 21 00 00 	cmpb   $0x0,0x2144e1(%rip)        # 618588 <_ZGVZN4Poco6Thread8uniqueIdEvE7counter>
  4040a7:	53                   	push   %rbx
  4040a8:	75 0e                	jne    4040b8 <_ZN4Poco6Thread8uniqueIdEv+0x18>
  4040aa:	bf 88 85 61 00       	mov    $0x618588,%edi
  4040af:	e8 ec e0 ff ff       	callq  4021a0 <__cxa_guard_acquire@plt>
  4040b4:	85 c0                	test   %eax,%eax
  4040b6:	75 18                	jne    4040d0 <_ZN4Poco6Thread8uniqueIdEv+0x30>
  4040b8:	b8 01 00 00 00       	mov    $0x1,%eax
  4040bd:	f0 0f c1 05 bf 44 21 	lock xadd %eax,0x2144bf(%rip)        # 618584 <_ZZN4Poco6Thread8uniqueIdEvE7counter>
  4040c4:	00 
  4040c5:	5b                   	pop    %rbx
  4040c6:	83 c0 01             	add    $0x1,%eax
  4040c9:	c3                   	retq   
  4040ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4040d0:	bf 84 85 61 00       	mov    $0x618584,%edi
  4040d5:	e8 a6 1c 00 00       	callq  405d80 <_ZN4Poco13AtomicCounterC1Ev>
  4040da:	bf 88 85 61 00       	mov    $0x618588,%edi
  4040df:	e8 0c e2 ff ff       	callq  4022f0 <__cxa_guard_release@plt>
  4040e4:	ba a0 82 61 00       	mov    $0x6182a0,%edx
  4040e9:	be 84 85 61 00       	mov    $0x618584,%esi
  4040ee:	bf b0 5d 40 00       	mov    $0x405db0,%edi
  4040f3:	e8 68 e1 ff ff       	callq  402260 <__cxa_atexit@plt>
  4040f8:	eb be                	jmp    4040b8 <_ZN4Poco6Thread8uniqueIdEv+0x18>
  4040fa:	48 89 c3             	mov    %rax,%rbx
  4040fd:	bf 88 85 61 00       	mov    $0x618588,%edi
  404102:	e8 09 e4 ff ff       	callq  402510 <__cxa_guard_abort@plt>
  404107:	48 89 df             	mov    %rbx,%rdi
  40410a:	e8 b1 e4 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40410f:	90                   	nop

0000000000404110 <_ZN4Poco6ThreadC1ERKSs>:
  404110:	55                   	push   %rbp
  404111:	48 89 f5             	mov    %rsi,%rbp
  404114:	53                   	push   %rbx
  404115:	48 89 fb             	mov    %rdi,%rbx
  404118:	48 83 ec 18          	sub    $0x18,%rsp
  40411c:	e8 af f2 ff ff       	callq  4033d0 <_ZN4Poco10ThreadImplC1Ev>
  404121:	e8 7a ff ff ff       	callq  4040a0 <_ZN4Poco6Thread8uniqueIdEv>
  404126:	48 8d 7b 28          	lea    0x28(%rbx),%rdi
  40412a:	89 43 20             	mov    %eax,0x20(%rbx)
  40412d:	48 89 ee             	mov    %rbp,%rsi
  404130:	e8 1b e1 ff ff       	callq  402250 <_ZNSsC1ERKSs@plt>
  404135:	48 8d 7b 38          	lea    0x38(%rbx),%rdi
  404139:	48 c7 43 30 00 00 00 	movq   $0x0,0x30(%rbx)
  404140:	00 
  404141:	e8 da 88 00 00       	callq  40ca20 <_ZN4Poco9FastMutexC1Ev>
  404146:	48 83 c4 18          	add    $0x18,%rsp
  40414a:	5b                   	pop    %rbx
  40414b:	5d                   	pop    %rbp
  40414c:	c3                   	retq   
  40414d:	48 89 c5             	mov    %rax,%rbp
  404150:	48 89 df             	mov    %rbx,%rdi
  404153:	e8 38 f3 ff ff       	callq  403490 <_ZN4Poco10ThreadImplD1Ev>
  404158:	48 89 ef             	mov    %rbp,%rdi
  40415b:	e8 60 e4 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  404160:	48 89 c5             	mov    %rax,%rbp
  404163:	48 8b 43 28          	mov    0x28(%rbx),%rax
  404167:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  40416c:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  404170:	e8 5b e0 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  404175:	eb d9                	jmp    404150 <_ZN4Poco6ThreadC1ERKSs+0x40>
  404177:	90                   	nop
  404178:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40417f:	00 

0000000000404180 <_ZN4Poco6Thread7setNameERKSs>:
  404180:	55                   	push   %rbp
  404181:	48 89 f5             	mov    %rsi,%rbp
  404184:	53                   	push   %rbx
  404185:	48 89 fb             	mov    %rdi,%rbx
  404188:	48 8d 7f 38          	lea    0x38(%rdi),%rdi
  40418c:	48 83 ec 38          	sub    $0x38,%rsp
  404190:	48 89 7c 24 10       	mov    %rdi,0x10(%rsp)
  404195:	e8 c6 e3 ff ff       	callq  402560 <pthread_mutex_lock@plt>
  40419a:	85 c0                	test   %eax,%eax
  40419c:	75 21                	jne    4041bf <_ZN4Poco6Thread7setNameERKSs+0x3f>
  40419e:	48 8d 7b 28          	lea    0x28(%rbx),%rdi
  4041a2:	48 89 ee             	mov    %rbp,%rsi
  4041a5:	e8 86 e2 ff ff       	callq  402430 <_ZNSs6assignERKSs@plt>
  4041aa:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  4041af:	e8 4c e4 ff ff       	callq  402600 <pthread_mutex_unlock@plt>
  4041b4:	85 c0                	test   %eax,%eax
  4041b6:	75 5d                	jne    404215 <_ZN4Poco6Thread7setNameERKSs+0x95>
  4041b8:	48 83 c4 38          	add    $0x38,%rsp
  4041bc:	5b                   	pop    %rbx
  4041bd:	5d                   	pop    %rbp
  4041be:	c3                   	retq   
  4041bf:	bf 20 00 00 00       	mov    $0x20,%edi
  4041c4:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
  4041c9:	e8 32 e2 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  4041ce:	48 8d 54 24 0f       	lea    0xf(%rsp),%rdx
  4041d3:	be 60 cc 40 00       	mov    $0x40cc60,%esi
  4041d8:	48 89 df             	mov    %rbx,%rdi
  4041db:	48 89 c5             	mov    %rax,%rbp
  4041de:	e8 3d e1 ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  4041e3:	31 d2                	xor    %edx,%edx
  4041e5:	48 89 de             	mov    %rbx,%rsi
  4041e8:	48 89 ef             	mov    %rbp,%rdi
  4041eb:	e8 e0 70 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  4041f0:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  4041f5:	48 8d 74 24 0e       	lea    0xe(%rsp),%rsi
  4041fa:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4041fe:	e8 cd df ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  404203:	ba 30 82 40 00       	mov    $0x408230,%edx
  404208:	be 20 d8 40 00       	mov    $0x40d820,%esi
  40420d:	48 89 ef             	mov    %rbp,%rdi
  404210:	e8 8b e2 ff ff       	callq  4024a0 <__cxa_throw@plt>
  404215:	bf 20 00 00 00       	mov    $0x20,%edi
  40421a:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
  40421f:	e8 dc e1 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  404224:	48 8d 54 24 0f       	lea    0xf(%rsp),%rdx
  404229:	be 32 cc 40 00       	mov    $0x40cc32,%esi
  40422e:	48 89 df             	mov    %rbx,%rdi
  404231:	48 89 c5             	mov    %rax,%rbp
  404234:	e8 e7 e0 ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  404239:	31 d2                	xor    %edx,%edx
  40423b:	48 89 de             	mov    %rbx,%rsi
  40423e:	48 89 ef             	mov    %rbp,%rdi
  404241:	e8 8a 70 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  404246:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40424b:	48 8d 74 24 0e       	lea    0xe(%rsp),%rsi
  404250:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  404254:	e8 77 df ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  404259:	ba 30 82 40 00       	mov    $0x408230,%edx
  40425e:	be 20 d8 40 00       	mov    $0x40d820,%esi
  404263:	48 89 ef             	mov    %rbp,%rdi
  404266:	e8 35 e2 ff ff       	callq  4024a0 <__cxa_throw@plt>
  40426b:	48 89 c7             	mov    %rax,%rdi
  40426e:	e8 dd e2 ff ff       	callq  402550 <__cxa_begin_catch@plt>
  404273:	be 4c 00 00 00       	mov    $0x4c,%esi
  404278:	bf 46 cc 40 00       	mov    $0x40cc46,%edi
  40427d:	e8 5e 1b 00 00       	callq  405de0 <_ZN4Poco8Bugcheck10unexpectedEPKci>
  404282:	e8 59 e2 ff ff       	callq  4024e0 <__cxa_end_catch@plt>
  404287:	e9 2c ff ff ff       	jmpq   4041b8 <_ZN4Poco6Thread7setNameERKSs+0x38>
  40428c:	48 89 c3             	mov    %rax,%rbx
  40428f:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  404294:	48 8d 74 24 0e       	lea    0xe(%rsp),%rsi
  404299:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  40429d:	e8 2e df ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  4042a2:	48 89 ef             	mov    %rbp,%rdi
  4042a5:	e8 76 e1 ff ff       	callq  402420 <__cxa_free_exception@plt>
  4042aa:	48 89 d8             	mov    %rbx,%rax
  4042ad:	eb bc                	jmp    40426b <_ZN4Poco6Thread7setNameERKSs+0xeb>
  4042af:	48 89 c3             	mov    %rax,%rbx
  4042b2:	e8 29 e2 ff ff       	callq  4024e0 <__cxa_end_catch@plt>
  4042b7:	48 89 df             	mov    %rbx,%rdi
  4042ba:	e8 01 e3 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4042bf:	48 89 c3             	mov    %rax,%rbx
  4042c2:	eb de                	jmp    4042a2 <_ZN4Poco6Thread7setNameERKSs+0x122>
  4042c4:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  4042c9:	48 89 c3             	mov    %rax,%rbx
  4042cc:	e8 4f 10 00 00       	callq  405320 <_ZN4Poco10ScopedLockINS_9FastMutexEED1Ev>
  4042d1:	48 89 df             	mov    %rbx,%rdi
  4042d4:	e8 e7 e2 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4042d9:	48 89 c3             	mov    %rax,%rbx
  4042dc:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  4042e1:	48 8d 74 24 0e       	lea    0xe(%rsp),%rsi
  4042e6:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4042ea:	e8 e1 de ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  4042ef:	48 89 ef             	mov    %rbp,%rdi
  4042f2:	e8 29 e1 ff ff       	callq  402420 <__cxa_free_exception@plt>
  4042f7:	48 89 df             	mov    %rbx,%rdi
  4042fa:	e8 c1 e2 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4042ff:	48 89 c3             	mov    %rax,%rbx
  404302:	eb eb                	jmp    4042ef <_ZN4Poco6Thread7setNameERKSs+0x16f>
  404304:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40430b:	00 00 00 00 00 

0000000000404310 <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE>:
  404310:	55                   	push   %rbp
  404311:	53                   	push   %rbx
  404312:	48 89 fb             	mov    %rdi,%rbx
  404315:	48 83 ec 78          	sub    $0x78,%rsp
  404319:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  404320:	00 00 
  404322:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
  404327:	31 c0                	xor    %eax,%eax
  404329:	48 8b 07             	mov    (%rdi),%rax
  40432c:	48 85 c0             	test   %rax,%rax
  40432f:	0f 84 59 02 00 00    	je     40458e <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x27e>
  404335:	48 83 78 10 00       	cmpq   $0x0,0x10(%rax)
  40433a:	0f 85 bd 01 00 00    	jne    4044fd <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x1ed>
  404340:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  404345:	48 89 f5             	mov    %rsi,%rbp
  404348:	e8 73 e1 ff ff       	callq  4024c0 <pthread_attr_init@plt>
  40434d:	48 8b 03             	mov    (%rbx),%rax
  404350:	48 85 c0             	test   %rax,%rax
  404353:	0f 84 6f 01 00 00    	je     4044c8 <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x1b8>
  404359:	48 8b b0 98 00 00 00 	mov    0x98(%rax),%rsi
  404360:	48 85 f6             	test   %rsi,%rsi
  404363:	0f 85 d7 00 00 00    	jne    404440 <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x130>
  404369:	48 8d 78 20          	lea    0x20(%rax),%rdi
  40436d:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  404372:	48 89 68 10          	mov    %rbp,0x10(%rax)
  404376:	48 89 d9             	mov    %rbx,%rcx
  404379:	ba 10 2d 40 00       	mov    $0x402d10,%edx
  40437e:	e8 3d df ff ff       	callq  4022c0 <pthread_create@plt>
  404383:	85 c0                	test   %eax,%eax
  404385:	0f 85 b6 01 00 00    	jne    404541 <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x231>
  40438b:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  404390:	e8 eb de ff ff       	callq  402280 <pthread_attr_destroy@plt>
  404395:	48 8b 03             	mov    (%rbx),%rax
  404398:	48 85 c0             	test   %rax,%rax
  40439b:	0f 84 40 01 00 00    	je     4044e1 <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x1d1>
  4043a1:	8b 70 30             	mov    0x30(%rax),%esi
  4043a4:	85 f6                	test   %esi,%esi
  4043a6:	0f 85 e4 00 00 00    	jne    404490 <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x180>
  4043ac:	8b 78 28             	mov    0x28(%rax),%edi
  4043af:	83 ff 02             	cmp    $0x2,%edi
  4043b2:	0f 84 f5 00 00 00    	je     4044ad <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x19d>
  4043b8:	31 f6                	xor    %esi,%esi
  4043ba:	e8 b1 f6 ff ff       	callq  403a70 <_ZN4Poco10ThreadImpl7mapPrioEii>
  4043bf:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4043c3:	48 8b 03             	mov    (%rbx),%rax
  4043c6:	48 85 c0             	test   %rax,%rax
  4043c9:	0f 84 56 02 00 00    	je     404625 <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x315>
  4043cf:	48 8b 78 20          	mov    0x20(%rax),%rdi
  4043d3:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
  4043d8:	31 f6                	xor    %esi,%esi
  4043da:	e8 61 e1 ff ff       	callq  402540 <pthread_setschedparam@plt>
  4043df:	85 c0                	test   %eax,%eax
  4043e1:	0f 84 c6 00 00 00    	je     4044ad <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x19d>
  4043e7:	bf 20 00 00 00       	mov    $0x20,%edi
  4043ec:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
  4043f1:	e8 0a e0 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  4043f6:	48 8d 54 24 0e       	lea    0xe(%rsp),%rdx
  4043fb:	be 17 cc 40 00       	mov    $0x40cc17,%esi
  404400:	48 89 df             	mov    %rbx,%rdi
  404403:	48 89 c5             	mov    %rax,%rbp
  404406:	e8 15 df ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  40440b:	31 d2                	xor    %edx,%edx
  40440d:	48 89 de             	mov    %rbx,%rsi
  404410:	48 89 ef             	mov    %rbp,%rdi
  404413:	e8 b8 6e 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  404418:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40441d:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  404422:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  404426:	e8 a5 dd ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  40442b:	ba 30 82 40 00       	mov    $0x408230,%edx
  404430:	be 20 d8 40 00       	mov    $0x40d820,%esi
  404435:	48 89 ef             	mov    %rbp,%rdi
  404438:	e8 63 e0 ff ff       	callq  4024a0 <__cxa_throw@plt>
  40443d:	0f 1f 00             	nopl   (%rax)
  404440:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  404445:	e8 e6 de ff ff       	callq  402330 <pthread_attr_setstacksize@plt>
  40444a:	85 c0                	test   %eax,%eax
  40444c:	0f 85 5d 01 00 00    	jne    4045af <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x29f>
  404452:	48 8b 03             	mov    (%rbx),%rax
  404455:	48 85 c0             	test   %rax,%rax
  404458:	0f 85 0b ff ff ff    	jne    404369 <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x59>
  40445e:	bf 20 00 00 00       	mov    $0x20,%edi
  404463:	e8 98 df ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  404468:	31 f6                	xor    %esi,%esi
  40446a:	48 89 c7             	mov    %rax,%rdi
  40446d:	48 89 c3             	mov    %rax,%rbx
  404470:	e8 9b 64 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  404475:	ba 90 7f 40 00       	mov    $0x407f90,%edx
  40447a:	be 50 d4 40 00       	mov    $0x40d450,%esi
  40447f:	48 89 df             	mov    %rbx,%rdi
  404482:	e8 19 e0 ff ff       	callq  4024a0 <__cxa_throw@plt>
  404487:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40448e:	00 00 
  404490:	8b 50 2c             	mov    0x2c(%rax),%edx
  404493:	48 8b 78 20          	mov    0x20(%rax),%rdi
  404497:	89 54 24 10          	mov    %edx,0x10(%rsp)
  40449b:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
  4044a0:	e8 9b e0 ff ff       	callq  402540 <pthread_setschedparam@plt>
  4044a5:	85 c0                	test   %eax,%eax
  4044a7:	0f 85 42 01 00 00    	jne    4045ef <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x2df>
  4044ad:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
  4044b2:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4044b9:	00 00 
  4044bb:	0f 85 e9 00 00 00    	jne    4045aa <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x29a>
  4044c1:	48 83 c4 78          	add    $0x78,%rsp
  4044c5:	5b                   	pop    %rbx
  4044c6:	5d                   	pop    %rbp
  4044c7:	c3                   	retq   
  4044c8:	bf 20 00 00 00       	mov    $0x20,%edi
  4044cd:	e8 2e df ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  4044d2:	31 f6                	xor    %esi,%esi
  4044d4:	48 89 c7             	mov    %rax,%rdi
  4044d7:	48 89 c3             	mov    %rax,%rbx
  4044da:	e8 31 64 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  4044df:	eb 94                	jmp    404475 <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x165>
  4044e1:	bf 20 00 00 00       	mov    $0x20,%edi
  4044e6:	e8 15 df ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  4044eb:	31 f6                	xor    %esi,%esi
  4044ed:	48 89 c7             	mov    %rax,%rdi
  4044f0:	48 89 c3             	mov    %rax,%rbx
  4044f3:	e8 18 64 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  4044f8:	e9 78 ff ff ff       	jmpq   404475 <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x165>
  4044fd:	bf 20 00 00 00       	mov    $0x20,%edi
  404502:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
  404507:	e8 f4 de ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  40450c:	48 8d 54 24 0f       	lea    0xf(%rsp),%rdx
  404511:	be 72 cc 40 00       	mov    $0x40cc72,%esi
  404516:	48 89 df             	mov    %rbx,%rdi
  404519:	48 89 c5             	mov    %rax,%rbp
  40451c:	e8 ff dd ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  404521:	31 d2                	xor    %edx,%edx
  404523:	48 89 de             	mov    %rbx,%rsi
  404526:	48 89 ef             	mov    %rbp,%rdi
  404529:	e8 a2 6d 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  40452e:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  404533:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  404538:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  40453c:	e9 e5 fe ff ff       	jmpq   404426 <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x116>
  404541:	48 89 df             	mov    %rbx,%rdi
  404544:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
  404549:	e8 a2 0e 00 00       	callq  4053f0 <_ZN4Poco7AutoPtrINS_10ThreadImpl10ThreadDataEEptEv>
  40454e:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  404553:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
  40455a:	00 
  40455b:	e8 20 dd ff ff       	callq  402280 <pthread_attr_destroy@plt>
  404560:	bf 20 00 00 00       	mov    $0x20,%edi
  404565:	e8 96 de ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  40456a:	48 8d 54 24 0f       	lea    0xf(%rsp),%rdx
  40456f:	be a6 cc 40 00       	mov    $0x40cca6,%esi
  404574:	48 89 df             	mov    %rbx,%rdi
  404577:	48 89 c5             	mov    %rax,%rbp
  40457a:	e8 a1 dd ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  40457f:	31 d2                	xor    %edx,%edx
  404581:	48 89 de             	mov    %rbx,%rsi
  404584:	48 89 ef             	mov    %rbp,%rdi
  404587:	e8 44 6d 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  40458c:	eb a0                	jmp    40452e <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x21e>
  40458e:	bf 20 00 00 00       	mov    $0x20,%edi
  404593:	e8 68 de ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  404598:	31 f6                	xor    %esi,%esi
  40459a:	48 89 c7             	mov    %rax,%rdi
  40459d:	48 89 c3             	mov    %rax,%rbx
  4045a0:	e8 6b 63 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  4045a5:	e9 cb fe ff ff       	jmpq   404475 <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x165>
  4045aa:	e8 21 de ff ff       	callq  4023d0 <__stack_chk_fail@plt>
  4045af:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  4045b4:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
  4045b9:	e8 c2 dc ff ff       	callq  402280 <pthread_attr_destroy@plt>
  4045be:	bf 20 00 00 00       	mov    $0x20,%edi
  4045c3:	e8 38 de ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  4045c8:	48 8d 54 24 0f       	lea    0xf(%rsp),%rdx
  4045cd:	be 89 cc 40 00       	mov    $0x40cc89,%esi
  4045d2:	48 89 df             	mov    %rbx,%rdi
  4045d5:	48 89 c5             	mov    %rax,%rbp
  4045d8:	e8 43 dd ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  4045dd:	31 d2                	xor    %edx,%edx
  4045df:	48 89 de             	mov    %rbx,%rsi
  4045e2:	48 89 ef             	mov    %rbp,%rdi
  4045e5:	e8 e6 6c 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  4045ea:	e9 3f ff ff ff       	jmpq   40452e <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x21e>
  4045ef:	bf 20 00 00 00       	mov    $0x20,%edi
  4045f4:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
  4045f9:	e8 02 de ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  4045fe:	48 8d 54 24 0e       	lea    0xe(%rsp),%rdx
  404603:	be 17 cc 40 00       	mov    $0x40cc17,%esi
  404608:	48 89 df             	mov    %rbx,%rdi
  40460b:	48 89 c5             	mov    %rax,%rbp
  40460e:	e8 0d dd ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  404613:	31 d2                	xor    %edx,%edx
  404615:	48 89 de             	mov    %rbx,%rsi
  404618:	48 89 ef             	mov    %rbp,%rdi
  40461b:	e8 b0 6c 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  404620:	e9 f3 fd ff ff       	jmpq   404418 <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x108>
  404625:	bf 20 00 00 00       	mov    $0x20,%edi
  40462a:	e8 d1 dd ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  40462f:	31 f6                	xor    %esi,%esi
  404631:	48 89 c7             	mov    %rax,%rdi
  404634:	48 89 c3             	mov    %rax,%rbx
  404637:	e8 d4 62 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  40463c:	e9 34 fe ff ff       	jmpq   404475 <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x165>
  404641:	48 89 c5             	mov    %rax,%rbp
  404644:	48 89 df             	mov    %rbx,%rdi
  404647:	e8 d4 dd ff ff       	callq  402420 <__cxa_free_exception@plt>
  40464c:	48 89 ef             	mov    %rbp,%rdi
  40464f:	e8 6c df ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  404654:	eb eb                	jmp    404641 <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x331>
  404656:	eb e9                	jmp    404641 <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x331>
  404658:	48 89 c3             	mov    %rax,%rbx
  40465b:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  404660:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  404665:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  404669:	e8 62 db ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  40466e:	48 89 ef             	mov    %rbp,%rdi
  404671:	e8 aa dd ff ff       	callq  402420 <__cxa_free_exception@plt>
  404676:	48 89 df             	mov    %rbx,%rdi
  404679:	e8 42 df ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40467e:	48 89 c3             	mov    %rax,%rbx
  404681:	eb eb                	jmp    40466e <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x35e>
  404683:	48 89 c3             	mov    %rax,%rbx
  404686:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40468b:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  404690:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  404694:	e8 37 db ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  404699:	eb d3                	jmp    40466e <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x35e>
  40469b:	eb e1                	jmp    40467e <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x36e>
  40469d:	0f 1f 00             	nopl   (%rax)
  4046a0:	eb e1                	jmp    404683 <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x373>
  4046a2:	eb da                	jmp    40467e <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x36e>
  4046a4:	eb b2                	jmp    404658 <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x348>
  4046a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4046ad:	00 00 00 
  4046b0:	eb cc                	jmp    40467e <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x36e>
  4046b2:	eb a4                	jmp    404658 <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x348>
  4046b4:	eb c8                	jmp    40467e <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x36e>
  4046b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4046bd:	00 00 00 
  4046c0:	e9 7c ff ff ff       	jmpq   404641 <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x331>
  4046c5:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  4046cc:	00 00 00 00 
  4046d0:	e9 6c ff ff ff       	jmpq   404641 <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE+0x331>
  4046d5:	90                   	nop
  4046d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4046dd:	00 00 00 

00000000004046e0 <_ZN4Poco6Thread5startERNS_8RunnableE>:
  4046e0:	e9 2b fc ff ff       	jmpq   404310 <_ZN4Poco10ThreadImpl9startImplERNS_8RunnableE>
  4046e5:	90                   	nop
  4046e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4046ed:	00 00 00 

00000000004046f0 <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_>:
  4046f0:	41 56                	push   %r14
  4046f2:	41 55                	push   %r13
  4046f4:	41 54                	push   %r12
  4046f6:	55                   	push   %rbp
  4046f7:	53                   	push   %rbx
  4046f8:	48 89 fb             	mov    %rdi,%rbx
  4046fb:	48 83 ec 70          	sub    $0x70,%rsp
  4046ff:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  404706:	00 00 
  404708:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
  40470d:	31 c0                	xor    %eax,%eax
  40470f:	48 8b 07             	mov    (%rdi),%rax
  404712:	48 85 c0             	test   %rax,%rax
  404715:	0f 84 fa 02 00 00    	je     404a15 <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x325>
  40471b:	48 8b 40 18          	mov    0x18(%rax),%rax
  40471f:	48 89 f5             	mov    %rsi,%rbp
  404722:	49 89 d4             	mov    %rdx,%r12
  404725:	48 85 c0             	test   %rax,%rax
  404728:	74 66                	je     404790 <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0xa0>
  40472a:	48 83 78 10 00       	cmpq   $0x0,0x10(%rax)
  40472f:	74 5f                	je     404790 <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0xa0>
  404731:	bf 20 00 00 00       	mov    $0x20,%edi
  404736:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
  40473b:	e8 c0 dc ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  404740:	48 8d 54 24 0f       	lea    0xf(%rsp),%rdx
  404745:	be 72 cc 40 00       	mov    $0x40cc72,%esi
  40474a:	48 89 df             	mov    %rbx,%rdi
  40474d:	48 89 c5             	mov    %rax,%rbp
  404750:	e8 cb db ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  404755:	31 d2                	xor    %edx,%edx
  404757:	48 89 de             	mov    %rbx,%rsi
  40475a:	48 89 ef             	mov    %rbp,%rdi
  40475d:	e8 6e 6b 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  404762:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  404767:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40476c:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  404770:	e8 5b da ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  404775:	ba 30 82 40 00       	mov    $0x408230,%edx
  40477a:	be 20 d8 40 00       	mov    $0x40d820,%esi
  40477f:	48 89 ef             	mov    %rbp,%rdi
  404782:	e8 19 dd ff ff       	callq  4024a0 <__cxa_throw@plt>
  404787:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40478e:	00 00 
  404790:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  404795:	e8 26 dd ff ff       	callq  4024c0 <pthread_attr_init@plt>
  40479a:	48 8b 3b             	mov    (%rbx),%rdi
  40479d:	48 85 ff             	test   %rdi,%rdi
  4047a0:	0f 84 90 02 00 00    	je     404a36 <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x346>
  4047a6:	48 8b b7 98 00 00 00 	mov    0x98(%rdi),%rsi
  4047ad:	48 85 f6             	test   %rsi,%rsi
  4047b0:	74 1e                	je     4047d0 <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0xe0>
  4047b2:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  4047b7:	e8 74 db ff ff       	callq  402330 <pthread_attr_setstacksize@plt>
  4047bc:	85 c0                	test   %eax,%eax
  4047be:	0f 85 c6 02 00 00    	jne    404a8a <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x39a>
  4047c4:	48 8b 3b             	mov    (%rbx),%rdi
  4047c7:	48 85 ff             	test   %rdi,%rdi
  4047ca:	0f 84 82 02 00 00    	je     404a52 <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x362>
  4047d0:	48 83 7f 18 00       	cmpq   $0x0,0x18(%rdi)
  4047d5:	0f 84 05 01 00 00    	je     4048e0 <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x1f0>
  4047db:	48 8b 4f 18          	mov    0x18(%rdi),%rcx
  4047df:	48 85 c9             	test   %rcx,%rcx
  4047e2:	0f 84 ac 01 00 00    	je     404994 <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x2a4>
  4047e8:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  4047ed:	48 89 69 10          	mov    %rbp,0x10(%rcx)
  4047f1:	4c 89 61 18          	mov    %r12,0x18(%rcx)
  4047f5:	48 83 c7 20          	add    $0x20,%rdi
  4047f9:	48 89 d9             	mov    %rbx,%rcx
  4047fc:	ba 30 30 40 00       	mov    $0x403030,%edx
  404801:	e8 ba da ff ff       	callq  4022c0 <pthread_create@plt>
  404806:	85 c0                	test   %eax,%eax
  404808:	0f 85 9f 01 00 00    	jne    4049ad <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x2bd>
  40480e:	48 8b 03             	mov    (%rbx),%rax
  404811:	48 85 c0             	test   %rax,%rax
  404814:	0f 84 54 02 00 00    	je     404a6e <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x37e>
  40481a:	8b 70 30             	mov    0x30(%rax),%esi
  40481d:	85 f6                	test   %esi,%esi
  40481f:	75 5f                	jne    404880 <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x190>
  404821:	8b 78 28             	mov    0x28(%rax),%edi
  404824:	83 ff 02             	cmp    $0x2,%edi
  404827:	74 2f                	je     404858 <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x168>
  404829:	31 f6                	xor    %esi,%esi
  40482b:	e8 40 f2 ff ff       	callq  403a70 <_ZN4Poco10ThreadImpl7mapPrioEii>
  404830:	89 44 24 10          	mov    %eax,0x10(%rsp)
  404834:	48 8b 03             	mov    (%rbx),%rax
  404837:	48 85 c0             	test   %rax,%rax
  40483a:	0f 84 d2 02 00 00    	je     404b12 <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x422>
  404840:	48 8b 78 20          	mov    0x20(%rax),%rdi
  404844:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
  404849:	31 f6                	xor    %esi,%esi
  40484b:	e8 f0 dc ff ff       	callq  402540 <pthread_setschedparam@plt>
  404850:	85 c0                	test   %eax,%eax
  404852:	0f 85 84 02 00 00    	jne    404adc <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x3ec>
  404858:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
  40485d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  404864:	00 00 
  404866:	0f 85 c5 01 00 00    	jne    404a31 <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x341>
  40486c:	48 83 c4 70          	add    $0x70,%rsp
  404870:	5b                   	pop    %rbx
  404871:	5d                   	pop    %rbp
  404872:	41 5c                	pop    %r12
  404874:	41 5d                	pop    %r13
  404876:	41 5e                	pop    %r14
  404878:	c3                   	retq   
  404879:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404880:	8b 50 2c             	mov    0x2c(%rax),%edx
  404883:	48 8b 78 20          	mov    0x20(%rax),%rdi
  404887:	89 54 24 10          	mov    %edx,0x10(%rsp)
  40488b:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
  404890:	e8 ab dc ff ff       	callq  402540 <pthread_setschedparam@plt>
  404895:	85 c0                	test   %eax,%eax
  404897:	74 bf                	je     404858 <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x168>
  404899:	bf 20 00 00 00       	mov    $0x20,%edi
  40489e:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
  4048a3:	e8 58 db ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  4048a8:	48 8d 54 24 0e       	lea    0xe(%rsp),%rdx
  4048ad:	be 17 cc 40 00       	mov    $0x40cc17,%esi
  4048b2:	48 89 df             	mov    %rbx,%rdi
  4048b5:	48 89 c5             	mov    %rax,%rbp
  4048b8:	e8 63 da ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  4048bd:	31 d2                	xor    %edx,%edx
  4048bf:	48 89 de             	mov    %rbx,%rsi
  4048c2:	48 89 ef             	mov    %rbp,%rdi
  4048c5:	e8 06 6a 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  4048ca:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  4048cf:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  4048d4:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4048d8:	e9 93 fe ff ff       	jmpq   404770 <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x80>
  4048dd:	0f 1f 00             	nopl   (%rax)
  4048e0:	bf 20 00 00 00       	mov    $0x20,%edi
  4048e5:	e8 c6 dc ff ff       	callq  4025b0 <_Znwm@plt>
  4048ea:	48 89 c7             	mov    %rax,%rdi
  4048ed:	49 89 c5             	mov    %rax,%r13
  4048f0:	e8 7b 81 00 00       	callq  40ca70 <_ZN4Poco16RefCountedObjectC1Ev>
  4048f5:	4c 8b 33             	mov    (%rbx),%r14
  4048f8:	49 c7 45 00 30 ce 40 	movq   $0x40ce30,0x0(%r13)
  4048ff:	00 
  404900:	49 c7 45 10 00 00 00 	movq   $0x0,0x10(%r13)
  404907:	00 
  404908:	49 c7 45 18 00 00 00 	movq   $0x0,0x18(%r13)
  40490f:	00 
  404910:	4d 85 f6             	test   %r14,%r14
  404913:	0f 84 a7 01 00 00    	je     404ac0 <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x3d0>
  404919:	49 8b 4e 18          	mov    0x18(%r14),%rcx
  40491d:	4c 89 f7             	mov    %r14,%rdi
  404920:	49 39 cd             	cmp    %rcx,%r13
  404923:	0f 84 b6 fe ff ff    	je     4047df <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0xef>
  404929:	48 85 c9             	test   %rcx,%rcx
  40492c:	74 5a                	je     404988 <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x298>
  40492e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  404933:	f0 0f c1 41 08       	lock xadd %eax,0x8(%rcx)
  404938:	83 e8 01             	sub    $0x1,%eax
  40493b:	85 c0                	test   %eax,%eax
  40493d:	75 09                	jne    404948 <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x258>
  40493f:	48 8b 01             	mov    (%rcx),%rax
  404942:	48 89 cf             	mov    %rcx,%rdi
  404945:	ff 50 08             	callq  *0x8(%rax)
  404948:	48 8b 3b             	mov    (%rbx),%rdi
  40494b:	4d 89 6e 18          	mov    %r13,0x18(%r14)
  40494f:	48 85 ff             	test   %rdi,%rdi
  404952:	0f 85 83 fe ff ff    	jne    4047db <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0xeb>
  404958:	bf 20 00 00 00       	mov    $0x20,%edi
  40495d:	e8 9e da ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  404962:	31 f6                	xor    %esi,%esi
  404964:	48 89 c7             	mov    %rax,%rdi
  404967:	48 89 c3             	mov    %rax,%rbx
  40496a:	e8 a1 5f 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  40496f:	ba 90 7f 40 00       	mov    $0x407f90,%edx
  404974:	be 50 d4 40 00       	mov    $0x40d450,%esi
  404979:	48 89 df             	mov    %rbx,%rdi
  40497c:	e8 1f db ff ff       	callq  4024a0 <__cxa_throw@plt>
  404981:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404988:	4d 89 6e 18          	mov    %r13,0x18(%r14)
  40498c:	4c 89 f7             	mov    %r14,%rdi
  40498f:	e9 47 fe ff ff       	jmpq   4047db <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0xeb>
  404994:	bf 20 00 00 00       	mov    $0x20,%edi
  404999:	e8 62 da ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  40499e:	31 f6                	xor    %esi,%esi
  4049a0:	48 89 c7             	mov    %rax,%rdi
  4049a3:	48 89 c3             	mov    %rax,%rbx
  4049a6:	e8 65 5f 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  4049ab:	eb c2                	jmp    40496f <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x27f>
  4049ad:	48 89 df             	mov    %rbx,%rdi
  4049b0:	e8 3b 0a 00 00       	callq  4053f0 <_ZN4Poco7AutoPtrINS_10ThreadImpl10ThreadDataEEptEv>
  4049b5:	48 8d 78 18          	lea    0x18(%rax),%rdi
  4049b9:	e8 82 0a 00 00       	callq  405440 <_ZN4Poco7AutoPtrINS_10ThreadImpl12CallbackDataEEptEv>
  4049be:	48 89 df             	mov    %rbx,%rdi
  4049c1:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
  4049c8:	00 
  4049c9:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
  4049ce:	e8 1d 0a 00 00       	callq  4053f0 <_ZN4Poco7AutoPtrINS_10ThreadImpl10ThreadDataEEptEv>
  4049d3:	48 8d 78 18          	lea    0x18(%rax),%rdi
  4049d7:	e8 64 0a 00 00       	callq  405440 <_ZN4Poco7AutoPtrINS_10ThreadImpl12CallbackDataEEptEv>
  4049dc:	bf 20 00 00 00       	mov    $0x20,%edi
  4049e1:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
  4049e8:	00 
  4049e9:	e8 12 da ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  4049ee:	48 8d 54 24 0f       	lea    0xf(%rsp),%rdx
  4049f3:	be a6 cc 40 00       	mov    $0x40cca6,%esi
  4049f8:	48 89 df             	mov    %rbx,%rdi
  4049fb:	48 89 c5             	mov    %rax,%rbp
  4049fe:	e8 1d d9 ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  404a03:	31 d2                	xor    %edx,%edx
  404a05:	48 89 de             	mov    %rbx,%rsi
  404a08:	48 89 ef             	mov    %rbp,%rdi
  404a0b:	e8 c0 68 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  404a10:	e9 4d fd ff ff       	jmpq   404762 <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x72>
  404a15:	bf 20 00 00 00       	mov    $0x20,%edi
  404a1a:	e8 e1 d9 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  404a1f:	31 f6                	xor    %esi,%esi
  404a21:	48 89 c7             	mov    %rax,%rdi
  404a24:	48 89 c3             	mov    %rax,%rbx
  404a27:	e8 e4 5e 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  404a2c:	e9 3e ff ff ff       	jmpq   40496f <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x27f>
  404a31:	e8 9a d9 ff ff       	callq  4023d0 <__stack_chk_fail@plt>
  404a36:	bf 20 00 00 00       	mov    $0x20,%edi
  404a3b:	e8 c0 d9 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  404a40:	31 f6                	xor    %esi,%esi
  404a42:	48 89 c7             	mov    %rax,%rdi
  404a45:	48 89 c3             	mov    %rax,%rbx
  404a48:	e8 c3 5e 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  404a4d:	e9 1d ff ff ff       	jmpq   40496f <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x27f>
  404a52:	bf 20 00 00 00       	mov    $0x20,%edi
  404a57:	e8 a4 d9 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  404a5c:	31 f6                	xor    %esi,%esi
  404a5e:	48 89 c7             	mov    %rax,%rdi
  404a61:	48 89 c3             	mov    %rax,%rbx
  404a64:	e8 a7 5e 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  404a69:	e9 01 ff ff ff       	jmpq   40496f <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x27f>
  404a6e:	bf 20 00 00 00       	mov    $0x20,%edi
  404a73:	e8 88 d9 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  404a78:	31 f6                	xor    %esi,%esi
  404a7a:	48 89 c7             	mov    %rax,%rdi
  404a7d:	48 89 c3             	mov    %rax,%rbx
  404a80:	e8 8b 5e 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  404a85:	e9 e5 fe ff ff       	jmpq   40496f <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x27f>
  404a8a:	bf 20 00 00 00       	mov    $0x20,%edi
  404a8f:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
  404a94:	e8 67 d9 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  404a99:	48 8d 54 24 0f       	lea    0xf(%rsp),%rdx
  404a9e:	be ba cc 40 00       	mov    $0x40ccba,%esi
  404aa3:	48 89 df             	mov    %rbx,%rdi
  404aa6:	48 89 c5             	mov    %rax,%rbp
  404aa9:	e8 72 d8 ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  404aae:	31 d2                	xor    %edx,%edx
  404ab0:	48 89 de             	mov    %rbx,%rsi
  404ab3:	48 89 ef             	mov    %rbp,%rdi
  404ab6:	e8 15 68 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  404abb:	e9 a2 fc ff ff       	jmpq   404762 <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x72>
  404ac0:	bf 20 00 00 00       	mov    $0x20,%edi
  404ac5:	e8 36 d9 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  404aca:	31 f6                	xor    %esi,%esi
  404acc:	48 89 c7             	mov    %rax,%rdi
  404acf:	48 89 c3             	mov    %rax,%rbx
  404ad2:	e8 39 5e 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  404ad7:	e9 93 fe ff ff       	jmpq   40496f <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x27f>
  404adc:	bf 20 00 00 00       	mov    $0x20,%edi
  404ae1:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
  404ae6:	e8 15 d9 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  404aeb:	48 8d 54 24 0e       	lea    0xe(%rsp),%rdx
  404af0:	be 17 cc 40 00       	mov    $0x40cc17,%esi
  404af5:	48 89 df             	mov    %rbx,%rdi
  404af8:	48 89 c5             	mov    %rax,%rbp
  404afb:	e8 20 d8 ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  404b00:	31 d2                	xor    %edx,%edx
  404b02:	48 89 de             	mov    %rbx,%rsi
  404b05:	48 89 ef             	mov    %rbp,%rdi
  404b08:	e8 c3 67 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  404b0d:	e9 b8 fd ff ff       	jmpq   4048ca <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x1da>
  404b12:	bf 20 00 00 00       	mov    $0x20,%edi
  404b17:	e8 e4 d8 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  404b1c:	31 f6                	xor    %esi,%esi
  404b1e:	48 89 c7             	mov    %rax,%rdi
  404b21:	48 89 c3             	mov    %rax,%rbx
  404b24:	e8 e7 5d 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  404b29:	e9 41 fe ff ff       	jmpq   40496f <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x27f>
  404b2e:	48 89 c5             	mov    %rax,%rbp
  404b31:	48 89 df             	mov    %rbx,%rdi
  404b34:	e8 e7 d8 ff ff       	callq  402420 <__cxa_free_exception@plt>
  404b39:	48 89 ef             	mov    %rbp,%rdi
  404b3c:	e8 7f da ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  404b41:	eb eb                	jmp    404b2e <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x43e>
  404b43:	eb e9                	jmp    404b2e <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x43e>
  404b45:	48 83 c2 01          	add    $0x1,%rdx
  404b49:	48 89 c7             	mov    %rax,%rdi
  404b4c:	0f 1f 40 00          	nopl   0x0(%rax)
  404b50:	0f 84 8f 00 00 00    	je     404be5 <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x4f5>
  404b56:	e8 65 da ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  404b5b:	48 89 c3             	mov    %rax,%rbx
  404b5e:	4c 89 ef             	mov    %r13,%rdi
  404b61:	e8 5a d6 ff ff       	callq  4021c0 <_ZdlPv@plt>
  404b66:	48 89 df             	mov    %rbx,%rdi
  404b69:	e8 52 da ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  404b6e:	eb be                	jmp    404b2e <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x43e>
  404b70:	eb bc                	jmp    404b2e <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x43e>
  404b72:	eb ba                	jmp    404b2e <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x43e>
  404b74:	eb b8                	jmp    404b2e <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x43e>
  404b76:	48 89 c3             	mov    %rax,%rbx
  404b79:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  404b7e:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  404b83:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  404b87:	e8 44 d6 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  404b8c:	48 89 ef             	mov    %rbp,%rdi
  404b8f:	e8 8c d8 ff ff       	callq  402420 <__cxa_free_exception@plt>
  404b94:	48 89 df             	mov    %rbx,%rdi
  404b97:	eb bd                	jmp    404b56 <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x466>
  404b99:	48 89 c3             	mov    %rax,%rbx
  404b9c:	eb ee                	jmp    404b8c <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x49c>
  404b9e:	48 89 c3             	mov    %rax,%rbx
  404ba1:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  404ba6:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  404bab:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  404baf:	e8 1c d6 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  404bb4:	eb d6                	jmp    404b8c <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x49c>
  404bb6:	eb e1                	jmp    404b99 <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x4a9>
  404bb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  404bbf:	00 
  404bc0:	eb b4                	jmp    404b76 <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x486>
  404bc2:	eb d5                	jmp    404b99 <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x4a9>
  404bc4:	eb b0                	jmp    404b76 <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x486>
  404bc6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  404bcd:	00 00 00 
  404bd0:	eb c7                	jmp    404b99 <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x4a9>
  404bd2:	eb ca                	jmp    404b9e <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x4ae>
  404bd4:	eb c3                	jmp    404b99 <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x4a9>
  404bd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  404bdd:	00 00 00 
  404be0:	e9 49 ff ff ff       	jmpq   404b2e <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_+0x43e>
  404be5:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  404bec:	00 00 00 00 
  404bf0:	e8 4b d7 ff ff       	callq  402340 <__cxa_call_unexpected@plt>
  404bf5:	90                   	nop
  404bf6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  404bfd:	00 00 00 

0000000000404c00 <_ZN4Poco6Thread5startEPFvPvES1_>:
  404c00:	e9 eb fa ff ff       	jmpq   4046f0 <_ZN4Poco10ThreadImpl9startImplEPFvPvES1_>
  404c05:	90                   	nop
  404c06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  404c0d:	00 00 00 

0000000000404c10 <_ZN4Poco6Thread8makeNameEv>:
  404c10:	41 55                	push   %r13
  404c12:	49 89 f5             	mov    %rsi,%r13
  404c15:	41 54                	push   %r12
  404c17:	55                   	push   %rbp
  404c18:	48 89 fd             	mov    %rdi,%rbp
  404c1b:	53                   	push   %rbx
  404c1c:	48 81 ec 98 01 00 00 	sub    $0x198,%rsp
  404c23:	48 8d bc 24 88 00 00 	lea    0x88(%rsp),%rdi
  404c2a:	00 
  404c2b:	e8 60 d5 ff ff       	callq  402190 <_ZNSt8ios_baseC2Ev@plt>
  404c30:	48 8b 1d 91 37 21 00 	mov    0x213791(%rip),%rbx        # 6183c8 <_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE@@GLIBCXX_3.4+0x8>
  404c37:	c6 84 24 68 01 00 00 	movb   $0x0,0x168(%rsp)
  404c3e:	00 
  404c3f:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  404c44:	4c 8b 25 85 37 21 00 	mov    0x213785(%rip),%r12        # 6183d0 <_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE@@GLIBCXX_3.4+0x10>
  404c4b:	48 c7 84 24 88 00 00 	movq   $0x618350,0x88(%rsp)
  404c52:	00 50 83 61 00 
  404c57:	31 f6                	xor    %esi,%esi
  404c59:	48 c7 84 24 60 01 00 	movq   $0x0,0x160(%rsp)
  404c60:	00 00 00 00 00 
  404c65:	c6 84 24 69 01 00 00 	movb   $0x0,0x169(%rsp)
  404c6c:	00 
  404c6d:	48 03 7b e8          	add    -0x18(%rbx),%rdi
  404c71:	48 c7 84 24 70 01 00 	movq   $0x0,0x170(%rsp)
  404c78:	00 00 00 00 00 
  404c7d:	48 c7 84 24 78 01 00 	movq   $0x0,0x178(%rsp)
  404c84:	00 00 00 00 00 
  404c89:	48 c7 84 24 80 01 00 	movq   $0x0,0x180(%rsp)
  404c90:	00 00 00 00 00 
  404c95:	48 c7 84 24 88 01 00 	movq   $0x0,0x188(%rsp)
  404c9c:	00 00 00 00 00 
  404ca1:	48 89 5c 24 30       	mov    %rbx,0x30(%rsp)
  404ca6:	4c 89 27             	mov    %r12,(%rdi)
  404ca9:	e8 d2 d6 ff ff       	callq  402380 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  404cae:	48 8d 7c 24 70       	lea    0x70(%rsp),%rdi
  404cb3:	48 c7 44 24 30 78 83 	movq   $0x618378,0x30(%rsp)
  404cba:	61 00 
  404cbc:	48 c7 84 24 88 00 00 	movq   $0x6183a0,0x88(%rsp)
  404cc3:	00 a0 83 61 00 
  404cc8:	48 c7 44 24 38 d0 84 	movq   $0x6184d0,0x38(%rsp)
  404ccf:	61 00 
  404cd1:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  404cd8:	00 00 
  404cda:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
  404ce1:	00 00 
  404ce3:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
  404cea:	00 00 
  404cec:	48 c7 44 24 58 00 00 	movq   $0x0,0x58(%rsp)
  404cf3:	00 00 
  404cf5:	48 c7 44 24 60 00 00 	movq   $0x0,0x60(%rsp)
  404cfc:	00 00 
  404cfe:	48 c7 44 24 68 00 00 	movq   $0x0,0x68(%rsp)
  404d05:	00 00 
  404d07:	e8 44 d6 ff ff       	callq  402350 <_ZNSt6localeC1Ev@plt>
  404d0c:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
  404d11:	48 c7 44 24 38 d0 82 	movq   $0x6182d0,0x38(%rsp)
  404d18:	61 00 
  404d1a:	c7 44 24 78 10 00 00 	movl   $0x10,0x78(%rsp)
  404d21:	00 
  404d22:	48 c7 84 24 80 00 00 	movq   $0x618558,0x80(%rsp)
  404d29:	00 58 85 61 00 
  404d2e:	48 8d 70 08          	lea    0x8(%rax),%rsi
  404d32:	48 8d 78 58          	lea    0x58(%rax),%rdi
  404d36:	e8 45 d6 ff ff       	callq  402380 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  404d3b:	48 8d 74 24 1d       	lea    0x1d(%rsp),%rsi
  404d40:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  404d45:	ba 01 00 00 00       	mov    $0x1,%edx
  404d4a:	45 8b 6d 20          	mov    0x20(%r13),%r13d
  404d4e:	c6 44 24 1d 23       	movb   $0x23,0x1d(%rsp)
  404d53:	e8 18 d6 ff ff       	callq  402370 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  404d58:	44 89 ee             	mov    %r13d,%esi
  404d5b:	48 89 c7             	mov    %rax,%rdi
  404d5e:	e8 fd d3 ff ff       	callq  402160 <_ZNSolsEi@plt>
  404d63:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
  404d68:	48 c7 45 00 58 85 61 	movq   $0x618558,0x0(%rbp)
  404d6f:	00 
  404d70:	48 85 c0             	test   %rax,%rax
  404d73:	0f 84 07 01 00 00    	je     404e80 <_ZN4Poco6Thread8makeNameEv+0x270>
  404d79:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  404d7e:	c6 04 24 00          	movb   $0x0,(%rsp)
  404d82:	48 8d 54 24 1f       	lea    0x1f(%rsp),%rdx
  404d87:	48 39 f0             	cmp    %rsi,%rax
  404d8a:	0f 87 c0 00 00 00    	ja     404e50 <_ZN4Poco6Thread8makeNameEv+0x240>
  404d90:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
  404d95:	e8 f6 06 00 00       	callq  405490 <_ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag>
  404d9a:	4c 8d 6c 24 20       	lea    0x20(%rsp),%r13
  404d9f:	48 89 ef             	mov    %rbp,%rdi
  404da2:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  404da7:	4c 89 ee             	mov    %r13,%rsi
  404daa:	e8 81 d6 ff ff       	callq  402430 <_ZNSs6assignERKSs@plt>
  404daf:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  404db4:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  404db8:	48 81 ff 40 85 61 00 	cmp    $0x618540,%rdi
  404dbf:	0f 85 01 01 00 00    	jne    404ec6 <_ZN4Poco6Thread8makeNameEv+0x2b6>
  404dc5:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
  404dcc:	00 
  404dcd:	48 c7 44 24 30 78 83 	movq   $0x618378,0x30(%rsp)
  404dd4:	61 00 
  404dd6:	48 c7 84 24 88 00 00 	movq   $0x6183a0,0x88(%rsp)
  404ddd:	00 a0 83 61 00 
  404de2:	48 c7 44 24 38 d0 82 	movq   $0x6182d0,0x38(%rsp)
  404de9:	61 00 
  404deb:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  404def:	48 81 ff 40 85 61 00 	cmp    $0x618540,%rdi
  404df6:	0f 85 9a 00 00 00    	jne    404e96 <_ZN4Poco6Thread8makeNameEv+0x286>
  404dfc:	48 8d 7c 24 70       	lea    0x70(%rsp),%rdi
  404e01:	48 c7 44 24 38 d0 84 	movq   $0x6184d0,0x38(%rsp)
  404e08:	61 00 
  404e0a:	e8 e1 d7 ff ff       	callq  4025f0 <_ZNSt6localeD1Ev@plt>
  404e0f:	48 8b 43 e8          	mov    -0x18(%rbx),%rax
  404e13:	48 8d bc 24 88 00 00 	lea    0x88(%rsp),%rdi
  404e1a:	00 
  404e1b:	48 89 5c 24 30       	mov    %rbx,0x30(%rsp)
  404e20:	4c 89 64 04 30       	mov    %r12,0x30(%rsp,%rax,1)
  404e25:	48 c7 84 24 88 00 00 	movq   $0x618350,0x88(%rsp)
  404e2c:	00 50 83 61 00 
  404e31:	e8 aa d5 ff ff       	callq  4023e0 <_ZNSt8ios_baseD2Ev@plt>
  404e36:	48 81 c4 98 01 00 00 	add    $0x198,%rsp
  404e3d:	48 89 e8             	mov    %rbp,%rax
  404e40:	5b                   	pop    %rbx
  404e41:	5d                   	pop    %rbp
  404e42:	41 5c                	pop    %r12
  404e44:	41 5d                	pop    %r13
  404e46:	c3                   	retq   
  404e47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404e4e:	00 00 
  404e50:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
  404e55:	48 89 c6             	mov    %rax,%rsi
  404e58:	e8 33 06 00 00       	callq  405490 <_ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag>
  404e5d:	4c 8d 6c 24 20       	lea    0x20(%rsp),%r13
  404e62:	48 89 ef             	mov    %rbp,%rdi
  404e65:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  404e6a:	4c 89 ee             	mov    %r13,%rsi
  404e6d:	e8 be d5 ff ff       	callq  402430 <_ZNSs6assignERKSs@plt>
  404e72:	e9 38 ff ff ff       	jmpq   404daf <_ZN4Poco6Thread8makeNameEv+0x19f>
  404e77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404e7e:	00 00 
  404e80:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
  404e85:	48 89 ef             	mov    %rbp,%rdi
  404e88:	48 8d 70 50          	lea    0x50(%rax),%rsi
  404e8c:	e8 9f d5 ff ff       	callq  402430 <_ZNSs6assignERKSs@plt>
  404e91:	e9 2f ff ff ff       	jmpq   404dc5 <_ZN4Poco6Thread8makeNameEv+0x1b5>
  404e96:	b9 20 25 40 00       	mov    $0x402520,%ecx
  404e9b:	48 8d 57 10          	lea    0x10(%rdi),%rdx
  404e9f:	48 85 c9             	test   %rcx,%rcx
  404ea2:	0f 84 e4 00 00 00    	je     404f8c <_ZN4Poco6Thread8makeNameEv+0x37c>
  404ea8:	83 c8 ff             	or     $0xffffffff,%eax
  404eab:	f0 0f c1 02          	lock xadd %eax,(%rdx)
  404eaf:	85 c0                	test   %eax,%eax
  404eb1:	0f 8f 45 ff ff ff    	jg     404dfc <_ZN4Poco6Thread8makeNameEv+0x1ec>
  404eb7:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  404ebc:	e8 ef d3 ff ff       	callq  4022b0 <_ZNSs4_Rep10_M_destroyERKSaIcE@plt>
  404ec1:	e9 36 ff ff ff       	jmpq   404dfc <_ZN4Poco6Thread8makeNameEv+0x1ec>
  404ec6:	b9 20 25 40 00       	mov    $0x402520,%ecx
  404ecb:	48 8d 57 10          	lea    0x10(%rdi),%rdx
  404ecf:	48 85 c9             	test   %rcx,%rcx
  404ed2:	74 33                	je     404f07 <_ZN4Poco6Thread8makeNameEv+0x2f7>
  404ed4:	83 c8 ff             	or     $0xffffffff,%eax
  404ed7:	f0 0f c1 02          	lock xadd %eax,(%rdx)
  404edb:	85 c0                	test   %eax,%eax
  404edd:	0f 8f e2 fe ff ff    	jg     404dc5 <_ZN4Poco6Thread8makeNameEv+0x1b5>
  404ee3:	48 8d 74 24 1e       	lea    0x1e(%rsp),%rsi
  404ee8:	e8 c3 d3 ff ff       	callq  4022b0 <_ZNSs4_Rep10_M_destroyERKSaIcE@plt>
  404eed:	e9 d3 fe ff ff       	jmpq   404dc5 <_ZN4Poco6Thread8makeNameEv+0x1b5>
  404ef2:	48 89 c3             	mov    %rax,%rbx
  404ef5:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  404efa:	e8 f1 d4 ff ff       	callq  4023f0 <_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev@plt>
  404eff:	48 89 df             	mov    %rbx,%rdi
  404f02:	e8 b9 d6 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  404f07:	8b 50 f8             	mov    -0x8(%rax),%edx
  404f0a:	8d 4a ff             	lea    -0x1(%rdx),%ecx
  404f0d:	89 48 f8             	mov    %ecx,-0x8(%rax)
  404f10:	89 d0                	mov    %edx,%eax
  404f12:	eb c7                	jmp    404edb <_ZN4Poco6Thread8makeNameEv+0x2cb>
  404f14:	48 8d 7c 24 38       	lea    0x38(%rsp),%rdi
  404f19:	48 89 c5             	mov    %rax,%rbp
  404f1c:	e8 2f 01 00 00       	callq  405050 <_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED1Ev>
  404f21:	48 8b 43 e8          	mov    -0x18(%rbx),%rax
  404f25:	48 89 5c 24 30       	mov    %rbx,0x30(%rsp)
  404f2a:	48 89 eb             	mov    %rbp,%rbx
  404f2d:	4c 89 64 04 30       	mov    %r12,0x30(%rsp,%rax,1)
  404f32:	48 8d bc 24 88 00 00 	lea    0x88(%rsp),%rdi
  404f39:	00 
  404f3a:	48 c7 84 24 88 00 00 	movq   $0x618350,0x88(%rsp)
  404f41:	00 50 83 61 00 
  404f46:	e8 95 d4 ff ff       	callq  4023e0 <_ZNSt8ios_baseD2Ev@plt>
  404f4b:	48 89 df             	mov    %rbx,%rdi
  404f4e:	e8 6d d6 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  404f53:	48 89 c3             	mov    %rax,%rbx
  404f56:	eb da                	jmp    404f32 <_ZN4Poco6Thread8makeNameEv+0x322>
  404f58:	4c 8d 6c 24 20       	lea    0x20(%rsp),%r13
  404f5d:	48 89 c3             	mov    %rax,%rbx
  404f60:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
  404f64:	4c 89 ee             	mov    %r13,%rsi
  404f67:	48 83 ef 18          	sub    $0x18,%rdi
  404f6b:	e8 60 d2 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  404f70:	eb 83                	jmp    404ef5 <_ZN4Poco6Thread8makeNameEv+0x2e5>
  404f72:	48 89 c3             	mov    %rax,%rbx
  404f75:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  404f7a:	48 8d 74 24 1e       	lea    0x1e(%rsp),%rsi
  404f7f:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  404f83:	e8 48 d2 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  404f88:	eb d6                	jmp    404f60 <_ZN4Poco6Thread8makeNameEv+0x350>
  404f8a:	eb e6                	jmp    404f72 <_ZN4Poco6Thread8makeNameEv+0x362>
  404f8c:	8b 50 f8             	mov    -0x8(%rax),%edx
  404f8f:	8d 4a ff             	lea    -0x1(%rdx),%ecx
  404f92:	89 48 f8             	mov    %ecx,-0x8(%rax)
  404f95:	89 d0                	mov    %edx,%eax
  404f97:	e9 13 ff ff ff       	jmpq   404eaf <_ZN4Poco6Thread8makeNameEv+0x29f>
  404f9c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000404fa0 <_ZN4Poco6ThreadC1Ev>:
  404fa0:	55                   	push   %rbp
  404fa1:	53                   	push   %rbx
  404fa2:	48 89 fb             	mov    %rdi,%rbx
  404fa5:	48 83 ec 18          	sub    $0x18,%rsp
  404fa9:	e8 22 e4 ff ff       	callq  4033d0 <_ZN4Poco10ThreadImplC1Ev>
  404fae:	e8 ed f0 ff ff       	callq  4040a0 <_ZN4Poco6Thread8uniqueIdEv>
  404fb3:	48 8d 7b 28          	lea    0x28(%rbx),%rdi
  404fb7:	89 43 20             	mov    %eax,0x20(%rbx)
  404fba:	48 89 de             	mov    %rbx,%rsi
  404fbd:	e8 4e fc ff ff       	callq  404c10 <_ZN4Poco6Thread8makeNameEv>
  404fc2:	48 8d 7b 38          	lea    0x38(%rbx),%rdi
  404fc6:	48 c7 43 30 00 00 00 	movq   $0x0,0x30(%rbx)
  404fcd:	00 
  404fce:	e8 4d 7a 00 00       	callq  40ca20 <_ZN4Poco9FastMutexC1Ev>
  404fd3:	48 83 c4 18          	add    $0x18,%rsp
  404fd7:	5b                   	pop    %rbx
  404fd8:	5d                   	pop    %rbp
  404fd9:	c3                   	retq   
  404fda:	48 89 c5             	mov    %rax,%rbp
  404fdd:	48 89 df             	mov    %rbx,%rdi
  404fe0:	e8 ab e4 ff ff       	callq  403490 <_ZN4Poco10ThreadImplD1Ev>
  404fe5:	48 89 ef             	mov    %rbp,%rdi
  404fe8:	e8 d3 d5 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  404fed:	48 89 c5             	mov    %rax,%rbp
  404ff0:	48 8b 43 28          	mov    0x28(%rbx),%rax
  404ff4:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  404ff9:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  404ffd:	e8 ce d1 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  405002:	eb d9                	jmp    404fdd <_ZN4Poco6ThreadC1Ev+0x3d>
  405004:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40500b:	00 00 00 
  40500e:	66 90                	xchg   %ax,%ax

0000000000405010 <_ZN4Poco10ThreadImpl12CallbackDataD1Ev>:
  405010:	48 c7 07 30 ce 40 00 	movq   $0x40ce30,(%rdi)
  405017:	e9 24 7a 00 00       	jmpq   40ca40 <_ZN4Poco16RefCountedObjectD1Ev>
  40501c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000405020 <_ZN4Poco10ThreadImpl12CallbackDataD0Ev>:
  405020:	53                   	push   %rbx
  405021:	48 89 fb             	mov    %rdi,%rbx
  405024:	48 c7 07 30 ce 40 00 	movq   $0x40ce30,(%rdi)
  40502b:	e8 10 7a 00 00       	callq  40ca40 <_ZN4Poco16RefCountedObjectD1Ev>
  405030:	48 89 df             	mov    %rbx,%rdi
  405033:	5b                   	pop    %rbx
  405034:	e9 87 d1 ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  405039:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000405040 <_ZN4Poco10ThreadImpl19CurrentThreadHolderD1Ev>:
  405040:	8b 3f                	mov    (%rdi),%edi
  405042:	e9 99 d2 ff ff       	jmpq   4022e0 <pthread_key_delete@plt>
  405047:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40504e:	00 00 

0000000000405050 <_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED1Ev>:
  405050:	53                   	push   %rbx
  405051:	48 89 fb             	mov    %rdi,%rbx
  405054:	48 83 ec 10          	sub    $0x10,%rsp
  405058:	48 8b 47 48          	mov    0x48(%rdi),%rax
  40505c:	48 c7 07 d0 82 61 00 	movq   $0x6182d0,(%rdi)
  405063:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  405067:	48 81 ff 40 85 61 00 	cmp    $0x618540,%rdi
  40506e:	75 16                	jne    405086 <_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED1Ev+0x36>
  405070:	48 8d 7b 38          	lea    0x38(%rbx),%rdi
  405074:	48 c7 03 d0 84 61 00 	movq   $0x6184d0,(%rbx)
  40507b:	e8 70 d5 ff ff       	callq  4025f0 <_ZNSt6localeD1Ev@plt>
  405080:	48 83 c4 10          	add    $0x10,%rsp
  405084:	5b                   	pop    %rbx
  405085:	c3                   	retq   
  405086:	b9 20 25 40 00       	mov    $0x402520,%ecx
  40508b:	48 8d 57 10          	lea    0x10(%rdi),%rdx
  40508f:	48 85 c9             	test   %rcx,%rcx
  405092:	74 17                	je     4050ab <_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED1Ev+0x5b>
  405094:	83 c8 ff             	or     $0xffffffff,%eax
  405097:	f0 0f c1 02          	lock xadd %eax,(%rdx)
  40509b:	85 c0                	test   %eax,%eax
  40509d:	7f d1                	jg     405070 <_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED1Ev+0x20>
  40509f:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  4050a4:	e8 07 d2 ff ff       	callq  4022b0 <_ZNSs4_Rep10_M_destroyERKSaIcE@plt>
  4050a9:	eb c5                	jmp    405070 <_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED1Ev+0x20>
  4050ab:	8b 50 f8             	mov    -0x8(%rax),%edx
  4050ae:	8d 4a ff             	lea    -0x1(%rdx),%ecx
  4050b1:	89 48 f8             	mov    %ecx,-0x8(%rax)
  4050b4:	89 d0                	mov    %edx,%eax
  4050b6:	eb e3                	jmp    40509b <_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED1Ev+0x4b>
  4050b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4050bf:	00 

00000000004050c0 <_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED0Ev>:
  4050c0:	53                   	push   %rbx
  4050c1:	48 89 fb             	mov    %rdi,%rbx
  4050c4:	48 83 ec 10          	sub    $0x10,%rsp
  4050c8:	48 8b 47 48          	mov    0x48(%rdi),%rax
  4050cc:	48 c7 07 d0 82 61 00 	movq   $0x6182d0,(%rdi)
  4050d3:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4050d7:	48 81 ff 40 85 61 00 	cmp    $0x618540,%rdi
  4050de:	75 1e                	jne    4050fe <_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED0Ev+0x3e>
  4050e0:	48 8d 7b 38          	lea    0x38(%rbx),%rdi
  4050e4:	48 c7 03 d0 84 61 00 	movq   $0x6184d0,(%rbx)
  4050eb:	e8 00 d5 ff ff       	callq  4025f0 <_ZNSt6localeD1Ev@plt>
  4050f0:	48 89 df             	mov    %rbx,%rdi
  4050f3:	e8 c8 d0 ff ff       	callq  4021c0 <_ZdlPv@plt>
  4050f8:	48 83 c4 10          	add    $0x10,%rsp
  4050fc:	5b                   	pop    %rbx
  4050fd:	c3                   	retq   
  4050fe:	b9 20 25 40 00       	mov    $0x402520,%ecx
  405103:	48 8d 57 10          	lea    0x10(%rdi),%rdx
  405107:	48 85 c9             	test   %rcx,%rcx
  40510a:	74 17                	je     405123 <_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED0Ev+0x63>
  40510c:	83 c8 ff             	or     $0xffffffff,%eax
  40510f:	f0 0f c1 02          	lock xadd %eax,(%rdx)
  405113:	85 c0                	test   %eax,%eax
  405115:	7f c9                	jg     4050e0 <_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED0Ev+0x20>
  405117:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  40511c:	e8 8f d1 ff ff       	callq  4022b0 <_ZNSs4_Rep10_M_destroyERKSaIcE@plt>
  405121:	eb bd                	jmp    4050e0 <_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED0Ev+0x20>
  405123:	8b 50 f8             	mov    -0x8(%rax),%edx
  405126:	8d 4a ff             	lea    -0x1(%rdx),%ecx
  405129:	89 48 f8             	mov    %ecx,-0x8(%rax)
  40512c:	89 d0                	mov    %edx,%eax
  40512e:	eb e3                	jmp    405113 <_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED0Ev+0x53>

0000000000405130 <_ZNK4Poco16RefCountedObject7releaseEv>:
  405130:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  405135:	f0 0f c1 47 08       	lock xadd %eax,0x8(%rdi)
  40513a:	83 e8 01             	sub    $0x1,%eax
  40513d:	85 c0                	test   %eax,%eax
  40513f:	75 13                	jne    405154 <_ZNK4Poco16RefCountedObject7releaseEv+0x24>
  405141:	48 85 ff             	test   %rdi,%rdi
  405144:	74 0e                	je     405154 <_ZNK4Poco16RefCountedObject7releaseEv+0x24>
  405146:	48 83 ec 08          	sub    $0x8,%rsp
  40514a:	48 8b 07             	mov    (%rdi),%rax
  40514d:	ff 50 08             	callq  *0x8(%rax)
  405150:	48 83 c4 08          	add    $0x8,%rsp
  405154:	f3 c3                	repz retq 
  405156:	48 83 c2 01          	add    $0x1,%rdx
  40515a:	48 89 c7             	mov    %rax,%rdi
  40515d:	74 05                	je     405164 <_ZNK4Poco16RefCountedObject7releaseEv+0x34>
  40515f:	e8 5c d4 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  405164:	e8 d7 d1 ff ff       	callq  402340 <__cxa_call_unexpected@plt>
  405169:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000405170 <_ZN4Poco10ThreadImpl10ThreadDataD1Ev>:
  405170:	55                   	push   %rbp
  405171:	53                   	push   %rbx
  405172:	48 89 fb             	mov    %rdi,%rbx
  405175:	48 8d 7f 38          	lea    0x38(%rdi),%rdi
  405179:	48 83 ec 08          	sub    $0x8,%rsp
  40517d:	48 c7 47 c8 50 ce 40 	movq   $0x40ce50,-0x38(%rdi)
  405184:	00 
  405185:	e8 b6 1a 00 00       	callq  406c40 <_ZN4Poco5EventD1Ev>
  40518a:	48 8b 7b 18          	mov    0x18(%rbx),%rdi
  40518e:	48 85 ff             	test   %rdi,%rdi
  405191:	74 17                	je     4051aa <_ZN4Poco10ThreadImpl10ThreadDataD1Ev+0x3a>
  405193:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  405198:	f0 0f c1 57 08       	lock xadd %edx,0x8(%rdi)
  40519d:	83 ea 01             	sub    $0x1,%edx
  4051a0:	85 d2                	test   %edx,%edx
  4051a2:	75 06                	jne    4051aa <_ZN4Poco10ThreadImpl10ThreadDataD1Ev+0x3a>
  4051a4:	48 8b 17             	mov    (%rdi),%rdx
  4051a7:	ff 52 08             	callq  *0x8(%rdx)
  4051aa:	48 83 c4 08          	add    $0x8,%rsp
  4051ae:	48 89 df             	mov    %rbx,%rdi
  4051b1:	5b                   	pop    %rbx
  4051b2:	5d                   	pop    %rbp
  4051b3:	e9 88 78 00 00       	jmpq   40ca40 <_ZN4Poco16RefCountedObjectD1Ev>
  4051b8:	48 83 c2 01          	add    $0x1,%rdx
  4051bc:	48 89 c7             	mov    %rax,%rdi
  4051bf:	74 23                	je     4051e4 <_ZN4Poco10ThreadImpl10ThreadDataD1Ev+0x74>
  4051c1:	e8 fa d3 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4051c6:	48 8b 7b 18          	mov    0x18(%rbx),%rdi
  4051ca:	48 89 c5             	mov    %rax,%rbp
  4051cd:	48 85 ff             	test   %rdi,%rdi
  4051d0:	74 05                	je     4051d7 <_ZN4Poco10ThreadImpl10ThreadDataD1Ev+0x67>
  4051d2:	e8 59 ff ff ff       	callq  405130 <_ZNK4Poco16RefCountedObject7releaseEv>
  4051d7:	48 89 df             	mov    %rbx,%rdi
  4051da:	e8 61 78 00 00       	callq  40ca40 <_ZN4Poco16RefCountedObjectD1Ev>
  4051df:	48 89 ef             	mov    %rbp,%rdi
  4051e2:	eb dd                	jmp    4051c1 <_ZN4Poco10ThreadImpl10ThreadDataD1Ev+0x51>
  4051e4:	e8 57 d1 ff ff       	callq  402340 <__cxa_call_unexpected@plt>
  4051e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004051f0 <_ZN4Poco10ThreadImpl10ThreadDataD0Ev>:
  4051f0:	55                   	push   %rbp
  4051f1:	53                   	push   %rbx
  4051f2:	48 89 fb             	mov    %rdi,%rbx
  4051f5:	48 8d 7f 38          	lea    0x38(%rdi),%rdi
  4051f9:	48 83 ec 08          	sub    $0x8,%rsp
  4051fd:	48 c7 47 c8 50 ce 40 	movq   $0x40ce50,-0x38(%rdi)
  405204:	00 
  405205:	e8 36 1a 00 00       	callq  406c40 <_ZN4Poco5EventD1Ev>
  40520a:	48 8b 7b 18          	mov    0x18(%rbx),%rdi
  40520e:	48 85 ff             	test   %rdi,%rdi
  405211:	74 17                	je     40522a <_ZN4Poco10ThreadImpl10ThreadDataD0Ev+0x3a>
  405213:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  405218:	f0 0f c1 47 08       	lock xadd %eax,0x8(%rdi)
  40521d:	83 e8 01             	sub    $0x1,%eax
  405220:	85 c0                	test   %eax,%eax
  405222:	75 06                	jne    40522a <_ZN4Poco10ThreadImpl10ThreadDataD0Ev+0x3a>
  405224:	48 8b 07             	mov    (%rdi),%rax
  405227:	ff 50 08             	callq  *0x8(%rax)
  40522a:	48 89 df             	mov    %rbx,%rdi
  40522d:	e8 0e 78 00 00       	callq  40ca40 <_ZN4Poco16RefCountedObjectD1Ev>
  405232:	48 83 c4 08          	add    $0x8,%rsp
  405236:	48 89 df             	mov    %rbx,%rdi
  405239:	5b                   	pop    %rbx
  40523a:	5d                   	pop    %rbp
  40523b:	e9 80 cf ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  405240:	48 83 c2 01          	add    $0x1,%rdx
  405244:	48 89 c7             	mov    %rax,%rdi
  405247:	74 23                	je     40526c <_ZN4Poco10ThreadImpl10ThreadDataD0Ev+0x7c>
  405249:	e8 72 d3 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40524e:	48 8b 7b 18          	mov    0x18(%rbx),%rdi
  405252:	48 89 c5             	mov    %rax,%rbp
  405255:	48 85 ff             	test   %rdi,%rdi
  405258:	74 05                	je     40525f <_ZN4Poco10ThreadImpl10ThreadDataD0Ev+0x6f>
  40525a:	e8 d1 fe ff ff       	callq  405130 <_ZNK4Poco16RefCountedObject7releaseEv>
  40525f:	48 89 df             	mov    %rbx,%rdi
  405262:	e8 d9 77 00 00       	callq  40ca40 <_ZN4Poco16RefCountedObjectD1Ev>
  405267:	48 89 ef             	mov    %rbp,%rdi
  40526a:	eb dd                	jmp    405249 <_ZN4Poco10ThreadImpl10ThreadDataD0Ev+0x59>
  40526c:	e8 cf d0 ff ff       	callq  402340 <__cxa_call_unexpected@plt>
  405271:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  405278:	00 00 00 
  40527b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000405280 <_ZN4Poco10ThreadImpl19CurrentThreadHolderC1Ev>:
  405280:	55                   	push   %rbp
  405281:	31 f6                	xor    %esi,%esi
  405283:	53                   	push   %rbx
  405284:	48 83 ec 28          	sub    $0x28,%rsp
  405288:	e8 f3 d2 ff ff       	callq  402580 <pthread_key_create@plt>
  40528d:	85 c0                	test   %eax,%eax
  40528f:	75 07                	jne    405298 <_ZN4Poco10ThreadImpl19CurrentThreadHolderC1Ev+0x18>
  405291:	48 83 c4 28          	add    $0x28,%rsp
  405295:	5b                   	pop    %rbx
  405296:	5d                   	pop    %rbp
  405297:	c3                   	retq   
  405298:	bf 20 00 00 00       	mov    $0x20,%edi
  40529d:	e8 5e d1 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  4052a2:	48 8d 54 24 0e       	lea    0xe(%rsp),%rdx
  4052a7:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  4052ac:	be d8 cc 40 00       	mov    $0x40ccd8,%esi
  4052b1:	48 89 c3             	mov    %rax,%rbx
  4052b4:	e8 67 d0 ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  4052b9:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  4052be:	31 d2                	xor    %edx,%edx
  4052c0:	48 89 df             	mov    %rbx,%rdi
  4052c3:	e8 08 60 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  4052c8:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  4052cd:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  4052d2:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4052d6:	e8 f5 ce ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  4052db:	ba 30 82 40 00       	mov    $0x408230,%edx
  4052e0:	be 20 d8 40 00       	mov    $0x40d820,%esi
  4052e5:	48 89 df             	mov    %rbx,%rdi
  4052e8:	e8 b3 d1 ff ff       	callq  4024a0 <__cxa_throw@plt>
  4052ed:	48 89 c5             	mov    %rax,%rbp
  4052f0:	48 89 df             	mov    %rbx,%rdi
  4052f3:	e8 28 d1 ff ff       	callq  402420 <__cxa_free_exception@plt>
  4052f8:	48 89 ef             	mov    %rbp,%rdi
  4052fb:	e8 c0 d2 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  405300:	48 89 c5             	mov    %rax,%rbp
  405303:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  405308:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  40530d:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  405311:	e8 ba ce ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  405316:	eb d8                	jmp    4052f0 <_ZN4Poco10ThreadImpl19CurrentThreadHolderC1Ev+0x70>
  405318:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40531f:	00 

0000000000405320 <_ZN4Poco10ScopedLockINS_9FastMutexEED1Ev>:
  405320:	55                   	push   %rbp
  405321:	53                   	push   %rbx
  405322:	48 83 ec 28          	sub    $0x28,%rsp
  405326:	48 8b 3f             	mov    (%rdi),%rdi
  405329:	e8 d2 d2 ff ff       	callq  402600 <pthread_mutex_unlock@plt>
  40532e:	85 c0                	test   %eax,%eax
  405330:	75 07                	jne    405339 <_ZN4Poco10ScopedLockINS_9FastMutexEED1Ev+0x19>
  405332:	48 83 c4 28          	add    $0x28,%rsp
  405336:	5b                   	pop    %rbx
  405337:	5d                   	pop    %rbp
  405338:	c3                   	retq   
  405339:	bf 20 00 00 00       	mov    $0x20,%edi
  40533e:	e8 bd d0 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  405343:	48 8d 54 24 0f       	lea    0xf(%rsp),%rdx
  405348:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  40534d:	be 32 cc 40 00       	mov    $0x40cc32,%esi
  405352:	48 89 c3             	mov    %rax,%rbx
  405355:	e8 c6 cf ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  40535a:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40535f:	31 d2                	xor    %edx,%edx
  405361:	48 89 df             	mov    %rbx,%rdi
  405364:	e8 67 5f 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  405369:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  40536e:	48 8d 74 24 0e       	lea    0xe(%rsp),%rsi
  405373:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  405377:	e8 54 ce ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  40537c:	ba 30 82 40 00       	mov    $0x408230,%edx
  405381:	be 20 d8 40 00       	mov    $0x40d820,%esi
  405386:	48 89 df             	mov    %rbx,%rdi
  405389:	e8 12 d1 ff ff       	callq  4024a0 <__cxa_throw@plt>
  40538e:	48 89 c7             	mov    %rax,%rdi
  405391:	e8 ba d1 ff ff       	callq  402550 <__cxa_begin_catch@plt>
  405396:	be 4c 00 00 00       	mov    $0x4c,%esi
  40539b:	bf 46 cc 40 00       	mov    $0x40cc46,%edi
  4053a0:	e8 3b 0a 00 00       	callq  405de0 <_ZN4Poco8Bugcheck10unexpectedEPKci>
  4053a5:	e8 36 d1 ff ff       	callq  4024e0 <__cxa_end_catch@plt>
  4053aa:	eb 86                	jmp    405332 <_ZN4Poco10ScopedLockINS_9FastMutexEED1Ev+0x12>
  4053ac:	48 89 c5             	mov    %rax,%rbp
  4053af:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  4053b4:	48 8d 74 24 0e       	lea    0xe(%rsp),%rsi
  4053b9:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4053bd:	e8 0e ce ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  4053c2:	48 89 df             	mov    %rbx,%rdi
  4053c5:	e8 56 d0 ff ff       	callq  402420 <__cxa_free_exception@plt>
  4053ca:	48 89 e8             	mov    %rbp,%rax
  4053cd:	eb bf                	jmp    40538e <_ZN4Poco10ScopedLockINS_9FastMutexEED1Ev+0x6e>
  4053cf:	48 89 c5             	mov    %rax,%rbp
  4053d2:	eb ee                	jmp    4053c2 <_ZN4Poco10ScopedLockINS_9FastMutexEED1Ev+0xa2>
  4053d4:	48 89 c3             	mov    %rax,%rbx
  4053d7:	e8 04 d1 ff ff       	callq  4024e0 <__cxa_end_catch@plt>
  4053dc:	48 89 df             	mov    %rbx,%rdi
  4053df:	e8 dc d1 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4053e4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4053eb:	00 00 00 
  4053ee:	66 90                	xchg   %ax,%ax

00000000004053f0 <_ZN4Poco7AutoPtrINS_10ThreadImpl10ThreadDataEEptEv>:
  4053f0:	48 8b 07             	mov    (%rdi),%rax
  4053f3:	48 85 c0             	test   %rax,%rax
  4053f6:	74 02                	je     4053fa <_ZN4Poco7AutoPtrINS_10ThreadImpl10ThreadDataEEptEv+0xa>
  4053f8:	f3 c3                	repz retq 
  4053fa:	55                   	push   %rbp
  4053fb:	bf 20 00 00 00       	mov    $0x20,%edi
  405400:	53                   	push   %rbx
  405401:	50                   	push   %rax
  405402:	e8 f9 cf ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  405407:	31 f6                	xor    %esi,%esi
  405409:	48 89 c7             	mov    %rax,%rdi
  40540c:	48 89 c3             	mov    %rax,%rbx
  40540f:	e8 fc 54 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  405414:	ba 90 7f 40 00       	mov    $0x407f90,%edx
  405419:	be 50 d4 40 00       	mov    $0x40d450,%esi
  40541e:	48 89 df             	mov    %rbx,%rdi
  405421:	e8 7a d0 ff ff       	callq  4024a0 <__cxa_throw@plt>
  405426:	48 89 c5             	mov    %rax,%rbp
  405429:	48 89 df             	mov    %rbx,%rdi
  40542c:	e8 ef cf ff ff       	callq  402420 <__cxa_free_exception@plt>
  405431:	48 89 ef             	mov    %rbp,%rdi
  405434:	e8 87 d1 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  405439:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000405440 <_ZN4Poco7AutoPtrINS_10ThreadImpl12CallbackDataEEptEv>:
  405440:	48 8b 07             	mov    (%rdi),%rax
  405443:	48 85 c0             	test   %rax,%rax
  405446:	74 02                	je     40544a <_ZN4Poco7AutoPtrINS_10ThreadImpl12CallbackDataEEptEv+0xa>
  405448:	f3 c3                	repz retq 
  40544a:	55                   	push   %rbp
  40544b:	bf 20 00 00 00       	mov    $0x20,%edi
  405450:	53                   	push   %rbx
  405451:	50                   	push   %rax
  405452:	e8 a9 cf ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  405457:	31 f6                	xor    %esi,%esi
  405459:	48 89 c7             	mov    %rax,%rdi
  40545c:	48 89 c3             	mov    %rax,%rbx
  40545f:	e8 ac 54 00 00       	callq  40a910 <_ZN4Poco20NullPointerExceptionC1Ei>
  405464:	ba 90 7f 40 00       	mov    $0x407f90,%edx
  405469:	be 50 d4 40 00       	mov    $0x40d450,%esi
  40546e:	48 89 df             	mov    %rbx,%rdi
  405471:	e8 2a d0 ff ff       	callq  4024a0 <__cxa_throw@plt>
  405476:	48 89 c5             	mov    %rax,%rbp
  405479:	48 89 df             	mov    %rbx,%rdi
  40547c:	e8 9f cf ff ff       	callq  402420 <__cxa_free_exception@plt>
  405481:	48 89 ef             	mov    %rbp,%rdi
  405484:	e8 37 d1 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  405489:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000405490 <_ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag>:
  405490:	41 54                	push   %r12
  405492:	48 39 f7             	cmp    %rsi,%rdi
  405495:	55                   	push   %rbp
  405496:	53                   	push   %rbx
  405497:	48 89 fb             	mov    %rdi,%rbx
  40549a:	74 6c                	je     405508 <_ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag+0x78>
  40549c:	48 85 ff             	test   %rdi,%rdi
  40549f:	74 77                	je     405518 <_ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag+0x88>
  4054a1:	48 29 fe             	sub    %rdi,%rsi
  4054a4:	49 89 f4             	mov    %rsi,%r12
  4054a7:	31 f6                	xor    %esi,%esi
  4054a9:	4c 89 e7             	mov    %r12,%rdi
  4054ac:	e8 7f cd ff ff       	callq  402230 <_ZNSs4_Rep9_S_createEmmRKSaIcE@plt>
  4054b1:	49 83 fc 01          	cmp    $0x1,%r12
  4054b5:	48 89 c5             	mov    %rax,%rbp
  4054b8:	48 8d 48 18          	lea    0x18(%rax),%rcx
  4054bc:	75 32                	jne    4054f0 <_ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag+0x60>
  4054be:	0f b6 03             	movzbl (%rbx),%eax
  4054c1:	88 45 18             	mov    %al,0x18(%rbp)
  4054c4:	48 81 fd 40 85 61 00 	cmp    $0x618540,%rbp
  4054cb:	75 5a                	jne    405527 <_ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag+0x97>
  4054cd:	5b                   	pop    %rbx
  4054ce:	5d                   	pop    %rbp
  4054cf:	48 89 c8             	mov    %rcx,%rax
  4054d2:	41 5c                	pop    %r12
  4054d4:	c3                   	retq   
  4054d5:	31 f6                	xor    %esi,%esi
  4054d7:	31 ff                	xor    %edi,%edi
  4054d9:	45 31 e4             	xor    %r12d,%r12d
  4054dc:	e8 4f cd ff ff       	callq  402230 <_ZNSs4_Rep9_S_createEmmRKSaIcE@plt>
  4054e1:	48 8d 48 18          	lea    0x18(%rax),%rcx
  4054e5:	48 89 c5             	mov    %rax,%rbp
  4054e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4054ef:	00 
  4054f0:	48 89 cf             	mov    %rcx,%rdi
  4054f3:	4c 89 e2             	mov    %r12,%rdx
  4054f6:	48 89 de             	mov    %rbx,%rsi
  4054f9:	e8 12 d1 ff ff       	callq  402610 <memcpy@plt>
  4054fe:	48 89 c1             	mov    %rax,%rcx
  405501:	eb c1                	jmp    4054c4 <_ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag+0x34>
  405503:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405508:	5b                   	pop    %rbx
  405509:	b9 58 85 61 00       	mov    $0x618558,%ecx
  40550e:	5d                   	pop    %rbp
  40550f:	48 89 c8             	mov    %rcx,%rax
  405512:	41 5c                	pop    %r12
  405514:	c3                   	retq   
  405515:	0f 1f 00             	nopl   (%rax)
  405518:	48 85 f6             	test   %rsi,%rsi
  40551b:	74 b8                	je     4054d5 <_ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag+0x45>
  40551d:	bf 28 cd 40 00       	mov    $0x40cd28,%edi
  405522:	e8 29 cf ff ff       	callq  402450 <_ZSt19__throw_logic_errorPKc@plt>
  405527:	c7 45 10 00 00 00 00 	movl   $0x0,0x10(%rbp)
  40552e:	4c 89 65 00          	mov    %r12,0x0(%rbp)
  405532:	42 c6 04 21 00       	movb   $0x0,(%rcx,%r12,1)
  405537:	eb 94                	jmp    4054cd <_ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag+0x3d>
  405539:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000405540 <_ZN4Poco15TLSAbstractSlotD1Ev>:
  405540:	48 c7 07 b0 ce 40 00 	movq   $0x40ceb0,(%rdi)
  405547:	c3                   	retq   
  405548:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40554f:	00 

0000000000405550 <_ZN4Poco15TLSAbstractSlotD0Ev>:
  405550:	48 c7 07 b0 ce 40 00 	movq   $0x40ceb0,(%rdi)
  405557:	e9 64 cc ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  40555c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000405560 <_ZN4Poco15TLSAbstractSlotC1Ev>:
  405560:	48 c7 07 b0 ce 40 00 	movq   $0x40ceb0,(%rdi)
  405567:	c3                   	retq   
  405568:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40556f:	00 

0000000000405570 <_ZN4Poco18ThreadLocalStorageC1Ev>:
  405570:	48 8d 47 08          	lea    0x8(%rdi),%rax
  405574:	c7 47 08 00 00 00 00 	movl   $0x0,0x8(%rdi)
  40557b:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  405582:	00 
  405583:	48 c7 47 28 00 00 00 	movq   $0x0,0x28(%rdi)
  40558a:	00 
  40558b:	48 89 47 18          	mov    %rax,0x18(%rdi)
  40558f:	48 89 47 20          	mov    %rax,0x20(%rdi)
  405593:	c3                   	retq   
  405594:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40559b:	00 00 00 00 00 

00000000004055a0 <_ZN4Poco18ThreadLocalStorage5clearEv>:
  4055a0:	48 83 ec 08          	sub    $0x8,%rsp
  4055a4:	e8 87 e2 ff ff       	callq  403830 <_ZN4Poco10ThreadImpl11currentImplEv>
  4055a9:	48 85 c0             	test   %rax,%rax
  4055ac:	74 12                	je     4055c0 <_ZN4Poco18ThreadLocalStorage5clearEv+0x20>
  4055ae:	48 89 c7             	mov    %rax,%rdi
  4055b1:	48 83 c4 08          	add    $0x8,%rsp
  4055b5:	e9 a6 ea ff ff       	jmpq   404060 <_ZN4Poco6Thread8clearTLSEv>
  4055ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4055c0:	48 83 c4 08          	add    $0x8,%rsp
  4055c4:	c3                   	retq   
  4055c5:	90                   	nop
  4055c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4055cd:	00 00 00 

00000000004055d0 <_ZN4Poco18ThreadLocalStorage7currentEv>:
  4055d0:	41 54                	push   %r12
  4055d2:	55                   	push   %rbp
  4055d3:	53                   	push   %rbx
  4055d4:	48 83 ec 30          	sub    $0x30,%rsp
  4055d8:	e8 53 e2 ff ff       	callq  403830 <_ZN4Poco10ThreadImpl11currentImplEv>
  4055dd:	48 85 c0             	test   %rax,%rax
  4055e0:	74 16                	je     4055f8 <_ZN4Poco18ThreadLocalStorage7currentEv+0x28>
  4055e2:	48 89 c7             	mov    %rax,%rdi
  4055e5:	e8 16 ea ff ff       	callq  404000 <_ZN4Poco6Thread3tlsEv>
  4055ea:	48 83 c4 30          	add    $0x30,%rsp
  4055ee:	5b                   	pop    %rbx
  4055ef:	5d                   	pop    %rbp
  4055f0:	41 5c                	pop    %r12
  4055f2:	c3                   	retq   
  4055f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4055f8:	bf e8 85 61 00       	mov    $0x6185e8,%edi
  4055fd:	48 c7 44 24 10 e8 85 	movq   $0x6185e8,0x10(%rsp)
  405604:	61 00 
  405606:	e8 55 cf ff ff       	callq  402560 <pthread_mutex_lock@plt>
  40560b:	85 c0                	test   %eax,%eax
  40560d:	0f 85 dd 00 00 00    	jne    4056f0 <_ZN4Poco18ThreadLocalStorage7currentEv+0x120>
  405613:	48 8b 1d c6 2f 21 00 	mov    0x212fc6(%rip),%rbx        # 6185e0 <_ZN4Poco12_GLOBAL__N_1L2shE>
  40561a:	48 85 db             	test   %rbx,%rbx
  40561d:	74 21                	je     405640 <_ZN4Poco18ThreadLocalStorage7currentEv+0x70>
  40561f:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  405624:	e8 d7 cf ff ff       	callq  402600 <pthread_mutex_unlock@plt>
  405629:	85 c0                	test   %eax,%eax
  40562b:	75 4c                	jne    405679 <_ZN4Poco18ThreadLocalStorage7currentEv+0xa9>
  40562d:	48 83 c4 30          	add    $0x30,%rsp
  405631:	48 89 d8             	mov    %rbx,%rax
  405634:	5b                   	pop    %rbx
  405635:	5d                   	pop    %rbp
  405636:	41 5c                	pop    %r12
  405638:	c3                   	retq   
  405639:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  405640:	bf 30 00 00 00       	mov    $0x30,%edi
  405645:	e8 66 cf ff ff       	callq  4025b0 <_Znwm@plt>
  40564a:	48 8d 50 08          	lea    0x8(%rax),%rdx
  40564e:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
  405655:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
  40565c:	00 
  40565d:	48 c7 40 28 00 00 00 	movq   $0x0,0x28(%rax)
  405664:	00 
  405665:	48 89 05 74 2f 21 00 	mov    %rax,0x212f74(%rip)        # 6185e0 <_ZN4Poco12_GLOBAL__N_1L2shE>
  40566c:	48 89 c3             	mov    %rax,%rbx
  40566f:	48 89 50 18          	mov    %rdx,0x18(%rax)
  405673:	48 89 50 20          	mov    %rdx,0x20(%rax)
  405677:	eb a6                	jmp    40561f <_ZN4Poco18ThreadLocalStorage7currentEv+0x4f>
  405679:	bf 20 00 00 00       	mov    $0x20,%edi
  40567e:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
  405683:	e8 78 cd ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  405688:	48 8d 54 24 0f       	lea    0xf(%rsp),%rdx
  40568d:	be 32 cc 40 00       	mov    $0x40cc32,%esi
  405692:	48 89 ef             	mov    %rbp,%rdi
  405695:	49 89 c4             	mov    %rax,%r12
  405698:	e8 83 cc ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  40569d:	31 d2                	xor    %edx,%edx
  40569f:	48 89 ee             	mov    %rbp,%rsi
  4056a2:	4c 89 e7             	mov    %r12,%rdi
  4056a5:	e8 26 5c 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  4056aa:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  4056af:	48 8d 74 24 0e       	lea    0xe(%rsp),%rsi
  4056b4:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4056b8:	e8 13 cb ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  4056bd:	ba 30 82 40 00       	mov    $0x408230,%edx
  4056c2:	be 20 d8 40 00       	mov    $0x40d820,%esi
  4056c7:	4c 89 e7             	mov    %r12,%rdi
  4056ca:	e8 d1 cd ff ff       	callq  4024a0 <__cxa_throw@plt>
  4056cf:	48 89 c7             	mov    %rax,%rdi
  4056d2:	e8 79 ce ff ff       	callq  402550 <__cxa_begin_catch@plt>
  4056d7:	be 4c 00 00 00       	mov    $0x4c,%esi
  4056dc:	bf 46 cc 40 00       	mov    $0x40cc46,%edi
  4056e1:	e8 fa 06 00 00       	callq  405de0 <_ZN4Poco8Bugcheck10unexpectedEPKci>
  4056e6:	e8 f5 cd ff ff       	callq  4024e0 <__cxa_end_catch@plt>
  4056eb:	e9 3d ff ff ff       	jmpq   40562d <_ZN4Poco18ThreadLocalStorage7currentEv+0x5d>
  4056f0:	bf 20 00 00 00       	mov    $0x20,%edi
  4056f5:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
  4056fa:	e8 01 cd ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  4056ff:	48 8d 54 24 0f       	lea    0xf(%rsp),%rdx
  405704:	be 60 cc 40 00       	mov    $0x40cc60,%esi
  405709:	48 89 ef             	mov    %rbp,%rdi
  40570c:	48 89 c3             	mov    %rax,%rbx
  40570f:	e8 0c cc ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  405714:	31 d2                	xor    %edx,%edx
  405716:	48 89 ee             	mov    %rbp,%rsi
  405719:	48 89 df             	mov    %rbx,%rdi
  40571c:	e8 af 5b 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  405721:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  405726:	48 8d 74 24 0e       	lea    0xe(%rsp),%rsi
  40572b:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  40572f:	e8 9c ca ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  405734:	ba 30 82 40 00       	mov    $0x408230,%edx
  405739:	be 20 d8 40 00       	mov    $0x40d820,%esi
  40573e:	48 89 df             	mov    %rbx,%rdi
  405741:	e8 5a cd ff ff       	callq  4024a0 <__cxa_throw@plt>
  405746:	48 89 c5             	mov    %rax,%rbp
  405749:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40574e:	48 8d 74 24 0e       	lea    0xe(%rsp),%rsi
  405753:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  405757:	e8 74 ca ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  40575c:	4c 89 e7             	mov    %r12,%rdi
  40575f:	e8 bc cc ff ff       	callq  402420 <__cxa_free_exception@plt>
  405764:	48 89 e8             	mov    %rbp,%rax
  405767:	e9 63 ff ff ff       	jmpq   4056cf <_ZN4Poco18ThreadLocalStorage7currentEv+0xff>
  40576c:	48 89 c5             	mov    %rax,%rbp
  40576f:	eb eb                	jmp    40575c <_ZN4Poco18ThreadLocalStorage7currentEv+0x18c>
  405771:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  405776:	48 89 c3             	mov    %rax,%rbx
  405779:	e8 a2 fb ff ff       	callq  405320 <_ZN4Poco10ScopedLockINS_9FastMutexEED1Ev>
  40577e:	48 89 df             	mov    %rbx,%rdi
  405781:	e8 3a ce ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  405786:	48 89 c3             	mov    %rax,%rbx
  405789:	e8 52 cd ff ff       	callq  4024e0 <__cxa_end_catch@plt>
  40578e:	48 89 df             	mov    %rbx,%rdi
  405791:	e8 2a ce ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  405796:	48 89 c5             	mov    %rax,%rbp
  405799:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40579e:	48 8d 74 24 0e       	lea    0xe(%rsp),%rsi
  4057a3:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4057a7:	e8 24 ca ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  4057ac:	48 89 df             	mov    %rbx,%rdi
  4057af:	e8 6c cc ff ff       	callq  402420 <__cxa_free_exception@plt>
  4057b4:	48 89 ef             	mov    %rbp,%rdi
  4057b7:	e8 04 ce ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4057bc:	48 89 c5             	mov    %rax,%rbp
  4057bf:	eb eb                	jmp    4057ac <_ZN4Poco18ThreadLocalStorage7currentEv+0x1dc>
  4057c1:	90                   	nop
  4057c2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4057c9:	1f 84 00 00 00 00 00 

00000000004057d0 <_ZN4Poco18ThreadLocalStorageD1Ev>:
  4057d0:	41 54                	push   %r12
  4057d2:	49 89 fc             	mov    %rdi,%r12
  4057d5:	55                   	push   %rbp
  4057d6:	48 8d 6f 08          	lea    0x8(%rdi),%rbp
  4057da:	53                   	push   %rbx
  4057db:	48 8b 5f 18          	mov    0x18(%rdi),%rbx
  4057df:	48 39 eb             	cmp    %rbp,%rbx
  4057e2:	74 23                	je     405807 <_ZN4Poco18ThreadLocalStorageD1Ev+0x37>
  4057e4:	0f 1f 40 00          	nopl   0x0(%rax)
  4057e8:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
  4057ec:	48 85 ff             	test   %rdi,%rdi
  4057ef:	74 06                	je     4057f7 <_ZN4Poco18ThreadLocalStorageD1Ev+0x27>
  4057f1:	48 8b 07             	mov    (%rdi),%rax
  4057f4:	ff 50 08             	callq  *0x8(%rax)
  4057f7:	48 89 df             	mov    %rbx,%rdi
  4057fa:	e8 d1 cc ff ff       	callq  4024d0 <_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base@plt>
  4057ff:	48 39 e8             	cmp    %rbp,%rax
  405802:	48 89 c3             	mov    %rax,%rbx
  405805:	75 e1                	jne    4057e8 <_ZN4Poco18ThreadLocalStorageD1Ev+0x18>
  405807:	5b                   	pop    %rbx
  405808:	5d                   	pop    %rbp
  405809:	49 8b 74 24 10       	mov    0x10(%r12),%rsi
  40580e:	4c 89 e7             	mov    %r12,%rdi
  405811:	41 5c                	pop    %r12
  405813:	e9 88 00 00 00       	jmpq   4058a0 <_ZNSt8_Rb_treeIPKvSt4pairIKS1_PN4Poco15TLSAbstractSlotEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E>
  405818:	49 8b 74 24 10       	mov    0x10(%r12),%rsi
  40581d:	48 89 c3             	mov    %rax,%rbx
  405820:	4c 89 e7             	mov    %r12,%rdi
  405823:	e8 78 00 00 00       	callq  4058a0 <_ZNSt8_Rb_treeIPKvSt4pairIKS1_PN4Poco15TLSAbstractSlotEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E>
  405828:	48 89 df             	mov    %rbx,%rdi
  40582b:	e8 90 cd ff ff       	callq  4025c0 <_Unwind_Resume@plt>

0000000000405830 <_ZN4Poco18ThreadLocalStorage3getEPKv>:
  405830:	48 83 ec 18          	sub    $0x18,%rsp
  405834:	48 8b 47 10          	mov    0x10(%rdi),%rax
  405838:	48 8d 4f 08          	lea    0x8(%rdi),%rcx
  40583c:	48 85 c0             	test   %rax,%rax
  40583f:	74 3f                	je     405880 <_ZN4Poco18ThreadLocalStorage3getEPKv+0x50>
  405841:	48 89 ca             	mov    %rcx,%rdx
  405844:	eb 16                	jmp    40585c <_ZN4Poco18ThreadLocalStorage3getEPKv+0x2c>
  405846:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40584d:	00 00 00 
  405850:	48 89 c2             	mov    %rax,%rdx
  405853:	48 8b 40 10          	mov    0x10(%rax),%rax
  405857:	48 85 c0             	test   %rax,%rax
  40585a:	74 0f                	je     40586b <_ZN4Poco18ThreadLocalStorage3getEPKv+0x3b>
  40585c:	48 39 70 20          	cmp    %rsi,0x20(%rax)
  405860:	73 ee                	jae    405850 <_ZN4Poco18ThreadLocalStorage3getEPKv+0x20>
  405862:	48 8b 40 18          	mov    0x18(%rax),%rax
  405866:	48 85 c0             	test   %rax,%rax
  405869:	75 f1                	jne    40585c <_ZN4Poco18ThreadLocalStorage3getEPKv+0x2c>
  40586b:	48 39 d1             	cmp    %rdx,%rcx
  40586e:	74 10                	je     405880 <_ZN4Poco18ThreadLocalStorage3getEPKv+0x50>
  405870:	48 39 72 20          	cmp    %rsi,0x20(%rdx)
  405874:	48 8d 42 28          	lea    0x28(%rdx),%rax
  405878:	77 06                	ja     405880 <_ZN4Poco18ThreadLocalStorage3getEPKv+0x50>
  40587a:	48 83 c4 18          	add    $0x18,%rsp
  40587e:	c3                   	retq   
  40587f:	90                   	nop
  405880:	48 89 34 24          	mov    %rsi,(%rsp)
  405884:	48 89 e6             	mov    %rsp,%rsi
  405887:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  40588e:	00 00 
  405890:	e8 9b 00 00 00       	callq  405930 <_ZNSt8_Rb_treeIPKvSt4pairIKS1_PN4Poco15TLSAbstractSlotEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE16_M_insert_uniqueERKS7_>
  405895:	48 83 c4 18          	add    $0x18,%rsp
  405899:	48 83 c0 28          	add    $0x28,%rax
  40589d:	c3                   	retq   
  40589e:	66 90                	xchg   %ax,%ax

00000000004058a0 <_ZNSt8_Rb_treeIPKvSt4pairIKS1_PN4Poco15TLSAbstractSlotEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E>:
  4058a0:	41 54                	push   %r12
  4058a2:	48 85 f6             	test   %rsi,%rsi
  4058a5:	49 89 fc             	mov    %rdi,%r12
  4058a8:	55                   	push   %rbp
  4058a9:	53                   	push   %rbx
  4058aa:	48 89 f3             	mov    %rsi,%rbx
  4058ad:	75 0c                	jne    4058bb <_ZNSt8_Rb_treeIPKvSt4pairIKS1_PN4Poco15TLSAbstractSlotEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E+0x1b>
  4058af:	eb 27                	jmp    4058d8 <_ZNSt8_Rb_treeIPKvSt4pairIKS1_PN4Poco15TLSAbstractSlotEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E+0x38>
  4058b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4058b8:	48 89 eb             	mov    %rbp,%rbx
  4058bb:	48 8b 73 18          	mov    0x18(%rbx),%rsi
  4058bf:	4c 89 e7             	mov    %r12,%rdi
  4058c2:	e8 d9 ff ff ff       	callq  4058a0 <_ZNSt8_Rb_treeIPKvSt4pairIKS1_PN4Poco15TLSAbstractSlotEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E>
  4058c7:	48 8b 6b 10          	mov    0x10(%rbx),%rbp
  4058cb:	48 89 df             	mov    %rbx,%rdi
  4058ce:	e8 ed c8 ff ff       	callq  4021c0 <_ZdlPv@plt>
  4058d3:	48 85 ed             	test   %rbp,%rbp
  4058d6:	75 e0                	jne    4058b8 <_ZNSt8_Rb_treeIPKvSt4pairIKS1_PN4Poco15TLSAbstractSlotEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E+0x18>
  4058d8:	5b                   	pop    %rbx
  4058d9:	5d                   	pop    %rbp
  4058da:	41 5c                	pop    %r12
  4058dc:	c3                   	retq   
  4058dd:	0f 1f 00             	nopl   (%rax)

00000000004058e0 <_ZN4Poco15SingletonHolderINS_18ThreadLocalStorageEED1Ev>:
  4058e0:	55                   	push   %rbp
  4058e1:	48 89 fd             	mov    %rdi,%rbp
  4058e4:	53                   	push   %rbx
  4058e5:	48 83 ec 08          	sub    $0x8,%rsp
  4058e9:	48 8b 1f             	mov    (%rdi),%rbx
  4058ec:	48 85 db             	test   %rbx,%rbx
  4058ef:	74 10                	je     405901 <_ZN4Poco15SingletonHolderINS_18ThreadLocalStorageEED1Ev+0x21>
  4058f1:	48 89 df             	mov    %rbx,%rdi
  4058f4:	e8 d7 fe ff ff       	callq  4057d0 <_ZN4Poco18ThreadLocalStorageD1Ev>
  4058f9:	48 89 df             	mov    %rbx,%rdi
  4058fc:	e8 bf c8 ff ff       	callq  4021c0 <_ZdlPv@plt>
  405901:	48 83 c4 08          	add    $0x8,%rsp
  405905:	48 8d 7d 08          	lea    0x8(%rbp),%rdi
  405909:	5b                   	pop    %rbx
  40590a:	5d                   	pop    %rbp
  40590b:	e9 20 71 00 00       	jmpq   40ca30 <_ZN4Poco9FastMutexD1Ev>
  405910:	48 8d 7d 08          	lea    0x8(%rbp),%rdi
  405914:	48 89 c3             	mov    %rax,%rbx
  405917:	e8 14 71 00 00       	callq  40ca30 <_ZN4Poco9FastMutexD1Ev>
  40591c:	48 89 df             	mov    %rbx,%rdi
  40591f:	e8 9c cc ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  405924:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40592b:	00 00 00 
  40592e:	66 90                	xchg   %ax,%ax

0000000000405930 <_ZNSt8_Rb_treeIPKvSt4pairIKS1_PN4Poco15TLSAbstractSlotEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE16_M_insert_uniqueERKS7_>:
  405930:	41 57                	push   %r15
  405932:	49 89 f7             	mov    %rsi,%r15
  405935:	41 56                	push   %r14
  405937:	41 55                	push   %r13
  405939:	41 54                	push   %r12
  40593b:	49 89 fc             	mov    %rdi,%r12
  40593e:	55                   	push   %rbp
  40593f:	48 8d 6f 08          	lea    0x8(%rdi),%rbp
  405943:	53                   	push   %rbx
  405944:	48 83 ec 08          	sub    $0x8,%rsp
  405948:	48 8b 5f 10          	mov    0x10(%rdi),%rbx
  40594c:	48 85 db             	test   %rbx,%rbx
  40594f:	74 57                	je     4059a8 <_ZNSt8_Rb_treeIPKvSt4pairIKS1_PN4Poco15TLSAbstractSlotEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE16_M_insert_uniqueERKS7_+0x78>
  405951:	48 8b 0e             	mov    (%rsi),%rcx
  405954:	eb 1c                	jmp    405972 <_ZNSt8_Rb_treeIPKvSt4pairIKS1_PN4Poco15TLSAbstractSlotEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE16_M_insert_uniqueERKS7_+0x42>
  405956:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40595d:	00 00 00 
  405960:	48 8b 43 10          	mov    0x10(%rbx),%rax
  405964:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  40596a:	48 85 c0             	test   %rax,%rax
  40596d:	74 18                	je     405987 <_ZNSt8_Rb_treeIPKvSt4pairIKS1_PN4Poco15TLSAbstractSlotEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE16_M_insert_uniqueERKS7_+0x57>
  40596f:	48 89 c3             	mov    %rax,%rbx
  405972:	48 8b 53 20          	mov    0x20(%rbx),%rdx
  405976:	48 39 ca             	cmp    %rcx,%rdx
  405979:	77 e5                	ja     405960 <_ZNSt8_Rb_treeIPKvSt4pairIKS1_PN4Poco15TLSAbstractSlotEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE16_M_insert_uniqueERKS7_+0x30>
  40597b:	48 8b 43 18          	mov    0x18(%rbx),%rax
  40597f:	45 31 c0             	xor    %r8d,%r8d
  405982:	48 85 c0             	test   %rax,%rax
  405985:	75 e8                	jne    40596f <_ZNSt8_Rb_treeIPKvSt4pairIKS1_PN4Poco15TLSAbstractSlotEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE16_M_insert_uniqueERKS7_+0x3f>
  405987:	45 84 c0             	test   %r8b,%r8b
  40598a:	49 89 dd             	mov    %rbx,%r13
  40598d:	75 21                	jne    4059b0 <_ZNSt8_Rb_treeIPKvSt4pairIKS1_PN4Poco15TLSAbstractSlotEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE16_M_insert_uniqueERKS7_+0x80>
  40598f:	48 39 ca             	cmp    %rcx,%rdx
  405992:	72 40                	jb     4059d4 <_ZNSt8_Rb_treeIPKvSt4pairIKS1_PN4Poco15TLSAbstractSlotEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE16_M_insert_uniqueERKS7_+0xa4>
  405994:	48 83 c4 08          	add    $0x8,%rsp
  405998:	48 89 d8             	mov    %rbx,%rax
  40599b:	31 d2                	xor    %edx,%edx
  40599d:	5b                   	pop    %rbx
  40599e:	5d                   	pop    %rbp
  40599f:	41 5c                	pop    %r12
  4059a1:	41 5d                	pop    %r13
  4059a3:	41 5e                	pop    %r14
  4059a5:	41 5f                	pop    %r15
  4059a7:	c3                   	retq   
  4059a8:	48 89 eb             	mov    %rbp,%rbx
  4059ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4059b0:	4d 8b 6c 24 18       	mov    0x18(%r12),%r13
  4059b5:	49 39 dd             	cmp    %rbx,%r13
  4059b8:	74 26                	je     4059e0 <_ZNSt8_Rb_treeIPKvSt4pairIKS1_PN4Poco15TLSAbstractSlotEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE16_M_insert_uniqueERKS7_+0xb0>
  4059ba:	48 89 df             	mov    %rbx,%rdi
  4059bd:	49 89 dd             	mov    %rbx,%r13
  4059c0:	e8 5b c8 ff ff       	callq  402220 <_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base@plt>
  4059c5:	49 8b 0f             	mov    (%r15),%rcx
  4059c8:	48 8b 50 20          	mov    0x20(%rax),%rdx
  4059cc:	48 89 c3             	mov    %rax,%rbx
  4059cf:	48 39 ca             	cmp    %rcx,%rdx
  4059d2:	73 c0                	jae    405994 <_ZNSt8_Rb_treeIPKvSt4pairIKS1_PN4Poco15TLSAbstractSlotEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE16_M_insert_uniqueERKS7_+0x64>
  4059d4:	4d 85 ed             	test   %r13,%r13
  4059d7:	75 07                	jne    4059e0 <_ZNSt8_Rb_treeIPKvSt4pairIKS1_PN4Poco15TLSAbstractSlotEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE16_M_insert_uniqueERKS7_+0xb0>
  4059d9:	31 db                	xor    %ebx,%ebx
  4059db:	eb b7                	jmp    405994 <_ZNSt8_Rb_treeIPKvSt4pairIKS1_PN4Poco15TLSAbstractSlotEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE16_M_insert_uniqueERKS7_+0x64>
  4059dd:	0f 1f 00             	nopl   (%rax)
  4059e0:	4c 39 ed             	cmp    %r13,%rbp
  4059e3:	74 5e                	je     405a43 <_ZNSt8_Rb_treeIPKvSt4pairIKS1_PN4Poco15TLSAbstractSlotEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE16_M_insert_uniqueERKS7_+0x113>
  4059e5:	45 31 f6             	xor    %r14d,%r14d
  4059e8:	49 8b 45 20          	mov    0x20(%r13),%rax
  4059ec:	49 39 07             	cmp    %rax,(%r15)
  4059ef:	41 0f 92 c6          	setb   %r14b
  4059f3:	bf 30 00 00 00       	mov    $0x30,%edi
  4059f8:	e8 b3 cb ff ff       	callq  4025b0 <_Znwm@plt>
  4059fd:	48 83 f8 e0          	cmp    $0xffffffffffffffe0,%rax
  405a01:	48 89 c3             	mov    %rax,%rbx
  405a04:	74 0f                	je     405a15 <_ZNSt8_Rb_treeIPKvSt4pairIKS1_PN4Poco15TLSAbstractSlotEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE16_M_insert_uniqueERKS7_+0xe5>
  405a06:	4d 8b 0f             	mov    (%r15),%r9
  405a09:	4d 8b 57 08          	mov    0x8(%r15),%r10
  405a0d:	4c 89 48 20          	mov    %r9,0x20(%rax)
  405a11:	4c 89 50 28          	mov    %r10,0x28(%rax)
  405a15:	4c 89 ea             	mov    %r13,%rdx
  405a18:	48 89 e9             	mov    %rbp,%rcx
  405a1b:	48 89 de             	mov    %rbx,%rsi
  405a1e:	44 89 f7             	mov    %r14d,%edi
  405a21:	e8 7a c9 ff ff       	callq  4023a0 <_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_@plt>
  405a26:	49 83 44 24 28 01    	addq   $0x1,0x28(%r12)
  405a2c:	48 83 c4 08          	add    $0x8,%rsp
  405a30:	48 89 d8             	mov    %rbx,%rax
  405a33:	5b                   	pop    %rbx
  405a34:	5d                   	pop    %rbp
  405a35:	41 5c                	pop    %r12
  405a37:	41 5d                	pop    %r13
  405a39:	41 5e                	pop    %r14
  405a3b:	ba 01 00 00 00       	mov    $0x1,%edx
  405a40:	41 5f                	pop    %r15
  405a42:	c3                   	retq   
  405a43:	41 be 01 00 00 00    	mov    $0x1,%r14d
  405a49:	eb a8                	jmp    4059f3 <_ZNSt8_Rb_treeIPKvSt4pairIKS1_PN4Poco15TLSAbstractSlotEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE16_M_insert_uniqueERKS7_+0xc3>
  405a4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000405a50 <_ZN4Poco8TimespanC1Ev>:
  405a50:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
  405a57:	c3                   	retq   
  405a58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405a5f:	00 

0000000000405a60 <_ZN4Poco8TimespanC1El>:
  405a60:	48 89 37             	mov    %rsi,(%rdi)
  405a63:	c3                   	retq   
  405a64:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  405a6b:	00 00 00 00 00 

0000000000405a70 <_ZN4Poco8TimespanC1Ell>:
  405a70:	48 69 f6 40 42 0f 00 	imul   $0xf4240,%rsi,%rsi
  405a77:	48 01 f2             	add    %rsi,%rdx
  405a7a:	48 89 17             	mov    %rdx,(%rdi)
  405a7d:	c3                   	retq   
  405a7e:	66 90                	xchg   %ax,%ax

0000000000405a80 <_ZN4Poco8TimespanC1Eiiiii>:
  405a80:	4d 63 c0             	movslq %r8d,%r8
  405a83:	48 63 c9             	movslq %ecx,%rcx
  405a86:	b8 00 a4 93 d6       	mov    $0xd693a400,%eax
  405a8b:	4d 69 c0 40 42 0f 00 	imul   $0xf4240,%r8,%r8
  405a92:	48 63 d2             	movslq %edx,%rdx
  405a95:	48 63 f6             	movslq %esi,%rsi
  405a98:	48 69 c9 00 87 93 03 	imul   $0x3938700,%rcx,%rcx
  405a9f:	4d 63 c9             	movslq %r9d,%r9
  405aa2:	48 0f af d0          	imul   %rax,%rdx
  405aa6:	48 b8 00 60 d7 1d 14 	movabs $0x141dd76000,%rax
  405aad:	00 00 00 
  405ab0:	4d 01 c1             	add    %r8,%r9
  405ab3:	49 01 c9             	add    %rcx,%r9
  405ab6:	48 0f af f0          	imul   %rax,%rsi
  405aba:	4c 01 ca             	add    %r9,%rdx
  405abd:	48 01 d6             	add    %rdx,%rsi
  405ac0:	48 89 37             	mov    %rsi,(%rdi)
  405ac3:	c3                   	retq   
  405ac4:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  405acb:	00 00 00 00 00 

0000000000405ad0 <_ZN4Poco8TimespanC1ERKS0_>:
  405ad0:	48 8b 06             	mov    (%rsi),%rax
  405ad3:	48 89 07             	mov    %rax,(%rdi)
  405ad6:	c3                   	retq   
  405ad7:	90                   	nop
  405ad8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405adf:	00 

0000000000405ae0 <_ZN4Poco8TimespanD1Ev>:
  405ae0:	f3 c3                	repz retq 
  405ae2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  405ae9:	1f 84 00 00 00 00 00 

0000000000405af0 <_ZN4Poco8TimespanaSERKS0_>:
  405af0:	48 8b 16             	mov    (%rsi),%rdx
  405af3:	48 89 f8             	mov    %rdi,%rax
  405af6:	48 89 17             	mov    %rdx,(%rdi)
  405af9:	c3                   	retq   
  405afa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000405b00 <_ZN4Poco8TimespanaSEl>:
  405b00:	48 89 f8             	mov    %rdi,%rax
  405b03:	48 89 37             	mov    %rsi,(%rdi)
  405b06:	c3                   	retq   
  405b07:	90                   	nop
  405b08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405b0f:	00 

0000000000405b10 <_ZN4Poco8Timespan6assignEiiiii>:
  405b10:	4d 63 c0             	movslq %r8d,%r8
  405b13:	48 63 c9             	movslq %ecx,%rcx
  405b16:	4d 63 c9             	movslq %r9d,%r9
  405b19:	4d 69 c0 40 42 0f 00 	imul   $0xf4240,%r8,%r8
  405b20:	48 63 d2             	movslq %edx,%rdx
  405b23:	48 63 f6             	movslq %esi,%rsi
  405b26:	48 69 c9 00 87 93 03 	imul   $0x3938700,%rcx,%rcx
  405b2d:	48 89 f8             	mov    %rdi,%rax
  405b30:	4d 01 c1             	add    %r8,%r9
  405b33:	49 01 c9             	add    %rcx,%r9
  405b36:	b9 00 a4 93 d6       	mov    $0xd693a400,%ecx
  405b3b:	48 0f af d1          	imul   %rcx,%rdx
  405b3f:	48 b9 00 60 d7 1d 14 	movabs $0x141dd76000,%rcx
  405b46:	00 00 00 
  405b49:	48 0f af f1          	imul   %rcx,%rsi
  405b4d:	4c 01 ca             	add    %r9,%rdx
  405b50:	48 01 d6             	add    %rdx,%rsi
  405b53:	48 89 37             	mov    %rsi,(%rdi)
  405b56:	c3                   	retq   
  405b57:	90                   	nop
  405b58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405b5f:	00 

0000000000405b60 <_ZN4Poco8Timespan6assignEll>:
  405b60:	48 69 f6 40 42 0f 00 	imul   $0xf4240,%rsi,%rsi
  405b67:	48 89 f8             	mov    %rdi,%rax
  405b6a:	48 01 f2             	add    %rsi,%rdx
  405b6d:	48 89 17             	mov    %rdx,(%rdi)
  405b70:	c3                   	retq   
  405b71:	90                   	nop
  405b72:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  405b79:	1f 84 00 00 00 00 00 

0000000000405b80 <_ZN4Poco8Timespan4swapERS0_>:
  405b80:	48 8b 07             	mov    (%rdi),%rax
  405b83:	48 8b 16             	mov    (%rsi),%rdx
  405b86:	48 89 17             	mov    %rdx,(%rdi)
  405b89:	48 89 06             	mov    %rax,(%rsi)
  405b8c:	c3                   	retq   
  405b8d:	90                   	nop
  405b8e:	66 90                	xchg   %ax,%ax

0000000000405b90 <_ZNK4Poco8TimespanplERKS0_>:
  405b90:	48 8b 0e             	mov    (%rsi),%rcx
  405b93:	48 03 0a             	add    (%rdx),%rcx
  405b96:	48 89 f8             	mov    %rdi,%rax
  405b99:	48 89 0f             	mov    %rcx,(%rdi)
  405b9c:	c3                   	retq   
  405b9d:	90                   	nop
  405b9e:	66 90                	xchg   %ax,%ax

0000000000405ba0 <_ZNK4Poco8TimespanmiERKS0_>:
  405ba0:	48 8b 0e             	mov    (%rsi),%rcx
  405ba3:	48 2b 0a             	sub    (%rdx),%rcx
  405ba6:	48 89 f8             	mov    %rdi,%rax
  405ba9:	48 89 0f             	mov    %rcx,(%rdi)
  405bac:	c3                   	retq   
  405bad:	90                   	nop
  405bae:	66 90                	xchg   %ax,%ax

0000000000405bb0 <_ZN4Poco8TimespanpLERKS0_>:
  405bb0:	48 8b 16             	mov    (%rsi),%rdx
  405bb3:	48 89 f8             	mov    %rdi,%rax
  405bb6:	48 01 17             	add    %rdx,(%rdi)
  405bb9:	c3                   	retq   
  405bba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000405bc0 <_ZN4Poco8TimespanmIERKS0_>:
  405bc0:	48 8b 16             	mov    (%rsi),%rdx
  405bc3:	48 89 f8             	mov    %rdi,%rax
  405bc6:	48 29 17             	sub    %rdx,(%rdi)
  405bc9:	c3                   	retq   
  405bca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000405bd0 <_ZNK4Poco8TimespanplEl>:
  405bd0:	48 03 16             	add    (%rsi),%rdx
  405bd3:	48 89 f8             	mov    %rdi,%rax
  405bd6:	48 89 17             	mov    %rdx,(%rdi)
  405bd9:	c3                   	retq   
  405bda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000405be0 <_ZNK4Poco8TimespanmiEl>:
  405be0:	48 8b 0e             	mov    (%rsi),%rcx
  405be3:	48 89 f8             	mov    %rdi,%rax
  405be6:	48 29 d1             	sub    %rdx,%rcx
  405be9:	48 89 0f             	mov    %rcx,(%rdi)
  405bec:	c3                   	retq   
  405bed:	90                   	nop
  405bee:	66 90                	xchg   %ax,%ax

0000000000405bf0 <_ZN4Poco8TimespanpLEl>:
  405bf0:	48 89 f8             	mov    %rdi,%rax
  405bf3:	48 01 37             	add    %rsi,(%rdi)
  405bf6:	c3                   	retq   
  405bf7:	90                   	nop
  405bf8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405bff:	00 

0000000000405c00 <_ZN4Poco8TimespanmIEl>:
  405c00:	48 89 f8             	mov    %rdi,%rax
  405c03:	48 29 37             	sub    %rsi,(%rdi)
  405c06:	c3                   	retq   
  405c07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  405c0e:	00 00 

0000000000405c10 <_ZN4Poco9TimestampC1El>:
  405c10:	48 89 37             	mov    %rsi,(%rdi)
  405c13:	c3                   	retq   
  405c14:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  405c1b:	00 00 00 00 00 

0000000000405c20 <_ZN4Poco9TimestampC1ERKS0_>:
  405c20:	48 8b 06             	mov    (%rsi),%rax
  405c23:	48 89 07             	mov    %rax,(%rdi)
  405c26:	c3                   	retq   
  405c27:	90                   	nop
  405c28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405c2f:	00 

0000000000405c30 <_ZN4Poco9TimestampD1Ev>:
  405c30:	f3 c3                	repz retq 
  405c32:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  405c39:	1f 84 00 00 00 00 00 

0000000000405c40 <_ZN4Poco9TimestampaSERKS0_>:
  405c40:	48 8b 16             	mov    (%rsi),%rdx
  405c43:	48 89 f8             	mov    %rdi,%rax
  405c46:	48 89 17             	mov    %rdx,(%rdi)
  405c49:	c3                   	retq   
  405c4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000405c50 <_ZN4Poco9TimestampaSEl>:
  405c50:	48 89 f8             	mov    %rdi,%rax
  405c53:	48 89 37             	mov    %rsi,(%rdi)
  405c56:	c3                   	retq   
  405c57:	90                   	nop
  405c58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405c5f:	00 

0000000000405c60 <_ZN4Poco9Timestamp4swapERS0_>:
  405c60:	48 8b 07             	mov    (%rdi),%rax
  405c63:	48 8b 16             	mov    (%rsi),%rdx
  405c66:	48 89 17             	mov    %rdx,(%rdi)
  405c69:	48 89 06             	mov    %rax,(%rsi)
  405c6c:	c3                   	retq   
  405c6d:	90                   	nop
  405c6e:	66 90                	xchg   %ax,%ax

0000000000405c70 <_ZN4Poco9Timestamp13fromEpochTimeEl>:
  405c70:	48 69 f6 40 42 0f 00 	imul   $0xf4240,%rsi,%rsi
  405c77:	48 89 f8             	mov    %rdi,%rax
  405c7a:	48 89 37             	mov    %rsi,(%rdi)
  405c7d:	c3                   	retq   
  405c7e:	66 90                	xchg   %ax,%ax

0000000000405c80 <_ZN4Poco9Timestamp11fromUtcTimeEl>:
  405c80:	48 b8 00 c0 7e ec 2d 	movabs $0xfe4de22dec7ec000,%rax
  405c87:	e2 4d fe 
  405c8a:	48 ba 67 66 66 66 66 	movabs $0x6666666666666667,%rdx
  405c91:	66 66 66 
  405c94:	48 01 c6             	add    %rax,%rsi
  405c97:	48 89 f0             	mov    %rsi,%rax
  405c9a:	48 c1 fe 3f          	sar    $0x3f,%rsi
  405c9e:	48 f7 ea             	imul   %rdx
  405ca1:	48 89 f8             	mov    %rdi,%rax
  405ca4:	48 c1 fa 02          	sar    $0x2,%rdx
  405ca8:	48 29 f2             	sub    %rsi,%rdx
  405cab:	48 89 17             	mov    %rdx,(%rdi)
  405cae:	c3                   	retq   
  405caf:	90                   	nop

0000000000405cb0 <_ZN4Poco9Timestamp6updateEv>:
  405cb0:	55                   	push   %rbp
  405cb1:	31 f6                	xor    %esi,%esi
  405cb3:	53                   	push   %rbx
  405cb4:	48 89 fb             	mov    %rdi,%rbx
  405cb7:	48 83 ec 38          	sub    $0x38,%rsp
  405cbb:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  405cc0:	e8 2b c5 ff ff       	callq  4021f0 <gettimeofday@plt>
  405cc5:	85 c0                	test   %eax,%eax
  405cc7:	75 1b                	jne    405ce4 <_ZN4Poco9Timestamp6updateEv+0x34>
  405cc9:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  405cce:	48 69 c0 40 42 0f 00 	imul   $0xf4240,%rax,%rax
  405cd5:	48 03 44 24 28       	add    0x28(%rsp),%rax
  405cda:	48 89 03             	mov    %rax,(%rbx)
  405cdd:	48 83 c4 38          	add    $0x38,%rsp
  405ce1:	5b                   	pop    %rbx
  405ce2:	5d                   	pop    %rbp
  405ce3:	c3                   	retq   
  405ce4:	bf 20 00 00 00       	mov    $0x20,%edi
  405ce9:	e8 12 c7 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  405cee:	48 8d 54 24 0e       	lea    0xe(%rsp),%rdx
  405cf3:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  405cf8:	be e8 ce 40 00       	mov    $0x40cee8,%esi
  405cfd:	48 89 c3             	mov    %rax,%rbx
  405d00:	e8 1b c6 ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  405d05:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  405d0a:	31 d2                	xor    %edx,%edx
  405d0c:	48 89 df             	mov    %rbx,%rdi
  405d0f:	e8 bc 55 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  405d14:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  405d19:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  405d1e:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  405d22:	e8 a9 c4 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  405d27:	ba 30 82 40 00       	mov    $0x408230,%edx
  405d2c:	be 20 d8 40 00       	mov    $0x40d820,%esi
  405d31:	48 89 df             	mov    %rbx,%rdi
  405d34:	e8 67 c7 ff ff       	callq  4024a0 <__cxa_throw@plt>
  405d39:	48 89 c5             	mov    %rax,%rbp
  405d3c:	48 89 df             	mov    %rbx,%rdi
  405d3f:	e8 dc c6 ff ff       	callq  402420 <__cxa_free_exception@plt>
  405d44:	48 89 ef             	mov    %rbp,%rdi
  405d47:	e8 74 c8 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  405d4c:	48 89 c5             	mov    %rax,%rbp
  405d4f:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  405d54:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  405d59:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  405d5d:	e8 6e c4 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  405d62:	eb d8                	jmp    405d3c <_ZN4Poco9Timestamp6updateEv+0x8c>
  405d64:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  405d6b:	00 00 00 00 00 

0000000000405d70 <_ZN4Poco9TimestampC1Ev>:
  405d70:	e9 3b ff ff ff       	jmpq   405cb0 <_ZN4Poco9Timestamp6updateEv>
  405d75:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  405d7c:	00 00 00 
  405d7f:	90                   	nop

0000000000405d80 <_ZN4Poco13AtomicCounterC1Ev>:
  405d80:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
  405d86:	c3                   	retq   
  405d87:	90                   	nop
  405d88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405d8f:	00 

0000000000405d90 <_ZN4Poco13AtomicCounterC1Ei>:
  405d90:	89 37                	mov    %esi,(%rdi)
  405d92:	c3                   	retq   
  405d93:	90                   	nop
  405d94:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  405d9b:	00 00 00 00 00 

0000000000405da0 <_ZN4Poco13AtomicCounterC1ERKS0_>:
  405da0:	8b 06                	mov    (%rsi),%eax
  405da2:	89 07                	mov    %eax,(%rdi)
  405da4:	c3                   	retq   
  405da5:	90                   	nop
  405da6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  405dad:	00 00 00 

0000000000405db0 <_ZN4Poco13AtomicCounterD1Ev>:
  405db0:	f3 c3                	repz retq 
  405db2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  405db9:	1f 84 00 00 00 00 00 

0000000000405dc0 <_ZN4Poco13AtomicCounteraSERKS0_>:
  405dc0:	8b 16                	mov    (%rsi),%edx
  405dc2:	48 89 f8             	mov    %rdi,%rax
  405dc5:	87 17                	xchg   %edx,(%rdi)
  405dc7:	c3                   	retq   
  405dc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405dcf:	00 

0000000000405dd0 <_ZN4Poco13AtomicCounteraSEi>:
  405dd0:	48 89 f8             	mov    %rdi,%rax
  405dd3:	87 37                	xchg   %esi,(%rdi)
  405dd5:	c3                   	retq   
  405dd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  405ddd:	00 00 00 

0000000000405de0 <_ZN4Poco8Bugcheck10unexpectedEPKci>:
  405de0:	f3 c3                	repz retq 
  405de2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  405de9:	1f 84 00 00 00 00 00 

0000000000405df0 <_ZN4Poco8Bugcheck8debuggerEPKci>:
  405df0:	e9 cb 09 00 00       	jmpq   4067c0 <_ZN4Poco8Debugger5enterEPKci>
  405df5:	90                   	nop
  405df6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  405dfd:	00 00 00 

0000000000405e00 <_ZN4Poco8Bugcheck8debuggerEPKcS2_i>:
  405e00:	55                   	push   %rbp
  405e01:	89 d5                	mov    %edx,%ebp
  405e03:	53                   	push   %rbx
  405e04:	48 89 f3             	mov    %rsi,%rbx
  405e07:	48 89 fe             	mov    %rdi,%rsi
  405e0a:	48 83 ec 28          	sub    $0x28,%rsp
  405e0e:	48 8d 54 24 0e       	lea    0xe(%rsp),%rdx
  405e13:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  405e18:	e8 03 c5 ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  405e1d:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  405e22:	89 ea                	mov    %ebp,%edx
  405e24:	48 89 de             	mov    %rbx,%rsi
  405e27:	e8 84 09 00 00       	callq  4067b0 <_ZN4Poco8Debugger5enterERKSsPKci>
  405e2c:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  405e31:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  405e35:	48 81 ff 40 85 61 00 	cmp    $0x618540,%rdi
  405e3c:	75 07                	jne    405e45 <_ZN4Poco8Bugcheck8debuggerEPKcS2_i+0x45>
  405e3e:	48 83 c4 28          	add    $0x28,%rsp
  405e42:	5b                   	pop    %rbx
  405e43:	5d                   	pop    %rbp
  405e44:	c3                   	retq   
  405e45:	b9 20 25 40 00       	mov    $0x402520,%ecx
  405e4a:	48 8d 57 10          	lea    0x10(%rdi),%rdx
  405e4e:	48 85 c9             	test   %rcx,%rcx
  405e51:	74 35                	je     405e88 <_ZN4Poco8Bugcheck8debuggerEPKcS2_i+0x88>
  405e53:	83 c8 ff             	or     $0xffffffff,%eax
  405e56:	f0 0f c1 02          	lock xadd %eax,(%rdx)
  405e5a:	85 c0                	test   %eax,%eax
  405e5c:	7f e0                	jg     405e3e <_ZN4Poco8Bugcheck8debuggerEPKcS2_i+0x3e>
  405e5e:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  405e63:	e8 48 c4 ff ff       	callq  4022b0 <_ZNSs4_Rep10_M_destroyERKSaIcE@plt>
  405e68:	eb d4                	jmp    405e3e <_ZN4Poco8Bugcheck8debuggerEPKcS2_i+0x3e>
  405e6a:	48 89 c3             	mov    %rax,%rbx
  405e6d:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  405e72:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  405e77:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  405e7b:	e8 50 c3 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  405e80:	48 89 df             	mov    %rbx,%rdi
  405e83:	e8 38 c7 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  405e88:	8b 50 f8             	mov    -0x8(%rax),%edx
  405e8b:	8d 4a ff             	lea    -0x1(%rdx),%ecx
  405e8e:	89 48 f8             	mov    %ecx,-0x8(%rax)
  405e91:	89 d0                	mov    %edx,%eax
  405e93:	eb c5                	jmp    405e5a <_ZN4Poco8Bugcheck8debuggerEPKcS2_i+0x5a>
  405e95:	90                   	nop
  405e96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  405e9d:	00 00 00 

0000000000405ea0 <_ZN4Poco8Bugcheck4whatEPKcS2_i>:
  405ea0:	41 57                	push   %r15
  405ea2:	41 89 cf             	mov    %ecx,%r15d
  405ea5:	41 56                	push   %r14
  405ea7:	41 55                	push   %r13
  405ea9:	49 89 f5             	mov    %rsi,%r13
  405eac:	41 54                	push   %r12
  405eae:	49 89 d4             	mov    %rdx,%r12
  405eb1:	55                   	push   %rbp
  405eb2:	48 89 fd             	mov    %rdi,%rbp
  405eb5:	53                   	push   %rbx
  405eb6:	48 81 ec 98 01 00 00 	sub    $0x198,%rsp
  405ebd:	48 8d bc 24 88 00 00 	lea    0x88(%rsp),%rdi
  405ec4:	00 
  405ec5:	e8 c6 c2 ff ff       	callq  402190 <_ZNSt8ios_baseC2Ev@plt>
  405eca:	48 8b 1d f7 24 21 00 	mov    0x2124f7(%rip),%rbx        # 6183c8 <_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE@@GLIBCXX_3.4+0x8>
  405ed1:	c6 84 24 68 01 00 00 	movb   $0x0,0x168(%rsp)
  405ed8:	00 
  405ed9:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  405ede:	4c 8b 35 eb 24 21 00 	mov    0x2124eb(%rip),%r14        # 6183d0 <_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE@@GLIBCXX_3.4+0x10>
  405ee5:	48 c7 84 24 88 00 00 	movq   $0x618350,0x88(%rsp)
  405eec:	00 50 83 61 00 
  405ef1:	31 f6                	xor    %esi,%esi
  405ef3:	48 c7 84 24 60 01 00 	movq   $0x0,0x160(%rsp)
  405efa:	00 00 00 00 00 
  405eff:	c6 84 24 69 01 00 00 	movb   $0x0,0x169(%rsp)
  405f06:	00 
  405f07:	48 03 7b e8          	add    -0x18(%rbx),%rdi
  405f0b:	48 c7 84 24 70 01 00 	movq   $0x0,0x170(%rsp)
  405f12:	00 00 00 00 00 
  405f17:	48 c7 84 24 78 01 00 	movq   $0x0,0x178(%rsp)
  405f1e:	00 00 00 00 00 
  405f23:	48 c7 84 24 80 01 00 	movq   $0x0,0x180(%rsp)
  405f2a:	00 00 00 00 00 
  405f2f:	48 c7 84 24 88 01 00 	movq   $0x0,0x188(%rsp)
  405f36:	00 00 00 00 00 
  405f3b:	48 89 5c 24 30       	mov    %rbx,0x30(%rsp)
  405f40:	4c 89 37             	mov    %r14,(%rdi)
  405f43:	e8 38 c4 ff ff       	callq  402380 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  405f48:	48 8d 7c 24 70       	lea    0x70(%rsp),%rdi
  405f4d:	48 c7 44 24 30 78 83 	movq   $0x618378,0x30(%rsp)
  405f54:	61 00 
  405f56:	48 c7 84 24 88 00 00 	movq   $0x6183a0,0x88(%rsp)
  405f5d:	00 a0 83 61 00 
  405f62:	48 c7 44 24 38 d0 84 	movq   $0x6184d0,0x38(%rsp)
  405f69:	61 00 
  405f6b:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
  405f72:	00 00 
  405f74:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
  405f7b:	00 00 
  405f7d:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
  405f84:	00 00 
  405f86:	48 c7 44 24 58 00 00 	movq   $0x0,0x58(%rsp)
  405f8d:	00 00 
  405f8f:	48 c7 44 24 60 00 00 	movq   $0x0,0x60(%rsp)
  405f96:	00 00 
  405f98:	48 c7 44 24 68 00 00 	movq   $0x0,0x68(%rsp)
  405f9f:	00 00 
  405fa1:	e8 aa c3 ff ff       	callq  402350 <_ZNSt6localeC1Ev@plt>
  405fa6:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
  405fab:	48 c7 44 24 38 d0 82 	movq   $0x6182d0,0x38(%rsp)
  405fb2:	61 00 
  405fb4:	c7 44 24 78 10 00 00 	movl   $0x10,0x78(%rsp)
  405fbb:	00 
  405fbc:	48 c7 84 24 80 00 00 	movq   $0x618558,0x80(%rsp)
  405fc3:	00 58 85 61 00 
  405fc8:	48 8d 70 08          	lea    0x8(%rax),%rsi
  405fcc:	48 8d 78 58          	lea    0x58(%rax),%rdi
  405fd0:	e8 ab c3 ff ff       	callq  402380 <_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@plt>
  405fd5:	4d 85 ed             	test   %r13,%r13
  405fd8:	74 2c                	je     406006 <_ZN4Poco8Bugcheck4whatEPKcS2_i+0x166>
  405fda:	4c 89 ef             	mov    %r13,%rdi
  405fdd:	e8 be c2 ff ff       	callq  4022a0 <strlen@plt>
  405fe2:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  405fe7:	48 89 c2             	mov    %rax,%rdx
  405fea:	4c 89 ee             	mov    %r13,%rsi
  405fed:	e8 7e c3 ff ff       	callq  402370 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  405ff2:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  405ff7:	ba 01 00 00 00       	mov    $0x1,%edx
  405ffc:	be 26 cf 40 00       	mov    $0x40cf26,%esi
  406001:	e8 6a c3 ff ff       	callq  402370 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  406006:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  40600b:	ba 09 00 00 00       	mov    $0x9,%edx
  406010:	be ff ce 40 00       	mov    $0x40ceff,%esi
  406015:	e8 56 c3 ff ff       	callq  402370 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40601a:	4d 85 e4             	test   %r12,%r12
  40601d:	0f 84 4d 01 00 00    	je     406170 <_ZN4Poco8Bugcheck4whatEPKcS2_i+0x2d0>
  406023:	4c 89 e7             	mov    %r12,%rdi
  406026:	e8 75 c2 ff ff       	callq  4022a0 <strlen@plt>
  40602b:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  406030:	48 89 c2             	mov    %rax,%rdx
  406033:	4c 89 e6             	mov    %r12,%rsi
  406036:	e8 35 c3 ff ff       	callq  402370 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40603b:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  406040:	ba 08 00 00 00       	mov    $0x8,%edx
  406045:	be 09 cf 40 00       	mov    $0x40cf09,%esi
  40604a:	e8 21 c3 ff ff       	callq  402370 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40604f:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  406054:	44 89 fe             	mov    %r15d,%esi
  406057:	e8 04 c1 ff ff       	callq  402160 <_ZNSolsEi@plt>
  40605c:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
  406061:	48 c7 45 00 58 85 61 	movq   $0x618558,0x0(%rbp)
  406068:	00 
  406069:	48 85 c0             	test   %rax,%rax
  40606c:	0f 84 1e 01 00 00    	je     406190 <_ZN4Poco8Bugcheck4whatEPKcS2_i+0x2f0>
  406072:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
  406077:	c6 04 24 00          	movb   $0x0,(%rsp)
  40607b:	48 8d 54 24 1f       	lea    0x1f(%rsp),%rdx
  406080:	48 39 f0             	cmp    %rsi,%rax
  406083:	0f 87 bf 00 00 00    	ja     406148 <_ZN4Poco8Bugcheck4whatEPKcS2_i+0x2a8>
  406089:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
  40608e:	e8 fd f3 ff ff       	callq  405490 <_ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag>
  406093:	4c 8d 64 24 20       	lea    0x20(%rsp),%r12
  406098:	48 89 ef             	mov    %rbp,%rdi
  40609b:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  4060a0:	4c 89 e6             	mov    %r12,%rsi
  4060a3:	e8 88 c3 ff ff       	callq  402430 <_ZNSs6assignERKSs@plt>
  4060a8:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  4060ad:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4060b1:	48 81 ff 40 85 61 00 	cmp    $0x618540,%rdi
  4060b8:	0f 85 18 01 00 00    	jne    4061d6 <_ZN4Poco8Bugcheck4whatEPKcS2_i+0x336>
  4060be:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
  4060c5:	00 
  4060c6:	48 c7 44 24 30 78 83 	movq   $0x618378,0x30(%rsp)
  4060cd:	61 00 
  4060cf:	48 c7 84 24 88 00 00 	movq   $0x6183a0,0x88(%rsp)
  4060d6:	00 a0 83 61 00 
  4060db:	48 c7 44 24 38 d0 82 	movq   $0x6182d0,0x38(%rsp)
  4060e2:	61 00 
  4060e4:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4060e8:	48 81 ff 40 85 61 00 	cmp    $0x618540,%rdi
  4060ef:	0f 85 b1 00 00 00    	jne    4061a6 <_ZN4Poco8Bugcheck4whatEPKcS2_i+0x306>
  4060f5:	48 8d 7c 24 70       	lea    0x70(%rsp),%rdi
  4060fa:	48 c7 44 24 38 d0 84 	movq   $0x6184d0,0x38(%rsp)
  406101:	61 00 
  406103:	e8 e8 c4 ff ff       	callq  4025f0 <_ZNSt6localeD1Ev@plt>
  406108:	48 8b 43 e8          	mov    -0x18(%rbx),%rax
  40610c:	48 8d bc 24 88 00 00 	lea    0x88(%rsp),%rdi
  406113:	00 
  406114:	48 89 5c 24 30       	mov    %rbx,0x30(%rsp)
  406119:	4c 89 74 04 30       	mov    %r14,0x30(%rsp,%rax,1)
  40611e:	48 c7 84 24 88 00 00 	movq   $0x618350,0x88(%rsp)
  406125:	00 50 83 61 00 
  40612a:	e8 b1 c2 ff ff       	callq  4023e0 <_ZNSt8ios_baseD2Ev@plt>
  40612f:	48 81 c4 98 01 00 00 	add    $0x198,%rsp
  406136:	48 89 e8             	mov    %rbp,%rax
  406139:	5b                   	pop    %rbx
  40613a:	5d                   	pop    %rbp
  40613b:	41 5c                	pop    %r12
  40613d:	41 5d                	pop    %r13
  40613f:	41 5e                	pop    %r14
  406141:	41 5f                	pop    %r15
  406143:	c3                   	retq   
  406144:	0f 1f 40 00          	nopl   0x0(%rax)
  406148:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
  40614d:	48 89 c6             	mov    %rax,%rsi
  406150:	e8 3b f3 ff ff       	callq  405490 <_ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag>
  406155:	4c 8d 64 24 20       	lea    0x20(%rsp),%r12
  40615a:	48 89 ef             	mov    %rbp,%rdi
  40615d:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  406162:	4c 89 e6             	mov    %r12,%rsi
  406165:	e8 c6 c2 ff ff       	callq  402430 <_ZNSs6assignERKSs@plt>
  40616a:	e9 39 ff ff ff       	jmpq   4060a8 <_ZN4Poco8Bugcheck4whatEPKcS2_i+0x208>
  40616f:	90                   	nop
  406170:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
  406175:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  40617a:	48 03 78 e8          	add    -0x18(%rax),%rdi
  40617e:	8b 77 20             	mov    0x20(%rdi),%esi
  406181:	83 ce 01             	or     $0x1,%esi
  406184:	e8 07 c3 ff ff       	callq  402490 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  406189:	e9 ad fe ff ff       	jmpq   40603b <_ZN4Poco8Bugcheck4whatEPKcS2_i+0x19b>
  40618e:	66 90                	xchg   %ax,%ax
  406190:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
  406195:	48 89 ef             	mov    %rbp,%rdi
  406198:	48 8d 70 50          	lea    0x50(%rax),%rsi
  40619c:	e8 8f c2 ff ff       	callq  402430 <_ZNSs6assignERKSs@plt>
  4061a1:	e9 18 ff ff ff       	jmpq   4060be <_ZN4Poco8Bugcheck4whatEPKcS2_i+0x21e>
  4061a6:	b9 20 25 40 00       	mov    $0x402520,%ecx
  4061ab:	48 8d 57 10          	lea    0x10(%rdi),%rdx
  4061af:	48 85 c9             	test   %rcx,%rcx
  4061b2:	0f 84 e4 00 00 00    	je     40629c <_ZN4Poco8Bugcheck4whatEPKcS2_i+0x3fc>
  4061b8:	83 c8 ff             	or     $0xffffffff,%eax
  4061bb:	f0 0f c1 02          	lock xadd %eax,(%rdx)
  4061bf:	85 c0                	test   %eax,%eax
  4061c1:	0f 8f 2e ff ff ff    	jg     4060f5 <_ZN4Poco8Bugcheck4whatEPKcS2_i+0x255>
  4061c7:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  4061cc:	e8 df c0 ff ff       	callq  4022b0 <_ZNSs4_Rep10_M_destroyERKSaIcE@plt>
  4061d1:	e9 1f ff ff ff       	jmpq   4060f5 <_ZN4Poco8Bugcheck4whatEPKcS2_i+0x255>
  4061d6:	b9 20 25 40 00       	mov    $0x402520,%ecx
  4061db:	48 8d 57 10          	lea    0x10(%rdi),%rdx
  4061df:	48 85 c9             	test   %rcx,%rcx
  4061e2:	74 5d                	je     406241 <_ZN4Poco8Bugcheck4whatEPKcS2_i+0x3a1>
  4061e4:	83 c8 ff             	or     $0xffffffff,%eax
  4061e7:	f0 0f c1 02          	lock xadd %eax,(%rdx)
  4061eb:	85 c0                	test   %eax,%eax
  4061ed:	0f 8f cb fe ff ff    	jg     4060be <_ZN4Poco8Bugcheck4whatEPKcS2_i+0x21e>
  4061f3:	48 8d 74 24 1e       	lea    0x1e(%rsp),%rsi
  4061f8:	e8 b3 c0 ff ff       	callq  4022b0 <_ZNSs4_Rep10_M_destroyERKSaIcE@plt>
  4061fd:	e9 bc fe ff ff       	jmpq   4060be <_ZN4Poco8Bugcheck4whatEPKcS2_i+0x21e>
  406202:	48 8d 7c 24 38       	lea    0x38(%rsp),%rdi
  406207:	48 89 c5             	mov    %rax,%rbp
  40620a:	e8 41 ee ff ff       	callq  405050 <_ZNSt15basic_stringbufIcSt11char_traitsIcESaIcEED1Ev>
  40620f:	48 8b 43 e8          	mov    -0x18(%rbx),%rax
  406213:	48 89 5c 24 30       	mov    %rbx,0x30(%rsp)
  406218:	48 89 eb             	mov    %rbp,%rbx
  40621b:	4c 89 74 04 30       	mov    %r14,0x30(%rsp,%rax,1)
  406220:	48 8d bc 24 88 00 00 	lea    0x88(%rsp),%rdi
  406227:	00 
  406228:	48 c7 84 24 88 00 00 	movq   $0x618350,0x88(%rsp)
  40622f:	00 50 83 61 00 
  406234:	e8 a7 c1 ff ff       	callq  4023e0 <_ZNSt8ios_baseD2Ev@plt>
  406239:	48 89 df             	mov    %rbx,%rdi
  40623c:	e8 7f c3 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  406241:	8b 50 f8             	mov    -0x8(%rax),%edx
  406244:	8d 4a ff             	lea    -0x1(%rdx),%ecx
  406247:	89 48 f8             	mov    %ecx,-0x8(%rax)
  40624a:	89 d0                	mov    %edx,%eax
  40624c:	eb 9d                	jmp    4061eb <_ZN4Poco8Bugcheck4whatEPKcS2_i+0x34b>
  40624e:	48 89 c3             	mov    %rax,%rbx
  406251:	eb cd                	jmp    406220 <_ZN4Poco8Bugcheck4whatEPKcS2_i+0x380>
  406253:	48 89 c3             	mov    %rax,%rbx
  406256:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  40625b:	e8 90 c1 ff ff       	callq  4023f0 <_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev@plt>
  406260:	48 89 df             	mov    %rbx,%rdi
  406263:	e8 58 c3 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  406268:	48 89 c3             	mov    %rax,%rbx
  40626b:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  406270:	48 8d 74 24 1e       	lea    0x1e(%rsp),%rsi
  406275:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  406279:	e8 52 bf ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  40627e:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
  406282:	4c 89 e6             	mov    %r12,%rsi
  406285:	48 83 ef 18          	sub    $0x18,%rdi
  406289:	e8 42 bf ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  40628e:	eb c6                	jmp    406256 <_ZN4Poco8Bugcheck4whatEPKcS2_i+0x3b6>
  406290:	48 89 c3             	mov    %rax,%rbx
  406293:	4c 8d 64 24 20       	lea    0x20(%rsp),%r12
  406298:	eb e4                	jmp    40627e <_ZN4Poco8Bugcheck4whatEPKcS2_i+0x3de>
  40629a:	eb cc                	jmp    406268 <_ZN4Poco8Bugcheck4whatEPKcS2_i+0x3c8>
  40629c:	8b 50 f8             	mov    -0x8(%rax),%edx
  40629f:	8d 4a ff             	lea    -0x1(%rdx),%ecx
  4062a2:	89 48 f8             	mov    %ecx,-0x8(%rax)
  4062a5:	89 d0                	mov    %edx,%eax
  4062a7:	e9 13 ff ff ff       	jmpq   4061bf <_ZN4Poco8Bugcheck4whatEPKcS2_i+0x31f>
  4062ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004062b0 <_ZN4Poco8Bugcheck9assertionEPKcS2_i>:
  4062b0:	41 55                	push   %r13
  4062b2:	41 89 d5             	mov    %edx,%r13d
  4062b5:	41 54                	push   %r12
  4062b7:	49 89 f4             	mov    %rsi,%r12
  4062ba:	be 12 cf 40 00       	mov    $0x40cf12,%esi
  4062bf:	55                   	push   %rbp
  4062c0:	48 89 fd             	mov    %rdi,%rbp
  4062c3:	53                   	push   %rbx
  4062c4:	48 83 ec 38          	sub    $0x38,%rsp
  4062c8:	48 8d 54 24 0e       	lea    0xe(%rsp),%rdx
  4062cd:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  4062d2:	e8 49 c0 ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  4062d7:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  4062dc:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  4062e1:	48 89 ea             	mov    %rbp,%rdx
  4062e4:	e8 27 04 00 00       	callq  406710 <_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_>
  4062e9:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  4062ee:	44 89 ea             	mov    %r13d,%edx
  4062f1:	4c 89 e6             	mov    %r12,%rsi
  4062f4:	e8 b7 04 00 00       	callq  4067b0 <_ZN4Poco8Debugger5enterERKSsPKci>
  4062f9:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  4062fe:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  406303:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  406307:	e8 c4 be ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  40630c:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  406311:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  406316:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  40631a:	e8 b1 be ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  40631f:	bf 20 00 00 00       	mov    $0x20,%edi
  406324:	e8 d7 c0 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  406329:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  40632e:	44 89 e9             	mov    %r13d,%ecx
  406331:	4c 89 e2             	mov    %r12,%rdx
  406334:	48 89 ee             	mov    %rbp,%rsi
  406337:	48 89 c3             	mov    %rax,%rbx
  40633a:	e8 61 fb ff ff       	callq  405ea0 <_ZN4Poco8Bugcheck4whatEPKcS2_i>
  40633f:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  406344:	31 d2                	xor    %edx,%edx
  406346:	48 89 df             	mov    %rbx,%rdi
  406349:	e8 32 45 00 00       	callq  40a880 <_ZN4Poco27AssertionViolationExceptionC1ERKSsi>
  40634e:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  406353:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  406358:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  40635c:	e8 6f be ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  406361:	ba 60 7f 40 00       	mov    $0x407f60,%edx
  406366:	be 10 d4 40 00       	mov    $0x40d410,%esi
  40636b:	48 89 df             	mov    %rbx,%rdi
  40636e:	e8 2d c1 ff ff       	callq  4024a0 <__cxa_throw@plt>
  406373:	48 8d 5c 24 0f       	lea    0xf(%rsp),%rbx
  406378:	48 89 c5             	mov    %rax,%rbp
  40637b:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  406380:	48 89 de             	mov    %rbx,%rsi
  406383:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  406387:	e8 44 be ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  40638c:	48 89 ef             	mov    %rbp,%rdi
  40638f:	e8 2c c2 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  406394:	48 89 c5             	mov    %rax,%rbp
  406397:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40639c:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  4063a1:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4063a5:	e8 26 be ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  4063aa:	48 89 df             	mov    %rbx,%rdi
  4063ad:	e8 6e c0 ff ff       	callq  402420 <__cxa_free_exception@plt>
  4063b2:	48 89 ef             	mov    %rbp,%rdi
  4063b5:	e8 06 c2 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4063ba:	48 89 c5             	mov    %rax,%rbp
  4063bd:	eb eb                	jmp    4063aa <_ZN4Poco8Bugcheck9assertionEPKcS2_i+0xfa>
  4063bf:	48 89 c5             	mov    %rax,%rbp
  4063c2:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  4063c7:	48 8d 5c 24 0f       	lea    0xf(%rsp),%rbx
  4063cc:	48 89 de             	mov    %rbx,%rsi
  4063cf:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4063d3:	e8 f8 bd ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  4063d8:	eb a1                	jmp    40637b <_ZN4Poco8Bugcheck9assertionEPKcS2_i+0xcb>
  4063da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004063e0 <_ZN4Poco8Bugcheck11nullPointerEPKcS2_i>:
  4063e0:	41 55                	push   %r13
  4063e2:	41 89 d5             	mov    %edx,%r13d
  4063e5:	41 54                	push   %r12
  4063e7:	49 89 f4             	mov    %rsi,%r12
  4063ea:	be 28 cf 40 00       	mov    $0x40cf28,%esi
  4063ef:	55                   	push   %rbp
  4063f0:	48 89 fd             	mov    %rdi,%rbp
  4063f3:	53                   	push   %rbx
  4063f4:	48 83 ec 38          	sub    $0x38,%rsp
  4063f8:	48 8d 54 24 0e       	lea    0xe(%rsp),%rdx
  4063fd:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  406402:	e8 19 bf ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  406407:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40640c:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  406411:	48 89 ea             	mov    %rbp,%rdx
  406414:	e8 f7 02 00 00       	callq  406710 <_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_>
  406419:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  40641e:	44 89 ea             	mov    %r13d,%edx
  406421:	4c 89 e6             	mov    %r12,%rsi
  406424:	e8 87 03 00 00       	callq  4067b0 <_ZN4Poco8Debugger5enterERKSsPKci>
  406429:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40642e:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  406433:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  406437:	e8 94 bd ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  40643c:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  406441:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  406446:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  40644a:	e8 81 bd ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  40644f:	bf 20 00 00 00       	mov    $0x20,%edi
  406454:	e8 a7 bf ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  406459:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  40645e:	44 89 e9             	mov    %r13d,%ecx
  406461:	4c 89 e2             	mov    %r12,%rdx
  406464:	48 89 ee             	mov    %rbp,%rsi
  406467:	48 89 c3             	mov    %rax,%rbx
  40646a:	e8 31 fa ff ff       	callq  405ea0 <_ZN4Poco8Bugcheck4whatEPKcS2_i>
  40646f:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  406474:	31 d2                	xor    %edx,%edx
  406476:	48 89 df             	mov    %rbx,%rdi
  406479:	e8 b2 44 00 00       	callq  40a930 <_ZN4Poco20NullPointerExceptionC1ERKSsi>
  40647e:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  406483:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  406488:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  40648c:	e8 3f bd ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  406491:	ba 90 7f 40 00       	mov    $0x407f90,%edx
  406496:	be 50 d4 40 00       	mov    $0x40d450,%esi
  40649b:	48 89 df             	mov    %rbx,%rdi
  40649e:	e8 fd bf ff ff       	callq  4024a0 <__cxa_throw@plt>
  4064a3:	48 8d 5c 24 0f       	lea    0xf(%rsp),%rbx
  4064a8:	48 89 c5             	mov    %rax,%rbp
  4064ab:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  4064b0:	48 89 de             	mov    %rbx,%rsi
  4064b3:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4064b7:	e8 14 bd ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  4064bc:	48 89 ef             	mov    %rbp,%rdi
  4064bf:	e8 fc c0 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4064c4:	48 89 c5             	mov    %rax,%rbp
  4064c7:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  4064cc:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  4064d1:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4064d5:	e8 f6 bc ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  4064da:	48 89 df             	mov    %rbx,%rdi
  4064dd:	e8 3e bf ff ff       	callq  402420 <__cxa_free_exception@plt>
  4064e2:	48 89 ef             	mov    %rbp,%rdi
  4064e5:	e8 d6 c0 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4064ea:	48 89 c5             	mov    %rax,%rbp
  4064ed:	eb eb                	jmp    4064da <_ZN4Poco8Bugcheck11nullPointerEPKcS2_i+0xfa>
  4064ef:	48 89 c5             	mov    %rax,%rbp
  4064f2:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  4064f7:	48 8d 5c 24 0f       	lea    0xf(%rsp),%rbx
  4064fc:	48 89 de             	mov    %rbx,%rsi
  4064ff:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  406503:	e8 c8 bc ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  406508:	eb a1                	jmp    4064ab <_ZN4Poco8Bugcheck11nullPointerEPKcS2_i+0xcb>
  40650a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000406510 <_ZN4Poco8Bugcheck8bugcheckEPKci>:
  406510:	41 54                	push   %r12
  406512:	41 89 f4             	mov    %esi,%r12d
  406515:	be 37 cf 40 00       	mov    $0x40cf37,%esi
  40651a:	55                   	push   %rbp
  40651b:	48 89 fd             	mov    %rdi,%rbp
  40651e:	53                   	push   %rbx
  40651f:	48 83 ec 20          	sub    $0x20,%rsp
  406523:	48 8d 54 24 0e       	lea    0xe(%rsp),%rdx
  406528:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  40652d:	e8 ee bd ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  406532:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  406537:	44 89 e2             	mov    %r12d,%edx
  40653a:	48 89 ee             	mov    %rbp,%rsi
  40653d:	e8 6e 02 00 00       	callq  4067b0 <_ZN4Poco8Debugger5enterERKSsPKci>
  406542:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  406547:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  40654c:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  406550:	e8 7b bc ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  406555:	bf 20 00 00 00       	mov    $0x20,%edi
  40655a:	e8 a1 be ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  40655f:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  406564:	44 89 e1             	mov    %r12d,%ecx
  406567:	48 89 ea             	mov    %rbp,%rdx
  40656a:	31 f6                	xor    %esi,%esi
  40656c:	48 89 c3             	mov    %rax,%rbx
  40656f:	e8 2c f9 ff ff       	callq  405ea0 <_ZN4Poco8Bugcheck4whatEPKcS2_i>
  406574:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  406579:	31 d2                	xor    %edx,%edx
  40657b:	48 89 df             	mov    %rbx,%rdi
  40657e:	e8 0d 45 00 00       	callq  40aa90 <_ZN4Poco17BugcheckExceptionC1ERKSsi>
  406583:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  406588:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  40658d:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  406591:	e8 3a bc ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  406596:	ba f0 7f 40 00       	mov    $0x407ff0,%edx
  40659b:	be d0 d4 40 00       	mov    $0x40d4d0,%esi
  4065a0:	48 89 df             	mov    %rbx,%rdi
  4065a3:	e8 f8 be ff ff       	callq  4024a0 <__cxa_throw@plt>
  4065a8:	48 89 c3             	mov    %rax,%rbx
  4065ab:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  4065b0:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  4065b5:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4065b9:	e8 12 bc ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  4065be:	48 89 df             	mov    %rbx,%rdi
  4065c1:	e8 fa bf ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4065c6:	48 89 c5             	mov    %rax,%rbp
  4065c9:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  4065ce:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  4065d3:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4065d7:	e8 f4 bb ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  4065dc:	48 89 df             	mov    %rbx,%rdi
  4065df:	e8 3c be ff ff       	callq  402420 <__cxa_free_exception@plt>
  4065e4:	48 89 ef             	mov    %rbp,%rdi
  4065e7:	e8 d4 bf ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4065ec:	48 89 c5             	mov    %rax,%rbp
  4065ef:	eb eb                	jmp    4065dc <_ZN4Poco8Bugcheck8bugcheckEPKci+0xcc>
  4065f1:	90                   	nop
  4065f2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4065f9:	1f 84 00 00 00 00 00 

0000000000406600 <_ZN4Poco8Bugcheck8bugcheckEPKcS2_i>:
  406600:	41 56                	push   %r14
  406602:	41 89 d6             	mov    %edx,%r14d
  406605:	41 55                	push   %r13
  406607:	49 89 f5             	mov    %rsi,%r13
  40660a:	be 37 cf 40 00       	mov    $0x40cf37,%esi
  40660f:	41 54                	push   %r12
  406611:	55                   	push   %rbp
  406612:	48 89 fd             	mov    %rdi,%rbp
  406615:	53                   	push   %rbx
  406616:	48 83 ec 30          	sub    $0x30,%rsp
  40661a:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  40661f:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  406624:	e8 f7 bc ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  406629:	48 85 ed             	test   %rbp,%rbp
  40662c:	74 26                	je     406654 <_ZN4Poco8Bugcheck8bugcheckEPKcS2_i+0x54>
  40662e:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  406633:	be 25 cf 40 00       	mov    $0x40cf25,%esi
  406638:	48 8d 5c 24 0f       	lea    0xf(%rsp),%rbx
  40663d:	e8 3e be ff ff       	callq  402480 <_ZNSs6appendEPKc@plt>
  406642:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  406647:	48 89 ee             	mov    %rbp,%rsi
  40664a:	48 8d 5c 24 0f       	lea    0xf(%rsp),%rbx
  40664f:	e8 2c be ff ff       	callq  402480 <_ZNSs6appendEPKc@plt>
  406654:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  406659:	44 89 f2             	mov    %r14d,%edx
  40665c:	4c 89 ee             	mov    %r13,%rsi
  40665f:	48 8d 5c 24 0f       	lea    0xf(%rsp),%rbx
  406664:	e8 47 01 00 00       	callq  4067b0 <_ZN4Poco8Debugger5enterERKSsPKci>
  406669:	bf 20 00 00 00       	mov    $0x20,%edi
  40666e:	e8 8d bd ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  406673:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  406678:	44 89 f1             	mov    %r14d,%ecx
  40667b:	4c 89 ea             	mov    %r13,%rdx
  40667e:	48 89 ee             	mov    %rbp,%rsi
  406681:	49 89 c4             	mov    %rax,%r12
  406684:	e8 17 f8 ff ff       	callq  405ea0 <_ZN4Poco8Bugcheck4whatEPKcS2_i>
  406689:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  40668e:	31 d2                	xor    %edx,%edx
  406690:	4c 89 e7             	mov    %r12,%rdi
  406693:	e8 f8 43 00 00       	callq  40aa90 <_ZN4Poco17BugcheckExceptionC1ERKSsi>
  406698:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40669d:	48 8d 5c 24 0f       	lea    0xf(%rsp),%rbx
  4066a2:	48 89 de             	mov    %rbx,%rsi
  4066a5:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4066a9:	e8 22 bb ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  4066ae:	ba f0 7f 40 00       	mov    $0x407ff0,%edx
  4066b3:	be d0 d4 40 00       	mov    $0x40d4d0,%esi
  4066b8:	4c 89 e7             	mov    %r12,%rdi
  4066bb:	e8 e0 bd ff ff       	callq  4024a0 <__cxa_throw@plt>
  4066c0:	48 89 c5             	mov    %rax,%rbp
  4066c3:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  4066c8:	48 89 de             	mov    %rbx,%rsi
  4066cb:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4066cf:	e8 fc ba ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  4066d4:	48 89 ef             	mov    %rbp,%rdi
  4066d7:	e8 e4 be ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4066dc:	48 89 c5             	mov    %rax,%rbp
  4066df:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  4066e4:	48 8d 5c 24 0f       	lea    0xf(%rsp),%rbx
  4066e9:	48 89 de             	mov    %rbx,%rsi
  4066ec:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4066f0:	e8 db ba ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  4066f5:	4c 89 e7             	mov    %r12,%rdi
  4066f8:	e8 23 bd ff ff       	callq  402420 <__cxa_free_exception@plt>
  4066fd:	eb c4                	jmp    4066c3 <_ZN4Poco8Bugcheck8bugcheckEPKcS2_i+0xc3>
  4066ff:	48 89 c5             	mov    %rax,%rbp
  406702:	48 8d 5c 24 0f       	lea    0xf(%rsp),%rbx
  406707:	eb ec                	jmp    4066f5 <_ZN4Poco8Bugcheck8bugcheckEPKcS2_i+0xf5>
  406709:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000406710 <_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_>:
  406710:	55                   	push   %rbp
  406711:	48 89 d5             	mov    %rdx,%rbp
  406714:	53                   	push   %rbx
  406715:	48 89 fb             	mov    %rdi,%rbx
  406718:	48 83 ec 18          	sub    $0x18,%rsp
  40671c:	e8 2f bb ff ff       	callq  402250 <_ZNSsC1ERKSs@plt>
  406721:	48 89 ef             	mov    %rbp,%rdi
  406724:	e8 77 bb ff ff       	callq  4022a0 <strlen@plt>
  406729:	48 89 ee             	mov    %rbp,%rsi
  40672c:	48 89 c2             	mov    %rax,%rdx
  40672f:	48 89 df             	mov    %rbx,%rdi
  406732:	e8 f9 b9 ff ff       	callq  402130 <_ZNSs6appendEPKcm@plt>
  406737:	48 83 c4 18          	add    $0x18,%rsp
  40673b:	48 89 d8             	mov    %rbx,%rax
  40673e:	5b                   	pop    %rbx
  40673f:	5d                   	pop    %rbp
  406740:	c3                   	retq   
  406741:	48 8b 3b             	mov    (%rbx),%rdi
  406744:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  406749:	48 89 c5             	mov    %rax,%rbp
  40674c:	48 83 ef 18          	sub    $0x18,%rdi
  406750:	e8 7b ba ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  406755:	48 89 ef             	mov    %rbp,%rdi
  406758:	e8 63 be ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40675d:	0f 1f 00             	nopl   (%rax)

0000000000406760 <_ZN4Poco8Debugger11isAvailableEv>:
  406760:	31 c0                	xor    %eax,%eax
  406762:	c3                   	retq   
  406763:	90                   	nop
  406764:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40676b:	00 00 00 00 00 

0000000000406770 <_ZN4Poco8Debugger7messageERKSs>:
  406770:	f3 c3                	repz retq 
  406772:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  406779:	1f 84 00 00 00 00 00 

0000000000406780 <_ZN4Poco8Debugger7messageERKSsPKci>:
  406780:	f3 c3                	repz retq 
  406782:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  406789:	1f 84 00 00 00 00 00 

0000000000406790 <_ZN4Poco8Debugger5enterEv>:
  406790:	f3 c3                	repz retq 
  406792:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  406799:	1f 84 00 00 00 00 00 

00000000004067a0 <_ZN4Poco8Debugger5enterERKSs>:
  4067a0:	f3 c3                	repz retq 
  4067a2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4067a9:	1f 84 00 00 00 00 00 

00000000004067b0 <_ZN4Poco8Debugger5enterERKSsPKci>:
  4067b0:	f3 c3                	repz retq 
  4067b2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4067b9:	1f 84 00 00 00 00 00 

00000000004067c0 <_ZN4Poco8Debugger5enterEPKci>:
  4067c0:	f3 c3                	repz retq 
  4067c2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4067c9:	00 00 00 
  4067cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004067d0 <_ZN4Poco9EventImplC1Eb>:
  4067d0:	55                   	push   %rbp
  4067d1:	53                   	push   %rbx
  4067d2:	48 89 fb             	mov    %rdi,%rbx
  4067d5:	48 8d 7f 08          	lea    0x8(%rdi),%rdi
  4067d9:	48 83 ec 28          	sub    $0x28,%rsp
  4067dd:	40 88 77 f8          	mov    %sil,-0x8(%rdi)
  4067e1:	c6 47 f9 00          	movb   $0x0,-0x7(%rdi)
  4067e5:	31 f6                	xor    %esi,%esi
  4067e7:	e8 84 ba ff ff       	callq  402270 <pthread_mutex_init@plt>
  4067ec:	85 c0                	test   %eax,%eax
  4067ee:	75 16                	jne    406806 <_ZN4Poco9EventImplC1Eb+0x36>
  4067f0:	48 8d 7b 30          	lea    0x30(%rbx),%rdi
  4067f4:	31 f6                	xor    %esi,%esi
  4067f6:	e8 d5 ba ff ff       	callq  4022d0 <pthread_cond_init@plt>
  4067fb:	85 c0                	test   %eax,%eax
  4067fd:	75 5d                	jne    40685c <_ZN4Poco9EventImplC1Eb+0x8c>
  4067ff:	48 83 c4 28          	add    $0x28,%rsp
  406803:	5b                   	pop    %rbx
  406804:	5d                   	pop    %rbp
  406805:	c3                   	retq   
  406806:	bf 20 00 00 00       	mov    $0x20,%edi
  40680b:	48 8d 5c 24 10       	lea    0x10(%rsp),%rbx
  406810:	e8 eb bb ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  406815:	48 8d 54 24 0e       	lea    0xe(%rsp),%rdx
  40681a:	be 40 cf 40 00       	mov    $0x40cf40,%esi
  40681f:	48 89 df             	mov    %rbx,%rdi
  406822:	48 89 c5             	mov    %rax,%rbp
  406825:	e8 f6 ba ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  40682a:	31 d2                	xor    %edx,%edx
  40682c:	48 89 de             	mov    %rbx,%rsi
  40682f:	48 89 ef             	mov    %rbp,%rdi
  406832:	e8 99 4a 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  406837:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  40683c:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  406841:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  406845:	e8 86 b9 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  40684a:	ba 30 82 40 00       	mov    $0x408230,%edx
  40684f:	be 20 d8 40 00       	mov    $0x40d820,%esi
  406854:	48 89 ef             	mov    %rbp,%rdi
  406857:	e8 44 bc ff ff       	callq  4024a0 <__cxa_throw@plt>
  40685c:	bf 20 00 00 00       	mov    $0x20,%edi
  406861:	48 8d 5c 24 10       	lea    0x10(%rsp),%rbx
  406866:	e8 95 bb ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  40686b:	48 8d 54 24 0e       	lea    0xe(%rsp),%rdx
  406870:	be a8 cf 40 00       	mov    $0x40cfa8,%esi
  406875:	48 89 df             	mov    %rbx,%rdi
  406878:	48 89 c5             	mov    %rax,%rbp
  40687b:	e8 a0 ba ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  406880:	31 d2                	xor    %edx,%edx
  406882:	48 89 de             	mov    %rbx,%rsi
  406885:	48 89 ef             	mov    %rbp,%rdi
  406888:	e8 43 4a 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  40688d:	eb a8                	jmp    406837 <_ZN4Poco9EventImplC1Eb+0x67>
  40688f:	48 89 c3             	mov    %rax,%rbx
  406892:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  406897:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  40689c:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4068a0:	e8 2b b9 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  4068a5:	48 89 ef             	mov    %rbp,%rdi
  4068a8:	e8 73 bb ff ff       	callq  402420 <__cxa_free_exception@plt>
  4068ad:	48 89 df             	mov    %rbx,%rdi
  4068b0:	e8 0b bd ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4068b5:	48 89 c3             	mov    %rax,%rbx
  4068b8:	eb eb                	jmp    4068a5 <_ZN4Poco9EventImplC1Eb+0xd5>
  4068ba:	eb d3                	jmp    40688f <_ZN4Poco9EventImplC1Eb+0xbf>
  4068bc:	0f 1f 40 00          	nopl   0x0(%rax)
  4068c0:	eb f3                	jmp    4068b5 <_ZN4Poco9EventImplC1Eb+0xe5>
  4068c2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4068c9:	1f 84 00 00 00 00 00 

00000000004068d0 <_ZN4Poco9EventImplD1Ev>:
  4068d0:	53                   	push   %rbx
  4068d1:	48 89 fb             	mov    %rdi,%rbx
  4068d4:	48 8d 7f 30          	lea    0x30(%rdi),%rdi
  4068d8:	e8 73 b8 ff ff       	callq  402150 <pthread_cond_destroy@plt>
  4068dd:	48 8d 7b 08          	lea    0x8(%rbx),%rdi
  4068e1:	5b                   	pop    %rbx
  4068e2:	e9 b9 bc ff ff       	jmpq   4025a0 <pthread_mutex_destroy@plt>
  4068e7:	90                   	nop
  4068e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4068ef:	00 

00000000004068f0 <_ZN4Poco9EventImpl8waitImplEv>:
  4068f0:	41 54                	push   %r12
  4068f2:	55                   	push   %rbp
  4068f3:	48 8d 6f 08          	lea    0x8(%rdi),%rbp
  4068f7:	53                   	push   %rbx
  4068f8:	48 89 fb             	mov    %rdi,%rbx
  4068fb:	48 89 ef             	mov    %rbp,%rdi
  4068fe:	48 83 ec 20          	sub    $0x20,%rsp
  406902:	e8 59 bc ff ff       	callq  402560 <pthread_mutex_lock@plt>
  406907:	85 c0                	test   %eax,%eax
  406909:	0f 85 97 00 00 00    	jne    4069a6 <_ZN4Poco9EventImpl8waitImplEv+0xb6>
  40690f:	4c 8d 63 30          	lea    0x30(%rbx),%r12
  406913:	eb 12                	jmp    406927 <_ZN4Poco9EventImpl8waitImplEv+0x37>
  406915:	0f 1f 00             	nopl   (%rax)
  406918:	48 89 ee             	mov    %rbp,%rsi
  40691b:	4c 89 e7             	mov    %r12,%rdi
  40691e:	e8 3d bb ff ff       	callq  402460 <pthread_cond_wait@plt>
  406923:	85 c0                	test   %eax,%eax
  406925:	75 22                	jne    406949 <_ZN4Poco9EventImpl8waitImplEv+0x59>
  406927:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  40692b:	84 c0                	test   %al,%al
  40692d:	74 e9                	je     406918 <_ZN4Poco9EventImpl8waitImplEv+0x28>
  40692f:	80 3b 00             	cmpb   $0x0,(%rbx)
  406932:	74 04                	je     406938 <_ZN4Poco9EventImpl8waitImplEv+0x48>
  406934:	c6 43 01 00          	movb   $0x0,0x1(%rbx)
  406938:	48 89 ef             	mov    %rbp,%rdi
  40693b:	e8 c0 bc ff ff       	callq  402600 <pthread_mutex_unlock@plt>
  406940:	48 83 c4 20          	add    $0x20,%rsp
  406944:	5b                   	pop    %rbx
  406945:	5d                   	pop    %rbp
  406946:	41 5c                	pop    %r12
  406948:	c3                   	retq   
  406949:	48 89 ef             	mov    %rbp,%rdi
  40694c:	48 8d 5c 24 10       	lea    0x10(%rsp),%rbx
  406951:	e8 aa bc ff ff       	callq  402600 <pthread_mutex_unlock@plt>
  406956:	bf 20 00 00 00       	mov    $0x20,%edi
  40695b:	e8 a0 ba ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  406960:	48 8d 54 24 0e       	lea    0xe(%rsp),%rdx
  406965:	be 79 cf 40 00       	mov    $0x40cf79,%esi
  40696a:	48 89 df             	mov    %rbx,%rdi
  40696d:	48 89 c5             	mov    %rax,%rbp
  406970:	e8 ab b9 ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  406975:	31 d2                	xor    %edx,%edx
  406977:	48 89 de             	mov    %rbx,%rsi
  40697a:	48 89 ef             	mov    %rbp,%rdi
  40697d:	e8 4e 49 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  406982:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  406987:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  40698b:	48 81 ff 40 85 61 00 	cmp    $0x618540,%rdi
  406992:	75 68                	jne    4069fc <_ZN4Poco9EventImpl8waitImplEv+0x10c>
  406994:	ba 30 82 40 00       	mov    $0x408230,%edx
  406999:	be 20 d8 40 00       	mov    $0x40d820,%esi
  40699e:	48 89 ef             	mov    %rbp,%rdi
  4069a1:	e8 fa ba ff ff       	callq  4024a0 <__cxa_throw@plt>
  4069a6:	bf 20 00 00 00       	mov    $0x20,%edi
  4069ab:	48 8d 5c 24 10       	lea    0x10(%rsp),%rbx
  4069b0:	e8 4b ba ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  4069b5:	48 8d 54 24 0e       	lea    0xe(%rsp),%rdx
  4069ba:	be 5c cf 40 00       	mov    $0x40cf5c,%esi
  4069bf:	48 89 df             	mov    %rbx,%rdi
  4069c2:	48 89 c5             	mov    %rax,%rbp
  4069c5:	e8 56 b9 ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  4069ca:	31 d2                	xor    %edx,%edx
  4069cc:	48 89 de             	mov    %rbx,%rsi
  4069cf:	48 89 ef             	mov    %rbp,%rdi
  4069d2:	e8 f9 48 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  4069d7:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  4069dc:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  4069e1:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4069e5:	e8 e6 b7 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  4069ea:	ba 30 82 40 00       	mov    $0x408230,%edx
  4069ef:	be 20 d8 40 00       	mov    $0x40d820,%esi
  4069f4:	48 89 ef             	mov    %rbp,%rdi
  4069f7:	e8 a4 ba ff ff       	callq  4024a0 <__cxa_throw@plt>
  4069fc:	b9 20 25 40 00       	mov    $0x402520,%ecx
  406a01:	48 8d 57 10          	lea    0x10(%rdi),%rdx
  406a05:	48 85 c9             	test   %rcx,%rcx
  406a08:	74 4f                	je     406a59 <_ZN4Poco9EventImpl8waitImplEv+0x169>
  406a0a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  406a0f:	f0 0f c1 02          	lock xadd %eax,(%rdx)
  406a13:	85 c0                	test   %eax,%eax
  406a15:	0f 8f 79 ff ff ff    	jg     406994 <_ZN4Poco9EventImpl8waitImplEv+0xa4>
  406a1b:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  406a20:	e8 8b b8 ff ff       	callq  4022b0 <_ZNSs4_Rep10_M_destroyERKSaIcE@plt>
  406a25:	e9 6a ff ff ff       	jmpq   406994 <_ZN4Poco9EventImpl8waitImplEv+0xa4>
  406a2a:	48 89 c3             	mov    %rax,%rbx
  406a2d:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  406a32:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  406a37:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  406a3b:	e8 90 b7 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  406a40:	48 89 ef             	mov    %rbp,%rdi
  406a43:	e8 d8 b9 ff ff       	callq  402420 <__cxa_free_exception@plt>
  406a48:	48 89 df             	mov    %rbx,%rdi
  406a4b:	e8 70 bb ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  406a50:	eb d8                	jmp    406a2a <_ZN4Poco9EventImpl8waitImplEv+0x13a>
  406a52:	48 89 c3             	mov    %rax,%rbx
  406a55:	eb e9                	jmp    406a40 <_ZN4Poco9EventImpl8waitImplEv+0x150>
  406a57:	eb f9                	jmp    406a52 <_ZN4Poco9EventImpl8waitImplEv+0x162>
  406a59:	8b 50 f8             	mov    -0x8(%rax),%edx
  406a5c:	8d 4a ff             	lea    -0x1(%rdx),%ecx
  406a5f:	89 48 f8             	mov    %ecx,-0x8(%rax)
  406a62:	89 d0                	mov    %edx,%eax
  406a64:	eb ad                	jmp    406a13 <_ZN4Poco9EventImpl8waitImplEv+0x123>
  406a66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  406a6d:	00 00 00 

0000000000406a70 <_ZN4Poco9EventImpl8waitImplEl>:
  406a70:	41 55                	push   %r13
  406a72:	41 54                	push   %r12
  406a74:	55                   	push   %rbp
  406a75:	48 89 fd             	mov    %rdi,%rbp
  406a78:	53                   	push   %rbx
  406a79:	48 89 f3             	mov    %rsi,%rbx
  406a7c:	31 f6                	xor    %esi,%esi
  406a7e:	48 83 ec 48          	sub    $0x48,%rsp
  406a82:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  406a87:	e8 64 b7 ff ff       	callq  4021f0 <gettimeofday@plt>
  406a8c:	48 89 d8             	mov    %rbx,%rax
  406a8f:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
  406a96:	9b c4 20 
  406a99:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
  406a9e:	48 f7 ea             	imul   %rdx
  406aa1:	48 89 d8             	mov    %rbx,%rax
  406aa4:	48 c1 f8 3f          	sar    $0x3f,%rax
  406aa8:	48 69 c9 e8 03 00 00 	imul   $0x3e8,%rcx,%rcx
  406aaf:	48 c1 fa 07          	sar    $0x7,%rdx
  406ab3:	48 29 c2             	sub    %rax,%rdx
  406ab6:	48 89 d0             	mov    %rdx,%rax
  406ab9:	48 03 44 24 30       	add    0x30(%rsp),%rax
  406abe:	48 69 d2 e8 03 00 00 	imul   $0x3e8,%rdx,%rdx
  406ac5:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  406aca:	48 29 d3             	sub    %rdx,%rbx
  406acd:	48 69 db 40 42 0f 00 	imul   $0xf4240,%rbx,%rbx
  406ad4:	48 01 cb             	add    %rcx,%rbx
  406ad7:	48 81 fb ff c9 9a 3b 	cmp    $0x3b9ac9ff,%rbx
  406ade:	7f 60                	jg     406b40 <_ZN4Poco9EventImpl8waitImplEl+0xd0>
  406ae0:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
  406ae5:	4c 8d 65 08          	lea    0x8(%rbp),%r12
  406ae9:	4c 89 e7             	mov    %r12,%rdi
  406aec:	e8 6f ba ff ff       	callq  402560 <pthread_mutex_lock@plt>
  406af1:	85 c0                	test   %eax,%eax
  406af3:	0f 85 ca 00 00 00    	jne    406bc3 <_ZN4Poco9EventImpl8waitImplEl+0x153>
  406af9:	4c 8d 6d 30          	lea    0x30(%rbp),%r13
  406afd:	eb 15                	jmp    406b14 <_ZN4Poco9EventImpl8waitImplEl+0xa4>
  406aff:	90                   	nop
  406b00:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  406b05:	4c 89 e6             	mov    %r12,%rsi
  406b08:	4c 89 ef             	mov    %r13,%rdi
  406b0b:	e8 30 b7 ff ff       	callq  402240 <pthread_cond_timedwait@plt>
  406b10:	85 c0                	test   %eax,%eax
  406b12:	75 4c                	jne    406b60 <_ZN4Poco9EventImpl8waitImplEl+0xf0>
  406b14:	0f b6 5d 01          	movzbl 0x1(%rbp),%ebx
  406b18:	84 db                	test   %bl,%bl
  406b1a:	74 e4                	je     406b00 <_ZN4Poco9EventImpl8waitImplEl+0x90>
  406b1c:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
  406b20:	84 c0                	test   %al,%al
  406b22:	74 06                	je     406b2a <_ZN4Poco9EventImpl8waitImplEl+0xba>
  406b24:	c6 45 01 00          	movb   $0x0,0x1(%rbp)
  406b28:	89 c3                	mov    %eax,%ebx
  406b2a:	4c 89 e7             	mov    %r12,%rdi
  406b2d:	e8 ce ba ff ff       	callq  402600 <pthread_mutex_unlock@plt>
  406b32:	48 83 c4 48          	add    $0x48,%rsp
  406b36:	89 d8                	mov    %ebx,%eax
  406b38:	5b                   	pop    %rbx
  406b39:	5d                   	pop    %rbp
  406b3a:	41 5c                	pop    %r12
  406b3c:	41 5d                	pop    %r13
  406b3e:	c3                   	retq   
  406b3f:	90                   	nop
  406b40:	48 81 eb 00 ca 9a 3b 	sub    $0x3b9aca00,%rbx
  406b47:	48 83 c0 01          	add    $0x1,%rax
  406b4b:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
  406b50:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  406b55:	eb 8e                	jmp    406ae5 <_ZN4Poco9EventImpl8waitImplEl+0x75>
  406b57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  406b5e:	00 00 
  406b60:	83 f8 6e             	cmp    $0x6e,%eax
  406b63:	74 c5                	je     406b2a <_ZN4Poco9EventImpl8waitImplEl+0xba>
  406b65:	4c 89 e7             	mov    %r12,%rdi
  406b68:	48 8d 5c 24 10       	lea    0x10(%rsp),%rbx
  406b6d:	e8 8e ba ff ff       	callq  402600 <pthread_mutex_unlock@plt>
  406b72:	bf 20 00 00 00       	mov    $0x20,%edi
  406b77:	e8 84 b8 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  406b7c:	48 8d 54 24 0e       	lea    0xe(%rsp),%rdx
  406b81:	be 8f cf 40 00       	mov    $0x40cf8f,%esi
  406b86:	48 89 df             	mov    %rbx,%rdi
  406b89:	48 89 c5             	mov    %rax,%rbp
  406b8c:	e8 8f b7 ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  406b91:	31 d2                	xor    %edx,%edx
  406b93:	48 89 de             	mov    %rbx,%rsi
  406b96:	48 89 ef             	mov    %rbp,%rdi
  406b99:	e8 32 47 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  406b9e:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  406ba3:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  406ba8:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  406bac:	e8 1f b6 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  406bb1:	ba 30 82 40 00       	mov    $0x408230,%edx
  406bb6:	be 20 d8 40 00       	mov    $0x40d820,%esi
  406bbb:	48 89 ef             	mov    %rbp,%rdi
  406bbe:	e8 dd b8 ff ff       	callq  4024a0 <__cxa_throw@plt>
  406bc3:	bf 20 00 00 00       	mov    $0x20,%edi
  406bc8:	48 8d 5c 24 10       	lea    0x10(%rsp),%rbx
  406bcd:	e8 2e b8 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  406bd2:	48 8d 54 24 0e       	lea    0xe(%rsp),%rdx
  406bd7:	be 5c cf 40 00       	mov    $0x40cf5c,%esi
  406bdc:	48 89 df             	mov    %rbx,%rdi
  406bdf:	48 89 c5             	mov    %rax,%rbp
  406be2:	e8 39 b7 ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  406be7:	31 d2                	xor    %edx,%edx
  406be9:	48 89 de             	mov    %rbx,%rsi
  406bec:	48 89 ef             	mov    %rbp,%rdi
  406bef:	e8 dc 46 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  406bf4:	eb a8                	jmp    406b9e <_ZN4Poco9EventImpl8waitImplEl+0x12e>
  406bf6:	48 89 c3             	mov    %rax,%rbx
  406bf9:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  406bfe:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  406c03:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  406c07:	e8 c4 b5 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  406c0c:	48 89 ef             	mov    %rbp,%rdi
  406c0f:	e8 0c b8 ff ff       	callq  402420 <__cxa_free_exception@plt>
  406c14:	48 89 df             	mov    %rbx,%rdi
  406c17:	e8 a4 b9 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  406c1c:	48 89 c3             	mov    %rax,%rbx
  406c1f:	eb eb                	jmp    406c0c <_ZN4Poco9EventImpl8waitImplEl+0x19c>
  406c21:	eb d3                	jmp    406bf6 <_ZN4Poco9EventImpl8waitImplEl+0x186>
  406c23:	eb f7                	jmp    406c1c <_ZN4Poco9EventImpl8waitImplEl+0x1ac>
  406c25:	90                   	nop
  406c26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  406c2d:	00 00 00 

0000000000406c30 <_ZN4Poco5EventC1Eb>:
  406c30:	40 0f b6 f6          	movzbl %sil,%esi
  406c34:	e9 97 fb ff ff       	jmpq   4067d0 <_ZN4Poco9EventImplC1Eb>
  406c39:	90                   	nop
  406c3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000406c40 <_ZN4Poco5EventD1Ev>:
  406c40:	53                   	push   %rbx
  406c41:	48 89 fb             	mov    %rdi,%rbx
  406c44:	48 8d 7f 30          	lea    0x30(%rdi),%rdi
  406c48:	e8 03 b5 ff ff       	callq  402150 <pthread_cond_destroy@plt>
  406c4d:	48 8d 7b 08          	lea    0x8(%rbx),%rdi
  406c51:	5b                   	pop    %rbx
  406c52:	e9 49 b9 ff ff       	jmpq   4025a0 <pthread_mutex_destroy@plt>
  406c57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  406c5e:	00 00 

0000000000406c60 <_ZN4Poco12ErrorHandlerD1Ev>:
  406c60:	48 c7 07 50 d0 40 00 	movq   $0x40d050,(%rdi)
  406c67:	c3                   	retq   
  406c68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406c6f:	00 

0000000000406c70 <_ZN4Poco12ErrorHandlerD0Ev>:
  406c70:	48 c7 07 50 d0 40 00 	movq   $0x40d050,(%rdi)
  406c77:	e9 44 b5 ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  406c7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000406c80 <_ZN4Poco12ErrorHandler9exceptionERKNS_9ExceptionE>:
  406c80:	48 83 ec 08          	sub    $0x8,%rsp
  406c84:	48 8b 06             	mov    (%rsi),%rax
  406c87:	48 89 f7             	mov    %rsi,%rdi
  406c8a:	ff 50 10             	callq  *0x10(%rax)
  406c8d:	ba 3c 00 00 00       	mov    $0x3c,%edx
  406c92:	be c8 cf 40 00       	mov    $0x40cfc8,%esi
  406c97:	48 89 c7             	mov    %rax,%rdi
  406c9a:	48 83 c4 08          	add    $0x8,%rsp
  406c9e:	e9 5d f1 ff ff       	jmpq   405e00 <_ZN4Poco8Bugcheck8debuggerEPKcS2_i>
  406ca3:	90                   	nop
  406ca4:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  406cab:	00 00 00 00 00 

0000000000406cb0 <_ZN4Poco12ErrorHandler9exceptionERKSt9exception>:
  406cb0:	48 83 ec 08          	sub    $0x8,%rsp
  406cb4:	48 8b 06             	mov    (%rsi),%rax
  406cb7:	48 89 f7             	mov    %rsi,%rdi
  406cba:	ff 50 10             	callq  *0x10(%rax)
  406cbd:	ba 42 00 00 00       	mov    $0x42,%edx
  406cc2:	be c8 cf 40 00       	mov    $0x40cfc8,%esi
  406cc7:	48 89 c7             	mov    %rax,%rdi
  406cca:	48 83 c4 08          	add    $0x8,%rsp
  406cce:	e9 2d f1 ff ff       	jmpq   405e00 <_ZN4Poco8Bugcheck8debuggerEPKcS2_i>
  406cd3:	90                   	nop
  406cd4:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  406cdb:	00 00 00 00 00 

0000000000406ce0 <_ZN4Poco12ErrorHandler9exceptionEv>:
  406ce0:	ba 48 00 00 00       	mov    $0x48,%edx
  406ce5:	be c8 cf 40 00       	mov    $0x40cfc8,%esi
  406cea:	bf dd cf 40 00       	mov    $0x40cfdd,%edi
  406cef:	e9 0c f1 ff ff       	jmpq   405e00 <_ZN4Poco8Bugcheck8debuggerEPKcS2_i>
  406cf4:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  406cfb:	00 00 00 00 00 

0000000000406d00 <_ZN4Poco12ErrorHandlerC1Ev>:
  406d00:	48 c7 07 50 d0 40 00 	movq   $0x40d050,(%rdi)
  406d07:	c3                   	retq   
  406d08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406d0f:	00 

0000000000406d10 <_ZN4Poco12ErrorHandler3setEPS0_>:
  406d10:	41 54                	push   %r12
  406d12:	55                   	push   %rbp
  406d13:	53                   	push   %rbx
  406d14:	48 89 fb             	mov    %rdi,%rbx
  406d17:	48 83 ec 20          	sub    $0x20,%rsp
  406d1b:	48 85 ff             	test   %rdi,%rdi
  406d1e:	74 40                	je     406d60 <_ZN4Poco12ErrorHandler3setEPS0_+0x50>
  406d20:	bf 20 86 61 00       	mov    $0x618620,%edi
  406d25:	e8 36 b8 ff ff       	callq  402560 <pthread_mutex_lock@plt>
  406d2a:	85 c0                	test   %eax,%eax
  406d2c:	75 48                	jne    406d76 <_ZN4Poco12ErrorHandler3setEPS0_+0x66>
  406d2e:	bf 20 86 61 00       	mov    $0x618620,%edi
  406d33:	48 8b 2d 0e 19 21 00 	mov    0x21190e(%rip),%rbp        # 618648 <_ZN4Poco12ErrorHandler9_pHandlerE>
  406d3a:	48 89 1d 07 19 21 00 	mov    %rbx,0x211907(%rip)        # 618648 <_ZN4Poco12ErrorHandler9_pHandlerE>
  406d41:	e8 ba b8 ff ff       	callq  402600 <pthread_mutex_unlock@plt>
  406d46:	85 c0                	test   %eax,%eax
  406d48:	0f 85 7e 00 00 00    	jne    406dcc <_ZN4Poco12ErrorHandler3setEPS0_+0xbc>
  406d4e:	48 83 c4 20          	add    $0x20,%rsp
  406d52:	48 89 e8             	mov    %rbp,%rax
  406d55:	5b                   	pop    %rbx
  406d56:	5d                   	pop    %rbp
  406d57:	41 5c                	pop    %r12
  406d59:	c3                   	retq   
  406d5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406d60:	ba 75 00 00 00       	mov    $0x75,%edx
  406d65:	be c8 cf 40 00       	mov    $0x40cfc8,%esi
  406d6a:	bf ef cf 40 00       	mov    $0x40cfef,%edi
  406d6f:	e8 6c f6 ff ff       	callq  4063e0 <_ZN4Poco8Bugcheck11nullPointerEPKcS2_i>
  406d74:	eb aa                	jmp    406d20 <_ZN4Poco12ErrorHandler3setEPS0_+0x10>
  406d76:	bf 20 00 00 00       	mov    $0x20,%edi
  406d7b:	48 8d 5c 24 10       	lea    0x10(%rsp),%rbx
  406d80:	e8 7b b6 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  406d85:	48 8d 54 24 0f       	lea    0xf(%rsp),%rdx
  406d8a:	be 60 cc 40 00       	mov    $0x40cc60,%esi
  406d8f:	48 89 df             	mov    %rbx,%rdi
  406d92:	48 89 c5             	mov    %rax,%rbp
  406d95:	e8 86 b5 ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  406d9a:	31 d2                	xor    %edx,%edx
  406d9c:	48 89 de             	mov    %rbx,%rsi
  406d9f:	48 89 ef             	mov    %rbp,%rdi
  406da2:	e8 29 45 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  406da7:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  406dac:	48 8d 74 24 0e       	lea    0xe(%rsp),%rsi
  406db1:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  406db5:	e8 16 b4 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  406dba:	ba 30 82 40 00       	mov    $0x408230,%edx
  406dbf:	be 20 d8 40 00       	mov    $0x40d820,%esi
  406dc4:	48 89 ef             	mov    %rbp,%rdi
  406dc7:	e8 d4 b6 ff ff       	callq  4024a0 <__cxa_throw@plt>
  406dcc:	bf 20 00 00 00       	mov    $0x20,%edi
  406dd1:	48 8d 5c 24 10       	lea    0x10(%rsp),%rbx
  406dd6:	e8 25 b6 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  406ddb:	48 8d 54 24 0f       	lea    0xf(%rsp),%rdx
  406de0:	be 32 cc 40 00       	mov    $0x40cc32,%esi
  406de5:	48 89 df             	mov    %rbx,%rdi
  406de8:	49 89 c4             	mov    %rax,%r12
  406deb:	e8 30 b5 ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  406df0:	31 d2                	xor    %edx,%edx
  406df2:	48 89 de             	mov    %rbx,%rsi
  406df5:	4c 89 e7             	mov    %r12,%rdi
  406df8:	e8 d3 44 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  406dfd:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  406e02:	48 8d 74 24 0e       	lea    0xe(%rsp),%rsi
  406e07:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  406e0b:	e8 c0 b3 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  406e10:	ba 30 82 40 00       	mov    $0x408230,%edx
  406e15:	be 20 d8 40 00       	mov    $0x40d820,%esi
  406e1a:	4c 89 e7             	mov    %r12,%rdi
  406e1d:	e8 7e b6 ff ff       	callq  4024a0 <__cxa_throw@plt>
  406e22:	48 89 c7             	mov    %rax,%rdi
  406e25:	e8 26 b7 ff ff       	callq  402550 <__cxa_begin_catch@plt>
  406e2a:	be 4c 00 00 00       	mov    $0x4c,%esi
  406e2f:	bf 46 cc 40 00       	mov    $0x40cc46,%edi
  406e34:	e8 a7 ef ff ff       	callq  405de0 <_ZN4Poco8Bugcheck10unexpectedEPKci>
  406e39:	e8 a2 b6 ff ff       	callq  4024e0 <__cxa_end_catch@plt>
  406e3e:	e9 0b ff ff ff       	jmpq   406d4e <_ZN4Poco12ErrorHandler3setEPS0_+0x3e>
  406e43:	48 89 c3             	mov    %rax,%rbx
  406e46:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  406e4b:	48 8d 74 24 0e       	lea    0xe(%rsp),%rsi
  406e50:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  406e54:	e8 77 b3 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  406e59:	4c 89 e7             	mov    %r12,%rdi
  406e5c:	e8 bf b5 ff ff       	callq  402420 <__cxa_free_exception@plt>
  406e61:	48 89 d8             	mov    %rbx,%rax
  406e64:	eb bc                	jmp    406e22 <_ZN4Poco12ErrorHandler3setEPS0_+0x112>
  406e66:	48 89 c3             	mov    %rax,%rbx
  406e69:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  406e6e:	48 8d 74 24 0e       	lea    0xe(%rsp),%rsi
  406e73:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  406e77:	e8 54 b3 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  406e7c:	48 89 ef             	mov    %rbp,%rdi
  406e7f:	e8 9c b5 ff ff       	callq  402420 <__cxa_free_exception@plt>
  406e84:	48 89 df             	mov    %rbx,%rdi
  406e87:	e8 34 b7 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  406e8c:	48 89 c3             	mov    %rax,%rbx
  406e8f:	eb eb                	jmp    406e7c <_ZN4Poco12ErrorHandler3setEPS0_+0x16c>
  406e91:	48 89 c3             	mov    %rax,%rbx
  406e94:	eb c3                	jmp    406e59 <_ZN4Poco12ErrorHandler3setEPS0_+0x149>
  406e96:	48 89 c3             	mov    %rax,%rbx
  406e99:	e8 42 b6 ff ff       	callq  4024e0 <__cxa_end_catch@plt>
  406e9e:	48 89 df             	mov    %rbx,%rdi
  406ea1:	e8 1a b7 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  406ea6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  406ead:	00 00 00 

0000000000406eb0 <_ZN4Poco12ErrorHandler6handleERKNS_9ExceptionE>:
  406eb0:	55                   	push   %rbp
  406eb1:	53                   	push   %rbx
  406eb2:	48 89 fb             	mov    %rdi,%rbx
  406eb5:	bf 20 86 61 00       	mov    $0x618620,%edi
  406eba:	48 83 ec 38          	sub    $0x38,%rsp
  406ebe:	48 c7 44 24 10 20 86 	movq   $0x618620,0x10(%rsp)
  406ec5:	61 00 
  406ec7:	e8 94 b6 ff ff       	callq  402560 <pthread_mutex_lock@plt>
  406ecc:	85 c0                	test   %eax,%eax
  406ece:	75 25                	jne    406ef5 <_ZN4Poco12ErrorHandler6handleERKNS_9ExceptionE+0x45>
  406ed0:	48 8b 3d 71 17 21 00 	mov    0x211771(%rip),%rdi        # 618648 <_ZN4Poco12ErrorHandler9_pHandlerE>
  406ed7:	48 89 de             	mov    %rbx,%rsi
  406eda:	48 8b 17             	mov    (%rdi),%rdx
  406edd:	ff 52 10             	callq  *0x10(%rdx)
  406ee0:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  406ee5:	e8 16 b7 ff ff       	callq  402600 <pthread_mutex_unlock@plt>
  406eea:	85 c0                	test   %eax,%eax
  406eec:	75 5d                	jne    406f4b <_ZN4Poco12ErrorHandler6handleERKNS_9ExceptionE+0x9b>
  406eee:	48 83 c4 38          	add    $0x38,%rsp
  406ef2:	5b                   	pop    %rbx
  406ef3:	5d                   	pop    %rbp
  406ef4:	c3                   	retq   
  406ef5:	bf 20 00 00 00       	mov    $0x20,%edi
  406efa:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
  406eff:	e8 fc b4 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  406f04:	48 8d 54 24 0f       	lea    0xf(%rsp),%rdx
  406f09:	be 60 cc 40 00       	mov    $0x40cc60,%esi
  406f0e:	48 89 df             	mov    %rbx,%rdi
  406f11:	48 89 c5             	mov    %rax,%rbp
  406f14:	e8 07 b4 ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  406f19:	31 d2                	xor    %edx,%edx
  406f1b:	48 89 de             	mov    %rbx,%rsi
  406f1e:	48 89 ef             	mov    %rbp,%rdi
  406f21:	e8 aa 43 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  406f26:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  406f2b:	48 8d 74 24 0e       	lea    0xe(%rsp),%rsi
  406f30:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  406f34:	e8 97 b2 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  406f39:	ba 30 82 40 00       	mov    $0x408230,%edx
  406f3e:	be 20 d8 40 00       	mov    $0x40d820,%esi
  406f43:	48 89 ef             	mov    %rbp,%rdi
  406f46:	e8 55 b5 ff ff       	callq  4024a0 <__cxa_throw@plt>
  406f4b:	bf 20 00 00 00       	mov    $0x20,%edi
  406f50:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
  406f55:	e8 a6 b4 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  406f5a:	48 8d 54 24 0f       	lea    0xf(%rsp),%rdx
  406f5f:	be 32 cc 40 00       	mov    $0x40cc32,%esi
  406f64:	48 89 df             	mov    %rbx,%rdi
  406f67:	48 89 c5             	mov    %rax,%rbp
  406f6a:	e8 b1 b3 ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  406f6f:	31 d2                	xor    %edx,%edx
  406f71:	48 89 de             	mov    %rbx,%rsi
  406f74:	48 89 ef             	mov    %rbp,%rdi
  406f77:	e8 54 43 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  406f7c:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  406f81:	48 8d 74 24 0e       	lea    0xe(%rsp),%rsi
  406f86:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  406f8a:	e8 41 b2 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  406f8f:	ba 30 82 40 00       	mov    $0x408230,%edx
  406f94:	be 20 d8 40 00       	mov    $0x40d820,%esi
  406f99:	48 89 ef             	mov    %rbp,%rdi
  406f9c:	e8 ff b4 ff ff       	callq  4024a0 <__cxa_throw@plt>
  406fa1:	48 89 c7             	mov    %rax,%rdi
  406fa4:	e8 a7 b5 ff ff       	callq  402550 <__cxa_begin_catch@plt>
  406fa9:	be 4c 00 00 00       	mov    $0x4c,%esi
  406fae:	bf 46 cc 40 00       	mov    $0x40cc46,%edi
  406fb3:	e8 28 ee ff ff       	callq  405de0 <_ZN4Poco8Bugcheck10unexpectedEPKci>
  406fb8:	e8 23 b5 ff ff       	callq  4024e0 <__cxa_end_catch@plt>
  406fbd:	e9 2c ff ff ff       	jmpq   406eee <_ZN4Poco12ErrorHandler6handleERKNS_9ExceptionE+0x3e>
  406fc2:	48 89 c3             	mov    %rax,%rbx
  406fc5:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  406fca:	48 8d 74 24 0e       	lea    0xe(%rsp),%rsi
  406fcf:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  406fd3:	e8 f8 b1 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  406fd8:	48 89 ef             	mov    %rbp,%rdi
  406fdb:	e8 40 b4 ff ff       	callq  402420 <__cxa_free_exception@plt>
  406fe0:	48 89 d8             	mov    %rbx,%rax
  406fe3:	eb bc                	jmp    406fa1 <_ZN4Poco12ErrorHandler6handleERKNS_9ExceptionE+0xf1>
  406fe5:	48 89 c3             	mov    %rax,%rbx
  406fe8:	e8 f3 b4 ff ff       	callq  4024e0 <__cxa_end_catch@plt>
  406fed:	48 89 df             	mov    %rbx,%rdi
  406ff0:	e8 cb b5 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  406ff5:	48 89 c3             	mov    %rax,%rbx
  406ff8:	eb de                	jmp    406fd8 <_ZN4Poco12ErrorHandler6handleERKNS_9ExceptionE+0x128>
  406ffa:	48 89 c7             	mov    %rax,%rdi
  406ffd:	e8 4e b5 ff ff       	callq  402550 <__cxa_begin_catch@plt>
  407002:	e8 d9 b4 ff ff       	callq  4024e0 <__cxa_end_catch@plt>
  407007:	e9 d4 fe ff ff       	jmpq   406ee0 <_ZN4Poco12ErrorHandler6handleERKNS_9ExceptionE+0x30>
  40700c:	48 89 c3             	mov    %rax,%rbx
  40700f:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  407014:	48 8d 74 24 0e       	lea    0xe(%rsp),%rsi
  407019:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  40701d:	e8 ae b1 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  407022:	48 89 ef             	mov    %rbp,%rdi
  407025:	e8 f6 b3 ff ff       	callq  402420 <__cxa_free_exception@plt>
  40702a:	48 89 df             	mov    %rbx,%rdi
  40702d:	e8 8e b5 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  407032:	48 89 c3             	mov    %rax,%rbx
  407035:	eb eb                	jmp    407022 <_ZN4Poco12ErrorHandler6handleERKNS_9ExceptionE+0x172>
  407037:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  40703c:	48 89 c3             	mov    %rax,%rbx
  40703f:	e8 dc e2 ff ff       	callq  405320 <_ZN4Poco10ScopedLockINS_9FastMutexEED1Ev>
  407044:	48 89 df             	mov    %rbx,%rdi
  407047:	e8 74 b5 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40704c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000407050 <_ZN4Poco12ErrorHandler6handleERKSt9exception>:
  407050:	55                   	push   %rbp
  407051:	53                   	push   %rbx
  407052:	48 89 fb             	mov    %rdi,%rbx
  407055:	bf 20 86 61 00       	mov    $0x618620,%edi
  40705a:	48 83 ec 38          	sub    $0x38,%rsp
  40705e:	48 c7 44 24 10 20 86 	movq   $0x618620,0x10(%rsp)
  407065:	61 00 
  407067:	e8 f4 b4 ff ff       	callq  402560 <pthread_mutex_lock@plt>
  40706c:	85 c0                	test   %eax,%eax
  40706e:	75 25                	jne    407095 <_ZN4Poco12ErrorHandler6handleERKSt9exception+0x45>
  407070:	48 8b 3d d1 15 21 00 	mov    0x2115d1(%rip),%rdi        # 618648 <_ZN4Poco12ErrorHandler9_pHandlerE>
  407077:	48 89 de             	mov    %rbx,%rsi
  40707a:	48 8b 17             	mov    (%rdi),%rdx
  40707d:	ff 52 18             	callq  *0x18(%rdx)
  407080:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  407085:	e8 76 b5 ff ff       	callq  402600 <pthread_mutex_unlock@plt>
  40708a:	85 c0                	test   %eax,%eax
  40708c:	75 5d                	jne    4070eb <_ZN4Poco12ErrorHandler6handleERKSt9exception+0x9b>
  40708e:	48 83 c4 38          	add    $0x38,%rsp
  407092:	5b                   	pop    %rbx
  407093:	5d                   	pop    %rbp
  407094:	c3                   	retq   
  407095:	bf 20 00 00 00       	mov    $0x20,%edi
  40709a:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
  40709f:	e8 5c b3 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  4070a4:	48 8d 54 24 0f       	lea    0xf(%rsp),%rdx
  4070a9:	be 60 cc 40 00       	mov    $0x40cc60,%esi
  4070ae:	48 89 df             	mov    %rbx,%rdi
  4070b1:	48 89 c5             	mov    %rax,%rbp
  4070b4:	e8 67 b2 ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  4070b9:	31 d2                	xor    %edx,%edx
  4070bb:	48 89 de             	mov    %rbx,%rsi
  4070be:	48 89 ef             	mov    %rbp,%rdi
  4070c1:	e8 0a 42 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  4070c6:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  4070cb:	48 8d 74 24 0e       	lea    0xe(%rsp),%rsi
  4070d0:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4070d4:	e8 f7 b0 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  4070d9:	ba 30 82 40 00       	mov    $0x408230,%edx
  4070de:	be 20 d8 40 00       	mov    $0x40d820,%esi
  4070e3:	48 89 ef             	mov    %rbp,%rdi
  4070e6:	e8 b5 b3 ff ff       	callq  4024a0 <__cxa_throw@plt>
  4070eb:	bf 20 00 00 00       	mov    $0x20,%edi
  4070f0:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
  4070f5:	e8 06 b3 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  4070fa:	48 8d 54 24 0f       	lea    0xf(%rsp),%rdx
  4070ff:	be 32 cc 40 00       	mov    $0x40cc32,%esi
  407104:	48 89 df             	mov    %rbx,%rdi
  407107:	48 89 c5             	mov    %rax,%rbp
  40710a:	e8 11 b2 ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  40710f:	31 d2                	xor    %edx,%edx
  407111:	48 89 de             	mov    %rbx,%rsi
  407114:	48 89 ef             	mov    %rbp,%rdi
  407117:	e8 b4 41 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  40711c:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  407121:	48 8d 74 24 0e       	lea    0xe(%rsp),%rsi
  407126:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  40712a:	e8 a1 b0 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  40712f:	ba 30 82 40 00       	mov    $0x408230,%edx
  407134:	be 20 d8 40 00       	mov    $0x40d820,%esi
  407139:	48 89 ef             	mov    %rbp,%rdi
  40713c:	e8 5f b3 ff ff       	callq  4024a0 <__cxa_throw@plt>
  407141:	48 89 c7             	mov    %rax,%rdi
  407144:	e8 07 b4 ff ff       	callq  402550 <__cxa_begin_catch@plt>
  407149:	be 4c 00 00 00       	mov    $0x4c,%esi
  40714e:	bf 46 cc 40 00       	mov    $0x40cc46,%edi
  407153:	e8 88 ec ff ff       	callq  405de0 <_ZN4Poco8Bugcheck10unexpectedEPKci>
  407158:	e8 83 b3 ff ff       	callq  4024e0 <__cxa_end_catch@plt>
  40715d:	e9 2c ff ff ff       	jmpq   40708e <_ZN4Poco12ErrorHandler6handleERKSt9exception+0x3e>
  407162:	48 89 c3             	mov    %rax,%rbx
  407165:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40716a:	48 8d 74 24 0e       	lea    0xe(%rsp),%rsi
  40716f:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  407173:	e8 58 b0 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  407178:	48 89 ef             	mov    %rbp,%rdi
  40717b:	e8 a0 b2 ff ff       	callq  402420 <__cxa_free_exception@plt>
  407180:	48 89 d8             	mov    %rbx,%rax
  407183:	eb bc                	jmp    407141 <_ZN4Poco12ErrorHandler6handleERKSt9exception+0xf1>
  407185:	48 89 c3             	mov    %rax,%rbx
  407188:	e8 53 b3 ff ff       	callq  4024e0 <__cxa_end_catch@plt>
  40718d:	48 89 df             	mov    %rbx,%rdi
  407190:	e8 2b b4 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  407195:	48 89 c3             	mov    %rax,%rbx
  407198:	eb de                	jmp    407178 <_ZN4Poco12ErrorHandler6handleERKSt9exception+0x128>
  40719a:	48 89 c7             	mov    %rax,%rdi
  40719d:	e8 ae b3 ff ff       	callq  402550 <__cxa_begin_catch@plt>
  4071a2:	e8 39 b3 ff ff       	callq  4024e0 <__cxa_end_catch@plt>
  4071a7:	e9 d4 fe ff ff       	jmpq   407080 <_ZN4Poco12ErrorHandler6handleERKSt9exception+0x30>
  4071ac:	48 89 c3             	mov    %rax,%rbx
  4071af:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  4071b4:	48 8d 74 24 0e       	lea    0xe(%rsp),%rsi
  4071b9:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4071bd:	e8 0e b0 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  4071c2:	48 89 ef             	mov    %rbp,%rdi
  4071c5:	e8 56 b2 ff ff       	callq  402420 <__cxa_free_exception@plt>
  4071ca:	48 89 df             	mov    %rbx,%rdi
  4071cd:	e8 ee b3 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4071d2:	48 89 c3             	mov    %rax,%rbx
  4071d5:	eb eb                	jmp    4071c2 <_ZN4Poco12ErrorHandler6handleERKSt9exception+0x172>
  4071d7:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  4071dc:	48 89 c3             	mov    %rax,%rbx
  4071df:	e8 3c e1 ff ff       	callq  405320 <_ZN4Poco10ScopedLockINS_9FastMutexEED1Ev>
  4071e4:	48 89 df             	mov    %rbx,%rdi
  4071e7:	e8 d4 b3 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4071ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004071f0 <_ZN4Poco12ErrorHandler6handleEv>:
  4071f0:	55                   	push   %rbp
  4071f1:	bf 20 86 61 00       	mov    $0x618620,%edi
  4071f6:	53                   	push   %rbx
  4071f7:	48 83 ec 38          	sub    $0x38,%rsp
  4071fb:	48 c7 44 24 10 20 86 	movq   $0x618620,0x10(%rsp)
  407202:	61 00 
  407204:	e8 57 b3 ff ff       	callq  402560 <pthread_mutex_lock@plt>
  407209:	85 c0                	test   %eax,%eax
  40720b:	75 22                	jne    40722f <_ZN4Poco12ErrorHandler6handleEv+0x3f>
  40720d:	48 8b 3d 34 14 21 00 	mov    0x211434(%rip),%rdi        # 618648 <_ZN4Poco12ErrorHandler9_pHandlerE>
  407214:	48 8b 07             	mov    (%rdi),%rax
  407217:	ff 50 20             	callq  *0x20(%rax)
  40721a:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  40721f:	e8 dc b3 ff ff       	callq  402600 <pthread_mutex_unlock@plt>
  407224:	85 c0                	test   %eax,%eax
  407226:	75 5d                	jne    407285 <_ZN4Poco12ErrorHandler6handleEv+0x95>
  407228:	48 83 c4 38          	add    $0x38,%rsp
  40722c:	5b                   	pop    %rbx
  40722d:	5d                   	pop    %rbp
  40722e:	c3                   	retq   
  40722f:	bf 20 00 00 00       	mov    $0x20,%edi
  407234:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
  407239:	e8 c2 b1 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  40723e:	48 8d 54 24 0f       	lea    0xf(%rsp),%rdx
  407243:	be 60 cc 40 00       	mov    $0x40cc60,%esi
  407248:	48 89 df             	mov    %rbx,%rdi
  40724b:	48 89 c5             	mov    %rax,%rbp
  40724e:	e8 cd b0 ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  407253:	31 d2                	xor    %edx,%edx
  407255:	48 89 de             	mov    %rbx,%rsi
  407258:	48 89 ef             	mov    %rbp,%rdi
  40725b:	e8 70 40 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  407260:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  407265:	48 8d 74 24 0e       	lea    0xe(%rsp),%rsi
  40726a:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  40726e:	e8 5d af ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  407273:	ba 30 82 40 00       	mov    $0x408230,%edx
  407278:	be 20 d8 40 00       	mov    $0x40d820,%esi
  40727d:	48 89 ef             	mov    %rbp,%rdi
  407280:	e8 1b b2 ff ff       	callq  4024a0 <__cxa_throw@plt>
  407285:	bf 20 00 00 00       	mov    $0x20,%edi
  40728a:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
  40728f:	e8 6c b1 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  407294:	48 8d 54 24 0f       	lea    0xf(%rsp),%rdx
  407299:	be 32 cc 40 00       	mov    $0x40cc32,%esi
  40729e:	48 89 df             	mov    %rbx,%rdi
  4072a1:	48 89 c5             	mov    %rax,%rbp
  4072a4:	e8 77 b0 ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  4072a9:	31 d2                	xor    %edx,%edx
  4072ab:	48 89 de             	mov    %rbx,%rsi
  4072ae:	48 89 ef             	mov    %rbp,%rdi
  4072b1:	e8 1a 40 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  4072b6:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  4072bb:	48 8d 74 24 0e       	lea    0xe(%rsp),%rsi
  4072c0:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4072c4:	e8 07 af ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  4072c9:	ba 30 82 40 00       	mov    $0x408230,%edx
  4072ce:	be 20 d8 40 00       	mov    $0x40d820,%esi
  4072d3:	48 89 ef             	mov    %rbp,%rdi
  4072d6:	e8 c5 b1 ff ff       	callq  4024a0 <__cxa_throw@plt>
  4072db:	48 89 c7             	mov    %rax,%rdi
  4072de:	e8 6d b2 ff ff       	callq  402550 <__cxa_begin_catch@plt>
  4072e3:	be 4c 00 00 00       	mov    $0x4c,%esi
  4072e8:	bf 46 cc 40 00       	mov    $0x40cc46,%edi
  4072ed:	e8 ee ea ff ff       	callq  405de0 <_ZN4Poco8Bugcheck10unexpectedEPKci>
  4072f2:	e8 e9 b1 ff ff       	callq  4024e0 <__cxa_end_catch@plt>
  4072f7:	e9 2c ff ff ff       	jmpq   407228 <_ZN4Poco12ErrorHandler6handleEv+0x38>
  4072fc:	48 89 c3             	mov    %rax,%rbx
  4072ff:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  407304:	48 8d 74 24 0e       	lea    0xe(%rsp),%rsi
  407309:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  40730d:	e8 be ae ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  407312:	48 89 ef             	mov    %rbp,%rdi
  407315:	e8 06 b1 ff ff       	callq  402420 <__cxa_free_exception@plt>
  40731a:	48 89 d8             	mov    %rbx,%rax
  40731d:	eb bc                	jmp    4072db <_ZN4Poco12ErrorHandler6handleEv+0xeb>
  40731f:	48 89 c3             	mov    %rax,%rbx
  407322:	e8 b9 b1 ff ff       	callq  4024e0 <__cxa_end_catch@plt>
  407327:	48 89 df             	mov    %rbx,%rdi
  40732a:	e8 91 b2 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40732f:	48 89 c3             	mov    %rax,%rbx
  407332:	eb de                	jmp    407312 <_ZN4Poco12ErrorHandler6handleEv+0x122>
  407334:	48 89 c7             	mov    %rax,%rdi
  407337:	e8 14 b2 ff ff       	callq  402550 <__cxa_begin_catch@plt>
  40733c:	e8 9f b1 ff ff       	callq  4024e0 <__cxa_end_catch@plt>
  407341:	e9 d4 fe ff ff       	jmpq   40721a <_ZN4Poco12ErrorHandler6handleEv+0x2a>
  407346:	48 89 c3             	mov    %rax,%rbx
  407349:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40734e:	48 8d 74 24 0e       	lea    0xe(%rsp),%rsi
  407353:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  407357:	e8 74 ae ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  40735c:	48 89 ef             	mov    %rbp,%rdi
  40735f:	e8 bc b0 ff ff       	callq  402420 <__cxa_free_exception@plt>
  407364:	48 89 df             	mov    %rbx,%rdi
  407367:	e8 54 b2 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40736c:	48 89 c3             	mov    %rax,%rbx
  40736f:	eb eb                	jmp    40735c <_ZN4Poco12ErrorHandler6handleEv+0x16c>
  407371:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  407376:	48 89 c3             	mov    %rax,%rbx
  407379:	e8 a2 df ff ff       	callq  405320 <_ZN4Poco10ScopedLockINS_9FastMutexEED1Ev>
  40737e:	48 89 df             	mov    %rbx,%rdi
  407381:	e8 3a b2 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  407386:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40738d:	00 00 00 

0000000000407390 <_ZN4Poco12ErrorHandler14defaultHandlerEv>:
  407390:	41 54                	push   %r12
  407392:	55                   	push   %rbp
  407393:	53                   	push   %rbx
  407394:	48 83 ec 30          	sub    $0x30,%rsp
  407398:	80 3d f1 12 21 00 00 	cmpb   $0x0,0x2112f1(%rip)        # 618690 <_ZGVZN4Poco12ErrorHandler14defaultHandlerEvE2sh>
  40739f:	75 0e                	jne    4073af <_ZN4Poco12ErrorHandler14defaultHandlerEv+0x1f>
  4073a1:	bf 90 86 61 00       	mov    $0x618690,%edi
  4073a6:	e8 f5 ad ff ff       	callq  4021a0 <__cxa_guard_acquire@plt>
  4073ab:	85 c0                	test   %eax,%eax
  4073ad:	75 41                	jne    4073f0 <_ZN4Poco12ErrorHandler14defaultHandlerEv+0x60>
  4073af:	bf 68 86 61 00       	mov    $0x618668,%edi
  4073b4:	48 c7 44 24 10 68 86 	movq   $0x618668,0x10(%rsp)
  4073bb:	61 00 
  4073bd:	e8 9e b1 ff ff       	callq  402560 <pthread_mutex_lock@plt>
  4073c2:	85 c0                	test   %eax,%eax
  4073c4:	0f 85 f2 00 00 00    	jne    4074bc <_ZN4Poco12ErrorHandler14defaultHandlerEv+0x12c>
  4073ca:	48 8b 1d 8f 12 21 00 	mov    0x21128f(%rip),%rbx        # 618660 <_ZZN4Poco12ErrorHandler14defaultHandlerEvE2sh>
  4073d1:	48 85 db             	test   %rbx,%rbx
  4073d4:	74 52                	je     407428 <_ZN4Poco12ErrorHandler14defaultHandlerEv+0x98>
  4073d6:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  4073db:	e8 20 b2 ff ff       	callq  402600 <pthread_mutex_unlock@plt>
  4073e0:	85 c0                	test   %eax,%eax
  4073e2:	75 61                	jne    407445 <_ZN4Poco12ErrorHandler14defaultHandlerEv+0xb5>
  4073e4:	48 83 c4 30          	add    $0x30,%rsp
  4073e8:	48 89 d8             	mov    %rbx,%rax
  4073eb:	5b                   	pop    %rbx
  4073ec:	5d                   	pop    %rbp
  4073ed:	41 5c                	pop    %r12
  4073ef:	c3                   	retq   
  4073f0:	bf 68 86 61 00       	mov    $0x618668,%edi
  4073f5:	48 c7 05 60 12 21 00 	movq   $0x0,0x211260(%rip)        # 618660 <_ZZN4Poco12ErrorHandler14defaultHandlerEvE2sh>
  4073fc:	00 00 00 00 
  407400:	e8 1b 56 00 00       	callq  40ca20 <_ZN4Poco9FastMutexC1Ev>
  407405:	bf 90 86 61 00       	mov    $0x618690,%edi
  40740a:	e8 e1 ae ff ff       	callq  4022f0 <__cxa_guard_release@plt>
  40740f:	ba a0 82 61 00       	mov    $0x6182a0,%edx
  407414:	be 60 86 61 00       	mov    $0x618660,%esi
  407419:	bf b0 75 40 00       	mov    $0x4075b0,%edi
  40741e:	e8 3d ae ff ff       	callq  402260 <__cxa_atexit@plt>
  407423:	eb 8a                	jmp    4073af <_ZN4Poco12ErrorHandler14defaultHandlerEv+0x1f>
  407425:	0f 1f 00             	nopl   (%rax)
  407428:	bf 08 00 00 00       	mov    $0x8,%edi
  40742d:	e8 7e b1 ff ff       	callq  4025b0 <_Znwm@plt>
  407432:	48 c7 00 50 d0 40 00 	movq   $0x40d050,(%rax)
  407439:	48 89 c3             	mov    %rax,%rbx
  40743c:	48 89 05 1d 12 21 00 	mov    %rax,0x21121d(%rip)        # 618660 <_ZZN4Poco12ErrorHandler14defaultHandlerEvE2sh>
  407443:	eb 91                	jmp    4073d6 <_ZN4Poco12ErrorHandler14defaultHandlerEv+0x46>
  407445:	bf 20 00 00 00       	mov    $0x20,%edi
  40744a:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
  40744f:	e8 ac af ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  407454:	48 8d 54 24 0f       	lea    0xf(%rsp),%rdx
  407459:	be 32 cc 40 00       	mov    $0x40cc32,%esi
  40745e:	48 89 ef             	mov    %rbp,%rdi
  407461:	49 89 c4             	mov    %rax,%r12
  407464:	e8 b7 ae ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  407469:	31 d2                	xor    %edx,%edx
  40746b:	48 89 ee             	mov    %rbp,%rsi
  40746e:	4c 89 e7             	mov    %r12,%rdi
  407471:	e8 5a 3e 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  407476:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40747b:	48 8d 74 24 0e       	lea    0xe(%rsp),%rsi
  407480:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  407484:	e8 47 ad ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  407489:	ba 30 82 40 00       	mov    $0x408230,%edx
  40748e:	be 20 d8 40 00       	mov    $0x40d820,%esi
  407493:	4c 89 e7             	mov    %r12,%rdi
  407496:	e8 05 b0 ff ff       	callq  4024a0 <__cxa_throw@plt>
  40749b:	48 89 c7             	mov    %rax,%rdi
  40749e:	e8 ad b0 ff ff       	callq  402550 <__cxa_begin_catch@plt>
  4074a3:	be 4c 00 00 00       	mov    $0x4c,%esi
  4074a8:	bf 46 cc 40 00       	mov    $0x40cc46,%edi
  4074ad:	e8 2e e9 ff ff       	callq  405de0 <_ZN4Poco8Bugcheck10unexpectedEPKci>
  4074b2:	e8 29 b0 ff ff       	callq  4024e0 <__cxa_end_catch@plt>
  4074b7:	e9 28 ff ff ff       	jmpq   4073e4 <_ZN4Poco12ErrorHandler14defaultHandlerEv+0x54>
  4074bc:	bf 20 00 00 00       	mov    $0x20,%edi
  4074c1:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
  4074c6:	e8 35 af ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  4074cb:	48 8d 54 24 0f       	lea    0xf(%rsp),%rdx
  4074d0:	be 60 cc 40 00       	mov    $0x40cc60,%esi
  4074d5:	48 89 ef             	mov    %rbp,%rdi
  4074d8:	48 89 c3             	mov    %rax,%rbx
  4074db:	e8 40 ae ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  4074e0:	31 d2                	xor    %edx,%edx
  4074e2:	48 89 ee             	mov    %rbp,%rsi
  4074e5:	48 89 df             	mov    %rbx,%rdi
  4074e8:	e8 e3 3d 00 00       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  4074ed:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  4074f2:	48 8d 74 24 0e       	lea    0xe(%rsp),%rsi
  4074f7:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4074fb:	e8 d0 ac ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  407500:	ba 30 82 40 00       	mov    $0x408230,%edx
  407505:	be 20 d8 40 00       	mov    $0x40d820,%esi
  40750a:	48 89 df             	mov    %rbx,%rdi
  40750d:	e8 8e af ff ff       	callq  4024a0 <__cxa_throw@plt>
  407512:	48 89 c5             	mov    %rax,%rbp
  407515:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40751a:	48 8d 74 24 0e       	lea    0xe(%rsp),%rsi
  40751f:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  407523:	e8 a8 ac ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  407528:	4c 89 e7             	mov    %r12,%rdi
  40752b:	e8 f0 ae ff ff       	callq  402420 <__cxa_free_exception@plt>
  407530:	48 89 e8             	mov    %rbp,%rax
  407533:	e9 63 ff ff ff       	jmpq   40749b <_ZN4Poco12ErrorHandler14defaultHandlerEv+0x10b>
  407538:	48 89 c5             	mov    %rax,%rbp
  40753b:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  407540:	48 8d 74 24 0e       	lea    0xe(%rsp),%rsi
  407545:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  407549:	e8 82 ac ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  40754e:	48 89 df             	mov    %rbx,%rdi
  407551:	e8 ca ae ff ff       	callq  402420 <__cxa_free_exception@plt>
  407556:	48 89 ef             	mov    %rbp,%rdi
  407559:	e8 62 b0 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40755e:	48 89 c5             	mov    %rax,%rbp
  407561:	eb eb                	jmp    40754e <_ZN4Poco12ErrorHandler14defaultHandlerEv+0x1be>
  407563:	48 89 c5             	mov    %rax,%rbp
  407566:	eb c0                	jmp    407528 <_ZN4Poco12ErrorHandler14defaultHandlerEv+0x198>
  407568:	48 89 c3             	mov    %rax,%rbx
  40756b:	bf 90 86 61 00       	mov    $0x618690,%edi
  407570:	e8 9b af ff ff       	callq  402510 <__cxa_guard_abort@plt>
  407575:	48 89 df             	mov    %rbx,%rdi
  407578:	e8 43 b0 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40757d:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  407582:	48 89 c3             	mov    %rax,%rbx
  407585:	e8 96 dd ff ff       	callq  405320 <_ZN4Poco10ScopedLockINS_9FastMutexEED1Ev>
  40758a:	48 89 df             	mov    %rbx,%rdi
  40758d:	e8 2e b0 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  407592:	48 89 c3             	mov    %rax,%rbx
  407595:	e8 46 af ff ff       	callq  4024e0 <__cxa_end_catch@plt>
  40759a:	48 89 df             	mov    %rbx,%rdi
  40759d:	e8 1e b0 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4075a2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4075a9:	00 00 00 
  4075ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004075b0 <_ZN4Poco15SingletonHolderINS_12ErrorHandlerEED1Ev>:
  4075b0:	55                   	push   %rbp
  4075b1:	53                   	push   %rbx
  4075b2:	48 89 fb             	mov    %rdi,%rbx
  4075b5:	48 83 ec 08          	sub    $0x8,%rsp
  4075b9:	48 8b 3f             	mov    (%rdi),%rdi
  4075bc:	48 85 ff             	test   %rdi,%rdi
  4075bf:	74 06                	je     4075c7 <_ZN4Poco15SingletonHolderINS_12ErrorHandlerEED1Ev+0x17>
  4075c1:	48 8b 07             	mov    (%rdi),%rax
  4075c4:	ff 50 08             	callq  *0x8(%rax)
  4075c7:	48 83 c4 08          	add    $0x8,%rsp
  4075cb:	48 8d 7b 08          	lea    0x8(%rbx),%rdi
  4075cf:	5b                   	pop    %rbx
  4075d0:	5d                   	pop    %rbp
  4075d1:	e9 5a 54 00 00       	jmpq   40ca30 <_ZN4Poco9FastMutexD1Ev>
  4075d6:	48 8d 7b 08          	lea    0x8(%rbx),%rdi
  4075da:	48 89 c5             	mov    %rax,%rbp
  4075dd:	e8 4e 54 00 00       	callq  40ca30 <_ZN4Poco9FastMutexD1Ev>
  4075e2:	48 89 ef             	mov    %rbp,%rdi
  4075e5:	e8 d6 af ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4075ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004075f0 <_ZNK4Poco9Exception4nameEv>:
  4075f0:	b8 78 d0 40 00       	mov    $0x40d078,%eax
  4075f5:	c3                   	retq   
  4075f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4075fd:	00 00 00 

0000000000407600 <_ZNK4Poco9Exception9classNameEv>:
  407600:	48 8b 07             	mov    (%rdi),%rax
  407603:	31 d2                	xor    %edx,%edx
  407605:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407609:	48 8b 40 08          	mov    0x8(%rax),%rax
  40760d:	80 38 2a             	cmpb   $0x2a,(%rax)
  407610:	0f 94 c2             	sete   %dl
  407613:	48 01 d0             	add    %rdx,%rax
  407616:	c3                   	retq   
  407617:	90                   	nop
  407618:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40761f:	00 

0000000000407620 <_ZNK4Poco9Exception4whatEv>:
  407620:	48 8b 07             	mov    (%rdi),%rax
  407623:	48 8b 40 18          	mov    0x18(%rax),%rax
  407627:	ff e0                	jmpq   *%rax
  407629:	90                   	nop
  40762a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000407630 <_ZNK4Poco14LogicException4nameEv>:
  407630:	b8 82 d0 40 00       	mov    $0x40d082,%eax
  407635:	c3                   	retq   
  407636:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40763d:	00 00 00 

0000000000407640 <_ZNK4Poco14LogicException9classNameEv>:
  407640:	48 8b 07             	mov    (%rdi),%rax
  407643:	31 d2                	xor    %edx,%edx
  407645:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407649:	48 8b 40 08          	mov    0x8(%rax),%rax
  40764d:	80 38 2a             	cmpb   $0x2a,(%rax)
  407650:	0f 94 c2             	sete   %dl
  407653:	48 01 d0             	add    %rdx,%rax
  407656:	c3                   	retq   
  407657:	90                   	nop
  407658:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40765f:	00 

0000000000407660 <_ZNK4Poco27AssertionViolationException4nameEv>:
  407660:	b8 92 d0 40 00       	mov    $0x40d092,%eax
  407665:	c3                   	retq   
  407666:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40766d:	00 00 00 

0000000000407670 <_ZNK4Poco27AssertionViolationException9classNameEv>:
  407670:	48 8b 07             	mov    (%rdi),%rax
  407673:	31 d2                	xor    %edx,%edx
  407675:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407679:	48 8b 40 08          	mov    0x8(%rax),%rax
  40767d:	80 38 2a             	cmpb   $0x2a,(%rax)
  407680:	0f 94 c2             	sete   %dl
  407683:	48 01 d0             	add    %rdx,%rax
  407686:	c3                   	retq   
  407687:	90                   	nop
  407688:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40768f:	00 

0000000000407690 <_ZNK4Poco20NullPointerException4nameEv>:
  407690:	b8 a6 d0 40 00       	mov    $0x40d0a6,%eax
  407695:	c3                   	retq   
  407696:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40769d:	00 00 00 

00000000004076a0 <_ZNK4Poco20NullPointerException9classNameEv>:
  4076a0:	48 8b 07             	mov    (%rdi),%rax
  4076a3:	31 d2                	xor    %edx,%edx
  4076a5:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  4076a9:	48 8b 40 08          	mov    0x8(%rax),%rax
  4076ad:	80 38 2a             	cmpb   $0x2a,(%rax)
  4076b0:	0f 94 c2             	sete   %dl
  4076b3:	48 01 d0             	add    %rdx,%rax
  4076b6:	c3                   	retq   
  4076b7:	90                   	nop
  4076b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4076bf:	00 

00000000004076c0 <_ZNK4Poco18NullValueException4nameEv>:
  4076c0:	b8 b3 d0 40 00       	mov    $0x40d0b3,%eax
  4076c5:	c3                   	retq   
  4076c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4076cd:	00 00 00 

00000000004076d0 <_ZNK4Poco18NullValueException9classNameEv>:
  4076d0:	48 8b 07             	mov    (%rdi),%rax
  4076d3:	31 d2                	xor    %edx,%edx
  4076d5:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  4076d9:	48 8b 40 08          	mov    0x8(%rax),%rax
  4076dd:	80 38 2a             	cmpb   $0x2a,(%rax)
  4076e0:	0f 94 c2             	sete   %dl
  4076e3:	48 01 d0             	add    %rdx,%rax
  4076e6:	c3                   	retq   
  4076e7:	90                   	nop
  4076e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4076ef:	00 

00000000004076f0 <_ZNK4Poco17BugcheckException4nameEv>:
  4076f0:	b8 37 cf 40 00       	mov    $0x40cf37,%eax
  4076f5:	c3                   	retq   
  4076f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4076fd:	00 00 00 

0000000000407700 <_ZNK4Poco17BugcheckException9classNameEv>:
  407700:	48 8b 07             	mov    (%rdi),%rax
  407703:	31 d2                	xor    %edx,%edx
  407705:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407709:	48 8b 40 08          	mov    0x8(%rax),%rax
  40770d:	80 38 2a             	cmpb   $0x2a,(%rax)
  407710:	0f 94 c2             	sete   %dl
  407713:	48 01 d0             	add    %rdx,%rax
  407716:	c3                   	retq   
  407717:	90                   	nop
  407718:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40771f:	00 

0000000000407720 <_ZNK4Poco24InvalidArgumentException4nameEv>:
  407720:	b8 be d0 40 00       	mov    $0x40d0be,%eax
  407725:	c3                   	retq   
  407726:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40772d:	00 00 00 

0000000000407730 <_ZNK4Poco24InvalidArgumentException9classNameEv>:
  407730:	48 8b 07             	mov    (%rdi),%rax
  407733:	31 d2                	xor    %edx,%edx
  407735:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407739:	48 8b 40 08          	mov    0x8(%rax),%rax
  40773d:	80 38 2a             	cmpb   $0x2a,(%rax)
  407740:	0f 94 c2             	sete   %dl
  407743:	48 01 d0             	add    %rdx,%rax
  407746:	c3                   	retq   
  407747:	90                   	nop
  407748:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40774f:	00 

0000000000407750 <_ZNK4Poco23NotImplementedException4nameEv>:
  407750:	b8 cf d0 40 00       	mov    $0x40d0cf,%eax
  407755:	c3                   	retq   
  407756:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40775d:	00 00 00 

0000000000407760 <_ZNK4Poco23NotImplementedException9classNameEv>:
  407760:	48 8b 07             	mov    (%rdi),%rax
  407763:	31 d2                	xor    %edx,%edx
  407765:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407769:	48 8b 40 08          	mov    0x8(%rax),%rax
  40776d:	80 38 2a             	cmpb   $0x2a,(%rax)
  407770:	0f 94 c2             	sete   %dl
  407773:	48 01 d0             	add    %rdx,%rax
  407776:	c3                   	retq   
  407777:	90                   	nop
  407778:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40777f:	00 

0000000000407780 <_ZNK4Poco14RangeException4nameEv>:
  407780:	b8 df d0 40 00       	mov    $0x40d0df,%eax
  407785:	c3                   	retq   
  407786:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40778d:	00 00 00 

0000000000407790 <_ZNK4Poco14RangeException9classNameEv>:
  407790:	48 8b 07             	mov    (%rdi),%rax
  407793:	31 d2                	xor    %edx,%edx
  407795:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407799:	48 8b 40 08          	mov    0x8(%rax),%rax
  40779d:	80 38 2a             	cmpb   $0x2a,(%rax)
  4077a0:	0f 94 c2             	sete   %dl
  4077a3:	48 01 d0             	add    %rdx,%rax
  4077a6:	c3                   	retq   
  4077a7:	90                   	nop
  4077a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4077af:	00 

00000000004077b0 <_ZNK4Poco21IllegalStateException4nameEv>:
  4077b0:	b8 ec d0 40 00       	mov    $0x40d0ec,%eax
  4077b5:	c3                   	retq   
  4077b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4077bd:	00 00 00 

00000000004077c0 <_ZNK4Poco21IllegalStateException9classNameEv>:
  4077c0:	48 8b 07             	mov    (%rdi),%rax
  4077c3:	31 d2                	xor    %edx,%edx
  4077c5:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  4077c9:	48 8b 40 08          	mov    0x8(%rax),%rax
  4077cd:	80 38 2a             	cmpb   $0x2a,(%rax)
  4077d0:	0f 94 c2             	sete   %dl
  4077d3:	48 01 d0             	add    %rdx,%rax
  4077d6:	c3                   	retq   
  4077d7:	90                   	nop
  4077d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4077df:	00 

00000000004077e0 <_ZNK4Poco22InvalidAccessException4nameEv>:
  4077e0:	b8 fa d0 40 00       	mov    $0x40d0fa,%eax
  4077e5:	c3                   	retq   
  4077e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4077ed:	00 00 00 

00000000004077f0 <_ZNK4Poco22InvalidAccessException9classNameEv>:
  4077f0:	48 8b 07             	mov    (%rdi),%rax
  4077f3:	31 d2                	xor    %edx,%edx
  4077f5:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  4077f9:	48 8b 40 08          	mov    0x8(%rax),%rax
  4077fd:	80 38 2a             	cmpb   $0x2a,(%rax)
  407800:	0f 94 c2             	sete   %dl
  407803:	48 01 d0             	add    %rdx,%rax
  407806:	c3                   	retq   
  407807:	90                   	nop
  407808:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40780f:	00 

0000000000407810 <_ZNK4Poco15SignalException4nameEv>:
  407810:	b8 09 d1 40 00       	mov    $0x40d109,%eax
  407815:	c3                   	retq   
  407816:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40781d:	00 00 00 

0000000000407820 <_ZNK4Poco15SignalException9classNameEv>:
  407820:	48 8b 07             	mov    (%rdi),%rax
  407823:	31 d2                	xor    %edx,%edx
  407825:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407829:	48 8b 40 08          	mov    0x8(%rax),%rax
  40782d:	80 38 2a             	cmpb   $0x2a,(%rax)
  407830:	0f 94 c2             	sete   %dl
  407833:	48 01 d0             	add    %rdx,%rax
  407836:	c3                   	retq   
  407837:	90                   	nop
  407838:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40783f:	00 

0000000000407840 <_ZNK4Poco18UnhandledException4nameEv>:
  407840:	b8 19 d1 40 00       	mov    $0x40d119,%eax
  407845:	c3                   	retq   
  407846:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40784d:	00 00 00 

0000000000407850 <_ZNK4Poco18UnhandledException9classNameEv>:
  407850:	48 8b 07             	mov    (%rdi),%rax
  407853:	31 d2                	xor    %edx,%edx
  407855:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407859:	48 8b 40 08          	mov    0x8(%rax),%rax
  40785d:	80 38 2a             	cmpb   $0x2a,(%rax)
  407860:	0f 94 c2             	sete   %dl
  407863:	48 01 d0             	add    %rdx,%rax
  407866:	c3                   	retq   
  407867:	90                   	nop
  407868:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40786f:	00 

0000000000407870 <_ZNK4Poco16RuntimeException4nameEv>:
  407870:	b8 2d d1 40 00       	mov    $0x40d12d,%eax
  407875:	c3                   	retq   
  407876:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40787d:	00 00 00 

0000000000407880 <_ZNK4Poco16RuntimeException9classNameEv>:
  407880:	48 8b 07             	mov    (%rdi),%rax
  407883:	31 d2                	xor    %edx,%edx
  407885:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407889:	48 8b 40 08          	mov    0x8(%rax),%rax
  40788d:	80 38 2a             	cmpb   $0x2a,(%rax)
  407890:	0f 94 c2             	sete   %dl
  407893:	48 01 d0             	add    %rdx,%rax
  407896:	c3                   	retq   
  407897:	90                   	nop
  407898:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40789f:	00 

00000000004078a0 <_ZNK4Poco17NotFoundException4nameEv>:
  4078a0:	b8 3f d1 40 00       	mov    $0x40d13f,%eax
  4078a5:	c3                   	retq   
  4078a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4078ad:	00 00 00 

00000000004078b0 <_ZNK4Poco17NotFoundException9classNameEv>:
  4078b0:	48 8b 07             	mov    (%rdi),%rax
  4078b3:	31 d2                	xor    %edx,%edx
  4078b5:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  4078b9:	48 8b 40 08          	mov    0x8(%rax),%rax
  4078bd:	80 38 2a             	cmpb   $0x2a,(%rax)
  4078c0:	0f 94 c2             	sete   %dl
  4078c3:	48 01 d0             	add    %rdx,%rax
  4078c6:	c3                   	retq   
  4078c7:	90                   	nop
  4078c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4078cf:	00 

00000000004078d0 <_ZNK4Poco15ExistsException4nameEv>:
  4078d0:	b8 49 d1 40 00       	mov    $0x40d149,%eax
  4078d5:	c3                   	retq   
  4078d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4078dd:	00 00 00 

00000000004078e0 <_ZNK4Poco15ExistsException9classNameEv>:
  4078e0:	48 8b 07             	mov    (%rdi),%rax
  4078e3:	31 d2                	xor    %edx,%edx
  4078e5:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  4078e9:	48 8b 40 08          	mov    0x8(%rax),%rax
  4078ed:	80 38 2a             	cmpb   $0x2a,(%rax)
  4078f0:	0f 94 c2             	sete   %dl
  4078f3:	48 01 d0             	add    %rdx,%rax
  4078f6:	c3                   	retq   
  4078f7:	90                   	nop
  4078f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4078ff:	00 

0000000000407900 <_ZNK4Poco16TimeoutException4nameEv>:
  407900:	b8 50 d1 40 00       	mov    $0x40d150,%eax
  407905:	c3                   	retq   
  407906:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40790d:	00 00 00 

0000000000407910 <_ZNK4Poco16TimeoutException9classNameEv>:
  407910:	48 8b 07             	mov    (%rdi),%rax
  407913:	31 d2                	xor    %edx,%edx
  407915:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407919:	48 8b 40 08          	mov    0x8(%rax),%rax
  40791d:	80 38 2a             	cmpb   $0x2a,(%rax)
  407920:	0f 94 c2             	sete   %dl
  407923:	48 01 d0             	add    %rdx,%rax
  407926:	c3                   	retq   
  407927:	90                   	nop
  407928:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40792f:	00 

0000000000407930 <_ZNK4Poco15SystemException4nameEv>:
  407930:	b8 58 d1 40 00       	mov    $0x40d158,%eax
  407935:	c3                   	retq   
  407936:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40793d:	00 00 00 

0000000000407940 <_ZNK4Poco15SystemException9classNameEv>:
  407940:	48 8b 07             	mov    (%rdi),%rax
  407943:	31 d2                	xor    %edx,%edx
  407945:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407949:	48 8b 40 08          	mov    0x8(%rax),%rax
  40794d:	80 38 2a             	cmpb   $0x2a,(%rax)
  407950:	0f 94 c2             	sete   %dl
  407953:	48 01 d0             	add    %rdx,%rax
  407956:	c3                   	retq   
  407957:	90                   	nop
  407958:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40795f:	00 

0000000000407960 <_ZNK4Poco26RegularExpressionException4nameEv>:
  407960:	b8 69 d1 40 00       	mov    $0x40d169,%eax
  407965:	c3                   	retq   
  407966:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40796d:	00 00 00 

0000000000407970 <_ZNK4Poco26RegularExpressionException9classNameEv>:
  407970:	48 8b 07             	mov    (%rdi),%rax
  407973:	31 d2                	xor    %edx,%edx
  407975:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407979:	48 8b 40 08          	mov    0x8(%rax),%rax
  40797d:	80 38 2a             	cmpb   $0x2a,(%rax)
  407980:	0f 94 c2             	sete   %dl
  407983:	48 01 d0             	add    %rdx,%rax
  407986:	c3                   	retq   
  407987:	90                   	nop
  407988:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40798f:	00 

0000000000407990 <_ZNK4Poco20LibraryLoadException4nameEv>:
  407990:	b8 85 d1 40 00       	mov    $0x40d185,%eax
  407995:	c3                   	retq   
  407996:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40799d:	00 00 00 

00000000004079a0 <_ZNK4Poco20LibraryLoadException9classNameEv>:
  4079a0:	48 8b 07             	mov    (%rdi),%rax
  4079a3:	31 d2                	xor    %edx,%edx
  4079a5:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  4079a9:	48 8b 40 08          	mov    0x8(%rax),%rax
  4079ad:	80 38 2a             	cmpb   $0x2a,(%rax)
  4079b0:	0f 94 c2             	sete   %dl
  4079b3:	48 01 d0             	add    %rdx,%rax
  4079b6:	c3                   	retq   
  4079b7:	90                   	nop
  4079b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4079bf:	00 

00000000004079c0 <_ZNK4Poco29LibraryAlreadyLoadedException4nameEv>:
  4079c0:	b8 99 d1 40 00       	mov    $0x40d199,%eax
  4079c5:	c3                   	retq   
  4079c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4079cd:	00 00 00 

00000000004079d0 <_ZNK4Poco29LibraryAlreadyLoadedException9classNameEv>:
  4079d0:	48 8b 07             	mov    (%rdi),%rax
  4079d3:	31 d2                	xor    %edx,%edx
  4079d5:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  4079d9:	48 8b 40 08          	mov    0x8(%rax),%rax
  4079dd:	80 38 2a             	cmpb   $0x2a,(%rax)
  4079e0:	0f 94 c2             	sete   %dl
  4079e3:	48 01 d0             	add    %rdx,%rax
  4079e6:	c3                   	retq   
  4079e7:	90                   	nop
  4079e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4079ef:	00 

00000000004079f0 <_ZNK4Poco26NoThreadAvailableException4nameEv>:
  4079f0:	b8 b0 d1 40 00       	mov    $0x40d1b0,%eax
  4079f5:	c3                   	retq   
  4079f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4079fd:	00 00 00 

0000000000407a00 <_ZNK4Poco26NoThreadAvailableException9classNameEv>:
  407a00:	48 8b 07             	mov    (%rdi),%rax
  407a03:	31 d2                	xor    %edx,%edx
  407a05:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407a09:	48 8b 40 08          	mov    0x8(%rax),%rax
  407a0d:	80 38 2a             	cmpb   $0x2a,(%rax)
  407a10:	0f 94 c2             	sete   %dl
  407a13:	48 01 d0             	add    %rdx,%rax
  407a16:	c3                   	retq   
  407a17:	90                   	nop
  407a18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  407a1f:	00 

0000000000407a20 <_ZNK4Poco29PropertyNotSupportedException4nameEv>:
  407a20:	b8 c4 d1 40 00       	mov    $0x40d1c4,%eax
  407a25:	c3                   	retq   
  407a26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  407a2d:	00 00 00 

0000000000407a30 <_ZNK4Poco29PropertyNotSupportedException9classNameEv>:
  407a30:	48 8b 07             	mov    (%rdi),%rax
  407a33:	31 d2                	xor    %edx,%edx
  407a35:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407a39:	48 8b 40 08          	mov    0x8(%rax),%rax
  407a3d:	80 38 2a             	cmpb   $0x2a,(%rax)
  407a40:	0f 94 c2             	sete   %dl
  407a43:	48 01 d0             	add    %rdx,%rax
  407a46:	c3                   	retq   
  407a47:	90                   	nop
  407a48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  407a4f:	00 

0000000000407a50 <_ZNK4Poco21PoolOverflowException4nameEv>:
  407a50:	b8 db d1 40 00       	mov    $0x40d1db,%eax
  407a55:	c3                   	retq   
  407a56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  407a5d:	00 00 00 

0000000000407a60 <_ZNK4Poco21PoolOverflowException9classNameEv>:
  407a60:	48 8b 07             	mov    (%rdi),%rax
  407a63:	31 d2                	xor    %edx,%edx
  407a65:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407a69:	48 8b 40 08          	mov    0x8(%rax),%rax
  407a6d:	80 38 2a             	cmpb   $0x2a,(%rax)
  407a70:	0f 94 c2             	sete   %dl
  407a73:	48 01 d0             	add    %rdx,%rax
  407a76:	c3                   	retq   
  407a77:	90                   	nop
  407a78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  407a7f:	00 

0000000000407a80 <_ZNK4Poco21NoPermissionException4nameEv>:
  407a80:	b8 e9 d1 40 00       	mov    $0x40d1e9,%eax
  407a85:	c3                   	retq   
  407a86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  407a8d:	00 00 00 

0000000000407a90 <_ZNK4Poco21NoPermissionException9classNameEv>:
  407a90:	48 8b 07             	mov    (%rdi),%rax
  407a93:	31 d2                	xor    %edx,%edx
  407a95:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407a99:	48 8b 40 08          	mov    0x8(%rax),%rax
  407a9d:	80 38 2a             	cmpb   $0x2a,(%rax)
  407aa0:	0f 94 c2             	sete   %dl
  407aa3:	48 01 d0             	add    %rdx,%rax
  407aa6:	c3                   	retq   
  407aa7:	90                   	nop
  407aa8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  407aaf:	00 

0000000000407ab0 <_ZNK4Poco20OutOfMemoryException4nameEv>:
  407ab0:	b8 f7 d1 40 00       	mov    $0x40d1f7,%eax
  407ab5:	c3                   	retq   
  407ab6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  407abd:	00 00 00 

0000000000407ac0 <_ZNK4Poco20OutOfMemoryException9classNameEv>:
  407ac0:	48 8b 07             	mov    (%rdi),%rax
  407ac3:	31 d2                	xor    %edx,%edx
  407ac5:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407ac9:	48 8b 40 08          	mov    0x8(%rax),%rax
  407acd:	80 38 2a             	cmpb   $0x2a,(%rax)
  407ad0:	0f 94 c2             	sete   %dl
  407ad3:	48 01 d0             	add    %rdx,%rax
  407ad6:	c3                   	retq   
  407ad7:	90                   	nop
  407ad8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  407adf:	00 

0000000000407ae0 <_ZNK4Poco13DataException4nameEv>:
  407ae0:	b8 05 d2 40 00       	mov    $0x40d205,%eax
  407ae5:	c3                   	retq   
  407ae6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  407aed:	00 00 00 

0000000000407af0 <_ZNK4Poco13DataException9classNameEv>:
  407af0:	48 8b 07             	mov    (%rdi),%rax
  407af3:	31 d2                	xor    %edx,%edx
  407af5:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407af9:	48 8b 40 08          	mov    0x8(%rax),%rax
  407afd:	80 38 2a             	cmpb   $0x2a,(%rax)
  407b00:	0f 94 c2             	sete   %dl
  407b03:	48 01 d0             	add    %rdx,%rax
  407b06:	c3                   	retq   
  407b07:	90                   	nop
  407b08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  407b0f:	00 

0000000000407b10 <_ZNK4Poco19DataFormatException4nameEv>:
  407b10:	b8 10 d2 40 00       	mov    $0x40d210,%eax
  407b15:	c3                   	retq   
  407b16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  407b1d:	00 00 00 

0000000000407b20 <_ZNK4Poco19DataFormatException9classNameEv>:
  407b20:	48 8b 07             	mov    (%rdi),%rax
  407b23:	31 d2                	xor    %edx,%edx
  407b25:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407b29:	48 8b 40 08          	mov    0x8(%rax),%rax
  407b2d:	80 38 2a             	cmpb   $0x2a,(%rax)
  407b30:	0f 94 c2             	sete   %dl
  407b33:	48 01 d0             	add    %rdx,%rax
  407b36:	c3                   	retq   
  407b37:	90                   	nop
  407b38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  407b3f:	00 

0000000000407b40 <_ZNK4Poco15SyntaxException4nameEv>:
  407b40:	b8 20 d2 40 00       	mov    $0x40d220,%eax
  407b45:	c3                   	retq   
  407b46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  407b4d:	00 00 00 

0000000000407b50 <_ZNK4Poco15SyntaxException9classNameEv>:
  407b50:	48 8b 07             	mov    (%rdi),%rax
  407b53:	31 d2                	xor    %edx,%edx
  407b55:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407b59:	48 8b 40 08          	mov    0x8(%rax),%rax
  407b5d:	80 38 2a             	cmpb   $0x2a,(%rax)
  407b60:	0f 94 c2             	sete   %dl
  407b63:	48 01 d0             	add    %rdx,%rax
  407b66:	c3                   	retq   
  407b67:	90                   	nop
  407b68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  407b6f:	00 

0000000000407b70 <_ZNK4Poco26CircularReferenceException4nameEv>:
  407b70:	b8 2d d2 40 00       	mov    $0x40d22d,%eax
  407b75:	c3                   	retq   
  407b76:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  407b7d:	00 00 00 

0000000000407b80 <_ZNK4Poco26CircularReferenceException9classNameEv>:
  407b80:	48 8b 07             	mov    (%rdi),%rax
  407b83:	31 d2                	xor    %edx,%edx
  407b85:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407b89:	48 8b 40 08          	mov    0x8(%rax),%rax
  407b8d:	80 38 2a             	cmpb   $0x2a,(%rax)
  407b90:	0f 94 c2             	sete   %dl
  407b93:	48 01 d0             	add    %rdx,%rax
  407b96:	c3                   	retq   
  407b97:	90                   	nop
  407b98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  407b9f:	00 

0000000000407ba0 <_ZNK4Poco19PathSyntaxException4nameEv>:
  407ba0:	b8 40 d2 40 00       	mov    $0x40d240,%eax
  407ba5:	c3                   	retq   
  407ba6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  407bad:	00 00 00 

0000000000407bb0 <_ZNK4Poco19PathSyntaxException9classNameEv>:
  407bb0:	48 8b 07             	mov    (%rdi),%rax
  407bb3:	31 d2                	xor    %edx,%edx
  407bb5:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407bb9:	48 8b 40 08          	mov    0x8(%rax),%rax
  407bbd:	80 38 2a             	cmpb   $0x2a,(%rax)
  407bc0:	0f 94 c2             	sete   %dl
  407bc3:	48 01 d0             	add    %rdx,%rax
  407bc6:	c3                   	retq   
  407bc7:	90                   	nop
  407bc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  407bcf:	00 

0000000000407bd0 <_ZNK4Poco11IOException4nameEv>:
  407bd0:	b8 50 d2 40 00       	mov    $0x40d250,%eax
  407bd5:	c3                   	retq   
  407bd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  407bdd:	00 00 00 

0000000000407be0 <_ZNK4Poco11IOException9classNameEv>:
  407be0:	48 8b 07             	mov    (%rdi),%rax
  407be3:	31 d2                	xor    %edx,%edx
  407be5:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407be9:	48 8b 40 08          	mov    0x8(%rax),%rax
  407bed:	80 38 2a             	cmpb   $0x2a,(%rax)
  407bf0:	0f 94 c2             	sete   %dl
  407bf3:	48 01 d0             	add    %rdx,%rax
  407bf6:	c3                   	retq   
  407bf7:	90                   	nop
  407bf8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  407bff:	00 

0000000000407c00 <_ZNK4Poco17ProtocolException4nameEv>:
  407c00:	b8 5a d2 40 00       	mov    $0x40d25a,%eax
  407c05:	c3                   	retq   
  407c06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  407c0d:	00 00 00 

0000000000407c10 <_ZNK4Poco17ProtocolException9classNameEv>:
  407c10:	48 8b 07             	mov    (%rdi),%rax
  407c13:	31 d2                	xor    %edx,%edx
  407c15:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407c19:	48 8b 40 08          	mov    0x8(%rax),%rax
  407c1d:	80 38 2a             	cmpb   $0x2a,(%rax)
  407c20:	0f 94 c2             	sete   %dl
  407c23:	48 01 d0             	add    %rdx,%rax
  407c26:	c3                   	retq   
  407c27:	90                   	nop
  407c28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  407c2f:	00 

0000000000407c30 <_ZNK4Poco13FileException4nameEv>:
  407c30:	b8 69 d2 40 00       	mov    $0x40d269,%eax
  407c35:	c3                   	retq   
  407c36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  407c3d:	00 00 00 

0000000000407c40 <_ZNK4Poco13FileException9classNameEv>:
  407c40:	48 8b 07             	mov    (%rdi),%rax
  407c43:	31 d2                	xor    %edx,%edx
  407c45:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407c49:	48 8b 40 08          	mov    0x8(%rax),%rax
  407c4d:	80 38 2a             	cmpb   $0x2a,(%rax)
  407c50:	0f 94 c2             	sete   %dl
  407c53:	48 01 d0             	add    %rdx,%rax
  407c56:	c3                   	retq   
  407c57:	90                   	nop
  407c58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  407c5f:	00 

0000000000407c60 <_ZNK4Poco19FileExistsException4nameEv>:
  407c60:	b8 7b d2 40 00       	mov    $0x40d27b,%eax
  407c65:	c3                   	retq   
  407c66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  407c6d:	00 00 00 

0000000000407c70 <_ZNK4Poco19FileExistsException9classNameEv>:
  407c70:	48 8b 07             	mov    (%rdi),%rax
  407c73:	31 d2                	xor    %edx,%edx
  407c75:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407c79:	48 8b 40 08          	mov    0x8(%rax),%rax
  407c7d:	80 38 2a             	cmpb   $0x2a,(%rax)
  407c80:	0f 94 c2             	sete   %dl
  407c83:	48 01 d0             	add    %rdx,%rax
  407c86:	c3                   	retq   
  407c87:	90                   	nop
  407c88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  407c8f:	00 

0000000000407c90 <_ZNK4Poco21FileNotFoundException4nameEv>:
  407c90:	b8 87 d2 40 00       	mov    $0x40d287,%eax
  407c95:	c3                   	retq   
  407c96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  407c9d:	00 00 00 

0000000000407ca0 <_ZNK4Poco21FileNotFoundException9classNameEv>:
  407ca0:	48 8b 07             	mov    (%rdi),%rax
  407ca3:	31 d2                	xor    %edx,%edx
  407ca5:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407ca9:	48 8b 40 08          	mov    0x8(%rax),%rax
  407cad:	80 38 2a             	cmpb   $0x2a,(%rax)
  407cb0:	0f 94 c2             	sete   %dl
  407cb3:	48 01 d0             	add    %rdx,%rax
  407cb6:	c3                   	retq   
  407cb7:	90                   	nop
  407cb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  407cbf:	00 

0000000000407cc0 <_ZNK4Poco21PathNotFoundException4nameEv>:
  407cc0:	b8 96 d2 40 00       	mov    $0x40d296,%eax
  407cc5:	c3                   	retq   
  407cc6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  407ccd:	00 00 00 

0000000000407cd0 <_ZNK4Poco21PathNotFoundException9classNameEv>:
  407cd0:	48 8b 07             	mov    (%rdi),%rax
  407cd3:	31 d2                	xor    %edx,%edx
  407cd5:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407cd9:	48 8b 40 08          	mov    0x8(%rax),%rax
  407cdd:	80 38 2a             	cmpb   $0x2a,(%rax)
  407ce0:	0f 94 c2             	sete   %dl
  407ce3:	48 01 d0             	add    %rdx,%rax
  407ce6:	c3                   	retq   
  407ce7:	90                   	nop
  407ce8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  407cef:	00 

0000000000407cf0 <_ZNK4Poco21FileReadOnlyException4nameEv>:
  407cf0:	b8 a5 d2 40 00       	mov    $0x40d2a5,%eax
  407cf5:	c3                   	retq   
  407cf6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  407cfd:	00 00 00 

0000000000407d00 <_ZNK4Poco21FileReadOnlyException9classNameEv>:
  407d00:	48 8b 07             	mov    (%rdi),%rax
  407d03:	31 d2                	xor    %edx,%edx
  407d05:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407d09:	48 8b 40 08          	mov    0x8(%rax),%rax
  407d0d:	80 38 2a             	cmpb   $0x2a,(%rax)
  407d10:	0f 94 c2             	sete   %dl
  407d13:	48 01 d0             	add    %rdx,%rax
  407d16:	c3                   	retq   
  407d17:	90                   	nop
  407d18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  407d1f:	00 

0000000000407d20 <_ZNK4Poco25FileAccessDeniedException4nameEv>:
  407d20:	b8 b7 d2 40 00       	mov    $0x40d2b7,%eax
  407d25:	c3                   	retq   
  407d26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  407d2d:	00 00 00 

0000000000407d30 <_ZNK4Poco25FileAccessDeniedException9classNameEv>:
  407d30:	48 8b 07             	mov    (%rdi),%rax
  407d33:	31 d2                	xor    %edx,%edx
  407d35:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407d39:	48 8b 40 08          	mov    0x8(%rax),%rax
  407d3d:	80 38 2a             	cmpb   $0x2a,(%rax)
  407d40:	0f 94 c2             	sete   %dl
  407d43:	48 01 d0             	add    %rdx,%rax
  407d46:	c3                   	retq   
  407d47:	90                   	nop
  407d48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  407d4f:	00 

0000000000407d50 <_ZNK4Poco19CreateFileException4nameEv>:
  407d50:	b8 cd d2 40 00       	mov    $0x40d2cd,%eax
  407d55:	c3                   	retq   
  407d56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  407d5d:	00 00 00 

0000000000407d60 <_ZNK4Poco19CreateFileException9classNameEv>:
  407d60:	48 8b 07             	mov    (%rdi),%rax
  407d63:	31 d2                	xor    %edx,%edx
  407d65:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407d69:	48 8b 40 08          	mov    0x8(%rax),%rax
  407d6d:	80 38 2a             	cmpb   $0x2a,(%rax)
  407d70:	0f 94 c2             	sete   %dl
  407d73:	48 01 d0             	add    %rdx,%rax
  407d76:	c3                   	retq   
  407d77:	90                   	nop
  407d78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  407d7f:	00 

0000000000407d80 <_ZNK4Poco17OpenFileException4nameEv>:
  407d80:	b8 e0 d2 40 00       	mov    $0x40d2e0,%eax
  407d85:	c3                   	retq   
  407d86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  407d8d:	00 00 00 

0000000000407d90 <_ZNK4Poco17OpenFileException9classNameEv>:
  407d90:	48 8b 07             	mov    (%rdi),%rax
  407d93:	31 d2                	xor    %edx,%edx
  407d95:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407d99:	48 8b 40 08          	mov    0x8(%rax),%rax
  407d9d:	80 38 2a             	cmpb   $0x2a,(%rax)
  407da0:	0f 94 c2             	sete   %dl
  407da3:	48 01 d0             	add    %rdx,%rax
  407da6:	c3                   	retq   
  407da7:	90                   	nop
  407da8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  407daf:	00 

0000000000407db0 <_ZNK4Poco18WriteFileException4nameEv>:
  407db0:	b8 f1 d2 40 00       	mov    $0x40d2f1,%eax
  407db5:	c3                   	retq   
  407db6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  407dbd:	00 00 00 

0000000000407dc0 <_ZNK4Poco18WriteFileException9classNameEv>:
  407dc0:	48 8b 07             	mov    (%rdi),%rax
  407dc3:	31 d2                	xor    %edx,%edx
  407dc5:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407dc9:	48 8b 40 08          	mov    0x8(%rax),%rax
  407dcd:	80 38 2a             	cmpb   $0x2a,(%rax)
  407dd0:	0f 94 c2             	sete   %dl
  407dd3:	48 01 d0             	add    %rdx,%rax
  407dd6:	c3                   	retq   
  407dd7:	90                   	nop
  407dd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  407ddf:	00 

0000000000407de0 <_ZNK4Poco17ReadFileException4nameEv>:
  407de0:	b8 03 d3 40 00       	mov    $0x40d303,%eax
  407de5:	c3                   	retq   
  407de6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  407ded:	00 00 00 

0000000000407df0 <_ZNK4Poco17ReadFileException9classNameEv>:
  407df0:	48 8b 07             	mov    (%rdi),%rax
  407df3:	31 d2                	xor    %edx,%edx
  407df5:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407df9:	48 8b 40 08          	mov    0x8(%rax),%rax
  407dfd:	80 38 2a             	cmpb   $0x2a,(%rax)
  407e00:	0f 94 c2             	sete   %dl
  407e03:	48 01 d0             	add    %rdx,%rax
  407e06:	c3                   	retq   
  407e07:	90                   	nop
  407e08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  407e0f:	00 

0000000000407e10 <_ZNK4Poco25UnknownURISchemeException4nameEv>:
  407e10:	b8 14 d3 40 00       	mov    $0x40d314,%eax
  407e15:	c3                   	retq   
  407e16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  407e1d:	00 00 00 

0000000000407e20 <_ZNK4Poco25UnknownURISchemeException9classNameEv>:
  407e20:	48 8b 07             	mov    (%rdi),%rax
  407e23:	31 d2                	xor    %edx,%edx
  407e25:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407e29:	48 8b 40 08          	mov    0x8(%rax),%rax
  407e2d:	80 38 2a             	cmpb   $0x2a,(%rax)
  407e30:	0f 94 c2             	sete   %dl
  407e33:	48 01 d0             	add    %rdx,%rax
  407e36:	c3                   	retq   
  407e37:	90                   	nop
  407e38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  407e3f:	00 

0000000000407e40 <_ZNK4Poco20ApplicationException4nameEv>:
  407e40:	b8 27 d3 40 00       	mov    $0x40d327,%eax
  407e45:	c3                   	retq   
  407e46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  407e4d:	00 00 00 

0000000000407e50 <_ZNK4Poco20ApplicationException9classNameEv>:
  407e50:	48 8b 07             	mov    (%rdi),%rax
  407e53:	31 d2                	xor    %edx,%edx
  407e55:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407e59:	48 8b 40 08          	mov    0x8(%rax),%rax
  407e5d:	80 38 2a             	cmpb   $0x2a,(%rax)
  407e60:	0f 94 c2             	sete   %dl
  407e63:	48 01 d0             	add    %rdx,%rax
  407e66:	c3                   	retq   
  407e67:	90                   	nop
  407e68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  407e6f:	00 

0000000000407e70 <_ZNK4Poco16BadCastException4nameEv>:
  407e70:	b8 3d d3 40 00       	mov    $0x40d33d,%eax
  407e75:	c3                   	retq   
  407e76:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  407e7d:	00 00 00 

0000000000407e80 <_ZNK4Poco16BadCastException9classNameEv>:
  407e80:	48 8b 07             	mov    (%rdi),%rax
  407e83:	31 d2                	xor    %edx,%edx
  407e85:	48 8b 40 f8          	mov    -0x8(%rax),%rax
  407e89:	48 8b 40 08          	mov    0x8(%rax),%rax
  407e8d:	80 38 2a             	cmpb   $0x2a,(%rax)
  407e90:	0f 94 c2             	sete   %dl
  407e93:	48 01 d0             	add    %rdx,%rax
  407e96:	c3                   	retq   
  407e97:	90                   	nop
  407e98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  407e9f:	00 

0000000000407ea0 <_ZN4Poco9ExceptionD1Ev>:
  407ea0:	53                   	push   %rbx
  407ea1:	48 89 fb             	mov    %rdi,%rbx
  407ea4:	48 83 ec 10          	sub    $0x10,%rsp
  407ea8:	48 c7 07 30 e0 40 00 	movq   $0x40e030,(%rdi)
  407eaf:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
  407eb3:	48 85 ff             	test   %rdi,%rdi
  407eb6:	74 06                	je     407ebe <_ZN4Poco9ExceptionD1Ev+0x1e>
  407eb8:	48 8b 07             	mov    (%rdi),%rax
  407ebb:	ff 50 08             	callq  *0x8(%rax)
  407ebe:	48 8b 43 08          	mov    0x8(%rbx),%rax
  407ec2:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  407ec6:	48 81 ff 40 85 61 00 	cmp    $0x618540,%rdi
  407ecd:	75 0e                	jne    407edd <_ZN4Poco9ExceptionD1Ev+0x3d>
  407ecf:	48 89 df             	mov    %rbx,%rdi
  407ed2:	e8 39 a5 ff ff       	callq  402410 <_ZNSt9exceptionD2Ev@plt>
  407ed7:	48 83 c4 10          	add    $0x10,%rsp
  407edb:	5b                   	pop    %rbx
  407edc:	c3                   	retq   
  407edd:	b9 20 25 40 00       	mov    $0x402520,%ecx
  407ee2:	48 8d 57 10          	lea    0x10(%rdi),%rdx
  407ee6:	48 85 c9             	test   %rcx,%rcx
  407ee9:	74 17                	je     407f02 <_ZN4Poco9ExceptionD1Ev+0x62>
  407eeb:	83 c8 ff             	or     $0xffffffff,%eax
  407eee:	f0 0f c1 02          	lock xadd %eax,(%rdx)
  407ef2:	85 c0                	test   %eax,%eax
  407ef4:	7f d9                	jg     407ecf <_ZN4Poco9ExceptionD1Ev+0x2f>
  407ef6:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  407efb:	e8 b0 a3 ff ff       	callq  4022b0 <_ZNSs4_Rep10_M_destroyERKSaIcE@plt>
  407f00:	eb cd                	jmp    407ecf <_ZN4Poco9ExceptionD1Ev+0x2f>
  407f02:	8b 50 f8             	mov    -0x8(%rax),%edx
  407f05:	8d 4a ff             	lea    -0x1(%rdx),%ecx
  407f08:	89 48 f8             	mov    %ecx,-0x8(%rax)
  407f0b:	89 d0                	mov    %edx,%eax
  407f0d:	eb e3                	jmp    407ef2 <_ZN4Poco9ExceptionD1Ev+0x52>
  407f0f:	90                   	nop

0000000000407f10 <_ZN4Poco9ExceptionD0Ev>:
  407f10:	53                   	push   %rbx
  407f11:	48 89 fb             	mov    %rdi,%rbx
  407f14:	e8 87 ff ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  407f19:	48 89 df             	mov    %rbx,%rdi
  407f1c:	5b                   	pop    %rbx
  407f1d:	e9 9e a2 ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  407f22:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  407f29:	1f 84 00 00 00 00 00 

0000000000407f30 <_ZN4Poco14LogicExceptionD1Ev>:
  407f30:	48 c7 07 90 e0 40 00 	movq   $0x40e090,(%rdi)
  407f37:	e9 64 ff ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  407f3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000407f40 <_ZN4Poco14LogicExceptionD0Ev>:
  407f40:	53                   	push   %rbx
  407f41:	48 89 fb             	mov    %rdi,%rbx
  407f44:	48 c7 07 90 e0 40 00 	movq   $0x40e090,(%rdi)
  407f4b:	e8 50 ff ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  407f50:	48 89 df             	mov    %rbx,%rdi
  407f53:	5b                   	pop    %rbx
  407f54:	e9 67 a2 ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  407f59:	90                   	nop
  407f5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000407f60 <_ZN4Poco27AssertionViolationExceptionD1Ev>:
  407f60:	48 c7 07 90 e0 40 00 	movq   $0x40e090,(%rdi)
  407f67:	e9 34 ff ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  407f6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000407f70 <_ZN4Poco27AssertionViolationExceptionD0Ev>:
  407f70:	53                   	push   %rbx
  407f71:	48 89 fb             	mov    %rdi,%rbx
  407f74:	48 c7 07 90 e0 40 00 	movq   $0x40e090,(%rdi)
  407f7b:	e8 20 ff ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  407f80:	48 89 df             	mov    %rbx,%rdi
  407f83:	5b                   	pop    %rbx
  407f84:	e9 37 a2 ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  407f89:	90                   	nop
  407f8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000407f90 <_ZN4Poco20NullPointerExceptionD1Ev>:
  407f90:	48 c7 07 90 e0 40 00 	movq   $0x40e090,(%rdi)
  407f97:	e9 04 ff ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  407f9c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000407fa0 <_ZN4Poco20NullPointerExceptionD0Ev>:
  407fa0:	53                   	push   %rbx
  407fa1:	48 89 fb             	mov    %rdi,%rbx
  407fa4:	48 c7 07 90 e0 40 00 	movq   $0x40e090,(%rdi)
  407fab:	e8 f0 fe ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  407fb0:	48 89 df             	mov    %rbx,%rdi
  407fb3:	5b                   	pop    %rbx
  407fb4:	e9 07 a2 ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  407fb9:	90                   	nop
  407fba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000407fc0 <_ZN4Poco18NullValueExceptionD1Ev>:
  407fc0:	48 c7 07 90 e0 40 00 	movq   $0x40e090,(%rdi)
  407fc7:	e9 d4 fe ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  407fcc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000407fd0 <_ZN4Poco18NullValueExceptionD0Ev>:
  407fd0:	53                   	push   %rbx
  407fd1:	48 89 fb             	mov    %rdi,%rbx
  407fd4:	48 c7 07 90 e0 40 00 	movq   $0x40e090,(%rdi)
  407fdb:	e8 c0 fe ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  407fe0:	48 89 df             	mov    %rbx,%rdi
  407fe3:	5b                   	pop    %rbx
  407fe4:	e9 d7 a1 ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  407fe9:	90                   	nop
  407fea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000407ff0 <_ZN4Poco17BugcheckExceptionD1Ev>:
  407ff0:	48 c7 07 90 e0 40 00 	movq   $0x40e090,(%rdi)
  407ff7:	e9 a4 fe ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  407ffc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000408000 <_ZN4Poco17BugcheckExceptionD0Ev>:
  408000:	53                   	push   %rbx
  408001:	48 89 fb             	mov    %rdi,%rbx
  408004:	48 c7 07 90 e0 40 00 	movq   $0x40e090,(%rdi)
  40800b:	e8 90 fe ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  408010:	48 89 df             	mov    %rbx,%rdi
  408013:	5b                   	pop    %rbx
  408014:	e9 a7 a1 ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  408019:	90                   	nop
  40801a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000408020 <_ZN4Poco24InvalidArgumentExceptionD1Ev>:
  408020:	48 c7 07 90 e0 40 00 	movq   $0x40e090,(%rdi)
  408027:	e9 74 fe ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  40802c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000408030 <_ZN4Poco24InvalidArgumentExceptionD0Ev>:
  408030:	53                   	push   %rbx
  408031:	48 89 fb             	mov    %rdi,%rbx
  408034:	48 c7 07 90 e0 40 00 	movq   $0x40e090,(%rdi)
  40803b:	e8 60 fe ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  408040:	48 89 df             	mov    %rbx,%rdi
  408043:	5b                   	pop    %rbx
  408044:	e9 77 a1 ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  408049:	90                   	nop
  40804a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000408050 <_ZN4Poco23NotImplementedExceptionD1Ev>:
  408050:	48 c7 07 90 e0 40 00 	movq   $0x40e090,(%rdi)
  408057:	e9 44 fe ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  40805c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000408060 <_ZN4Poco23NotImplementedExceptionD0Ev>:
  408060:	53                   	push   %rbx
  408061:	48 89 fb             	mov    %rdi,%rbx
  408064:	48 c7 07 90 e0 40 00 	movq   $0x40e090,(%rdi)
  40806b:	e8 30 fe ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  408070:	48 89 df             	mov    %rbx,%rdi
  408073:	5b                   	pop    %rbx
  408074:	e9 47 a1 ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  408079:	90                   	nop
  40807a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000408080 <_ZN4Poco14RangeExceptionD1Ev>:
  408080:	48 c7 07 90 e0 40 00 	movq   $0x40e090,(%rdi)
  408087:	e9 14 fe ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  40808c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000408090 <_ZN4Poco14RangeExceptionD0Ev>:
  408090:	53                   	push   %rbx
  408091:	48 89 fb             	mov    %rdi,%rbx
  408094:	48 c7 07 90 e0 40 00 	movq   $0x40e090,(%rdi)
  40809b:	e8 00 fe ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  4080a0:	48 89 df             	mov    %rbx,%rdi
  4080a3:	5b                   	pop    %rbx
  4080a4:	e9 17 a1 ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  4080a9:	90                   	nop
  4080aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004080b0 <_ZN4Poco21IllegalStateExceptionD1Ev>:
  4080b0:	48 c7 07 90 e0 40 00 	movq   $0x40e090,(%rdi)
  4080b7:	e9 e4 fd ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  4080bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004080c0 <_ZN4Poco21IllegalStateExceptionD0Ev>:
  4080c0:	53                   	push   %rbx
  4080c1:	48 89 fb             	mov    %rdi,%rbx
  4080c4:	48 c7 07 90 e0 40 00 	movq   $0x40e090,(%rdi)
  4080cb:	e8 d0 fd ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  4080d0:	48 89 df             	mov    %rbx,%rdi
  4080d3:	5b                   	pop    %rbx
  4080d4:	e9 e7 a0 ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  4080d9:	90                   	nop
  4080da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004080e0 <_ZN4Poco22InvalidAccessExceptionD1Ev>:
  4080e0:	48 c7 07 90 e0 40 00 	movq   $0x40e090,(%rdi)
  4080e7:	e9 b4 fd ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  4080ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004080f0 <_ZN4Poco22InvalidAccessExceptionD0Ev>:
  4080f0:	53                   	push   %rbx
  4080f1:	48 89 fb             	mov    %rdi,%rbx
  4080f4:	48 c7 07 90 e0 40 00 	movq   $0x40e090,(%rdi)
  4080fb:	e8 a0 fd ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  408100:	48 89 df             	mov    %rbx,%rdi
  408103:	5b                   	pop    %rbx
  408104:	e9 b7 a0 ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  408109:	90                   	nop
  40810a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000408110 <_ZN4Poco15SignalExceptionD1Ev>:
  408110:	48 c7 07 90 e0 40 00 	movq   $0x40e090,(%rdi)
  408117:	e9 84 fd ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  40811c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000408120 <_ZN4Poco15SignalExceptionD0Ev>:
  408120:	53                   	push   %rbx
  408121:	48 89 fb             	mov    %rdi,%rbx
  408124:	48 c7 07 90 e0 40 00 	movq   $0x40e090,(%rdi)
  40812b:	e8 70 fd ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  408130:	48 89 df             	mov    %rbx,%rdi
  408133:	5b                   	pop    %rbx
  408134:	e9 87 a0 ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  408139:	90                   	nop
  40813a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000408140 <_ZN4Poco18UnhandledExceptionD1Ev>:
  408140:	48 c7 07 90 e0 40 00 	movq   $0x40e090,(%rdi)
  408147:	e9 54 fd ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  40814c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000408150 <_ZN4Poco18UnhandledExceptionD0Ev>:
  408150:	53                   	push   %rbx
  408151:	48 89 fb             	mov    %rdi,%rbx
  408154:	48 c7 07 90 e0 40 00 	movq   $0x40e090,(%rdi)
  40815b:	e8 40 fd ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  408160:	48 89 df             	mov    %rbx,%rdi
  408163:	5b                   	pop    %rbx
  408164:	e9 57 a0 ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  408169:	90                   	nop
  40816a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000408170 <_ZN4Poco16RuntimeExceptionD1Ev>:
  408170:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  408177:	e9 24 fd ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  40817c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000408180 <_ZN4Poco16RuntimeExceptionD0Ev>:
  408180:	53                   	push   %rbx
  408181:	48 89 fb             	mov    %rdi,%rbx
  408184:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  40818b:	e8 10 fd ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  408190:	48 89 df             	mov    %rbx,%rdi
  408193:	5b                   	pop    %rbx
  408194:	e9 27 a0 ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  408199:	90                   	nop
  40819a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004081a0 <_ZN4Poco17NotFoundExceptionD1Ev>:
  4081a0:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  4081a7:	e9 f4 fc ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  4081ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004081b0 <_ZN4Poco17NotFoundExceptionD0Ev>:
  4081b0:	53                   	push   %rbx
  4081b1:	48 89 fb             	mov    %rdi,%rbx
  4081b4:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  4081bb:	e8 e0 fc ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  4081c0:	48 89 df             	mov    %rbx,%rdi
  4081c3:	5b                   	pop    %rbx
  4081c4:	e9 f7 9f ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  4081c9:	90                   	nop
  4081ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004081d0 <_ZN4Poco15ExistsExceptionD1Ev>:
  4081d0:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  4081d7:	e9 c4 fc ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  4081dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004081e0 <_ZN4Poco15ExistsExceptionD0Ev>:
  4081e0:	53                   	push   %rbx
  4081e1:	48 89 fb             	mov    %rdi,%rbx
  4081e4:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  4081eb:	e8 b0 fc ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  4081f0:	48 89 df             	mov    %rbx,%rdi
  4081f3:	5b                   	pop    %rbx
  4081f4:	e9 c7 9f ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  4081f9:	90                   	nop
  4081fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000408200 <_ZN4Poco16TimeoutExceptionD1Ev>:
  408200:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  408207:	e9 94 fc ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  40820c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000408210 <_ZN4Poco16TimeoutExceptionD0Ev>:
  408210:	53                   	push   %rbx
  408211:	48 89 fb             	mov    %rdi,%rbx
  408214:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  40821b:	e8 80 fc ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  408220:	48 89 df             	mov    %rbx,%rdi
  408223:	5b                   	pop    %rbx
  408224:	e9 97 9f ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  408229:	90                   	nop
  40822a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000408230 <_ZN4Poco15SystemExceptionD1Ev>:
  408230:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  408237:	e9 64 fc ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  40823c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000408240 <_ZN4Poco15SystemExceptionD0Ev>:
  408240:	53                   	push   %rbx
  408241:	48 89 fb             	mov    %rdi,%rbx
  408244:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  40824b:	e8 50 fc ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  408250:	48 89 df             	mov    %rbx,%rdi
  408253:	5b                   	pop    %rbx
  408254:	e9 67 9f ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  408259:	90                   	nop
  40825a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000408260 <_ZN4Poco26RegularExpressionExceptionD1Ev>:
  408260:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  408267:	e9 34 fc ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  40826c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000408270 <_ZN4Poco26RegularExpressionExceptionD0Ev>:
  408270:	53                   	push   %rbx
  408271:	48 89 fb             	mov    %rdi,%rbx
  408274:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  40827b:	e8 20 fc ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  408280:	48 89 df             	mov    %rbx,%rdi
  408283:	5b                   	pop    %rbx
  408284:	e9 37 9f ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  408289:	90                   	nop
  40828a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000408290 <_ZN4Poco20LibraryLoadExceptionD1Ev>:
  408290:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  408297:	e9 04 fc ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  40829c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004082a0 <_ZN4Poco20LibraryLoadExceptionD0Ev>:
  4082a0:	53                   	push   %rbx
  4082a1:	48 89 fb             	mov    %rdi,%rbx
  4082a4:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  4082ab:	e8 f0 fb ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  4082b0:	48 89 df             	mov    %rbx,%rdi
  4082b3:	5b                   	pop    %rbx
  4082b4:	e9 07 9f ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  4082b9:	90                   	nop
  4082ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004082c0 <_ZN4Poco29LibraryAlreadyLoadedExceptionD1Ev>:
  4082c0:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  4082c7:	e9 d4 fb ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  4082cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004082d0 <_ZN4Poco29LibraryAlreadyLoadedExceptionD0Ev>:
  4082d0:	53                   	push   %rbx
  4082d1:	48 89 fb             	mov    %rdi,%rbx
  4082d4:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  4082db:	e8 c0 fb ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  4082e0:	48 89 df             	mov    %rbx,%rdi
  4082e3:	5b                   	pop    %rbx
  4082e4:	e9 d7 9e ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  4082e9:	90                   	nop
  4082ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004082f0 <_ZN4Poco26NoThreadAvailableExceptionD1Ev>:
  4082f0:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  4082f7:	e9 a4 fb ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  4082fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000408300 <_ZN4Poco26NoThreadAvailableExceptionD0Ev>:
  408300:	53                   	push   %rbx
  408301:	48 89 fb             	mov    %rdi,%rbx
  408304:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  40830b:	e8 90 fb ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  408310:	48 89 df             	mov    %rbx,%rdi
  408313:	5b                   	pop    %rbx
  408314:	e9 a7 9e ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  408319:	90                   	nop
  40831a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000408320 <_ZN4Poco29PropertyNotSupportedExceptionD1Ev>:
  408320:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  408327:	e9 74 fb ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  40832c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000408330 <_ZN4Poco29PropertyNotSupportedExceptionD0Ev>:
  408330:	53                   	push   %rbx
  408331:	48 89 fb             	mov    %rdi,%rbx
  408334:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  40833b:	e8 60 fb ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  408340:	48 89 df             	mov    %rbx,%rdi
  408343:	5b                   	pop    %rbx
  408344:	e9 77 9e ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  408349:	90                   	nop
  40834a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000408350 <_ZN4Poco21PoolOverflowExceptionD1Ev>:
  408350:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  408357:	e9 44 fb ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  40835c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000408360 <_ZN4Poco21PoolOverflowExceptionD0Ev>:
  408360:	53                   	push   %rbx
  408361:	48 89 fb             	mov    %rdi,%rbx
  408364:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  40836b:	e8 30 fb ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  408370:	48 89 df             	mov    %rbx,%rdi
  408373:	5b                   	pop    %rbx
  408374:	e9 47 9e ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  408379:	90                   	nop
  40837a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000408380 <_ZN4Poco21NoPermissionExceptionD1Ev>:
  408380:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  408387:	e9 14 fb ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  40838c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000408390 <_ZN4Poco21NoPermissionExceptionD0Ev>:
  408390:	53                   	push   %rbx
  408391:	48 89 fb             	mov    %rdi,%rbx
  408394:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  40839b:	e8 00 fb ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  4083a0:	48 89 df             	mov    %rbx,%rdi
  4083a3:	5b                   	pop    %rbx
  4083a4:	e9 17 9e ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  4083a9:	90                   	nop
  4083aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004083b0 <_ZN4Poco20OutOfMemoryExceptionD1Ev>:
  4083b0:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  4083b7:	e9 e4 fa ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  4083bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004083c0 <_ZN4Poco20OutOfMemoryExceptionD0Ev>:
  4083c0:	53                   	push   %rbx
  4083c1:	48 89 fb             	mov    %rdi,%rbx
  4083c4:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  4083cb:	e8 d0 fa ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  4083d0:	48 89 df             	mov    %rbx,%rdi
  4083d3:	5b                   	pop    %rbx
  4083d4:	e9 e7 9d ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  4083d9:	90                   	nop
  4083da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004083e0 <_ZN4Poco13DataExceptionD1Ev>:
  4083e0:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  4083e7:	e9 b4 fa ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  4083ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004083f0 <_ZN4Poco13DataExceptionD0Ev>:
  4083f0:	53                   	push   %rbx
  4083f1:	48 89 fb             	mov    %rdi,%rbx
  4083f4:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  4083fb:	e8 a0 fa ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  408400:	48 89 df             	mov    %rbx,%rdi
  408403:	5b                   	pop    %rbx
  408404:	e9 b7 9d ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  408409:	90                   	nop
  40840a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000408410 <_ZN4Poco19DataFormatExceptionD1Ev>:
  408410:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  408417:	e9 84 fa ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  40841c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000408420 <_ZN4Poco19DataFormatExceptionD0Ev>:
  408420:	53                   	push   %rbx
  408421:	48 89 fb             	mov    %rdi,%rbx
  408424:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  40842b:	e8 70 fa ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  408430:	48 89 df             	mov    %rbx,%rdi
  408433:	5b                   	pop    %rbx
  408434:	e9 87 9d ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  408439:	90                   	nop
  40843a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000408440 <_ZN4Poco15SyntaxExceptionD1Ev>:
  408440:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  408447:	e9 54 fa ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  40844c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000408450 <_ZN4Poco15SyntaxExceptionD0Ev>:
  408450:	53                   	push   %rbx
  408451:	48 89 fb             	mov    %rdi,%rbx
  408454:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  40845b:	e8 40 fa ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  408460:	48 89 df             	mov    %rbx,%rdi
  408463:	5b                   	pop    %rbx
  408464:	e9 57 9d ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  408469:	90                   	nop
  40846a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000408470 <_ZN4Poco19PathSyntaxExceptionD1Ev>:
  408470:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  408477:	e9 24 fa ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  40847c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000408480 <_ZN4Poco19PathSyntaxExceptionD0Ev>:
  408480:	53                   	push   %rbx
  408481:	48 89 fb             	mov    %rdi,%rbx
  408484:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  40848b:	e8 10 fa ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  408490:	48 89 df             	mov    %rbx,%rdi
  408493:	5b                   	pop    %rbx
  408494:	e9 27 9d ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  408499:	90                   	nop
  40849a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004084a0 <_ZN4Poco26CircularReferenceExceptionD1Ev>:
  4084a0:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  4084a7:	e9 f4 f9 ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  4084ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004084b0 <_ZN4Poco26CircularReferenceExceptionD0Ev>:
  4084b0:	53                   	push   %rbx
  4084b1:	48 89 fb             	mov    %rdi,%rbx
  4084b4:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  4084bb:	e8 e0 f9 ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  4084c0:	48 89 df             	mov    %rbx,%rdi
  4084c3:	5b                   	pop    %rbx
  4084c4:	e9 f7 9c ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  4084c9:	90                   	nop
  4084ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004084d0 <_ZN4Poco11IOExceptionD1Ev>:
  4084d0:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  4084d7:	e9 c4 f9 ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  4084dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004084e0 <_ZN4Poco11IOExceptionD0Ev>:
  4084e0:	53                   	push   %rbx
  4084e1:	48 89 fb             	mov    %rdi,%rbx
  4084e4:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  4084eb:	e8 b0 f9 ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  4084f0:	48 89 df             	mov    %rbx,%rdi
  4084f3:	5b                   	pop    %rbx
  4084f4:	e9 c7 9c ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  4084f9:	90                   	nop
  4084fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000408500 <_ZN4Poco17ProtocolExceptionD1Ev>:
  408500:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  408507:	e9 94 f9 ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  40850c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000408510 <_ZN4Poco17ProtocolExceptionD0Ev>:
  408510:	53                   	push   %rbx
  408511:	48 89 fb             	mov    %rdi,%rbx
  408514:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  40851b:	e8 80 f9 ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  408520:	48 89 df             	mov    %rbx,%rdi
  408523:	5b                   	pop    %rbx
  408524:	e9 97 9c ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  408529:	90                   	nop
  40852a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000408530 <_ZN4Poco13FileExceptionD1Ev>:
  408530:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  408537:	e9 64 f9 ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  40853c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000408540 <_ZN4Poco13FileExceptionD0Ev>:
  408540:	53                   	push   %rbx
  408541:	48 89 fb             	mov    %rdi,%rbx
  408544:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  40854b:	e8 50 f9 ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  408550:	48 89 df             	mov    %rbx,%rdi
  408553:	5b                   	pop    %rbx
  408554:	e9 67 9c ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  408559:	90                   	nop
  40855a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000408560 <_ZN4Poco19FileExistsExceptionD1Ev>:
  408560:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  408567:	e9 34 f9 ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  40856c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000408570 <_ZN4Poco19FileExistsExceptionD0Ev>:
  408570:	53                   	push   %rbx
  408571:	48 89 fb             	mov    %rdi,%rbx
  408574:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  40857b:	e8 20 f9 ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  408580:	48 89 df             	mov    %rbx,%rdi
  408583:	5b                   	pop    %rbx
  408584:	e9 37 9c ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  408589:	90                   	nop
  40858a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000408590 <_ZN4Poco21FileNotFoundExceptionD1Ev>:
  408590:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  408597:	e9 04 f9 ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  40859c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004085a0 <_ZN4Poco21FileNotFoundExceptionD0Ev>:
  4085a0:	53                   	push   %rbx
  4085a1:	48 89 fb             	mov    %rdi,%rbx
  4085a4:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  4085ab:	e8 f0 f8 ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  4085b0:	48 89 df             	mov    %rbx,%rdi
  4085b3:	5b                   	pop    %rbx
  4085b4:	e9 07 9c ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  4085b9:	90                   	nop
  4085ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004085c0 <_ZN4Poco21PathNotFoundExceptionD1Ev>:
  4085c0:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  4085c7:	e9 d4 f8 ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  4085cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004085d0 <_ZN4Poco21PathNotFoundExceptionD0Ev>:
  4085d0:	53                   	push   %rbx
  4085d1:	48 89 fb             	mov    %rdi,%rbx
  4085d4:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  4085db:	e8 c0 f8 ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  4085e0:	48 89 df             	mov    %rbx,%rdi
  4085e3:	5b                   	pop    %rbx
  4085e4:	e9 d7 9b ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  4085e9:	90                   	nop
  4085ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004085f0 <_ZN4Poco21FileReadOnlyExceptionD1Ev>:
  4085f0:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  4085f7:	e9 a4 f8 ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  4085fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000408600 <_ZN4Poco21FileReadOnlyExceptionD0Ev>:
  408600:	53                   	push   %rbx
  408601:	48 89 fb             	mov    %rdi,%rbx
  408604:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  40860b:	e8 90 f8 ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  408610:	48 89 df             	mov    %rbx,%rdi
  408613:	5b                   	pop    %rbx
  408614:	e9 a7 9b ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  408619:	90                   	nop
  40861a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000408620 <_ZN4Poco25FileAccessDeniedExceptionD1Ev>:
  408620:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  408627:	e9 74 f8 ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  40862c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000408630 <_ZN4Poco25FileAccessDeniedExceptionD0Ev>:
  408630:	53                   	push   %rbx
  408631:	48 89 fb             	mov    %rdi,%rbx
  408634:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  40863b:	e8 60 f8 ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  408640:	48 89 df             	mov    %rbx,%rdi
  408643:	5b                   	pop    %rbx
  408644:	e9 77 9b ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  408649:	90                   	nop
  40864a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000408650 <_ZN4Poco19CreateFileExceptionD1Ev>:
  408650:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  408657:	e9 44 f8 ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  40865c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000408660 <_ZN4Poco19CreateFileExceptionD0Ev>:
  408660:	53                   	push   %rbx
  408661:	48 89 fb             	mov    %rdi,%rbx
  408664:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  40866b:	e8 30 f8 ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  408670:	48 89 df             	mov    %rbx,%rdi
  408673:	5b                   	pop    %rbx
  408674:	e9 47 9b ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  408679:	90                   	nop
  40867a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000408680 <_ZN4Poco17OpenFileExceptionD1Ev>:
  408680:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  408687:	e9 14 f8 ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  40868c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000408690 <_ZN4Poco17OpenFileExceptionD0Ev>:
  408690:	53                   	push   %rbx
  408691:	48 89 fb             	mov    %rdi,%rbx
  408694:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  40869b:	e8 00 f8 ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  4086a0:	48 89 df             	mov    %rbx,%rdi
  4086a3:	5b                   	pop    %rbx
  4086a4:	e9 17 9b ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  4086a9:	90                   	nop
  4086aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004086b0 <_ZN4Poco18WriteFileExceptionD1Ev>:
  4086b0:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  4086b7:	e9 e4 f7 ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  4086bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004086c0 <_ZN4Poco18WriteFileExceptionD0Ev>:
  4086c0:	53                   	push   %rbx
  4086c1:	48 89 fb             	mov    %rdi,%rbx
  4086c4:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  4086cb:	e8 d0 f7 ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  4086d0:	48 89 df             	mov    %rbx,%rdi
  4086d3:	5b                   	pop    %rbx
  4086d4:	e9 e7 9a ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  4086d9:	90                   	nop
  4086da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004086e0 <_ZN4Poco17ReadFileExceptionD1Ev>:
  4086e0:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  4086e7:	e9 b4 f7 ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  4086ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004086f0 <_ZN4Poco17ReadFileExceptionD0Ev>:
  4086f0:	53                   	push   %rbx
  4086f1:	48 89 fb             	mov    %rdi,%rbx
  4086f4:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  4086fb:	e8 a0 f7 ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  408700:	48 89 df             	mov    %rbx,%rdi
  408703:	5b                   	pop    %rbx
  408704:	e9 b7 9a ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  408709:	90                   	nop
  40870a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000408710 <_ZN4Poco25UnknownURISchemeExceptionD1Ev>:
  408710:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  408717:	e9 84 f7 ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  40871c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000408720 <_ZN4Poco25UnknownURISchemeExceptionD0Ev>:
  408720:	53                   	push   %rbx
  408721:	48 89 fb             	mov    %rdi,%rbx
  408724:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  40872b:	e8 70 f7 ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  408730:	48 89 df             	mov    %rbx,%rdi
  408733:	5b                   	pop    %rbx
  408734:	e9 87 9a ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  408739:	90                   	nop
  40873a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000408740 <_ZN4Poco16BadCastExceptionD1Ev>:
  408740:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  408747:	e9 54 f7 ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  40874c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000408750 <_ZN4Poco16BadCastExceptionD0Ev>:
  408750:	53                   	push   %rbx
  408751:	48 89 fb             	mov    %rdi,%rbx
  408754:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  40875b:	e8 40 f7 ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  408760:	48 89 df             	mov    %rbx,%rdi
  408763:	5b                   	pop    %rbx
  408764:	e9 57 9a ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  408769:	90                   	nop
  40876a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000408770 <_ZN4Poco20ApplicationExceptionD1Ev>:
  408770:	48 c7 07 b0 f0 40 00 	movq   $0x40f0b0,(%rdi)
  408777:	e9 24 f7 ff ff       	jmpq   407ea0 <_ZN4Poco9ExceptionD1Ev>
  40877c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000408780 <_ZN4Poco20ApplicationExceptionD0Ev>:
  408780:	53                   	push   %rbx
  408781:	48 89 fb             	mov    %rdi,%rbx
  408784:	48 c7 07 b0 f0 40 00 	movq   $0x40f0b0,(%rdi)
  40878b:	e8 10 f7 ff ff       	callq  407ea0 <_ZN4Poco9ExceptionD1Ev>
  408790:	48 89 df             	mov    %rbx,%rdi
  408793:	5b                   	pop    %rbx
  408794:	e9 27 9a ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  408799:	90                   	nop
  40879a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004087a0 <_ZN4Poco9ExceptionC1Ei>:
  4087a0:	48 c7 07 30 e0 40 00 	movq   $0x40e030,(%rdi)
  4087a7:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  4087ae:	00 
  4087af:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  4087b6:	00 
  4087b7:	89 77 18             	mov    %esi,0x18(%rdi)
  4087ba:	c3                   	retq   
  4087bb:	90                   	nop
  4087bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004087c0 <_ZN4Poco9ExceptionC1ERKSsi>:
  4087c0:	55                   	push   %rbp
  4087c1:	89 d5                	mov    %edx,%ebp
  4087c3:	53                   	push   %rbx
  4087c4:	48 89 fb             	mov    %rdi,%rbx
  4087c7:	48 8d 7f 08          	lea    0x8(%rdi),%rdi
  4087cb:	48 83 ec 08          	sub    $0x8,%rsp
  4087cf:	48 c7 47 f8 30 e0 40 	movq   $0x40e030,-0x8(%rdi)
  4087d6:	00 
  4087d7:	e8 74 9a ff ff       	callq  402250 <_ZNSsC1ERKSs@plt>
  4087dc:	89 6b 18             	mov    %ebp,0x18(%rbx)
  4087df:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  4087e6:	00 
  4087e7:	48 83 c4 08          	add    $0x8,%rsp
  4087eb:	5b                   	pop    %rbx
  4087ec:	5d                   	pop    %rbp
  4087ed:	c3                   	retq   
  4087ee:	48 89 c5             	mov    %rax,%rbp
  4087f1:	48 89 df             	mov    %rbx,%rdi
  4087f4:	e8 17 9c ff ff       	callq  402410 <_ZNSt9exceptionD2Ev@plt>
  4087f9:	48 89 ef             	mov    %rbp,%rdi
  4087fc:	e8 bf 9d ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  408801:	90                   	nop
  408802:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  408809:	1f 84 00 00 00 00 00 

0000000000408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>:
  408810:	41 55                	push   %r13
  408812:	41 89 cd             	mov    %ecx,%r13d
  408815:	41 54                	push   %r12
  408817:	49 89 d4             	mov    %rdx,%r12
  40881a:	55                   	push   %rbp
  40881b:	48 8d 6f 08          	lea    0x8(%rdi),%rbp
  40881f:	53                   	push   %rbx
  408820:	48 89 fb             	mov    %rdi,%rbx
  408823:	48 83 ec 18          	sub    $0x18,%rsp
  408827:	48 c7 07 30 e0 40 00 	movq   $0x40e030,(%rdi)
  40882e:	48 89 ef             	mov    %rbp,%rdi
  408831:	e8 1a 9a ff ff       	callq  402250 <_ZNSsC1ERKSs@plt>
  408836:	49 8b 04 24          	mov    (%r12),%rax
  40883a:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  408841:	00 
  408842:	44 89 6b 18          	mov    %r13d,0x18(%rbx)
  408846:	48 83 78 e8 00       	cmpq   $0x0,-0x18(%rax)
  40884b:	75 13                	jne    408860 <_ZN4Poco9ExceptionC1ERKSsS2_i+0x50>
  40884d:	48 83 c4 18          	add    $0x18,%rsp
  408851:	5b                   	pop    %rbx
  408852:	5d                   	pop    %rbp
  408853:	41 5c                	pop    %r12
  408855:	41 5d                	pop    %r13
  408857:	c3                   	retq   
  408858:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40885f:	00 
  408860:	ba 02 00 00 00       	mov    $0x2,%edx
  408865:	be 25 cf 40 00       	mov    $0x40cf25,%esi
  40886a:	48 89 ef             	mov    %rbp,%rdi
  40886d:	e8 be 98 ff ff       	callq  402130 <_ZNSs6appendEPKcm@plt>
  408872:	4c 89 e6             	mov    %r12,%rsi
  408875:	48 89 ef             	mov    %rbp,%rdi
  408878:	e8 a3 9d ff ff       	callq  402620 <_ZNSs6appendERKSs@plt>
  40887d:	48 83 c4 18          	add    $0x18,%rsp
  408881:	5b                   	pop    %rbx
  408882:	5d                   	pop    %rbp
  408883:	41 5c                	pop    %r12
  408885:	41 5d                	pop    %r13
  408887:	c3                   	retq   
  408888:	48 89 c5             	mov    %rax,%rbp
  40888b:	48 8b 43 08          	mov    0x8(%rbx),%rax
  40888f:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  408894:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  408898:	e8 33 99 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  40889d:	48 89 df             	mov    %rbx,%rdi
  4088a0:	e8 6b 9b ff ff       	callq  402410 <_ZNSt9exceptionD2Ev@plt>
  4088a5:	48 89 ef             	mov    %rbp,%rdi
  4088a8:	e8 13 9d ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4088ad:	48 89 c5             	mov    %rax,%rbp
  4088b0:	eb eb                	jmp    40889d <_ZN4Poco9ExceptionC1ERKSsS2_i+0x8d>
  4088b2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4088b9:	1f 84 00 00 00 00 00 

00000000004088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>:
  4088c0:	41 54                	push   %r12
  4088c2:	41 89 cc             	mov    %ecx,%r12d
  4088c5:	55                   	push   %rbp
  4088c6:	48 89 d5             	mov    %rdx,%rbp
  4088c9:	53                   	push   %rbx
  4088ca:	48 89 fb             	mov    %rdi,%rbx
  4088cd:	48 8d 7f 08          	lea    0x8(%rdi),%rdi
  4088d1:	48 83 ec 10          	sub    $0x10,%rsp
  4088d5:	48 c7 47 f8 30 e0 40 	movq   $0x40e030,-0x8(%rdi)
  4088dc:	00 
  4088dd:	e8 6e 99 ff ff       	callq  402250 <_ZNSsC1ERKSs@plt>
  4088e2:	48 8b 45 00          	mov    0x0(%rbp),%rax
  4088e6:	48 89 ef             	mov    %rbp,%rdi
  4088e9:	ff 50 28             	callq  *0x28(%rax)
  4088ec:	44 89 63 18          	mov    %r12d,0x18(%rbx)
  4088f0:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4088f4:	48 83 c4 10          	add    $0x10,%rsp
  4088f8:	5b                   	pop    %rbx
  4088f9:	5d                   	pop    %rbp
  4088fa:	41 5c                	pop    %r12
  4088fc:	c3                   	retq   
  4088fd:	48 89 c5             	mov    %rax,%rbp
  408900:	48 89 df             	mov    %rbx,%rdi
  408903:	e8 08 9b ff ff       	callq  402410 <_ZNSt9exceptionD2Ev@plt>
  408908:	48 89 ef             	mov    %rbp,%rdi
  40890b:	e8 b0 9c ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  408910:	48 89 c5             	mov    %rax,%rbp
  408913:	48 8b 43 08          	mov    0x8(%rbx),%rax
  408917:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  40891c:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  408920:	e8 ab 98 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  408925:	eb d9                	jmp    408900 <_ZN4Poco9ExceptionC1ERKSsRKS0_i+0x40>
  408927:	90                   	nop
  408928:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40892f:	00 

0000000000408930 <_ZN4Poco9ExceptionC1ERKS0_>:
  408930:	55                   	push   %rbp
  408931:	48 89 f5             	mov    %rsi,%rbp
  408934:	48 8d 76 08          	lea    0x8(%rsi),%rsi
  408938:	53                   	push   %rbx
  408939:	48 89 fb             	mov    %rdi,%rbx
  40893c:	48 8d 7f 08          	lea    0x8(%rdi),%rdi
  408940:	48 83 ec 18          	sub    $0x18,%rsp
  408944:	48 c7 47 f8 30 e0 40 	movq   $0x40e030,-0x8(%rdi)
  40894b:	00 
  40894c:	e8 ff 98 ff ff       	callq  402250 <_ZNSsC1ERKSs@plt>
  408951:	48 8b 7d 10          	mov    0x10(%rbp),%rdi
  408955:	8b 45 18             	mov    0x18(%rbp),%eax
  408958:	48 85 ff             	test   %rdi,%rdi
  40895b:	89 43 18             	mov    %eax,0x18(%rbx)
  40895e:	74 18                	je     408978 <_ZN4Poco9ExceptionC1ERKS0_+0x48>
  408960:	48 8b 07             	mov    (%rdi),%rax
  408963:	ff 50 28             	callq  *0x28(%rax)
  408966:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40896a:	48 83 c4 18          	add    $0x18,%rsp
  40896e:	5b                   	pop    %rbx
  40896f:	5d                   	pop    %rbp
  408970:	c3                   	retq   
  408971:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  408978:	31 c0                	xor    %eax,%eax
  40897a:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40897e:	48 83 c4 18          	add    $0x18,%rsp
  408982:	5b                   	pop    %rbx
  408983:	5d                   	pop    %rbp
  408984:	c3                   	retq   
  408985:	48 89 c5             	mov    %rax,%rbp
  408988:	48 89 df             	mov    %rbx,%rdi
  40898b:	e8 80 9a ff ff       	callq  402410 <_ZNSt9exceptionD2Ev@plt>
  408990:	48 89 ef             	mov    %rbp,%rdi
  408993:	e8 28 9c ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  408998:	48 89 c5             	mov    %rax,%rbp
  40899b:	48 8b 43 08          	mov    0x8(%rbx),%rax
  40899f:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  4089a4:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4089a8:	e8 23 98 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  4089ad:	eb d9                	jmp    408988 <_ZN4Poco9ExceptionC1ERKS0_+0x58>
  4089af:	90                   	nop

00000000004089b0 <_ZNK4Poco9Exception5cloneEv>:
  4089b0:	55                   	push   %rbp
  4089b1:	48 89 fd             	mov    %rdi,%rbp
  4089b4:	bf 20 00 00 00       	mov    $0x20,%edi
  4089b9:	53                   	push   %rbx
  4089ba:	48 83 ec 08          	sub    $0x8,%rsp
  4089be:	e8 ed 9b ff ff       	callq  4025b0 <_Znwm@plt>
  4089c3:	48 89 ee             	mov    %rbp,%rsi
  4089c6:	48 89 c7             	mov    %rax,%rdi
  4089c9:	48 89 c3             	mov    %rax,%rbx
  4089cc:	e8 5f ff ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  4089d1:	48 83 c4 08          	add    $0x8,%rsp
  4089d5:	48 89 d8             	mov    %rbx,%rax
  4089d8:	5b                   	pop    %rbx
  4089d9:	5d                   	pop    %rbp
  4089da:	c3                   	retq   
  4089db:	48 89 c5             	mov    %rax,%rbp
  4089de:	48 89 df             	mov    %rbx,%rdi
  4089e1:	e8 da 97 ff ff       	callq  4021c0 <_ZdlPv@plt>
  4089e6:	48 89 ef             	mov    %rbp,%rdi
  4089e9:	e8 d2 9b ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4089ee:	66 90                	xchg   %ax,%ax

00000000004089f0 <_ZNK4Poco9Exception7rethrowEv>:
  4089f0:	55                   	push   %rbp
  4089f1:	48 89 fd             	mov    %rdi,%rbp
  4089f4:	bf 20 00 00 00       	mov    $0x20,%edi
  4089f9:	53                   	push   %rbx
  4089fa:	48 83 ec 08          	sub    $0x8,%rsp
  4089fe:	e8 fd 99 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  408a03:	48 89 ee             	mov    %rbp,%rsi
  408a06:	48 89 c7             	mov    %rax,%rdi
  408a09:	48 89 c3             	mov    %rax,%rbx
  408a0c:	e8 1f ff ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  408a11:	ba a0 7e 40 00       	mov    $0x407ea0,%edx
  408a16:	be 70 d3 40 00       	mov    $0x40d370,%esi
  408a1b:	48 89 df             	mov    %rbx,%rdi
  408a1e:	e8 7d 9a ff ff       	callq  4024a0 <__cxa_throw@plt>
  408a23:	48 89 c5             	mov    %rax,%rbp
  408a26:	48 89 df             	mov    %rbx,%rdi
  408a29:	e8 f2 99 ff ff       	callq  402420 <__cxa_free_exception@plt>
  408a2e:	48 89 ef             	mov    %rbp,%rdi
  408a31:	e8 8a 9b ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  408a36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  408a3d:	00 00 00 

0000000000408a40 <_ZNK4Poco14LogicException5cloneEv>:
  408a40:	55                   	push   %rbp
  408a41:	48 89 fd             	mov    %rdi,%rbp
  408a44:	bf 20 00 00 00       	mov    $0x20,%edi
  408a49:	53                   	push   %rbx
  408a4a:	48 83 ec 08          	sub    $0x8,%rsp
  408a4e:	e8 5d 9b ff ff       	callq  4025b0 <_Znwm@plt>
  408a53:	48 89 ee             	mov    %rbp,%rsi
  408a56:	48 89 c7             	mov    %rax,%rdi
  408a59:	48 89 c3             	mov    %rax,%rbx
  408a5c:	e8 cf fe ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  408a61:	48 c7 03 90 e0 40 00 	movq   $0x40e090,(%rbx)
  408a68:	48 83 c4 08          	add    $0x8,%rsp
  408a6c:	48 89 d8             	mov    %rbx,%rax
  408a6f:	5b                   	pop    %rbx
  408a70:	5d                   	pop    %rbp
  408a71:	c3                   	retq   
  408a72:	48 89 c5             	mov    %rax,%rbp
  408a75:	48 89 df             	mov    %rbx,%rdi
  408a78:	e8 43 97 ff ff       	callq  4021c0 <_ZdlPv@plt>
  408a7d:	48 89 ef             	mov    %rbp,%rdi
  408a80:	e8 3b 9b ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  408a85:	90                   	nop
  408a86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  408a8d:	00 00 00 

0000000000408a90 <_ZNK4Poco14LogicException7rethrowEv>:
  408a90:	55                   	push   %rbp
  408a91:	48 89 fd             	mov    %rdi,%rbp
  408a94:	bf 20 00 00 00       	mov    $0x20,%edi
  408a99:	53                   	push   %rbx
  408a9a:	48 83 ec 08          	sub    $0x8,%rsp
  408a9e:	e8 5d 99 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  408aa3:	48 89 ee             	mov    %rbp,%rsi
  408aa6:	48 89 c7             	mov    %rax,%rdi
  408aa9:	48 89 c3             	mov    %rax,%rbx
  408aac:	e8 7f fe ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  408ab1:	48 c7 03 90 e0 40 00 	movq   $0x40e090,(%rbx)
  408ab8:	ba 30 7f 40 00       	mov    $0x407f30,%edx
  408abd:	be b0 d3 40 00       	mov    $0x40d3b0,%esi
  408ac2:	48 89 df             	mov    %rbx,%rdi
  408ac5:	e8 d6 99 ff ff       	callq  4024a0 <__cxa_throw@plt>
  408aca:	48 89 c5             	mov    %rax,%rbp
  408acd:	48 89 df             	mov    %rbx,%rdi
  408ad0:	e8 4b 99 ff ff       	callq  402420 <__cxa_free_exception@plt>
  408ad5:	48 89 ef             	mov    %rbp,%rdi
  408ad8:	e8 e3 9a ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  408add:	90                   	nop
  408ade:	66 90                	xchg   %ax,%ax

0000000000408ae0 <_ZNK4Poco27AssertionViolationException5cloneEv>:
  408ae0:	55                   	push   %rbp
  408ae1:	48 89 fd             	mov    %rdi,%rbp
  408ae4:	bf 20 00 00 00       	mov    $0x20,%edi
  408ae9:	53                   	push   %rbx
  408aea:	48 83 ec 08          	sub    $0x8,%rsp
  408aee:	e8 bd 9a ff ff       	callq  4025b0 <_Znwm@plt>
  408af3:	48 89 ee             	mov    %rbp,%rsi
  408af6:	48 89 c7             	mov    %rax,%rdi
  408af9:	48 89 c3             	mov    %rax,%rbx
  408afc:	e8 2f fe ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  408b01:	48 c7 03 f0 e0 40 00 	movq   $0x40e0f0,(%rbx)
  408b08:	48 83 c4 08          	add    $0x8,%rsp
  408b0c:	48 89 d8             	mov    %rbx,%rax
  408b0f:	5b                   	pop    %rbx
  408b10:	5d                   	pop    %rbp
  408b11:	c3                   	retq   
  408b12:	48 89 c5             	mov    %rax,%rbp
  408b15:	48 89 df             	mov    %rbx,%rdi
  408b18:	e8 a3 96 ff ff       	callq  4021c0 <_ZdlPv@plt>
  408b1d:	48 89 ef             	mov    %rbp,%rdi
  408b20:	e8 9b 9a ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  408b25:	90                   	nop
  408b26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  408b2d:	00 00 00 

0000000000408b30 <_ZNK4Poco27AssertionViolationException7rethrowEv>:
  408b30:	55                   	push   %rbp
  408b31:	48 89 fd             	mov    %rdi,%rbp
  408b34:	bf 20 00 00 00       	mov    $0x20,%edi
  408b39:	53                   	push   %rbx
  408b3a:	48 83 ec 08          	sub    $0x8,%rsp
  408b3e:	e8 bd 98 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  408b43:	48 89 ee             	mov    %rbp,%rsi
  408b46:	48 89 c7             	mov    %rax,%rdi
  408b49:	48 89 c3             	mov    %rax,%rbx
  408b4c:	e8 df fd ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  408b51:	48 c7 03 f0 e0 40 00 	movq   $0x40e0f0,(%rbx)
  408b58:	ba 60 7f 40 00       	mov    $0x407f60,%edx
  408b5d:	be 10 d4 40 00       	mov    $0x40d410,%esi
  408b62:	48 89 df             	mov    %rbx,%rdi
  408b65:	e8 36 99 ff ff       	callq  4024a0 <__cxa_throw@plt>
  408b6a:	48 89 c5             	mov    %rax,%rbp
  408b6d:	48 89 df             	mov    %rbx,%rdi
  408b70:	e8 ab 98 ff ff       	callq  402420 <__cxa_free_exception@plt>
  408b75:	48 89 ef             	mov    %rbp,%rdi
  408b78:	e8 43 9a ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  408b7d:	90                   	nop
  408b7e:	66 90                	xchg   %ax,%ax

0000000000408b80 <_ZNK4Poco20NullPointerException5cloneEv>:
  408b80:	55                   	push   %rbp
  408b81:	48 89 fd             	mov    %rdi,%rbp
  408b84:	bf 20 00 00 00       	mov    $0x20,%edi
  408b89:	53                   	push   %rbx
  408b8a:	48 83 ec 08          	sub    $0x8,%rsp
  408b8e:	e8 1d 9a ff ff       	callq  4025b0 <_Znwm@plt>
  408b93:	48 89 ee             	mov    %rbp,%rsi
  408b96:	48 89 c7             	mov    %rax,%rdi
  408b99:	48 89 c3             	mov    %rax,%rbx
  408b9c:	e8 8f fd ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  408ba1:	48 c7 03 50 e1 40 00 	movq   $0x40e150,(%rbx)
  408ba8:	48 83 c4 08          	add    $0x8,%rsp
  408bac:	48 89 d8             	mov    %rbx,%rax
  408baf:	5b                   	pop    %rbx
  408bb0:	5d                   	pop    %rbp
  408bb1:	c3                   	retq   
  408bb2:	48 89 c5             	mov    %rax,%rbp
  408bb5:	48 89 df             	mov    %rbx,%rdi
  408bb8:	e8 03 96 ff ff       	callq  4021c0 <_ZdlPv@plt>
  408bbd:	48 89 ef             	mov    %rbp,%rdi
  408bc0:	e8 fb 99 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  408bc5:	90                   	nop
  408bc6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  408bcd:	00 00 00 

0000000000408bd0 <_ZNK4Poco20NullPointerException7rethrowEv>:
  408bd0:	55                   	push   %rbp
  408bd1:	48 89 fd             	mov    %rdi,%rbp
  408bd4:	bf 20 00 00 00       	mov    $0x20,%edi
  408bd9:	53                   	push   %rbx
  408bda:	48 83 ec 08          	sub    $0x8,%rsp
  408bde:	e8 1d 98 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  408be3:	48 89 ee             	mov    %rbp,%rsi
  408be6:	48 89 c7             	mov    %rax,%rdi
  408be9:	48 89 c3             	mov    %rax,%rbx
  408bec:	e8 3f fd ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  408bf1:	48 c7 03 50 e1 40 00 	movq   $0x40e150,(%rbx)
  408bf8:	ba 90 7f 40 00       	mov    $0x407f90,%edx
  408bfd:	be 50 d4 40 00       	mov    $0x40d450,%esi
  408c02:	48 89 df             	mov    %rbx,%rdi
  408c05:	e8 96 98 ff ff       	callq  4024a0 <__cxa_throw@plt>
  408c0a:	48 89 c5             	mov    %rax,%rbp
  408c0d:	48 89 df             	mov    %rbx,%rdi
  408c10:	e8 0b 98 ff ff       	callq  402420 <__cxa_free_exception@plt>
  408c15:	48 89 ef             	mov    %rbp,%rdi
  408c18:	e8 a3 99 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  408c1d:	90                   	nop
  408c1e:	66 90                	xchg   %ax,%ax

0000000000408c20 <_ZNK4Poco18NullValueException5cloneEv>:
  408c20:	55                   	push   %rbp
  408c21:	48 89 fd             	mov    %rdi,%rbp
  408c24:	bf 20 00 00 00       	mov    $0x20,%edi
  408c29:	53                   	push   %rbx
  408c2a:	48 83 ec 08          	sub    $0x8,%rsp
  408c2e:	e8 7d 99 ff ff       	callq  4025b0 <_Znwm@plt>
  408c33:	48 89 ee             	mov    %rbp,%rsi
  408c36:	48 89 c7             	mov    %rax,%rdi
  408c39:	48 89 c3             	mov    %rax,%rbx
  408c3c:	e8 ef fc ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  408c41:	48 c7 03 b0 e1 40 00 	movq   $0x40e1b0,(%rbx)
  408c48:	48 83 c4 08          	add    $0x8,%rsp
  408c4c:	48 89 d8             	mov    %rbx,%rax
  408c4f:	5b                   	pop    %rbx
  408c50:	5d                   	pop    %rbp
  408c51:	c3                   	retq   
  408c52:	48 89 c5             	mov    %rax,%rbp
  408c55:	48 89 df             	mov    %rbx,%rdi
  408c58:	e8 63 95 ff ff       	callq  4021c0 <_ZdlPv@plt>
  408c5d:	48 89 ef             	mov    %rbp,%rdi
  408c60:	e8 5b 99 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  408c65:	90                   	nop
  408c66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  408c6d:	00 00 00 

0000000000408c70 <_ZNK4Poco18NullValueException7rethrowEv>:
  408c70:	55                   	push   %rbp
  408c71:	48 89 fd             	mov    %rdi,%rbp
  408c74:	bf 20 00 00 00       	mov    $0x20,%edi
  408c79:	53                   	push   %rbx
  408c7a:	48 83 ec 08          	sub    $0x8,%rsp
  408c7e:	e8 7d 97 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  408c83:	48 89 ee             	mov    %rbp,%rsi
  408c86:	48 89 c7             	mov    %rax,%rdi
  408c89:	48 89 c3             	mov    %rax,%rbx
  408c8c:	e8 9f fc ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  408c91:	48 c7 03 b0 e1 40 00 	movq   $0x40e1b0,(%rbx)
  408c98:	ba c0 7f 40 00       	mov    $0x407fc0,%edx
  408c9d:	be 90 d4 40 00       	mov    $0x40d490,%esi
  408ca2:	48 89 df             	mov    %rbx,%rdi
  408ca5:	e8 f6 97 ff ff       	callq  4024a0 <__cxa_throw@plt>
  408caa:	48 89 c5             	mov    %rax,%rbp
  408cad:	48 89 df             	mov    %rbx,%rdi
  408cb0:	e8 6b 97 ff ff       	callq  402420 <__cxa_free_exception@plt>
  408cb5:	48 89 ef             	mov    %rbp,%rdi
  408cb8:	e8 03 99 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  408cbd:	90                   	nop
  408cbe:	66 90                	xchg   %ax,%ax

0000000000408cc0 <_ZNK4Poco17BugcheckException5cloneEv>:
  408cc0:	55                   	push   %rbp
  408cc1:	48 89 fd             	mov    %rdi,%rbp
  408cc4:	bf 20 00 00 00       	mov    $0x20,%edi
  408cc9:	53                   	push   %rbx
  408cca:	48 83 ec 08          	sub    $0x8,%rsp
  408cce:	e8 dd 98 ff ff       	callq  4025b0 <_Znwm@plt>
  408cd3:	48 89 ee             	mov    %rbp,%rsi
  408cd6:	48 89 c7             	mov    %rax,%rdi
  408cd9:	48 89 c3             	mov    %rax,%rbx
  408cdc:	e8 4f fc ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  408ce1:	48 c7 03 10 e2 40 00 	movq   $0x40e210,(%rbx)
  408ce8:	48 83 c4 08          	add    $0x8,%rsp
  408cec:	48 89 d8             	mov    %rbx,%rax
  408cef:	5b                   	pop    %rbx
  408cf0:	5d                   	pop    %rbp
  408cf1:	c3                   	retq   
  408cf2:	48 89 c5             	mov    %rax,%rbp
  408cf5:	48 89 df             	mov    %rbx,%rdi
  408cf8:	e8 c3 94 ff ff       	callq  4021c0 <_ZdlPv@plt>
  408cfd:	48 89 ef             	mov    %rbp,%rdi
  408d00:	e8 bb 98 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  408d05:	90                   	nop
  408d06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  408d0d:	00 00 00 

0000000000408d10 <_ZNK4Poco17BugcheckException7rethrowEv>:
  408d10:	55                   	push   %rbp
  408d11:	48 89 fd             	mov    %rdi,%rbp
  408d14:	bf 20 00 00 00       	mov    $0x20,%edi
  408d19:	53                   	push   %rbx
  408d1a:	48 83 ec 08          	sub    $0x8,%rsp
  408d1e:	e8 dd 96 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  408d23:	48 89 ee             	mov    %rbp,%rsi
  408d26:	48 89 c7             	mov    %rax,%rdi
  408d29:	48 89 c3             	mov    %rax,%rbx
  408d2c:	e8 ff fb ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  408d31:	48 c7 03 10 e2 40 00 	movq   $0x40e210,(%rbx)
  408d38:	ba f0 7f 40 00       	mov    $0x407ff0,%edx
  408d3d:	be d0 d4 40 00       	mov    $0x40d4d0,%esi
  408d42:	48 89 df             	mov    %rbx,%rdi
  408d45:	e8 56 97 ff ff       	callq  4024a0 <__cxa_throw@plt>
  408d4a:	48 89 c5             	mov    %rax,%rbp
  408d4d:	48 89 df             	mov    %rbx,%rdi
  408d50:	e8 cb 96 ff ff       	callq  402420 <__cxa_free_exception@plt>
  408d55:	48 89 ef             	mov    %rbp,%rdi
  408d58:	e8 63 98 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  408d5d:	90                   	nop
  408d5e:	66 90                	xchg   %ax,%ax

0000000000408d60 <_ZNK4Poco24InvalidArgumentException5cloneEv>:
  408d60:	55                   	push   %rbp
  408d61:	48 89 fd             	mov    %rdi,%rbp
  408d64:	bf 20 00 00 00       	mov    $0x20,%edi
  408d69:	53                   	push   %rbx
  408d6a:	48 83 ec 08          	sub    $0x8,%rsp
  408d6e:	e8 3d 98 ff ff       	callq  4025b0 <_Znwm@plt>
  408d73:	48 89 ee             	mov    %rbp,%rsi
  408d76:	48 89 c7             	mov    %rax,%rdi
  408d79:	48 89 c3             	mov    %rax,%rbx
  408d7c:	e8 af fb ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  408d81:	48 c7 03 70 e2 40 00 	movq   $0x40e270,(%rbx)
  408d88:	48 83 c4 08          	add    $0x8,%rsp
  408d8c:	48 89 d8             	mov    %rbx,%rax
  408d8f:	5b                   	pop    %rbx
  408d90:	5d                   	pop    %rbp
  408d91:	c3                   	retq   
  408d92:	48 89 c5             	mov    %rax,%rbp
  408d95:	48 89 df             	mov    %rbx,%rdi
  408d98:	e8 23 94 ff ff       	callq  4021c0 <_ZdlPv@plt>
  408d9d:	48 89 ef             	mov    %rbp,%rdi
  408da0:	e8 1b 98 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  408da5:	90                   	nop
  408da6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  408dad:	00 00 00 

0000000000408db0 <_ZNK4Poco24InvalidArgumentException7rethrowEv>:
  408db0:	55                   	push   %rbp
  408db1:	48 89 fd             	mov    %rdi,%rbp
  408db4:	bf 20 00 00 00       	mov    $0x20,%edi
  408db9:	53                   	push   %rbx
  408dba:	48 83 ec 08          	sub    $0x8,%rsp
  408dbe:	e8 3d 96 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  408dc3:	48 89 ee             	mov    %rbp,%rsi
  408dc6:	48 89 c7             	mov    %rax,%rdi
  408dc9:	48 89 c3             	mov    %rax,%rbx
  408dcc:	e8 5f fb ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  408dd1:	48 c7 03 70 e2 40 00 	movq   $0x40e270,(%rbx)
  408dd8:	ba 20 80 40 00       	mov    $0x408020,%edx
  408ddd:	be 30 d5 40 00       	mov    $0x40d530,%esi
  408de2:	48 89 df             	mov    %rbx,%rdi
  408de5:	e8 b6 96 ff ff       	callq  4024a0 <__cxa_throw@plt>
  408dea:	48 89 c5             	mov    %rax,%rbp
  408ded:	48 89 df             	mov    %rbx,%rdi
  408df0:	e8 2b 96 ff ff       	callq  402420 <__cxa_free_exception@plt>
  408df5:	48 89 ef             	mov    %rbp,%rdi
  408df8:	e8 c3 97 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  408dfd:	90                   	nop
  408dfe:	66 90                	xchg   %ax,%ax

0000000000408e00 <_ZNK4Poco23NotImplementedException5cloneEv>:
  408e00:	55                   	push   %rbp
  408e01:	48 89 fd             	mov    %rdi,%rbp
  408e04:	bf 20 00 00 00       	mov    $0x20,%edi
  408e09:	53                   	push   %rbx
  408e0a:	48 83 ec 08          	sub    $0x8,%rsp
  408e0e:	e8 9d 97 ff ff       	callq  4025b0 <_Znwm@plt>
  408e13:	48 89 ee             	mov    %rbp,%rsi
  408e16:	48 89 c7             	mov    %rax,%rdi
  408e19:	48 89 c3             	mov    %rax,%rbx
  408e1c:	e8 0f fb ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  408e21:	48 c7 03 d0 e2 40 00 	movq   $0x40e2d0,(%rbx)
  408e28:	48 83 c4 08          	add    $0x8,%rsp
  408e2c:	48 89 d8             	mov    %rbx,%rax
  408e2f:	5b                   	pop    %rbx
  408e30:	5d                   	pop    %rbp
  408e31:	c3                   	retq   
  408e32:	48 89 c5             	mov    %rax,%rbp
  408e35:	48 89 df             	mov    %rbx,%rdi
  408e38:	e8 83 93 ff ff       	callq  4021c0 <_ZdlPv@plt>
  408e3d:	48 89 ef             	mov    %rbp,%rdi
  408e40:	e8 7b 97 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  408e45:	90                   	nop
  408e46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  408e4d:	00 00 00 

0000000000408e50 <_ZNK4Poco23NotImplementedException7rethrowEv>:
  408e50:	55                   	push   %rbp
  408e51:	48 89 fd             	mov    %rdi,%rbp
  408e54:	bf 20 00 00 00       	mov    $0x20,%edi
  408e59:	53                   	push   %rbx
  408e5a:	48 83 ec 08          	sub    $0x8,%rsp
  408e5e:	e8 9d 95 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  408e63:	48 89 ee             	mov    %rbp,%rsi
  408e66:	48 89 c7             	mov    %rax,%rdi
  408e69:	48 89 c3             	mov    %rax,%rbx
  408e6c:	e8 bf fa ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  408e71:	48 c7 03 d0 e2 40 00 	movq   $0x40e2d0,(%rbx)
  408e78:	ba 50 80 40 00       	mov    $0x408050,%edx
  408e7d:	be 90 d5 40 00       	mov    $0x40d590,%esi
  408e82:	48 89 df             	mov    %rbx,%rdi
  408e85:	e8 16 96 ff ff       	callq  4024a0 <__cxa_throw@plt>
  408e8a:	48 89 c5             	mov    %rax,%rbp
  408e8d:	48 89 df             	mov    %rbx,%rdi
  408e90:	e8 8b 95 ff ff       	callq  402420 <__cxa_free_exception@plt>
  408e95:	48 89 ef             	mov    %rbp,%rdi
  408e98:	e8 23 97 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  408e9d:	90                   	nop
  408e9e:	66 90                	xchg   %ax,%ax

0000000000408ea0 <_ZNK4Poco14RangeException5cloneEv>:
  408ea0:	55                   	push   %rbp
  408ea1:	48 89 fd             	mov    %rdi,%rbp
  408ea4:	bf 20 00 00 00       	mov    $0x20,%edi
  408ea9:	53                   	push   %rbx
  408eaa:	48 83 ec 08          	sub    $0x8,%rsp
  408eae:	e8 fd 96 ff ff       	callq  4025b0 <_Znwm@plt>
  408eb3:	48 89 ee             	mov    %rbp,%rsi
  408eb6:	48 89 c7             	mov    %rax,%rdi
  408eb9:	48 89 c3             	mov    %rax,%rbx
  408ebc:	e8 6f fa ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  408ec1:	48 c7 03 30 e3 40 00 	movq   $0x40e330,(%rbx)
  408ec8:	48 83 c4 08          	add    $0x8,%rsp
  408ecc:	48 89 d8             	mov    %rbx,%rax
  408ecf:	5b                   	pop    %rbx
  408ed0:	5d                   	pop    %rbp
  408ed1:	c3                   	retq   
  408ed2:	48 89 c5             	mov    %rax,%rbp
  408ed5:	48 89 df             	mov    %rbx,%rdi
  408ed8:	e8 e3 92 ff ff       	callq  4021c0 <_ZdlPv@plt>
  408edd:	48 89 ef             	mov    %rbp,%rdi
  408ee0:	e8 db 96 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  408ee5:	90                   	nop
  408ee6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  408eed:	00 00 00 

0000000000408ef0 <_ZNK4Poco14RangeException7rethrowEv>:
  408ef0:	55                   	push   %rbp
  408ef1:	48 89 fd             	mov    %rdi,%rbp
  408ef4:	bf 20 00 00 00       	mov    $0x20,%edi
  408ef9:	53                   	push   %rbx
  408efa:	48 83 ec 08          	sub    $0x8,%rsp
  408efe:	e8 fd 94 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  408f03:	48 89 ee             	mov    %rbp,%rsi
  408f06:	48 89 c7             	mov    %rax,%rdi
  408f09:	48 89 c3             	mov    %rax,%rbx
  408f0c:	e8 1f fa ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  408f11:	48 c7 03 30 e3 40 00 	movq   $0x40e330,(%rbx)
  408f18:	ba 80 80 40 00       	mov    $0x408080,%edx
  408f1d:	be d0 d5 40 00       	mov    $0x40d5d0,%esi
  408f22:	48 89 df             	mov    %rbx,%rdi
  408f25:	e8 76 95 ff ff       	callq  4024a0 <__cxa_throw@plt>
  408f2a:	48 89 c5             	mov    %rax,%rbp
  408f2d:	48 89 df             	mov    %rbx,%rdi
  408f30:	e8 eb 94 ff ff       	callq  402420 <__cxa_free_exception@plt>
  408f35:	48 89 ef             	mov    %rbp,%rdi
  408f38:	e8 83 96 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  408f3d:	90                   	nop
  408f3e:	66 90                	xchg   %ax,%ax

0000000000408f40 <_ZNK4Poco21IllegalStateException5cloneEv>:
  408f40:	55                   	push   %rbp
  408f41:	48 89 fd             	mov    %rdi,%rbp
  408f44:	bf 20 00 00 00       	mov    $0x20,%edi
  408f49:	53                   	push   %rbx
  408f4a:	48 83 ec 08          	sub    $0x8,%rsp
  408f4e:	e8 5d 96 ff ff       	callq  4025b0 <_Znwm@plt>
  408f53:	48 89 ee             	mov    %rbp,%rsi
  408f56:	48 89 c7             	mov    %rax,%rdi
  408f59:	48 89 c3             	mov    %rax,%rbx
  408f5c:	e8 cf f9 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  408f61:	48 c7 03 90 e3 40 00 	movq   $0x40e390,(%rbx)
  408f68:	48 83 c4 08          	add    $0x8,%rsp
  408f6c:	48 89 d8             	mov    %rbx,%rax
  408f6f:	5b                   	pop    %rbx
  408f70:	5d                   	pop    %rbp
  408f71:	c3                   	retq   
  408f72:	48 89 c5             	mov    %rax,%rbp
  408f75:	48 89 df             	mov    %rbx,%rdi
  408f78:	e8 43 92 ff ff       	callq  4021c0 <_ZdlPv@plt>
  408f7d:	48 89 ef             	mov    %rbp,%rdi
  408f80:	e8 3b 96 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  408f85:	90                   	nop
  408f86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  408f8d:	00 00 00 

0000000000408f90 <_ZNK4Poco21IllegalStateException7rethrowEv>:
  408f90:	55                   	push   %rbp
  408f91:	48 89 fd             	mov    %rdi,%rbp
  408f94:	bf 20 00 00 00       	mov    $0x20,%edi
  408f99:	53                   	push   %rbx
  408f9a:	48 83 ec 08          	sub    $0x8,%rsp
  408f9e:	e8 5d 94 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  408fa3:	48 89 ee             	mov    %rbp,%rsi
  408fa6:	48 89 c7             	mov    %rax,%rdi
  408fa9:	48 89 c3             	mov    %rax,%rbx
  408fac:	e8 7f f9 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  408fb1:	48 c7 03 90 e3 40 00 	movq   $0x40e390,(%rbx)
  408fb8:	ba b0 80 40 00       	mov    $0x4080b0,%edx
  408fbd:	be 10 d6 40 00       	mov    $0x40d610,%esi
  408fc2:	48 89 df             	mov    %rbx,%rdi
  408fc5:	e8 d6 94 ff ff       	callq  4024a0 <__cxa_throw@plt>
  408fca:	48 89 c5             	mov    %rax,%rbp
  408fcd:	48 89 df             	mov    %rbx,%rdi
  408fd0:	e8 4b 94 ff ff       	callq  402420 <__cxa_free_exception@plt>
  408fd5:	48 89 ef             	mov    %rbp,%rdi
  408fd8:	e8 e3 95 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  408fdd:	90                   	nop
  408fde:	66 90                	xchg   %ax,%ax

0000000000408fe0 <_ZNK4Poco22InvalidAccessException5cloneEv>:
  408fe0:	55                   	push   %rbp
  408fe1:	48 89 fd             	mov    %rdi,%rbp
  408fe4:	bf 20 00 00 00       	mov    $0x20,%edi
  408fe9:	53                   	push   %rbx
  408fea:	48 83 ec 08          	sub    $0x8,%rsp
  408fee:	e8 bd 95 ff ff       	callq  4025b0 <_Znwm@plt>
  408ff3:	48 89 ee             	mov    %rbp,%rsi
  408ff6:	48 89 c7             	mov    %rax,%rdi
  408ff9:	48 89 c3             	mov    %rax,%rbx
  408ffc:	e8 2f f9 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409001:	48 c7 03 f0 e3 40 00 	movq   $0x40e3f0,(%rbx)
  409008:	48 83 c4 08          	add    $0x8,%rsp
  40900c:	48 89 d8             	mov    %rbx,%rax
  40900f:	5b                   	pop    %rbx
  409010:	5d                   	pop    %rbp
  409011:	c3                   	retq   
  409012:	48 89 c5             	mov    %rax,%rbp
  409015:	48 89 df             	mov    %rbx,%rdi
  409018:	e8 a3 91 ff ff       	callq  4021c0 <_ZdlPv@plt>
  40901d:	48 89 ef             	mov    %rbp,%rdi
  409020:	e8 9b 95 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  409025:	90                   	nop
  409026:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40902d:	00 00 00 

0000000000409030 <_ZNK4Poco22InvalidAccessException7rethrowEv>:
  409030:	55                   	push   %rbp
  409031:	48 89 fd             	mov    %rdi,%rbp
  409034:	bf 20 00 00 00       	mov    $0x20,%edi
  409039:	53                   	push   %rbx
  40903a:	48 83 ec 08          	sub    $0x8,%rsp
  40903e:	e8 bd 93 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  409043:	48 89 ee             	mov    %rbp,%rsi
  409046:	48 89 c7             	mov    %rax,%rdi
  409049:	48 89 c3             	mov    %rax,%rbx
  40904c:	e8 df f8 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409051:	48 c7 03 f0 e3 40 00 	movq   $0x40e3f0,(%rbx)
  409058:	ba e0 80 40 00       	mov    $0x4080e0,%edx
  40905d:	be 60 d6 40 00       	mov    $0x40d660,%esi
  409062:	48 89 df             	mov    %rbx,%rdi
  409065:	e8 36 94 ff ff       	callq  4024a0 <__cxa_throw@plt>
  40906a:	48 89 c5             	mov    %rax,%rbp
  40906d:	48 89 df             	mov    %rbx,%rdi
  409070:	e8 ab 93 ff ff       	callq  402420 <__cxa_free_exception@plt>
  409075:	48 89 ef             	mov    %rbp,%rdi
  409078:	e8 43 95 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40907d:	90                   	nop
  40907e:	66 90                	xchg   %ax,%ax

0000000000409080 <_ZNK4Poco15SignalException5cloneEv>:
  409080:	55                   	push   %rbp
  409081:	48 89 fd             	mov    %rdi,%rbp
  409084:	bf 20 00 00 00       	mov    $0x20,%edi
  409089:	53                   	push   %rbx
  40908a:	48 83 ec 08          	sub    $0x8,%rsp
  40908e:	e8 1d 95 ff ff       	callq  4025b0 <_Znwm@plt>
  409093:	48 89 ee             	mov    %rbp,%rsi
  409096:	48 89 c7             	mov    %rax,%rdi
  409099:	48 89 c3             	mov    %rax,%rbx
  40909c:	e8 8f f8 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  4090a1:	48 c7 03 50 e4 40 00 	movq   $0x40e450,(%rbx)
  4090a8:	48 83 c4 08          	add    $0x8,%rsp
  4090ac:	48 89 d8             	mov    %rbx,%rax
  4090af:	5b                   	pop    %rbx
  4090b0:	5d                   	pop    %rbp
  4090b1:	c3                   	retq   
  4090b2:	48 89 c5             	mov    %rax,%rbp
  4090b5:	48 89 df             	mov    %rbx,%rdi
  4090b8:	e8 03 91 ff ff       	callq  4021c0 <_ZdlPv@plt>
  4090bd:	48 89 ef             	mov    %rbp,%rdi
  4090c0:	e8 fb 94 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4090c5:	90                   	nop
  4090c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4090cd:	00 00 00 

00000000004090d0 <_ZNK4Poco15SignalException7rethrowEv>:
  4090d0:	55                   	push   %rbp
  4090d1:	48 89 fd             	mov    %rdi,%rbp
  4090d4:	bf 20 00 00 00       	mov    $0x20,%edi
  4090d9:	53                   	push   %rbx
  4090da:	48 83 ec 08          	sub    $0x8,%rsp
  4090de:	e8 1d 93 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  4090e3:	48 89 ee             	mov    %rbp,%rsi
  4090e6:	48 89 c7             	mov    %rax,%rdi
  4090e9:	48 89 c3             	mov    %rax,%rbx
  4090ec:	e8 3f f8 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  4090f1:	48 c7 03 50 e4 40 00 	movq   $0x40e450,(%rbx)
  4090f8:	ba 10 81 40 00       	mov    $0x408110,%edx
  4090fd:	be a0 d6 40 00       	mov    $0x40d6a0,%esi
  409102:	48 89 df             	mov    %rbx,%rdi
  409105:	e8 96 93 ff ff       	callq  4024a0 <__cxa_throw@plt>
  40910a:	48 89 c5             	mov    %rax,%rbp
  40910d:	48 89 df             	mov    %rbx,%rdi
  409110:	e8 0b 93 ff ff       	callq  402420 <__cxa_free_exception@plt>
  409115:	48 89 ef             	mov    %rbp,%rdi
  409118:	e8 a3 94 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40911d:	90                   	nop
  40911e:	66 90                	xchg   %ax,%ax

0000000000409120 <_ZNK4Poco18UnhandledException5cloneEv>:
  409120:	55                   	push   %rbp
  409121:	48 89 fd             	mov    %rdi,%rbp
  409124:	bf 20 00 00 00       	mov    $0x20,%edi
  409129:	53                   	push   %rbx
  40912a:	48 83 ec 08          	sub    $0x8,%rsp
  40912e:	e8 7d 94 ff ff       	callq  4025b0 <_Znwm@plt>
  409133:	48 89 ee             	mov    %rbp,%rsi
  409136:	48 89 c7             	mov    %rax,%rdi
  409139:	48 89 c3             	mov    %rax,%rbx
  40913c:	e8 ef f7 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409141:	48 c7 03 b0 e4 40 00 	movq   $0x40e4b0,(%rbx)
  409148:	48 83 c4 08          	add    $0x8,%rsp
  40914c:	48 89 d8             	mov    %rbx,%rax
  40914f:	5b                   	pop    %rbx
  409150:	5d                   	pop    %rbp
  409151:	c3                   	retq   
  409152:	48 89 c5             	mov    %rax,%rbp
  409155:	48 89 df             	mov    %rbx,%rdi
  409158:	e8 63 90 ff ff       	callq  4021c0 <_ZdlPv@plt>
  40915d:	48 89 ef             	mov    %rbp,%rdi
  409160:	e8 5b 94 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  409165:	90                   	nop
  409166:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40916d:	00 00 00 

0000000000409170 <_ZNK4Poco18UnhandledException7rethrowEv>:
  409170:	55                   	push   %rbp
  409171:	48 89 fd             	mov    %rdi,%rbp
  409174:	bf 20 00 00 00       	mov    $0x20,%edi
  409179:	53                   	push   %rbx
  40917a:	48 83 ec 08          	sub    $0x8,%rsp
  40917e:	e8 7d 92 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  409183:	48 89 ee             	mov    %rbp,%rsi
  409186:	48 89 c7             	mov    %rax,%rdi
  409189:	48 89 c3             	mov    %rax,%rbx
  40918c:	e8 9f f7 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409191:	48 c7 03 b0 e4 40 00 	movq   $0x40e4b0,(%rbx)
  409198:	ba 40 81 40 00       	mov    $0x408140,%edx
  40919d:	be e0 d6 40 00       	mov    $0x40d6e0,%esi
  4091a2:	48 89 df             	mov    %rbx,%rdi
  4091a5:	e8 f6 92 ff ff       	callq  4024a0 <__cxa_throw@plt>
  4091aa:	48 89 c5             	mov    %rax,%rbp
  4091ad:	48 89 df             	mov    %rbx,%rdi
  4091b0:	e8 6b 92 ff ff       	callq  402420 <__cxa_free_exception@plt>
  4091b5:	48 89 ef             	mov    %rbp,%rdi
  4091b8:	e8 03 94 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4091bd:	90                   	nop
  4091be:	66 90                	xchg   %ax,%ax

00000000004091c0 <_ZNK4Poco16RuntimeException5cloneEv>:
  4091c0:	55                   	push   %rbp
  4091c1:	48 89 fd             	mov    %rdi,%rbp
  4091c4:	bf 20 00 00 00       	mov    $0x20,%edi
  4091c9:	53                   	push   %rbx
  4091ca:	48 83 ec 08          	sub    $0x8,%rsp
  4091ce:	e8 dd 93 ff ff       	callq  4025b0 <_Znwm@plt>
  4091d3:	48 89 ee             	mov    %rbp,%rsi
  4091d6:	48 89 c7             	mov    %rax,%rdi
  4091d9:	48 89 c3             	mov    %rax,%rbx
  4091dc:	e8 4f f7 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  4091e1:	48 c7 03 10 e5 40 00 	movq   $0x40e510,(%rbx)
  4091e8:	48 83 c4 08          	add    $0x8,%rsp
  4091ec:	48 89 d8             	mov    %rbx,%rax
  4091ef:	5b                   	pop    %rbx
  4091f0:	5d                   	pop    %rbp
  4091f1:	c3                   	retq   
  4091f2:	48 89 c5             	mov    %rax,%rbp
  4091f5:	48 89 df             	mov    %rbx,%rdi
  4091f8:	e8 c3 8f ff ff       	callq  4021c0 <_ZdlPv@plt>
  4091fd:	48 89 ef             	mov    %rbp,%rdi
  409200:	e8 bb 93 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  409205:	90                   	nop
  409206:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40920d:	00 00 00 

0000000000409210 <_ZNK4Poco16RuntimeException7rethrowEv>:
  409210:	55                   	push   %rbp
  409211:	48 89 fd             	mov    %rdi,%rbp
  409214:	bf 20 00 00 00       	mov    $0x20,%edi
  409219:	53                   	push   %rbx
  40921a:	48 83 ec 08          	sub    $0x8,%rsp
  40921e:	e8 dd 91 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  409223:	48 89 ee             	mov    %rbp,%rsi
  409226:	48 89 c7             	mov    %rax,%rdi
  409229:	48 89 c3             	mov    %rax,%rbx
  40922c:	e8 ff f6 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409231:	48 c7 03 10 e5 40 00 	movq   $0x40e510,(%rbx)
  409238:	ba 70 81 40 00       	mov    $0x408170,%edx
  40923d:	be 20 d7 40 00       	mov    $0x40d720,%esi
  409242:	48 89 df             	mov    %rbx,%rdi
  409245:	e8 56 92 ff ff       	callq  4024a0 <__cxa_throw@plt>
  40924a:	48 89 c5             	mov    %rax,%rbp
  40924d:	48 89 df             	mov    %rbx,%rdi
  409250:	e8 cb 91 ff ff       	callq  402420 <__cxa_free_exception@plt>
  409255:	48 89 ef             	mov    %rbp,%rdi
  409258:	e8 63 93 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40925d:	90                   	nop
  40925e:	66 90                	xchg   %ax,%ax

0000000000409260 <_ZNK4Poco17NotFoundException5cloneEv>:
  409260:	55                   	push   %rbp
  409261:	48 89 fd             	mov    %rdi,%rbp
  409264:	bf 20 00 00 00       	mov    $0x20,%edi
  409269:	53                   	push   %rbx
  40926a:	48 83 ec 08          	sub    $0x8,%rsp
  40926e:	e8 3d 93 ff ff       	callq  4025b0 <_Znwm@plt>
  409273:	48 89 ee             	mov    %rbp,%rsi
  409276:	48 89 c7             	mov    %rax,%rdi
  409279:	48 89 c3             	mov    %rax,%rbx
  40927c:	e8 af f6 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409281:	48 c7 03 70 e5 40 00 	movq   $0x40e570,(%rbx)
  409288:	48 83 c4 08          	add    $0x8,%rsp
  40928c:	48 89 d8             	mov    %rbx,%rax
  40928f:	5b                   	pop    %rbx
  409290:	5d                   	pop    %rbp
  409291:	c3                   	retq   
  409292:	48 89 c5             	mov    %rax,%rbp
  409295:	48 89 df             	mov    %rbx,%rdi
  409298:	e8 23 8f ff ff       	callq  4021c0 <_ZdlPv@plt>
  40929d:	48 89 ef             	mov    %rbp,%rdi
  4092a0:	e8 1b 93 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4092a5:	90                   	nop
  4092a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4092ad:	00 00 00 

00000000004092b0 <_ZNK4Poco17NotFoundException7rethrowEv>:
  4092b0:	55                   	push   %rbp
  4092b1:	48 89 fd             	mov    %rdi,%rbp
  4092b4:	bf 20 00 00 00       	mov    $0x20,%edi
  4092b9:	53                   	push   %rbx
  4092ba:	48 83 ec 08          	sub    $0x8,%rsp
  4092be:	e8 3d 91 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  4092c3:	48 89 ee             	mov    %rbp,%rsi
  4092c6:	48 89 c7             	mov    %rax,%rdi
  4092c9:	48 89 c3             	mov    %rax,%rbx
  4092cc:	e8 5f f6 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  4092d1:	48 c7 03 70 e5 40 00 	movq   $0x40e570,(%rbx)
  4092d8:	ba a0 81 40 00       	mov    $0x4081a0,%edx
  4092dd:	be 60 d7 40 00       	mov    $0x40d760,%esi
  4092e2:	48 89 df             	mov    %rbx,%rdi
  4092e5:	e8 b6 91 ff ff       	callq  4024a0 <__cxa_throw@plt>
  4092ea:	48 89 c5             	mov    %rax,%rbp
  4092ed:	48 89 df             	mov    %rbx,%rdi
  4092f0:	e8 2b 91 ff ff       	callq  402420 <__cxa_free_exception@plt>
  4092f5:	48 89 ef             	mov    %rbp,%rdi
  4092f8:	e8 c3 92 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4092fd:	90                   	nop
  4092fe:	66 90                	xchg   %ax,%ax

0000000000409300 <_ZNK4Poco15ExistsException5cloneEv>:
  409300:	55                   	push   %rbp
  409301:	48 89 fd             	mov    %rdi,%rbp
  409304:	bf 20 00 00 00       	mov    $0x20,%edi
  409309:	53                   	push   %rbx
  40930a:	48 83 ec 08          	sub    $0x8,%rsp
  40930e:	e8 9d 92 ff ff       	callq  4025b0 <_Znwm@plt>
  409313:	48 89 ee             	mov    %rbp,%rsi
  409316:	48 89 c7             	mov    %rax,%rdi
  409319:	48 89 c3             	mov    %rax,%rbx
  40931c:	e8 0f f6 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409321:	48 c7 03 d0 e5 40 00 	movq   $0x40e5d0,(%rbx)
  409328:	48 83 c4 08          	add    $0x8,%rsp
  40932c:	48 89 d8             	mov    %rbx,%rax
  40932f:	5b                   	pop    %rbx
  409330:	5d                   	pop    %rbp
  409331:	c3                   	retq   
  409332:	48 89 c5             	mov    %rax,%rbp
  409335:	48 89 df             	mov    %rbx,%rdi
  409338:	e8 83 8e ff ff       	callq  4021c0 <_ZdlPv@plt>
  40933d:	48 89 ef             	mov    %rbp,%rdi
  409340:	e8 7b 92 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  409345:	90                   	nop
  409346:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40934d:	00 00 00 

0000000000409350 <_ZNK4Poco15ExistsException7rethrowEv>:
  409350:	55                   	push   %rbp
  409351:	48 89 fd             	mov    %rdi,%rbp
  409354:	bf 20 00 00 00       	mov    $0x20,%edi
  409359:	53                   	push   %rbx
  40935a:	48 83 ec 08          	sub    $0x8,%rsp
  40935e:	e8 9d 90 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  409363:	48 89 ee             	mov    %rbp,%rsi
  409366:	48 89 c7             	mov    %rax,%rdi
  409369:	48 89 c3             	mov    %rax,%rbx
  40936c:	e8 bf f5 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409371:	48 c7 03 d0 e5 40 00 	movq   $0x40e5d0,(%rbx)
  409378:	ba d0 81 40 00       	mov    $0x4081d0,%edx
  40937d:	be a0 d7 40 00       	mov    $0x40d7a0,%esi
  409382:	48 89 df             	mov    %rbx,%rdi
  409385:	e8 16 91 ff ff       	callq  4024a0 <__cxa_throw@plt>
  40938a:	48 89 c5             	mov    %rax,%rbp
  40938d:	48 89 df             	mov    %rbx,%rdi
  409390:	e8 8b 90 ff ff       	callq  402420 <__cxa_free_exception@plt>
  409395:	48 89 ef             	mov    %rbp,%rdi
  409398:	e8 23 92 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40939d:	90                   	nop
  40939e:	66 90                	xchg   %ax,%ax

00000000004093a0 <_ZNK4Poco16TimeoutException5cloneEv>:
  4093a0:	55                   	push   %rbp
  4093a1:	48 89 fd             	mov    %rdi,%rbp
  4093a4:	bf 20 00 00 00       	mov    $0x20,%edi
  4093a9:	53                   	push   %rbx
  4093aa:	48 83 ec 08          	sub    $0x8,%rsp
  4093ae:	e8 fd 91 ff ff       	callq  4025b0 <_Znwm@plt>
  4093b3:	48 89 ee             	mov    %rbp,%rsi
  4093b6:	48 89 c7             	mov    %rax,%rdi
  4093b9:	48 89 c3             	mov    %rax,%rbx
  4093bc:	e8 6f f5 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  4093c1:	48 c7 03 30 e6 40 00 	movq   $0x40e630,(%rbx)
  4093c8:	48 83 c4 08          	add    $0x8,%rsp
  4093cc:	48 89 d8             	mov    %rbx,%rax
  4093cf:	5b                   	pop    %rbx
  4093d0:	5d                   	pop    %rbp
  4093d1:	c3                   	retq   
  4093d2:	48 89 c5             	mov    %rax,%rbp
  4093d5:	48 89 df             	mov    %rbx,%rdi
  4093d8:	e8 e3 8d ff ff       	callq  4021c0 <_ZdlPv@plt>
  4093dd:	48 89 ef             	mov    %rbp,%rdi
  4093e0:	e8 db 91 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4093e5:	90                   	nop
  4093e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4093ed:	00 00 00 

00000000004093f0 <_ZNK4Poco16TimeoutException7rethrowEv>:
  4093f0:	55                   	push   %rbp
  4093f1:	48 89 fd             	mov    %rdi,%rbp
  4093f4:	bf 20 00 00 00       	mov    $0x20,%edi
  4093f9:	53                   	push   %rbx
  4093fa:	48 83 ec 08          	sub    $0x8,%rsp
  4093fe:	e8 fd 8f ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  409403:	48 89 ee             	mov    %rbp,%rsi
  409406:	48 89 c7             	mov    %rax,%rdi
  409409:	48 89 c3             	mov    %rax,%rbx
  40940c:	e8 1f f5 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409411:	48 c7 03 30 e6 40 00 	movq   $0x40e630,(%rbx)
  409418:	ba 00 82 40 00       	mov    $0x408200,%edx
  40941d:	be e0 d7 40 00       	mov    $0x40d7e0,%esi
  409422:	48 89 df             	mov    %rbx,%rdi
  409425:	e8 76 90 ff ff       	callq  4024a0 <__cxa_throw@plt>
  40942a:	48 89 c5             	mov    %rax,%rbp
  40942d:	48 89 df             	mov    %rbx,%rdi
  409430:	e8 eb 8f ff ff       	callq  402420 <__cxa_free_exception@plt>
  409435:	48 89 ef             	mov    %rbp,%rdi
  409438:	e8 83 91 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40943d:	90                   	nop
  40943e:	66 90                	xchg   %ax,%ax

0000000000409440 <_ZNK4Poco15SystemException5cloneEv>:
  409440:	55                   	push   %rbp
  409441:	48 89 fd             	mov    %rdi,%rbp
  409444:	bf 20 00 00 00       	mov    $0x20,%edi
  409449:	53                   	push   %rbx
  40944a:	48 83 ec 08          	sub    $0x8,%rsp
  40944e:	e8 5d 91 ff ff       	callq  4025b0 <_Znwm@plt>
  409453:	48 89 ee             	mov    %rbp,%rsi
  409456:	48 89 c7             	mov    %rax,%rdi
  409459:	48 89 c3             	mov    %rax,%rbx
  40945c:	e8 cf f4 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409461:	48 c7 03 90 e6 40 00 	movq   $0x40e690,(%rbx)
  409468:	48 83 c4 08          	add    $0x8,%rsp
  40946c:	48 89 d8             	mov    %rbx,%rax
  40946f:	5b                   	pop    %rbx
  409470:	5d                   	pop    %rbp
  409471:	c3                   	retq   
  409472:	48 89 c5             	mov    %rax,%rbp
  409475:	48 89 df             	mov    %rbx,%rdi
  409478:	e8 43 8d ff ff       	callq  4021c0 <_ZdlPv@plt>
  40947d:	48 89 ef             	mov    %rbp,%rdi
  409480:	e8 3b 91 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  409485:	90                   	nop
  409486:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40948d:	00 00 00 

0000000000409490 <_ZNK4Poco15SystemException7rethrowEv>:
  409490:	55                   	push   %rbp
  409491:	48 89 fd             	mov    %rdi,%rbp
  409494:	bf 20 00 00 00       	mov    $0x20,%edi
  409499:	53                   	push   %rbx
  40949a:	48 83 ec 08          	sub    $0x8,%rsp
  40949e:	e8 5d 8f ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  4094a3:	48 89 ee             	mov    %rbp,%rsi
  4094a6:	48 89 c7             	mov    %rax,%rdi
  4094a9:	48 89 c3             	mov    %rax,%rbx
  4094ac:	e8 7f f4 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  4094b1:	48 c7 03 90 e6 40 00 	movq   $0x40e690,(%rbx)
  4094b8:	ba 30 82 40 00       	mov    $0x408230,%edx
  4094bd:	be 20 d8 40 00       	mov    $0x40d820,%esi
  4094c2:	48 89 df             	mov    %rbx,%rdi
  4094c5:	e8 d6 8f ff ff       	callq  4024a0 <__cxa_throw@plt>
  4094ca:	48 89 c5             	mov    %rax,%rbp
  4094cd:	48 89 df             	mov    %rbx,%rdi
  4094d0:	e8 4b 8f ff ff       	callq  402420 <__cxa_free_exception@plt>
  4094d5:	48 89 ef             	mov    %rbp,%rdi
  4094d8:	e8 e3 90 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4094dd:	90                   	nop
  4094de:	66 90                	xchg   %ax,%ax

00000000004094e0 <_ZNK4Poco26RegularExpressionException5cloneEv>:
  4094e0:	55                   	push   %rbp
  4094e1:	48 89 fd             	mov    %rdi,%rbp
  4094e4:	bf 20 00 00 00       	mov    $0x20,%edi
  4094e9:	53                   	push   %rbx
  4094ea:	48 83 ec 08          	sub    $0x8,%rsp
  4094ee:	e8 bd 90 ff ff       	callq  4025b0 <_Znwm@plt>
  4094f3:	48 89 ee             	mov    %rbp,%rsi
  4094f6:	48 89 c7             	mov    %rax,%rdi
  4094f9:	48 89 c3             	mov    %rax,%rbx
  4094fc:	e8 2f f4 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409501:	48 c7 03 f0 e6 40 00 	movq   $0x40e6f0,(%rbx)
  409508:	48 83 c4 08          	add    $0x8,%rsp
  40950c:	48 89 d8             	mov    %rbx,%rax
  40950f:	5b                   	pop    %rbx
  409510:	5d                   	pop    %rbp
  409511:	c3                   	retq   
  409512:	48 89 c5             	mov    %rax,%rbp
  409515:	48 89 df             	mov    %rbx,%rdi
  409518:	e8 a3 8c ff ff       	callq  4021c0 <_ZdlPv@plt>
  40951d:	48 89 ef             	mov    %rbp,%rdi
  409520:	e8 9b 90 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  409525:	90                   	nop
  409526:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40952d:	00 00 00 

0000000000409530 <_ZNK4Poco26RegularExpressionException7rethrowEv>:
  409530:	55                   	push   %rbp
  409531:	48 89 fd             	mov    %rdi,%rbp
  409534:	bf 20 00 00 00       	mov    $0x20,%edi
  409539:	53                   	push   %rbx
  40953a:	48 83 ec 08          	sub    $0x8,%rsp
  40953e:	e8 bd 8e ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  409543:	48 89 ee             	mov    %rbp,%rsi
  409546:	48 89 c7             	mov    %rax,%rdi
  409549:	48 89 c3             	mov    %rax,%rbx
  40954c:	e8 df f3 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409551:	48 c7 03 f0 e6 40 00 	movq   $0x40e6f0,(%rbx)
  409558:	ba 60 82 40 00       	mov    $0x408260,%edx
  40955d:	be 70 d8 40 00       	mov    $0x40d870,%esi
  409562:	48 89 df             	mov    %rbx,%rdi
  409565:	e8 36 8f ff ff       	callq  4024a0 <__cxa_throw@plt>
  40956a:	48 89 c5             	mov    %rax,%rbp
  40956d:	48 89 df             	mov    %rbx,%rdi
  409570:	e8 ab 8e ff ff       	callq  402420 <__cxa_free_exception@plt>
  409575:	48 89 ef             	mov    %rbp,%rdi
  409578:	e8 43 90 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40957d:	90                   	nop
  40957e:	66 90                	xchg   %ax,%ax

0000000000409580 <_ZNK4Poco20LibraryLoadException5cloneEv>:
  409580:	55                   	push   %rbp
  409581:	48 89 fd             	mov    %rdi,%rbp
  409584:	bf 20 00 00 00       	mov    $0x20,%edi
  409589:	53                   	push   %rbx
  40958a:	48 83 ec 08          	sub    $0x8,%rsp
  40958e:	e8 1d 90 ff ff       	callq  4025b0 <_Znwm@plt>
  409593:	48 89 ee             	mov    %rbp,%rsi
  409596:	48 89 c7             	mov    %rax,%rdi
  409599:	48 89 c3             	mov    %rax,%rbx
  40959c:	e8 8f f3 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  4095a1:	48 c7 03 50 e7 40 00 	movq   $0x40e750,(%rbx)
  4095a8:	48 83 c4 08          	add    $0x8,%rsp
  4095ac:	48 89 d8             	mov    %rbx,%rax
  4095af:	5b                   	pop    %rbx
  4095b0:	5d                   	pop    %rbp
  4095b1:	c3                   	retq   
  4095b2:	48 89 c5             	mov    %rax,%rbp
  4095b5:	48 89 df             	mov    %rbx,%rdi
  4095b8:	e8 03 8c ff ff       	callq  4021c0 <_ZdlPv@plt>
  4095bd:	48 89 ef             	mov    %rbp,%rdi
  4095c0:	e8 fb 8f ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4095c5:	90                   	nop
  4095c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4095cd:	00 00 00 

00000000004095d0 <_ZNK4Poco20LibraryLoadException7rethrowEv>:
  4095d0:	55                   	push   %rbp
  4095d1:	48 89 fd             	mov    %rdi,%rbp
  4095d4:	bf 20 00 00 00       	mov    $0x20,%edi
  4095d9:	53                   	push   %rbx
  4095da:	48 83 ec 08          	sub    $0x8,%rsp
  4095de:	e8 1d 8e ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  4095e3:	48 89 ee             	mov    %rbp,%rsi
  4095e6:	48 89 c7             	mov    %rax,%rdi
  4095e9:	48 89 c3             	mov    %rax,%rbx
  4095ec:	e8 3f f3 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  4095f1:	48 c7 03 50 e7 40 00 	movq   $0x40e750,(%rbx)
  4095f8:	ba 90 82 40 00       	mov    $0x408290,%edx
  4095fd:	be b0 d8 40 00       	mov    $0x40d8b0,%esi
  409602:	48 89 df             	mov    %rbx,%rdi
  409605:	e8 96 8e ff ff       	callq  4024a0 <__cxa_throw@plt>
  40960a:	48 89 c5             	mov    %rax,%rbp
  40960d:	48 89 df             	mov    %rbx,%rdi
  409610:	e8 0b 8e ff ff       	callq  402420 <__cxa_free_exception@plt>
  409615:	48 89 ef             	mov    %rbp,%rdi
  409618:	e8 a3 8f ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40961d:	90                   	nop
  40961e:	66 90                	xchg   %ax,%ax

0000000000409620 <_ZNK4Poco29LibraryAlreadyLoadedException5cloneEv>:
  409620:	55                   	push   %rbp
  409621:	48 89 fd             	mov    %rdi,%rbp
  409624:	bf 20 00 00 00       	mov    $0x20,%edi
  409629:	53                   	push   %rbx
  40962a:	48 83 ec 08          	sub    $0x8,%rsp
  40962e:	e8 7d 8f ff ff       	callq  4025b0 <_Znwm@plt>
  409633:	48 89 ee             	mov    %rbp,%rsi
  409636:	48 89 c7             	mov    %rax,%rdi
  409639:	48 89 c3             	mov    %rax,%rbx
  40963c:	e8 ef f2 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409641:	48 c7 03 b0 e7 40 00 	movq   $0x40e7b0,(%rbx)
  409648:	48 83 c4 08          	add    $0x8,%rsp
  40964c:	48 89 d8             	mov    %rbx,%rax
  40964f:	5b                   	pop    %rbx
  409650:	5d                   	pop    %rbp
  409651:	c3                   	retq   
  409652:	48 89 c5             	mov    %rax,%rbp
  409655:	48 89 df             	mov    %rbx,%rdi
  409658:	e8 63 8b ff ff       	callq  4021c0 <_ZdlPv@plt>
  40965d:	48 89 ef             	mov    %rbp,%rdi
  409660:	e8 5b 8f ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  409665:	90                   	nop
  409666:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40966d:	00 00 00 

0000000000409670 <_ZNK4Poco29LibraryAlreadyLoadedException7rethrowEv>:
  409670:	55                   	push   %rbp
  409671:	48 89 fd             	mov    %rdi,%rbp
  409674:	bf 20 00 00 00       	mov    $0x20,%edi
  409679:	53                   	push   %rbx
  40967a:	48 83 ec 08          	sub    $0x8,%rsp
  40967e:	e8 7d 8d ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  409683:	48 89 ee             	mov    %rbp,%rsi
  409686:	48 89 c7             	mov    %rax,%rdi
  409689:	48 89 c3             	mov    %rax,%rbx
  40968c:	e8 9f f2 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409691:	48 c7 03 b0 e7 40 00 	movq   $0x40e7b0,(%rbx)
  409698:	ba c0 82 40 00       	mov    $0x4082c0,%edx
  40969d:	be 10 d9 40 00       	mov    $0x40d910,%esi
  4096a2:	48 89 df             	mov    %rbx,%rdi
  4096a5:	e8 f6 8d ff ff       	callq  4024a0 <__cxa_throw@plt>
  4096aa:	48 89 c5             	mov    %rax,%rbp
  4096ad:	48 89 df             	mov    %rbx,%rdi
  4096b0:	e8 6b 8d ff ff       	callq  402420 <__cxa_free_exception@plt>
  4096b5:	48 89 ef             	mov    %rbp,%rdi
  4096b8:	e8 03 8f ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4096bd:	90                   	nop
  4096be:	66 90                	xchg   %ax,%ax

00000000004096c0 <_ZNK4Poco26NoThreadAvailableException5cloneEv>:
  4096c0:	55                   	push   %rbp
  4096c1:	48 89 fd             	mov    %rdi,%rbp
  4096c4:	bf 20 00 00 00       	mov    $0x20,%edi
  4096c9:	53                   	push   %rbx
  4096ca:	48 83 ec 08          	sub    $0x8,%rsp
  4096ce:	e8 dd 8e ff ff       	callq  4025b0 <_Znwm@plt>
  4096d3:	48 89 ee             	mov    %rbp,%rsi
  4096d6:	48 89 c7             	mov    %rax,%rdi
  4096d9:	48 89 c3             	mov    %rax,%rbx
  4096dc:	e8 4f f2 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  4096e1:	48 c7 03 10 e8 40 00 	movq   $0x40e810,(%rbx)
  4096e8:	48 83 c4 08          	add    $0x8,%rsp
  4096ec:	48 89 d8             	mov    %rbx,%rax
  4096ef:	5b                   	pop    %rbx
  4096f0:	5d                   	pop    %rbp
  4096f1:	c3                   	retq   
  4096f2:	48 89 c5             	mov    %rax,%rbp
  4096f5:	48 89 df             	mov    %rbx,%rdi
  4096f8:	e8 c3 8a ff ff       	callq  4021c0 <_ZdlPv@plt>
  4096fd:	48 89 ef             	mov    %rbp,%rdi
  409700:	e8 bb 8e ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  409705:	90                   	nop
  409706:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40970d:	00 00 00 

0000000000409710 <_ZNK4Poco26NoThreadAvailableException7rethrowEv>:
  409710:	55                   	push   %rbp
  409711:	48 89 fd             	mov    %rdi,%rbp
  409714:	bf 20 00 00 00       	mov    $0x20,%edi
  409719:	53                   	push   %rbx
  40971a:	48 83 ec 08          	sub    $0x8,%rsp
  40971e:	e8 dd 8c ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  409723:	48 89 ee             	mov    %rbp,%rsi
  409726:	48 89 c7             	mov    %rax,%rdi
  409729:	48 89 c3             	mov    %rax,%rbx
  40972c:	e8 ff f1 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409731:	48 c7 03 10 e8 40 00 	movq   $0x40e810,(%rbx)
  409738:	ba f0 82 40 00       	mov    $0x4082f0,%edx
  40973d:	be 70 d9 40 00       	mov    $0x40d970,%esi
  409742:	48 89 df             	mov    %rbx,%rdi
  409745:	e8 56 8d ff ff       	callq  4024a0 <__cxa_throw@plt>
  40974a:	48 89 c5             	mov    %rax,%rbp
  40974d:	48 89 df             	mov    %rbx,%rdi
  409750:	e8 cb 8c ff ff       	callq  402420 <__cxa_free_exception@plt>
  409755:	48 89 ef             	mov    %rbp,%rdi
  409758:	e8 63 8e ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40975d:	90                   	nop
  40975e:	66 90                	xchg   %ax,%ax

0000000000409760 <_ZNK4Poco29PropertyNotSupportedException5cloneEv>:
  409760:	55                   	push   %rbp
  409761:	48 89 fd             	mov    %rdi,%rbp
  409764:	bf 20 00 00 00       	mov    $0x20,%edi
  409769:	53                   	push   %rbx
  40976a:	48 83 ec 08          	sub    $0x8,%rsp
  40976e:	e8 3d 8e ff ff       	callq  4025b0 <_Znwm@plt>
  409773:	48 89 ee             	mov    %rbp,%rsi
  409776:	48 89 c7             	mov    %rax,%rdi
  409779:	48 89 c3             	mov    %rax,%rbx
  40977c:	e8 af f1 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409781:	48 c7 03 70 e8 40 00 	movq   $0x40e870,(%rbx)
  409788:	48 83 c4 08          	add    $0x8,%rsp
  40978c:	48 89 d8             	mov    %rbx,%rax
  40978f:	5b                   	pop    %rbx
  409790:	5d                   	pop    %rbp
  409791:	c3                   	retq   
  409792:	48 89 c5             	mov    %rax,%rbp
  409795:	48 89 df             	mov    %rbx,%rdi
  409798:	e8 23 8a ff ff       	callq  4021c0 <_ZdlPv@plt>
  40979d:	48 89 ef             	mov    %rbp,%rdi
  4097a0:	e8 1b 8e ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4097a5:	90                   	nop
  4097a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4097ad:	00 00 00 

00000000004097b0 <_ZNK4Poco29PropertyNotSupportedException7rethrowEv>:
  4097b0:	55                   	push   %rbp
  4097b1:	48 89 fd             	mov    %rdi,%rbp
  4097b4:	bf 20 00 00 00       	mov    $0x20,%edi
  4097b9:	53                   	push   %rbx
  4097ba:	48 83 ec 08          	sub    $0x8,%rsp
  4097be:	e8 3d 8c ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  4097c3:	48 89 ee             	mov    %rbp,%rsi
  4097c6:	48 89 c7             	mov    %rax,%rdi
  4097c9:	48 89 c3             	mov    %rax,%rbx
  4097cc:	e8 5f f1 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  4097d1:	48 c7 03 70 e8 40 00 	movq   $0x40e870,(%rbx)
  4097d8:	ba 20 83 40 00       	mov    $0x408320,%edx
  4097dd:	be d0 d9 40 00       	mov    $0x40d9d0,%esi
  4097e2:	48 89 df             	mov    %rbx,%rdi
  4097e5:	e8 b6 8c ff ff       	callq  4024a0 <__cxa_throw@plt>
  4097ea:	48 89 c5             	mov    %rax,%rbp
  4097ed:	48 89 df             	mov    %rbx,%rdi
  4097f0:	e8 2b 8c ff ff       	callq  402420 <__cxa_free_exception@plt>
  4097f5:	48 89 ef             	mov    %rbp,%rdi
  4097f8:	e8 c3 8d ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4097fd:	90                   	nop
  4097fe:	66 90                	xchg   %ax,%ax

0000000000409800 <_ZNK4Poco21PoolOverflowException5cloneEv>:
  409800:	55                   	push   %rbp
  409801:	48 89 fd             	mov    %rdi,%rbp
  409804:	bf 20 00 00 00       	mov    $0x20,%edi
  409809:	53                   	push   %rbx
  40980a:	48 83 ec 08          	sub    $0x8,%rsp
  40980e:	e8 9d 8d ff ff       	callq  4025b0 <_Znwm@plt>
  409813:	48 89 ee             	mov    %rbp,%rsi
  409816:	48 89 c7             	mov    %rax,%rdi
  409819:	48 89 c3             	mov    %rax,%rbx
  40981c:	e8 0f f1 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409821:	48 c7 03 d0 e8 40 00 	movq   $0x40e8d0,(%rbx)
  409828:	48 83 c4 08          	add    $0x8,%rsp
  40982c:	48 89 d8             	mov    %rbx,%rax
  40982f:	5b                   	pop    %rbx
  409830:	5d                   	pop    %rbp
  409831:	c3                   	retq   
  409832:	48 89 c5             	mov    %rax,%rbp
  409835:	48 89 df             	mov    %rbx,%rdi
  409838:	e8 83 89 ff ff       	callq  4021c0 <_ZdlPv@plt>
  40983d:	48 89 ef             	mov    %rbp,%rdi
  409840:	e8 7b 8d ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  409845:	90                   	nop
  409846:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40984d:	00 00 00 

0000000000409850 <_ZNK4Poco21PoolOverflowException7rethrowEv>:
  409850:	55                   	push   %rbp
  409851:	48 89 fd             	mov    %rdi,%rbp
  409854:	bf 20 00 00 00       	mov    $0x20,%edi
  409859:	53                   	push   %rbx
  40985a:	48 83 ec 08          	sub    $0x8,%rsp
  40985e:	e8 9d 8b ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  409863:	48 89 ee             	mov    %rbp,%rsi
  409866:	48 89 c7             	mov    %rax,%rdi
  409869:	48 89 c3             	mov    %rax,%rbx
  40986c:	e8 bf f0 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409871:	48 c7 03 d0 e8 40 00 	movq   $0x40e8d0,(%rbx)
  409878:	ba 50 83 40 00       	mov    $0x408350,%edx
  40987d:	be 10 da 40 00       	mov    $0x40da10,%esi
  409882:	48 89 df             	mov    %rbx,%rdi
  409885:	e8 16 8c ff ff       	callq  4024a0 <__cxa_throw@plt>
  40988a:	48 89 c5             	mov    %rax,%rbp
  40988d:	48 89 df             	mov    %rbx,%rdi
  409890:	e8 8b 8b ff ff       	callq  402420 <__cxa_free_exception@plt>
  409895:	48 89 ef             	mov    %rbp,%rdi
  409898:	e8 23 8d ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40989d:	90                   	nop
  40989e:	66 90                	xchg   %ax,%ax

00000000004098a0 <_ZNK4Poco21NoPermissionException5cloneEv>:
  4098a0:	55                   	push   %rbp
  4098a1:	48 89 fd             	mov    %rdi,%rbp
  4098a4:	bf 20 00 00 00       	mov    $0x20,%edi
  4098a9:	53                   	push   %rbx
  4098aa:	48 83 ec 08          	sub    $0x8,%rsp
  4098ae:	e8 fd 8c ff ff       	callq  4025b0 <_Znwm@plt>
  4098b3:	48 89 ee             	mov    %rbp,%rsi
  4098b6:	48 89 c7             	mov    %rax,%rdi
  4098b9:	48 89 c3             	mov    %rax,%rbx
  4098bc:	e8 6f f0 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  4098c1:	48 c7 03 30 e9 40 00 	movq   $0x40e930,(%rbx)
  4098c8:	48 83 c4 08          	add    $0x8,%rsp
  4098cc:	48 89 d8             	mov    %rbx,%rax
  4098cf:	5b                   	pop    %rbx
  4098d0:	5d                   	pop    %rbp
  4098d1:	c3                   	retq   
  4098d2:	48 89 c5             	mov    %rax,%rbp
  4098d5:	48 89 df             	mov    %rbx,%rdi
  4098d8:	e8 e3 88 ff ff       	callq  4021c0 <_ZdlPv@plt>
  4098dd:	48 89 ef             	mov    %rbp,%rdi
  4098e0:	e8 db 8c ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4098e5:	90                   	nop
  4098e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4098ed:	00 00 00 

00000000004098f0 <_ZNK4Poco21NoPermissionException7rethrowEv>:
  4098f0:	55                   	push   %rbp
  4098f1:	48 89 fd             	mov    %rdi,%rbp
  4098f4:	bf 20 00 00 00       	mov    $0x20,%edi
  4098f9:	53                   	push   %rbx
  4098fa:	48 83 ec 08          	sub    $0x8,%rsp
  4098fe:	e8 fd 8a ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  409903:	48 89 ee             	mov    %rbp,%rsi
  409906:	48 89 c7             	mov    %rax,%rdi
  409909:	48 89 c3             	mov    %rax,%rbx
  40990c:	e8 1f f0 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409911:	48 c7 03 30 e9 40 00 	movq   $0x40e930,(%rbx)
  409918:	ba 80 83 40 00       	mov    $0x408380,%edx
  40991d:	be 50 da 40 00       	mov    $0x40da50,%esi
  409922:	48 89 df             	mov    %rbx,%rdi
  409925:	e8 76 8b ff ff       	callq  4024a0 <__cxa_throw@plt>
  40992a:	48 89 c5             	mov    %rax,%rbp
  40992d:	48 89 df             	mov    %rbx,%rdi
  409930:	e8 eb 8a ff ff       	callq  402420 <__cxa_free_exception@plt>
  409935:	48 89 ef             	mov    %rbp,%rdi
  409938:	e8 83 8c ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40993d:	90                   	nop
  40993e:	66 90                	xchg   %ax,%ax

0000000000409940 <_ZNK4Poco20OutOfMemoryException5cloneEv>:
  409940:	55                   	push   %rbp
  409941:	48 89 fd             	mov    %rdi,%rbp
  409944:	bf 20 00 00 00       	mov    $0x20,%edi
  409949:	53                   	push   %rbx
  40994a:	48 83 ec 08          	sub    $0x8,%rsp
  40994e:	e8 5d 8c ff ff       	callq  4025b0 <_Znwm@plt>
  409953:	48 89 ee             	mov    %rbp,%rsi
  409956:	48 89 c7             	mov    %rax,%rdi
  409959:	48 89 c3             	mov    %rax,%rbx
  40995c:	e8 cf ef ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409961:	48 c7 03 90 e9 40 00 	movq   $0x40e990,(%rbx)
  409968:	48 83 c4 08          	add    $0x8,%rsp
  40996c:	48 89 d8             	mov    %rbx,%rax
  40996f:	5b                   	pop    %rbx
  409970:	5d                   	pop    %rbp
  409971:	c3                   	retq   
  409972:	48 89 c5             	mov    %rax,%rbp
  409975:	48 89 df             	mov    %rbx,%rdi
  409978:	e8 43 88 ff ff       	callq  4021c0 <_ZdlPv@plt>
  40997d:	48 89 ef             	mov    %rbp,%rdi
  409980:	e8 3b 8c ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  409985:	90                   	nop
  409986:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40998d:	00 00 00 

0000000000409990 <_ZNK4Poco20OutOfMemoryException7rethrowEv>:
  409990:	55                   	push   %rbp
  409991:	48 89 fd             	mov    %rdi,%rbp
  409994:	bf 20 00 00 00       	mov    $0x20,%edi
  409999:	53                   	push   %rbx
  40999a:	48 83 ec 08          	sub    $0x8,%rsp
  40999e:	e8 5d 8a ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  4099a3:	48 89 ee             	mov    %rbp,%rsi
  4099a6:	48 89 c7             	mov    %rax,%rdi
  4099a9:	48 89 c3             	mov    %rax,%rbx
  4099ac:	e8 7f ef ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  4099b1:	48 c7 03 90 e9 40 00 	movq   $0x40e990,(%rbx)
  4099b8:	ba b0 83 40 00       	mov    $0x4083b0,%edx
  4099bd:	be 90 da 40 00       	mov    $0x40da90,%esi
  4099c2:	48 89 df             	mov    %rbx,%rdi
  4099c5:	e8 d6 8a ff ff       	callq  4024a0 <__cxa_throw@plt>
  4099ca:	48 89 c5             	mov    %rax,%rbp
  4099cd:	48 89 df             	mov    %rbx,%rdi
  4099d0:	e8 4b 8a ff ff       	callq  402420 <__cxa_free_exception@plt>
  4099d5:	48 89 ef             	mov    %rbp,%rdi
  4099d8:	e8 e3 8b ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  4099dd:	90                   	nop
  4099de:	66 90                	xchg   %ax,%ax

00000000004099e0 <_ZNK4Poco13DataException5cloneEv>:
  4099e0:	55                   	push   %rbp
  4099e1:	48 89 fd             	mov    %rdi,%rbp
  4099e4:	bf 20 00 00 00       	mov    $0x20,%edi
  4099e9:	53                   	push   %rbx
  4099ea:	48 83 ec 08          	sub    $0x8,%rsp
  4099ee:	e8 bd 8b ff ff       	callq  4025b0 <_Znwm@plt>
  4099f3:	48 89 ee             	mov    %rbp,%rsi
  4099f6:	48 89 c7             	mov    %rax,%rdi
  4099f9:	48 89 c3             	mov    %rax,%rbx
  4099fc:	e8 2f ef ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409a01:	48 c7 03 f0 e9 40 00 	movq   $0x40e9f0,(%rbx)
  409a08:	48 83 c4 08          	add    $0x8,%rsp
  409a0c:	48 89 d8             	mov    %rbx,%rax
  409a0f:	5b                   	pop    %rbx
  409a10:	5d                   	pop    %rbp
  409a11:	c3                   	retq   
  409a12:	48 89 c5             	mov    %rax,%rbp
  409a15:	48 89 df             	mov    %rbx,%rdi
  409a18:	e8 a3 87 ff ff       	callq  4021c0 <_ZdlPv@plt>
  409a1d:	48 89 ef             	mov    %rbp,%rdi
  409a20:	e8 9b 8b ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  409a25:	90                   	nop
  409a26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  409a2d:	00 00 00 

0000000000409a30 <_ZNK4Poco13DataException7rethrowEv>:
  409a30:	55                   	push   %rbp
  409a31:	48 89 fd             	mov    %rdi,%rbp
  409a34:	bf 20 00 00 00       	mov    $0x20,%edi
  409a39:	53                   	push   %rbx
  409a3a:	48 83 ec 08          	sub    $0x8,%rsp
  409a3e:	e8 bd 89 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  409a43:	48 89 ee             	mov    %rbp,%rsi
  409a46:	48 89 c7             	mov    %rax,%rdi
  409a49:	48 89 c3             	mov    %rax,%rbx
  409a4c:	e8 df ee ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409a51:	48 c7 03 f0 e9 40 00 	movq   $0x40e9f0,(%rbx)
  409a58:	ba e0 83 40 00       	mov    $0x4083e0,%edx
  409a5d:	be d0 da 40 00       	mov    $0x40dad0,%esi
  409a62:	48 89 df             	mov    %rbx,%rdi
  409a65:	e8 36 8a ff ff       	callq  4024a0 <__cxa_throw@plt>
  409a6a:	48 89 c5             	mov    %rax,%rbp
  409a6d:	48 89 df             	mov    %rbx,%rdi
  409a70:	e8 ab 89 ff ff       	callq  402420 <__cxa_free_exception@plt>
  409a75:	48 89 ef             	mov    %rbp,%rdi
  409a78:	e8 43 8b ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  409a7d:	90                   	nop
  409a7e:	66 90                	xchg   %ax,%ax

0000000000409a80 <_ZNK4Poco19DataFormatException5cloneEv>:
  409a80:	55                   	push   %rbp
  409a81:	48 89 fd             	mov    %rdi,%rbp
  409a84:	bf 20 00 00 00       	mov    $0x20,%edi
  409a89:	53                   	push   %rbx
  409a8a:	48 83 ec 08          	sub    $0x8,%rsp
  409a8e:	e8 1d 8b ff ff       	callq  4025b0 <_Znwm@plt>
  409a93:	48 89 ee             	mov    %rbp,%rsi
  409a96:	48 89 c7             	mov    %rax,%rdi
  409a99:	48 89 c3             	mov    %rax,%rbx
  409a9c:	e8 8f ee ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409aa1:	48 c7 03 50 ea 40 00 	movq   $0x40ea50,(%rbx)
  409aa8:	48 83 c4 08          	add    $0x8,%rsp
  409aac:	48 89 d8             	mov    %rbx,%rax
  409aaf:	5b                   	pop    %rbx
  409ab0:	5d                   	pop    %rbp
  409ab1:	c3                   	retq   
  409ab2:	48 89 c5             	mov    %rax,%rbp
  409ab5:	48 89 df             	mov    %rbx,%rdi
  409ab8:	e8 03 87 ff ff       	callq  4021c0 <_ZdlPv@plt>
  409abd:	48 89 ef             	mov    %rbp,%rdi
  409ac0:	e8 fb 8a ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  409ac5:	90                   	nop
  409ac6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  409acd:	00 00 00 

0000000000409ad0 <_ZNK4Poco19DataFormatException7rethrowEv>:
  409ad0:	55                   	push   %rbp
  409ad1:	48 89 fd             	mov    %rdi,%rbp
  409ad4:	bf 20 00 00 00       	mov    $0x20,%edi
  409ad9:	53                   	push   %rbx
  409ada:	48 83 ec 08          	sub    $0x8,%rsp
  409ade:	e8 1d 89 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  409ae3:	48 89 ee             	mov    %rbp,%rsi
  409ae6:	48 89 c7             	mov    %rax,%rdi
  409ae9:	48 89 c3             	mov    %rax,%rbx
  409aec:	e8 3f ee ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409af1:	48 c7 03 50 ea 40 00 	movq   $0x40ea50,(%rbx)
  409af8:	ba 10 84 40 00       	mov    $0x408410,%edx
  409afd:	be 10 db 40 00       	mov    $0x40db10,%esi
  409b02:	48 89 df             	mov    %rbx,%rdi
  409b05:	e8 96 89 ff ff       	callq  4024a0 <__cxa_throw@plt>
  409b0a:	48 89 c5             	mov    %rax,%rbp
  409b0d:	48 89 df             	mov    %rbx,%rdi
  409b10:	e8 0b 89 ff ff       	callq  402420 <__cxa_free_exception@plt>
  409b15:	48 89 ef             	mov    %rbp,%rdi
  409b18:	e8 a3 8a ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  409b1d:	90                   	nop
  409b1e:	66 90                	xchg   %ax,%ax

0000000000409b20 <_ZNK4Poco15SyntaxException5cloneEv>:
  409b20:	55                   	push   %rbp
  409b21:	48 89 fd             	mov    %rdi,%rbp
  409b24:	bf 20 00 00 00       	mov    $0x20,%edi
  409b29:	53                   	push   %rbx
  409b2a:	48 83 ec 08          	sub    $0x8,%rsp
  409b2e:	e8 7d 8a ff ff       	callq  4025b0 <_Znwm@plt>
  409b33:	48 89 ee             	mov    %rbp,%rsi
  409b36:	48 89 c7             	mov    %rax,%rdi
  409b39:	48 89 c3             	mov    %rax,%rbx
  409b3c:	e8 ef ed ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409b41:	48 c7 03 b0 ea 40 00 	movq   $0x40eab0,(%rbx)
  409b48:	48 83 c4 08          	add    $0x8,%rsp
  409b4c:	48 89 d8             	mov    %rbx,%rax
  409b4f:	5b                   	pop    %rbx
  409b50:	5d                   	pop    %rbp
  409b51:	c3                   	retq   
  409b52:	48 89 c5             	mov    %rax,%rbp
  409b55:	48 89 df             	mov    %rbx,%rdi
  409b58:	e8 63 86 ff ff       	callq  4021c0 <_ZdlPv@plt>
  409b5d:	48 89 ef             	mov    %rbp,%rdi
  409b60:	e8 5b 8a ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  409b65:	90                   	nop
  409b66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  409b6d:	00 00 00 

0000000000409b70 <_ZNK4Poco15SyntaxException7rethrowEv>:
  409b70:	55                   	push   %rbp
  409b71:	48 89 fd             	mov    %rdi,%rbp
  409b74:	bf 20 00 00 00       	mov    $0x20,%edi
  409b79:	53                   	push   %rbx
  409b7a:	48 83 ec 08          	sub    $0x8,%rsp
  409b7e:	e8 7d 88 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  409b83:	48 89 ee             	mov    %rbp,%rsi
  409b86:	48 89 c7             	mov    %rax,%rdi
  409b89:	48 89 c3             	mov    %rax,%rbx
  409b8c:	e8 9f ed ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409b91:	48 c7 03 b0 ea 40 00 	movq   $0x40eab0,(%rbx)
  409b98:	ba 40 84 40 00       	mov    $0x408440,%edx
  409b9d:	be 50 db 40 00       	mov    $0x40db50,%esi
  409ba2:	48 89 df             	mov    %rbx,%rdi
  409ba5:	e8 f6 88 ff ff       	callq  4024a0 <__cxa_throw@plt>
  409baa:	48 89 c5             	mov    %rax,%rbp
  409bad:	48 89 df             	mov    %rbx,%rdi
  409bb0:	e8 6b 88 ff ff       	callq  402420 <__cxa_free_exception@plt>
  409bb5:	48 89 ef             	mov    %rbp,%rdi
  409bb8:	e8 03 8a ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  409bbd:	90                   	nop
  409bbe:	66 90                	xchg   %ax,%ax

0000000000409bc0 <_ZNK4Poco19PathSyntaxException5cloneEv>:
  409bc0:	55                   	push   %rbp
  409bc1:	48 89 fd             	mov    %rdi,%rbp
  409bc4:	bf 20 00 00 00       	mov    $0x20,%edi
  409bc9:	53                   	push   %rbx
  409bca:	48 83 ec 08          	sub    $0x8,%rsp
  409bce:	e8 dd 89 ff ff       	callq  4025b0 <_Znwm@plt>
  409bd3:	48 89 ee             	mov    %rbp,%rsi
  409bd6:	48 89 c7             	mov    %rax,%rdi
  409bd9:	48 89 c3             	mov    %rax,%rbx
  409bdc:	e8 4f ed ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409be1:	48 c7 03 70 eb 40 00 	movq   $0x40eb70,(%rbx)
  409be8:	48 83 c4 08          	add    $0x8,%rsp
  409bec:	48 89 d8             	mov    %rbx,%rax
  409bef:	5b                   	pop    %rbx
  409bf0:	5d                   	pop    %rbp
  409bf1:	c3                   	retq   
  409bf2:	48 89 c5             	mov    %rax,%rbp
  409bf5:	48 89 df             	mov    %rbx,%rdi
  409bf8:	e8 c3 85 ff ff       	callq  4021c0 <_ZdlPv@plt>
  409bfd:	48 89 ef             	mov    %rbp,%rdi
  409c00:	e8 bb 89 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  409c05:	90                   	nop
  409c06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  409c0d:	00 00 00 

0000000000409c10 <_ZNK4Poco19PathSyntaxException7rethrowEv>:
  409c10:	55                   	push   %rbp
  409c11:	48 89 fd             	mov    %rdi,%rbp
  409c14:	bf 20 00 00 00       	mov    $0x20,%edi
  409c19:	53                   	push   %rbx
  409c1a:	48 83 ec 08          	sub    $0x8,%rsp
  409c1e:	e8 dd 87 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  409c23:	48 89 ee             	mov    %rbp,%rsi
  409c26:	48 89 c7             	mov    %rax,%rdi
  409c29:	48 89 c3             	mov    %rax,%rbx
  409c2c:	e8 ff ec ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409c31:	48 c7 03 70 eb 40 00 	movq   $0x40eb70,(%rbx)
  409c38:	ba 70 84 40 00       	mov    $0x408470,%edx
  409c3d:	be f0 db 40 00       	mov    $0x40dbf0,%esi
  409c42:	48 89 df             	mov    %rbx,%rdi
  409c45:	e8 56 88 ff ff       	callq  4024a0 <__cxa_throw@plt>
  409c4a:	48 89 c5             	mov    %rax,%rbp
  409c4d:	48 89 df             	mov    %rbx,%rdi
  409c50:	e8 cb 87 ff ff       	callq  402420 <__cxa_free_exception@plt>
  409c55:	48 89 ef             	mov    %rbp,%rdi
  409c58:	e8 63 89 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  409c5d:	90                   	nop
  409c5e:	66 90                	xchg   %ax,%ax

0000000000409c60 <_ZNK4Poco26CircularReferenceException5cloneEv>:
  409c60:	55                   	push   %rbp
  409c61:	48 89 fd             	mov    %rdi,%rbp
  409c64:	bf 20 00 00 00       	mov    $0x20,%edi
  409c69:	53                   	push   %rbx
  409c6a:	48 83 ec 08          	sub    $0x8,%rsp
  409c6e:	e8 3d 89 ff ff       	callq  4025b0 <_Znwm@plt>
  409c73:	48 89 ee             	mov    %rbp,%rsi
  409c76:	48 89 c7             	mov    %rax,%rdi
  409c79:	48 89 c3             	mov    %rax,%rbx
  409c7c:	e8 af ec ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409c81:	48 c7 03 10 eb 40 00 	movq   $0x40eb10,(%rbx)
  409c88:	48 83 c4 08          	add    $0x8,%rsp
  409c8c:	48 89 d8             	mov    %rbx,%rax
  409c8f:	5b                   	pop    %rbx
  409c90:	5d                   	pop    %rbp
  409c91:	c3                   	retq   
  409c92:	48 89 c5             	mov    %rax,%rbp
  409c95:	48 89 df             	mov    %rbx,%rdi
  409c98:	e8 23 85 ff ff       	callq  4021c0 <_ZdlPv@plt>
  409c9d:	48 89 ef             	mov    %rbp,%rdi
  409ca0:	e8 1b 89 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  409ca5:	90                   	nop
  409ca6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  409cad:	00 00 00 

0000000000409cb0 <_ZNK4Poco26CircularReferenceException7rethrowEv>:
  409cb0:	55                   	push   %rbp
  409cb1:	48 89 fd             	mov    %rdi,%rbp
  409cb4:	bf 20 00 00 00       	mov    $0x20,%edi
  409cb9:	53                   	push   %rbx
  409cba:	48 83 ec 08          	sub    $0x8,%rsp
  409cbe:	e8 3d 87 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  409cc3:	48 89 ee             	mov    %rbp,%rsi
  409cc6:	48 89 c7             	mov    %rax,%rdi
  409cc9:	48 89 c3             	mov    %rax,%rbx
  409ccc:	e8 5f ec ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409cd1:	48 c7 03 10 eb 40 00 	movq   $0x40eb10,(%rbx)
  409cd8:	ba a0 84 40 00       	mov    $0x4084a0,%edx
  409cdd:	be b0 db 40 00       	mov    $0x40dbb0,%esi
  409ce2:	48 89 df             	mov    %rbx,%rdi
  409ce5:	e8 b6 87 ff ff       	callq  4024a0 <__cxa_throw@plt>
  409cea:	48 89 c5             	mov    %rax,%rbp
  409ced:	48 89 df             	mov    %rbx,%rdi
  409cf0:	e8 2b 87 ff ff       	callq  402420 <__cxa_free_exception@plt>
  409cf5:	48 89 ef             	mov    %rbp,%rdi
  409cf8:	e8 c3 88 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  409cfd:	90                   	nop
  409cfe:	66 90                	xchg   %ax,%ax

0000000000409d00 <_ZNK4Poco11IOException5cloneEv>:
  409d00:	55                   	push   %rbp
  409d01:	48 89 fd             	mov    %rdi,%rbp
  409d04:	bf 20 00 00 00       	mov    $0x20,%edi
  409d09:	53                   	push   %rbx
  409d0a:	48 83 ec 08          	sub    $0x8,%rsp
  409d0e:	e8 9d 88 ff ff       	callq  4025b0 <_Znwm@plt>
  409d13:	48 89 ee             	mov    %rbp,%rsi
  409d16:	48 89 c7             	mov    %rax,%rdi
  409d19:	48 89 c3             	mov    %rax,%rbx
  409d1c:	e8 0f ec ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409d21:	48 c7 03 d0 eb 40 00 	movq   $0x40ebd0,(%rbx)
  409d28:	48 83 c4 08          	add    $0x8,%rsp
  409d2c:	48 89 d8             	mov    %rbx,%rax
  409d2f:	5b                   	pop    %rbx
  409d30:	5d                   	pop    %rbp
  409d31:	c3                   	retq   
  409d32:	48 89 c5             	mov    %rax,%rbp
  409d35:	48 89 df             	mov    %rbx,%rdi
  409d38:	e8 83 84 ff ff       	callq  4021c0 <_ZdlPv@plt>
  409d3d:	48 89 ef             	mov    %rbp,%rdi
  409d40:	e8 7b 88 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  409d45:	90                   	nop
  409d46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  409d4d:	00 00 00 

0000000000409d50 <_ZNK4Poco11IOException7rethrowEv>:
  409d50:	55                   	push   %rbp
  409d51:	48 89 fd             	mov    %rdi,%rbp
  409d54:	bf 20 00 00 00       	mov    $0x20,%edi
  409d59:	53                   	push   %rbx
  409d5a:	48 83 ec 08          	sub    $0x8,%rsp
  409d5e:	e8 9d 86 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  409d63:	48 89 ee             	mov    %rbp,%rsi
  409d66:	48 89 c7             	mov    %rax,%rdi
  409d69:	48 89 c3             	mov    %rax,%rbx
  409d6c:	e8 bf eb ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409d71:	48 c7 03 d0 eb 40 00 	movq   $0x40ebd0,(%rbx)
  409d78:	ba d0 84 40 00       	mov    $0x4084d0,%edx
  409d7d:	be 30 dc 40 00       	mov    $0x40dc30,%esi
  409d82:	48 89 df             	mov    %rbx,%rdi
  409d85:	e8 16 87 ff ff       	callq  4024a0 <__cxa_throw@plt>
  409d8a:	48 89 c5             	mov    %rax,%rbp
  409d8d:	48 89 df             	mov    %rbx,%rdi
  409d90:	e8 8b 86 ff ff       	callq  402420 <__cxa_free_exception@plt>
  409d95:	48 89 ef             	mov    %rbp,%rdi
  409d98:	e8 23 88 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  409d9d:	90                   	nop
  409d9e:	66 90                	xchg   %ax,%ax

0000000000409da0 <_ZNK4Poco17ProtocolException5cloneEv>:
  409da0:	55                   	push   %rbp
  409da1:	48 89 fd             	mov    %rdi,%rbp
  409da4:	bf 20 00 00 00       	mov    $0x20,%edi
  409da9:	53                   	push   %rbx
  409daa:	48 83 ec 08          	sub    $0x8,%rsp
  409dae:	e8 fd 87 ff ff       	callq  4025b0 <_Znwm@plt>
  409db3:	48 89 ee             	mov    %rbp,%rsi
  409db6:	48 89 c7             	mov    %rax,%rdi
  409db9:	48 89 c3             	mov    %rax,%rbx
  409dbc:	e8 6f eb ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409dc1:	48 c7 03 30 ec 40 00 	movq   $0x40ec30,(%rbx)
  409dc8:	48 83 c4 08          	add    $0x8,%rsp
  409dcc:	48 89 d8             	mov    %rbx,%rax
  409dcf:	5b                   	pop    %rbx
  409dd0:	5d                   	pop    %rbp
  409dd1:	c3                   	retq   
  409dd2:	48 89 c5             	mov    %rax,%rbp
  409dd5:	48 89 df             	mov    %rbx,%rdi
  409dd8:	e8 e3 83 ff ff       	callq  4021c0 <_ZdlPv@plt>
  409ddd:	48 89 ef             	mov    %rbp,%rdi
  409de0:	e8 db 87 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  409de5:	90                   	nop
  409de6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  409ded:	00 00 00 

0000000000409df0 <_ZNK4Poco17ProtocolException7rethrowEv>:
  409df0:	55                   	push   %rbp
  409df1:	48 89 fd             	mov    %rdi,%rbp
  409df4:	bf 20 00 00 00       	mov    $0x20,%edi
  409df9:	53                   	push   %rbx
  409dfa:	48 83 ec 08          	sub    $0x8,%rsp
  409dfe:	e8 fd 85 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  409e03:	48 89 ee             	mov    %rbp,%rsi
  409e06:	48 89 c7             	mov    %rax,%rdi
  409e09:	48 89 c3             	mov    %rax,%rbx
  409e0c:	e8 1f eb ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409e11:	48 c7 03 30 ec 40 00 	movq   $0x40ec30,(%rbx)
  409e18:	ba 00 85 40 00       	mov    $0x408500,%edx
  409e1d:	be 70 dc 40 00       	mov    $0x40dc70,%esi
  409e22:	48 89 df             	mov    %rbx,%rdi
  409e25:	e8 76 86 ff ff       	callq  4024a0 <__cxa_throw@plt>
  409e2a:	48 89 c5             	mov    %rax,%rbp
  409e2d:	48 89 df             	mov    %rbx,%rdi
  409e30:	e8 eb 85 ff ff       	callq  402420 <__cxa_free_exception@plt>
  409e35:	48 89 ef             	mov    %rbp,%rdi
  409e38:	e8 83 87 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  409e3d:	90                   	nop
  409e3e:	66 90                	xchg   %ax,%ax

0000000000409e40 <_ZNK4Poco13FileException5cloneEv>:
  409e40:	55                   	push   %rbp
  409e41:	48 89 fd             	mov    %rdi,%rbp
  409e44:	bf 20 00 00 00       	mov    $0x20,%edi
  409e49:	53                   	push   %rbx
  409e4a:	48 83 ec 08          	sub    $0x8,%rsp
  409e4e:	e8 5d 87 ff ff       	callq  4025b0 <_Znwm@plt>
  409e53:	48 89 ee             	mov    %rbp,%rsi
  409e56:	48 89 c7             	mov    %rax,%rdi
  409e59:	48 89 c3             	mov    %rax,%rbx
  409e5c:	e8 cf ea ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409e61:	48 c7 03 90 ec 40 00 	movq   $0x40ec90,(%rbx)
  409e68:	48 83 c4 08          	add    $0x8,%rsp
  409e6c:	48 89 d8             	mov    %rbx,%rax
  409e6f:	5b                   	pop    %rbx
  409e70:	5d                   	pop    %rbp
  409e71:	c3                   	retq   
  409e72:	48 89 c5             	mov    %rax,%rbp
  409e75:	48 89 df             	mov    %rbx,%rdi
  409e78:	e8 43 83 ff ff       	callq  4021c0 <_ZdlPv@plt>
  409e7d:	48 89 ef             	mov    %rbp,%rdi
  409e80:	e8 3b 87 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  409e85:	90                   	nop
  409e86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  409e8d:	00 00 00 

0000000000409e90 <_ZNK4Poco13FileException7rethrowEv>:
  409e90:	55                   	push   %rbp
  409e91:	48 89 fd             	mov    %rdi,%rbp
  409e94:	bf 20 00 00 00       	mov    $0x20,%edi
  409e99:	53                   	push   %rbx
  409e9a:	48 83 ec 08          	sub    $0x8,%rsp
  409e9e:	e8 5d 85 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  409ea3:	48 89 ee             	mov    %rbp,%rsi
  409ea6:	48 89 c7             	mov    %rax,%rdi
  409ea9:	48 89 c3             	mov    %rax,%rbx
  409eac:	e8 7f ea ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409eb1:	48 c7 03 90 ec 40 00 	movq   $0x40ec90,(%rbx)
  409eb8:	ba 30 85 40 00       	mov    $0x408530,%edx
  409ebd:	be b0 dc 40 00       	mov    $0x40dcb0,%esi
  409ec2:	48 89 df             	mov    %rbx,%rdi
  409ec5:	e8 d6 85 ff ff       	callq  4024a0 <__cxa_throw@plt>
  409eca:	48 89 c5             	mov    %rax,%rbp
  409ecd:	48 89 df             	mov    %rbx,%rdi
  409ed0:	e8 4b 85 ff ff       	callq  402420 <__cxa_free_exception@plt>
  409ed5:	48 89 ef             	mov    %rbp,%rdi
  409ed8:	e8 e3 86 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  409edd:	90                   	nop
  409ede:	66 90                	xchg   %ax,%ax

0000000000409ee0 <_ZNK4Poco19FileExistsException5cloneEv>:
  409ee0:	55                   	push   %rbp
  409ee1:	48 89 fd             	mov    %rdi,%rbp
  409ee4:	bf 20 00 00 00       	mov    $0x20,%edi
  409ee9:	53                   	push   %rbx
  409eea:	48 83 ec 08          	sub    $0x8,%rsp
  409eee:	e8 bd 86 ff ff       	callq  4025b0 <_Znwm@plt>
  409ef3:	48 89 ee             	mov    %rbp,%rsi
  409ef6:	48 89 c7             	mov    %rax,%rdi
  409ef9:	48 89 c3             	mov    %rax,%rbx
  409efc:	e8 2f ea ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409f01:	48 c7 03 f0 ec 40 00 	movq   $0x40ecf0,(%rbx)
  409f08:	48 83 c4 08          	add    $0x8,%rsp
  409f0c:	48 89 d8             	mov    %rbx,%rax
  409f0f:	5b                   	pop    %rbx
  409f10:	5d                   	pop    %rbp
  409f11:	c3                   	retq   
  409f12:	48 89 c5             	mov    %rax,%rbp
  409f15:	48 89 df             	mov    %rbx,%rdi
  409f18:	e8 a3 82 ff ff       	callq  4021c0 <_ZdlPv@plt>
  409f1d:	48 89 ef             	mov    %rbp,%rdi
  409f20:	e8 9b 86 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  409f25:	90                   	nop
  409f26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  409f2d:	00 00 00 

0000000000409f30 <_ZNK4Poco19FileExistsException7rethrowEv>:
  409f30:	55                   	push   %rbp
  409f31:	48 89 fd             	mov    %rdi,%rbp
  409f34:	bf 20 00 00 00       	mov    $0x20,%edi
  409f39:	53                   	push   %rbx
  409f3a:	48 83 ec 08          	sub    $0x8,%rsp
  409f3e:	e8 bd 84 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  409f43:	48 89 ee             	mov    %rbp,%rsi
  409f46:	48 89 c7             	mov    %rax,%rdi
  409f49:	48 89 c3             	mov    %rax,%rbx
  409f4c:	e8 df e9 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409f51:	48 c7 03 f0 ec 40 00 	movq   $0x40ecf0,(%rbx)
  409f58:	ba 60 85 40 00       	mov    $0x408560,%edx
  409f5d:	be f0 dc 40 00       	mov    $0x40dcf0,%esi
  409f62:	48 89 df             	mov    %rbx,%rdi
  409f65:	e8 36 85 ff ff       	callq  4024a0 <__cxa_throw@plt>
  409f6a:	48 89 c5             	mov    %rax,%rbp
  409f6d:	48 89 df             	mov    %rbx,%rdi
  409f70:	e8 ab 84 ff ff       	callq  402420 <__cxa_free_exception@plt>
  409f75:	48 89 ef             	mov    %rbp,%rdi
  409f78:	e8 43 86 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  409f7d:	90                   	nop
  409f7e:	66 90                	xchg   %ax,%ax

0000000000409f80 <_ZNK4Poco21FileNotFoundException5cloneEv>:
  409f80:	55                   	push   %rbp
  409f81:	48 89 fd             	mov    %rdi,%rbp
  409f84:	bf 20 00 00 00       	mov    $0x20,%edi
  409f89:	53                   	push   %rbx
  409f8a:	48 83 ec 08          	sub    $0x8,%rsp
  409f8e:	e8 1d 86 ff ff       	callq  4025b0 <_Znwm@plt>
  409f93:	48 89 ee             	mov    %rbp,%rsi
  409f96:	48 89 c7             	mov    %rax,%rdi
  409f99:	48 89 c3             	mov    %rax,%rbx
  409f9c:	e8 8f e9 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409fa1:	48 c7 03 50 ed 40 00 	movq   $0x40ed50,(%rbx)
  409fa8:	48 83 c4 08          	add    $0x8,%rsp
  409fac:	48 89 d8             	mov    %rbx,%rax
  409faf:	5b                   	pop    %rbx
  409fb0:	5d                   	pop    %rbp
  409fb1:	c3                   	retq   
  409fb2:	48 89 c5             	mov    %rax,%rbp
  409fb5:	48 89 df             	mov    %rbx,%rdi
  409fb8:	e8 03 82 ff ff       	callq  4021c0 <_ZdlPv@plt>
  409fbd:	48 89 ef             	mov    %rbp,%rdi
  409fc0:	e8 fb 85 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  409fc5:	90                   	nop
  409fc6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  409fcd:	00 00 00 

0000000000409fd0 <_ZNK4Poco21FileNotFoundException7rethrowEv>:
  409fd0:	55                   	push   %rbp
  409fd1:	48 89 fd             	mov    %rdi,%rbp
  409fd4:	bf 20 00 00 00       	mov    $0x20,%edi
  409fd9:	53                   	push   %rbx
  409fda:	48 83 ec 08          	sub    $0x8,%rsp
  409fde:	e8 1d 84 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  409fe3:	48 89 ee             	mov    %rbp,%rsi
  409fe6:	48 89 c7             	mov    %rax,%rdi
  409fe9:	48 89 c3             	mov    %rax,%rbx
  409fec:	e8 3f e9 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  409ff1:	48 c7 03 50 ed 40 00 	movq   $0x40ed50,(%rbx)
  409ff8:	ba 90 85 40 00       	mov    $0x408590,%edx
  409ffd:	be 30 dd 40 00       	mov    $0x40dd30,%esi
  40a002:	48 89 df             	mov    %rbx,%rdi
  40a005:	e8 96 84 ff ff       	callq  4024a0 <__cxa_throw@plt>
  40a00a:	48 89 c5             	mov    %rax,%rbp
  40a00d:	48 89 df             	mov    %rbx,%rdi
  40a010:	e8 0b 84 ff ff       	callq  402420 <__cxa_free_exception@plt>
  40a015:	48 89 ef             	mov    %rbp,%rdi
  40a018:	e8 a3 85 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40a01d:	90                   	nop
  40a01e:	66 90                	xchg   %ax,%ax

000000000040a020 <_ZNK4Poco21PathNotFoundException5cloneEv>:
  40a020:	55                   	push   %rbp
  40a021:	48 89 fd             	mov    %rdi,%rbp
  40a024:	bf 20 00 00 00       	mov    $0x20,%edi
  40a029:	53                   	push   %rbx
  40a02a:	48 83 ec 08          	sub    $0x8,%rsp
  40a02e:	e8 7d 85 ff ff       	callq  4025b0 <_Znwm@plt>
  40a033:	48 89 ee             	mov    %rbp,%rsi
  40a036:	48 89 c7             	mov    %rax,%rdi
  40a039:	48 89 c3             	mov    %rax,%rbx
  40a03c:	e8 ef e8 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40a041:	48 c7 03 b0 ed 40 00 	movq   $0x40edb0,(%rbx)
  40a048:	48 83 c4 08          	add    $0x8,%rsp
  40a04c:	48 89 d8             	mov    %rbx,%rax
  40a04f:	5b                   	pop    %rbx
  40a050:	5d                   	pop    %rbp
  40a051:	c3                   	retq   
  40a052:	48 89 c5             	mov    %rax,%rbp
  40a055:	48 89 df             	mov    %rbx,%rdi
  40a058:	e8 63 81 ff ff       	callq  4021c0 <_ZdlPv@plt>
  40a05d:	48 89 ef             	mov    %rbp,%rdi
  40a060:	e8 5b 85 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40a065:	90                   	nop
  40a066:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40a06d:	00 00 00 

000000000040a070 <_ZNK4Poco21PathNotFoundException7rethrowEv>:
  40a070:	55                   	push   %rbp
  40a071:	48 89 fd             	mov    %rdi,%rbp
  40a074:	bf 20 00 00 00       	mov    $0x20,%edi
  40a079:	53                   	push   %rbx
  40a07a:	48 83 ec 08          	sub    $0x8,%rsp
  40a07e:	e8 7d 83 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  40a083:	48 89 ee             	mov    %rbp,%rsi
  40a086:	48 89 c7             	mov    %rax,%rdi
  40a089:	48 89 c3             	mov    %rax,%rbx
  40a08c:	e8 9f e8 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40a091:	48 c7 03 b0 ed 40 00 	movq   $0x40edb0,(%rbx)
  40a098:	ba c0 85 40 00       	mov    $0x4085c0,%edx
  40a09d:	be 70 dd 40 00       	mov    $0x40dd70,%esi
  40a0a2:	48 89 df             	mov    %rbx,%rdi
  40a0a5:	e8 f6 83 ff ff       	callq  4024a0 <__cxa_throw@plt>
  40a0aa:	48 89 c5             	mov    %rax,%rbp
  40a0ad:	48 89 df             	mov    %rbx,%rdi
  40a0b0:	e8 6b 83 ff ff       	callq  402420 <__cxa_free_exception@plt>
  40a0b5:	48 89 ef             	mov    %rbp,%rdi
  40a0b8:	e8 03 85 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40a0bd:	90                   	nop
  40a0be:	66 90                	xchg   %ax,%ax

000000000040a0c0 <_ZNK4Poco21FileReadOnlyException5cloneEv>:
  40a0c0:	55                   	push   %rbp
  40a0c1:	48 89 fd             	mov    %rdi,%rbp
  40a0c4:	bf 20 00 00 00       	mov    $0x20,%edi
  40a0c9:	53                   	push   %rbx
  40a0ca:	48 83 ec 08          	sub    $0x8,%rsp
  40a0ce:	e8 dd 84 ff ff       	callq  4025b0 <_Znwm@plt>
  40a0d3:	48 89 ee             	mov    %rbp,%rsi
  40a0d6:	48 89 c7             	mov    %rax,%rdi
  40a0d9:	48 89 c3             	mov    %rax,%rbx
  40a0dc:	e8 4f e8 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40a0e1:	48 c7 03 10 ee 40 00 	movq   $0x40ee10,(%rbx)
  40a0e8:	48 83 c4 08          	add    $0x8,%rsp
  40a0ec:	48 89 d8             	mov    %rbx,%rax
  40a0ef:	5b                   	pop    %rbx
  40a0f0:	5d                   	pop    %rbp
  40a0f1:	c3                   	retq   
  40a0f2:	48 89 c5             	mov    %rax,%rbp
  40a0f5:	48 89 df             	mov    %rbx,%rdi
  40a0f8:	e8 c3 80 ff ff       	callq  4021c0 <_ZdlPv@plt>
  40a0fd:	48 89 ef             	mov    %rbp,%rdi
  40a100:	e8 bb 84 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40a105:	90                   	nop
  40a106:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40a10d:	00 00 00 

000000000040a110 <_ZNK4Poco21FileReadOnlyException7rethrowEv>:
  40a110:	55                   	push   %rbp
  40a111:	48 89 fd             	mov    %rdi,%rbp
  40a114:	bf 20 00 00 00       	mov    $0x20,%edi
  40a119:	53                   	push   %rbx
  40a11a:	48 83 ec 08          	sub    $0x8,%rsp
  40a11e:	e8 dd 82 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  40a123:	48 89 ee             	mov    %rbp,%rsi
  40a126:	48 89 c7             	mov    %rax,%rdi
  40a129:	48 89 c3             	mov    %rax,%rbx
  40a12c:	e8 ff e7 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40a131:	48 c7 03 10 ee 40 00 	movq   $0x40ee10,(%rbx)
  40a138:	ba f0 85 40 00       	mov    $0x4085f0,%edx
  40a13d:	be b0 dd 40 00       	mov    $0x40ddb0,%esi
  40a142:	48 89 df             	mov    %rbx,%rdi
  40a145:	e8 56 83 ff ff       	callq  4024a0 <__cxa_throw@plt>
  40a14a:	48 89 c5             	mov    %rax,%rbp
  40a14d:	48 89 df             	mov    %rbx,%rdi
  40a150:	e8 cb 82 ff ff       	callq  402420 <__cxa_free_exception@plt>
  40a155:	48 89 ef             	mov    %rbp,%rdi
  40a158:	e8 63 84 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40a15d:	90                   	nop
  40a15e:	66 90                	xchg   %ax,%ax

000000000040a160 <_ZNK4Poco25FileAccessDeniedException5cloneEv>:
  40a160:	55                   	push   %rbp
  40a161:	48 89 fd             	mov    %rdi,%rbp
  40a164:	bf 20 00 00 00       	mov    $0x20,%edi
  40a169:	53                   	push   %rbx
  40a16a:	48 83 ec 08          	sub    $0x8,%rsp
  40a16e:	e8 3d 84 ff ff       	callq  4025b0 <_Znwm@plt>
  40a173:	48 89 ee             	mov    %rbp,%rsi
  40a176:	48 89 c7             	mov    %rax,%rdi
  40a179:	48 89 c3             	mov    %rax,%rbx
  40a17c:	e8 af e7 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40a181:	48 c7 03 70 ee 40 00 	movq   $0x40ee70,(%rbx)
  40a188:	48 83 c4 08          	add    $0x8,%rsp
  40a18c:	48 89 d8             	mov    %rbx,%rax
  40a18f:	5b                   	pop    %rbx
  40a190:	5d                   	pop    %rbp
  40a191:	c3                   	retq   
  40a192:	48 89 c5             	mov    %rax,%rbp
  40a195:	48 89 df             	mov    %rbx,%rdi
  40a198:	e8 23 80 ff ff       	callq  4021c0 <_ZdlPv@plt>
  40a19d:	48 89 ef             	mov    %rbp,%rdi
  40a1a0:	e8 1b 84 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40a1a5:	90                   	nop
  40a1a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40a1ad:	00 00 00 

000000000040a1b0 <_ZNK4Poco25FileAccessDeniedException7rethrowEv>:
  40a1b0:	55                   	push   %rbp
  40a1b1:	48 89 fd             	mov    %rdi,%rbp
  40a1b4:	bf 20 00 00 00       	mov    $0x20,%edi
  40a1b9:	53                   	push   %rbx
  40a1ba:	48 83 ec 08          	sub    $0x8,%rsp
  40a1be:	e8 3d 82 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  40a1c3:	48 89 ee             	mov    %rbp,%rsi
  40a1c6:	48 89 c7             	mov    %rax,%rdi
  40a1c9:	48 89 c3             	mov    %rax,%rbx
  40a1cc:	e8 5f e7 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40a1d1:	48 c7 03 70 ee 40 00 	movq   $0x40ee70,(%rbx)
  40a1d8:	ba 20 86 40 00       	mov    $0x408620,%edx
  40a1dd:	be 10 de 40 00       	mov    $0x40de10,%esi
  40a1e2:	48 89 df             	mov    %rbx,%rdi
  40a1e5:	e8 b6 82 ff ff       	callq  4024a0 <__cxa_throw@plt>
  40a1ea:	48 89 c5             	mov    %rax,%rbp
  40a1ed:	48 89 df             	mov    %rbx,%rdi
  40a1f0:	e8 2b 82 ff ff       	callq  402420 <__cxa_free_exception@plt>
  40a1f5:	48 89 ef             	mov    %rbp,%rdi
  40a1f8:	e8 c3 83 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40a1fd:	90                   	nop
  40a1fe:	66 90                	xchg   %ax,%ax

000000000040a200 <_ZNK4Poco19CreateFileException5cloneEv>:
  40a200:	55                   	push   %rbp
  40a201:	48 89 fd             	mov    %rdi,%rbp
  40a204:	bf 20 00 00 00       	mov    $0x20,%edi
  40a209:	53                   	push   %rbx
  40a20a:	48 83 ec 08          	sub    $0x8,%rsp
  40a20e:	e8 9d 83 ff ff       	callq  4025b0 <_Znwm@plt>
  40a213:	48 89 ee             	mov    %rbp,%rsi
  40a216:	48 89 c7             	mov    %rax,%rdi
  40a219:	48 89 c3             	mov    %rax,%rbx
  40a21c:	e8 0f e7 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40a221:	48 c7 03 d0 ee 40 00 	movq   $0x40eed0,(%rbx)
  40a228:	48 83 c4 08          	add    $0x8,%rsp
  40a22c:	48 89 d8             	mov    %rbx,%rax
  40a22f:	5b                   	pop    %rbx
  40a230:	5d                   	pop    %rbp
  40a231:	c3                   	retq   
  40a232:	48 89 c5             	mov    %rax,%rbp
  40a235:	48 89 df             	mov    %rbx,%rdi
  40a238:	e8 83 7f ff ff       	callq  4021c0 <_ZdlPv@plt>
  40a23d:	48 89 ef             	mov    %rbp,%rdi
  40a240:	e8 7b 83 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40a245:	90                   	nop
  40a246:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40a24d:	00 00 00 

000000000040a250 <_ZNK4Poco19CreateFileException7rethrowEv>:
  40a250:	55                   	push   %rbp
  40a251:	48 89 fd             	mov    %rdi,%rbp
  40a254:	bf 20 00 00 00       	mov    $0x20,%edi
  40a259:	53                   	push   %rbx
  40a25a:	48 83 ec 08          	sub    $0x8,%rsp
  40a25e:	e8 9d 81 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  40a263:	48 89 ee             	mov    %rbp,%rsi
  40a266:	48 89 c7             	mov    %rax,%rdi
  40a269:	48 89 c3             	mov    %rax,%rbx
  40a26c:	e8 bf e6 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40a271:	48 c7 03 d0 ee 40 00 	movq   $0x40eed0,(%rbx)
  40a278:	ba 50 86 40 00       	mov    $0x408650,%edx
  40a27d:	be 50 de 40 00       	mov    $0x40de50,%esi
  40a282:	48 89 df             	mov    %rbx,%rdi
  40a285:	e8 16 82 ff ff       	callq  4024a0 <__cxa_throw@plt>
  40a28a:	48 89 c5             	mov    %rax,%rbp
  40a28d:	48 89 df             	mov    %rbx,%rdi
  40a290:	e8 8b 81 ff ff       	callq  402420 <__cxa_free_exception@plt>
  40a295:	48 89 ef             	mov    %rbp,%rdi
  40a298:	e8 23 83 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40a29d:	90                   	nop
  40a29e:	66 90                	xchg   %ax,%ax

000000000040a2a0 <_ZNK4Poco17OpenFileException5cloneEv>:
  40a2a0:	55                   	push   %rbp
  40a2a1:	48 89 fd             	mov    %rdi,%rbp
  40a2a4:	bf 20 00 00 00       	mov    $0x20,%edi
  40a2a9:	53                   	push   %rbx
  40a2aa:	48 83 ec 08          	sub    $0x8,%rsp
  40a2ae:	e8 fd 82 ff ff       	callq  4025b0 <_Znwm@plt>
  40a2b3:	48 89 ee             	mov    %rbp,%rsi
  40a2b6:	48 89 c7             	mov    %rax,%rdi
  40a2b9:	48 89 c3             	mov    %rax,%rbx
  40a2bc:	e8 6f e6 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40a2c1:	48 c7 03 30 ef 40 00 	movq   $0x40ef30,(%rbx)
  40a2c8:	48 83 c4 08          	add    $0x8,%rsp
  40a2cc:	48 89 d8             	mov    %rbx,%rax
  40a2cf:	5b                   	pop    %rbx
  40a2d0:	5d                   	pop    %rbp
  40a2d1:	c3                   	retq   
  40a2d2:	48 89 c5             	mov    %rax,%rbp
  40a2d5:	48 89 df             	mov    %rbx,%rdi
  40a2d8:	e8 e3 7e ff ff       	callq  4021c0 <_ZdlPv@plt>
  40a2dd:	48 89 ef             	mov    %rbp,%rdi
  40a2e0:	e8 db 82 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40a2e5:	90                   	nop
  40a2e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40a2ed:	00 00 00 

000000000040a2f0 <_ZNK4Poco17OpenFileException7rethrowEv>:
  40a2f0:	55                   	push   %rbp
  40a2f1:	48 89 fd             	mov    %rdi,%rbp
  40a2f4:	bf 20 00 00 00       	mov    $0x20,%edi
  40a2f9:	53                   	push   %rbx
  40a2fa:	48 83 ec 08          	sub    $0x8,%rsp
  40a2fe:	e8 fd 80 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  40a303:	48 89 ee             	mov    %rbp,%rsi
  40a306:	48 89 c7             	mov    %rax,%rdi
  40a309:	48 89 c3             	mov    %rax,%rbx
  40a30c:	e8 1f e6 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40a311:	48 c7 03 30 ef 40 00 	movq   $0x40ef30,(%rbx)
  40a318:	ba 80 86 40 00       	mov    $0x408680,%edx
  40a31d:	be 90 de 40 00       	mov    $0x40de90,%esi
  40a322:	48 89 df             	mov    %rbx,%rdi
  40a325:	e8 76 81 ff ff       	callq  4024a0 <__cxa_throw@plt>
  40a32a:	48 89 c5             	mov    %rax,%rbp
  40a32d:	48 89 df             	mov    %rbx,%rdi
  40a330:	e8 eb 80 ff ff       	callq  402420 <__cxa_free_exception@plt>
  40a335:	48 89 ef             	mov    %rbp,%rdi
  40a338:	e8 83 82 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40a33d:	90                   	nop
  40a33e:	66 90                	xchg   %ax,%ax

000000000040a340 <_ZNK4Poco18WriteFileException5cloneEv>:
  40a340:	55                   	push   %rbp
  40a341:	48 89 fd             	mov    %rdi,%rbp
  40a344:	bf 20 00 00 00       	mov    $0x20,%edi
  40a349:	53                   	push   %rbx
  40a34a:	48 83 ec 08          	sub    $0x8,%rsp
  40a34e:	e8 5d 82 ff ff       	callq  4025b0 <_Znwm@plt>
  40a353:	48 89 ee             	mov    %rbp,%rsi
  40a356:	48 89 c7             	mov    %rax,%rdi
  40a359:	48 89 c3             	mov    %rax,%rbx
  40a35c:	e8 cf e5 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40a361:	48 c7 03 90 ef 40 00 	movq   $0x40ef90,(%rbx)
  40a368:	48 83 c4 08          	add    $0x8,%rsp
  40a36c:	48 89 d8             	mov    %rbx,%rax
  40a36f:	5b                   	pop    %rbx
  40a370:	5d                   	pop    %rbp
  40a371:	c3                   	retq   
  40a372:	48 89 c5             	mov    %rax,%rbp
  40a375:	48 89 df             	mov    %rbx,%rdi
  40a378:	e8 43 7e ff ff       	callq  4021c0 <_ZdlPv@plt>
  40a37d:	48 89 ef             	mov    %rbp,%rdi
  40a380:	e8 3b 82 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40a385:	90                   	nop
  40a386:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40a38d:	00 00 00 

000000000040a390 <_ZNK4Poco18WriteFileException7rethrowEv>:
  40a390:	55                   	push   %rbp
  40a391:	48 89 fd             	mov    %rdi,%rbp
  40a394:	bf 20 00 00 00       	mov    $0x20,%edi
  40a399:	53                   	push   %rbx
  40a39a:	48 83 ec 08          	sub    $0x8,%rsp
  40a39e:	e8 5d 80 ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  40a3a3:	48 89 ee             	mov    %rbp,%rsi
  40a3a6:	48 89 c7             	mov    %rax,%rdi
  40a3a9:	48 89 c3             	mov    %rax,%rbx
  40a3ac:	e8 7f e5 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40a3b1:	48 c7 03 90 ef 40 00 	movq   $0x40ef90,(%rbx)
  40a3b8:	ba b0 86 40 00       	mov    $0x4086b0,%edx
  40a3bd:	be d0 de 40 00       	mov    $0x40ded0,%esi
  40a3c2:	48 89 df             	mov    %rbx,%rdi
  40a3c5:	e8 d6 80 ff ff       	callq  4024a0 <__cxa_throw@plt>
  40a3ca:	48 89 c5             	mov    %rax,%rbp
  40a3cd:	48 89 df             	mov    %rbx,%rdi
  40a3d0:	e8 4b 80 ff ff       	callq  402420 <__cxa_free_exception@plt>
  40a3d5:	48 89 ef             	mov    %rbp,%rdi
  40a3d8:	e8 e3 81 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40a3dd:	90                   	nop
  40a3de:	66 90                	xchg   %ax,%ax

000000000040a3e0 <_ZNK4Poco17ReadFileException5cloneEv>:
  40a3e0:	55                   	push   %rbp
  40a3e1:	48 89 fd             	mov    %rdi,%rbp
  40a3e4:	bf 20 00 00 00       	mov    $0x20,%edi
  40a3e9:	53                   	push   %rbx
  40a3ea:	48 83 ec 08          	sub    $0x8,%rsp
  40a3ee:	e8 bd 81 ff ff       	callq  4025b0 <_Znwm@plt>
  40a3f3:	48 89 ee             	mov    %rbp,%rsi
  40a3f6:	48 89 c7             	mov    %rax,%rdi
  40a3f9:	48 89 c3             	mov    %rax,%rbx
  40a3fc:	e8 2f e5 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40a401:	48 c7 03 f0 ef 40 00 	movq   $0x40eff0,(%rbx)
  40a408:	48 83 c4 08          	add    $0x8,%rsp
  40a40c:	48 89 d8             	mov    %rbx,%rax
  40a40f:	5b                   	pop    %rbx
  40a410:	5d                   	pop    %rbp
  40a411:	c3                   	retq   
  40a412:	48 89 c5             	mov    %rax,%rbp
  40a415:	48 89 df             	mov    %rbx,%rdi
  40a418:	e8 a3 7d ff ff       	callq  4021c0 <_ZdlPv@plt>
  40a41d:	48 89 ef             	mov    %rbp,%rdi
  40a420:	e8 9b 81 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40a425:	90                   	nop
  40a426:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40a42d:	00 00 00 

000000000040a430 <_ZNK4Poco17ReadFileException7rethrowEv>:
  40a430:	55                   	push   %rbp
  40a431:	48 89 fd             	mov    %rdi,%rbp
  40a434:	bf 20 00 00 00       	mov    $0x20,%edi
  40a439:	53                   	push   %rbx
  40a43a:	48 83 ec 08          	sub    $0x8,%rsp
  40a43e:	e8 bd 7f ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  40a443:	48 89 ee             	mov    %rbp,%rsi
  40a446:	48 89 c7             	mov    %rax,%rdi
  40a449:	48 89 c3             	mov    %rax,%rbx
  40a44c:	e8 df e4 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40a451:	48 c7 03 f0 ef 40 00 	movq   $0x40eff0,(%rbx)
  40a458:	ba e0 86 40 00       	mov    $0x4086e0,%edx
  40a45d:	be 10 df 40 00       	mov    $0x40df10,%esi
  40a462:	48 89 df             	mov    %rbx,%rdi
  40a465:	e8 36 80 ff ff       	callq  4024a0 <__cxa_throw@plt>
  40a46a:	48 89 c5             	mov    %rax,%rbp
  40a46d:	48 89 df             	mov    %rbx,%rdi
  40a470:	e8 ab 7f ff ff       	callq  402420 <__cxa_free_exception@plt>
  40a475:	48 89 ef             	mov    %rbp,%rdi
  40a478:	e8 43 81 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40a47d:	90                   	nop
  40a47e:	66 90                	xchg   %ax,%ax

000000000040a480 <_ZNK4Poco25UnknownURISchemeException5cloneEv>:
  40a480:	55                   	push   %rbp
  40a481:	48 89 fd             	mov    %rdi,%rbp
  40a484:	bf 20 00 00 00       	mov    $0x20,%edi
  40a489:	53                   	push   %rbx
  40a48a:	48 83 ec 08          	sub    $0x8,%rsp
  40a48e:	e8 1d 81 ff ff       	callq  4025b0 <_Znwm@plt>
  40a493:	48 89 ee             	mov    %rbp,%rsi
  40a496:	48 89 c7             	mov    %rax,%rdi
  40a499:	48 89 c3             	mov    %rax,%rbx
  40a49c:	e8 8f e4 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40a4a1:	48 c7 03 50 f0 40 00 	movq   $0x40f050,(%rbx)
  40a4a8:	48 83 c4 08          	add    $0x8,%rsp
  40a4ac:	48 89 d8             	mov    %rbx,%rax
  40a4af:	5b                   	pop    %rbx
  40a4b0:	5d                   	pop    %rbp
  40a4b1:	c3                   	retq   
  40a4b2:	48 89 c5             	mov    %rax,%rbp
  40a4b5:	48 89 df             	mov    %rbx,%rdi
  40a4b8:	e8 03 7d ff ff       	callq  4021c0 <_ZdlPv@plt>
  40a4bd:	48 89 ef             	mov    %rbp,%rdi
  40a4c0:	e8 fb 80 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40a4c5:	90                   	nop
  40a4c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40a4cd:	00 00 00 

000000000040a4d0 <_ZNK4Poco25UnknownURISchemeException7rethrowEv>:
  40a4d0:	55                   	push   %rbp
  40a4d1:	48 89 fd             	mov    %rdi,%rbp
  40a4d4:	bf 20 00 00 00       	mov    $0x20,%edi
  40a4d9:	53                   	push   %rbx
  40a4da:	48 83 ec 08          	sub    $0x8,%rsp
  40a4de:	e8 1d 7f ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  40a4e3:	48 89 ee             	mov    %rbp,%rsi
  40a4e6:	48 89 c7             	mov    %rax,%rdi
  40a4e9:	48 89 c3             	mov    %rax,%rbx
  40a4ec:	e8 3f e4 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40a4f1:	48 c7 03 50 f0 40 00 	movq   $0x40f050,(%rbx)
  40a4f8:	ba 10 87 40 00       	mov    $0x408710,%edx
  40a4fd:	be 70 df 40 00       	mov    $0x40df70,%esi
  40a502:	48 89 df             	mov    %rbx,%rdi
  40a505:	e8 96 7f ff ff       	callq  4024a0 <__cxa_throw@plt>
  40a50a:	48 89 c5             	mov    %rax,%rbp
  40a50d:	48 89 df             	mov    %rbx,%rdi
  40a510:	e8 0b 7f ff ff       	callq  402420 <__cxa_free_exception@plt>
  40a515:	48 89 ef             	mov    %rbp,%rdi
  40a518:	e8 a3 80 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40a51d:	90                   	nop
  40a51e:	66 90                	xchg   %ax,%ax

000000000040a520 <_ZNK4Poco16BadCastException5cloneEv>:
  40a520:	55                   	push   %rbp
  40a521:	48 89 fd             	mov    %rdi,%rbp
  40a524:	bf 20 00 00 00       	mov    $0x20,%edi
  40a529:	53                   	push   %rbx
  40a52a:	48 83 ec 08          	sub    $0x8,%rsp
  40a52e:	e8 7d 80 ff ff       	callq  4025b0 <_Znwm@plt>
  40a533:	48 89 ee             	mov    %rbp,%rsi
  40a536:	48 89 c7             	mov    %rax,%rdi
  40a539:	48 89 c3             	mov    %rax,%rbx
  40a53c:	e8 ef e3 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40a541:	48 c7 03 10 f1 40 00 	movq   $0x40f110,(%rbx)
  40a548:	48 83 c4 08          	add    $0x8,%rsp
  40a54c:	48 89 d8             	mov    %rbx,%rax
  40a54f:	5b                   	pop    %rbx
  40a550:	5d                   	pop    %rbp
  40a551:	c3                   	retq   
  40a552:	48 89 c5             	mov    %rax,%rbp
  40a555:	48 89 df             	mov    %rbx,%rdi
  40a558:	e8 63 7c ff ff       	callq  4021c0 <_ZdlPv@plt>
  40a55d:	48 89 ef             	mov    %rbp,%rdi
  40a560:	e8 5b 80 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40a565:	90                   	nop
  40a566:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40a56d:	00 00 00 

000000000040a570 <_ZNK4Poco16BadCastException7rethrowEv>:
  40a570:	55                   	push   %rbp
  40a571:	48 89 fd             	mov    %rdi,%rbp
  40a574:	bf 20 00 00 00       	mov    $0x20,%edi
  40a579:	53                   	push   %rbx
  40a57a:	48 83 ec 08          	sub    $0x8,%rsp
  40a57e:	e8 7d 7e ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  40a583:	48 89 ee             	mov    %rbp,%rsi
  40a586:	48 89 c7             	mov    %rax,%rdi
  40a589:	48 89 c3             	mov    %rax,%rbx
  40a58c:	e8 9f e3 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40a591:	48 c7 03 10 f1 40 00 	movq   $0x40f110,(%rbx)
  40a598:	ba 40 87 40 00       	mov    $0x408740,%edx
  40a59d:	be f0 df 40 00       	mov    $0x40dff0,%esi
  40a5a2:	48 89 df             	mov    %rbx,%rdi
  40a5a5:	e8 f6 7e ff ff       	callq  4024a0 <__cxa_throw@plt>
  40a5aa:	48 89 c5             	mov    %rax,%rbp
  40a5ad:	48 89 df             	mov    %rbx,%rdi
  40a5b0:	e8 6b 7e ff ff       	callq  402420 <__cxa_free_exception@plt>
  40a5b5:	48 89 ef             	mov    %rbp,%rdi
  40a5b8:	e8 03 80 ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40a5bd:	90                   	nop
  40a5be:	66 90                	xchg   %ax,%ax

000000000040a5c0 <_ZNK4Poco20ApplicationException5cloneEv>:
  40a5c0:	55                   	push   %rbp
  40a5c1:	48 89 fd             	mov    %rdi,%rbp
  40a5c4:	bf 20 00 00 00       	mov    $0x20,%edi
  40a5c9:	53                   	push   %rbx
  40a5ca:	48 83 ec 08          	sub    $0x8,%rsp
  40a5ce:	e8 dd 7f ff ff       	callq  4025b0 <_Znwm@plt>
  40a5d3:	48 89 ee             	mov    %rbp,%rsi
  40a5d6:	48 89 c7             	mov    %rax,%rdi
  40a5d9:	48 89 c3             	mov    %rax,%rbx
  40a5dc:	e8 4f e3 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40a5e1:	48 c7 03 b0 f0 40 00 	movq   $0x40f0b0,(%rbx)
  40a5e8:	48 83 c4 08          	add    $0x8,%rsp
  40a5ec:	48 89 d8             	mov    %rbx,%rax
  40a5ef:	5b                   	pop    %rbx
  40a5f0:	5d                   	pop    %rbp
  40a5f1:	c3                   	retq   
  40a5f2:	48 89 c5             	mov    %rax,%rbp
  40a5f5:	48 89 df             	mov    %rbx,%rdi
  40a5f8:	e8 c3 7b ff ff       	callq  4021c0 <_ZdlPv@plt>
  40a5fd:	48 89 ef             	mov    %rbp,%rdi
  40a600:	e8 bb 7f ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40a605:	90                   	nop
  40a606:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40a60d:	00 00 00 

000000000040a610 <_ZNK4Poco20ApplicationException7rethrowEv>:
  40a610:	55                   	push   %rbp
  40a611:	48 89 fd             	mov    %rdi,%rbp
  40a614:	bf 20 00 00 00       	mov    $0x20,%edi
  40a619:	53                   	push   %rbx
  40a61a:	48 83 ec 08          	sub    $0x8,%rsp
  40a61e:	e8 dd 7d ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  40a623:	48 89 ee             	mov    %rbp,%rsi
  40a626:	48 89 c7             	mov    %rax,%rdi
  40a629:	48 89 c3             	mov    %rax,%rbx
  40a62c:	e8 ff e2 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40a631:	48 c7 03 b0 f0 40 00 	movq   $0x40f0b0,(%rbx)
  40a638:	ba 70 87 40 00       	mov    $0x408770,%edx
  40a63d:	be b0 df 40 00       	mov    $0x40dfb0,%esi
  40a642:	48 89 df             	mov    %rbx,%rdi
  40a645:	e8 56 7e ff ff       	callq  4024a0 <__cxa_throw@plt>
  40a64a:	48 89 c5             	mov    %rax,%rbp
  40a64d:	48 89 df             	mov    %rbx,%rdi
  40a650:	e8 cb 7d ff ff       	callq  402420 <__cxa_free_exception@plt>
  40a655:	48 89 ef             	mov    %rbp,%rdi
  40a658:	e8 63 7f ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40a65d:	90                   	nop
  40a65e:	66 90                	xchg   %ax,%ax

000000000040a660 <_ZN4Poco9ExceptionaSERKS0_>:
  40a660:	55                   	push   %rbp
  40a661:	48 89 f5             	mov    %rsi,%rbp
  40a664:	53                   	push   %rbx
  40a665:	48 89 fb             	mov    %rdi,%rbx
  40a668:	48 83 ec 08          	sub    $0x8,%rsp
  40a66c:	48 39 fe             	cmp    %rdi,%rsi
  40a66f:	74 37                	je     40a6a8 <_ZN4Poco9ExceptionaSERKS0_+0x48>
  40a671:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
  40a675:	48 85 ff             	test   %rdi,%rdi
  40a678:	74 06                	je     40a680 <_ZN4Poco9ExceptionaSERKS0_+0x20>
  40a67a:	48 8b 07             	mov    (%rdi),%rax
  40a67d:	ff 50 08             	callq  *0x8(%rax)
  40a680:	48 8d 7b 08          	lea    0x8(%rbx),%rdi
  40a684:	48 8d 75 08          	lea    0x8(%rbp),%rsi
  40a688:	e8 a3 7d ff ff       	callq  402430 <_ZNSs6assignERKSs@plt>
  40a68d:	48 8b 7d 10          	mov    0x10(%rbp),%rdi
  40a691:	31 c0                	xor    %eax,%eax
  40a693:	48 85 ff             	test   %rdi,%rdi
  40a696:	74 06                	je     40a69e <_ZN4Poco9ExceptionaSERKS0_+0x3e>
  40a698:	48 8b 07             	mov    (%rdi),%rax
  40a69b:	ff 50 28             	callq  *0x28(%rax)
  40a69e:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40a6a2:	8b 45 18             	mov    0x18(%rbp),%eax
  40a6a5:	89 43 18             	mov    %eax,0x18(%rbx)
  40a6a8:	48 83 c4 08          	add    $0x8,%rsp
  40a6ac:	48 89 d8             	mov    %rbx,%rax
  40a6af:	5b                   	pop    %rbx
  40a6b0:	5d                   	pop    %rbp
  40a6b1:	c3                   	retq   
  40a6b2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40a6b9:	1f 84 00 00 00 00 00 

000000000040a6c0 <_ZNK4Poco9Exception11displayTextEv>:
  40a6c0:	55                   	push   %rbp
  40a6c1:	48 89 f5             	mov    %rsi,%rbp
  40a6c4:	53                   	push   %rbx
  40a6c5:	48 89 fb             	mov    %rdi,%rbx
  40a6c8:	48 89 f7             	mov    %rsi,%rdi
  40a6cb:	48 83 ec 18          	sub    $0x18,%rsp
  40a6cf:	48 8b 06             	mov    (%rsi),%rax
  40a6d2:	ff 50 18             	callq  *0x18(%rax)
  40a6d5:	48 8d 54 24 0f       	lea    0xf(%rsp),%rdx
  40a6da:	48 89 c6             	mov    %rax,%rsi
  40a6dd:	48 89 df             	mov    %rbx,%rdi
  40a6e0:	e8 3b 7c ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  40a6e5:	48 8b 45 08          	mov    0x8(%rbp),%rax
  40a6e9:	48 83 78 e8 00       	cmpq   $0x0,-0x18(%rax)
  40a6ee:	75 10                	jne    40a700 <_ZNK4Poco9Exception11displayTextEv+0x40>
  40a6f0:	48 83 c4 18          	add    $0x18,%rsp
  40a6f4:	48 89 d8             	mov    %rbx,%rax
  40a6f7:	5b                   	pop    %rbx
  40a6f8:	5d                   	pop    %rbp
  40a6f9:	c3                   	retq   
  40a6fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  40a700:	ba 02 00 00 00       	mov    $0x2,%edx
  40a705:	be 25 cf 40 00       	mov    $0x40cf25,%esi
  40a70a:	48 89 df             	mov    %rbx,%rdi
  40a70d:	e8 1e 7a ff ff       	callq  402130 <_ZNSs6appendEPKcm@plt>
  40a712:	48 8d 75 08          	lea    0x8(%rbp),%rsi
  40a716:	48 89 df             	mov    %rbx,%rdi
  40a719:	e8 02 7f ff ff       	callq  402620 <_ZNSs6appendERKSs@plt>
  40a71e:	48 83 c4 18          	add    $0x18,%rsp
  40a722:	48 89 d8             	mov    %rbx,%rax
  40a725:	5b                   	pop    %rbx
  40a726:	5d                   	pop    %rbp
  40a727:	c3                   	retq   
  40a728:	48 8b 3b             	mov    (%rbx),%rdi
  40a72b:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  40a730:	48 89 c5             	mov    %rax,%rbp
  40a733:	48 83 ef 18          	sub    $0x18,%rdi
  40a737:	e8 94 7a ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  40a73c:	48 89 ef             	mov    %rbp,%rdi
  40a73f:	e8 7c 7e ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40a744:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40a74b:	00 00 00 00 00 

000000000040a750 <_ZN4Poco9Exception15extendedMessageERKSs>:
  40a750:	55                   	push   %rbp
  40a751:	53                   	push   %rbx
  40a752:	48 89 f3             	mov    %rsi,%rbx
  40a755:	48 83 ec 08          	sub    $0x8,%rsp
  40a759:	48 8b 06             	mov    (%rsi),%rax
  40a75c:	48 83 78 e8 00       	cmpq   $0x0,-0x18(%rax)
  40a761:	74 25                	je     40a788 <_ZN4Poco9Exception15extendedMessageERKSs+0x38>
  40a763:	48 8b 47 08          	mov    0x8(%rdi),%rax
  40a767:	48 8d 6f 08          	lea    0x8(%rdi),%rbp
  40a76b:	48 83 78 e8 00       	cmpq   $0x0,-0x18(%rax)
  40a770:	75 1e                	jne    40a790 <_ZN4Poco9Exception15extendedMessageERKSs+0x40>
  40a772:	48 83 c4 08          	add    $0x8,%rsp
  40a776:	48 89 de             	mov    %rbx,%rsi
  40a779:	48 89 ef             	mov    %rbp,%rdi
  40a77c:	5b                   	pop    %rbx
  40a77d:	5d                   	pop    %rbp
  40a77e:	e9 9d 7e ff ff       	jmpq   402620 <_ZNSs6appendERKSs@plt>
  40a783:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40a788:	48 83 c4 08          	add    $0x8,%rsp
  40a78c:	5b                   	pop    %rbx
  40a78d:	5d                   	pop    %rbp
  40a78e:	c3                   	retq   
  40a78f:	90                   	nop
  40a790:	ba 02 00 00 00       	mov    $0x2,%edx
  40a795:	be 25 cf 40 00       	mov    $0x40cf25,%esi
  40a79a:	48 89 ef             	mov    %rbp,%rdi
  40a79d:	e8 8e 79 ff ff       	callq  402130 <_ZNSs6appendEPKcm@plt>
  40a7a2:	eb ce                	jmp    40a772 <_ZN4Poco9Exception15extendedMessageERKSs+0x22>
  40a7a4:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40a7ab:	00 00 00 00 00 

000000000040a7b0 <_ZN4Poco14LogicExceptionC1Ei>:
  40a7b0:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40a7b7:	00 
  40a7b8:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40a7bf:	00 
  40a7c0:	89 77 18             	mov    %esi,0x18(%rdi)
  40a7c3:	48 c7 07 90 e0 40 00 	movq   $0x40e090,(%rdi)
  40a7ca:	c3                   	retq   
  40a7cb:	90                   	nop
  40a7cc:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040a7d0 <_ZN4Poco14LogicExceptionC1ERKSsi>:
  40a7d0:	53                   	push   %rbx
  40a7d1:	48 89 fb             	mov    %rdi,%rbx
  40a7d4:	e8 e7 df ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40a7d9:	48 c7 03 90 e0 40 00 	movq   $0x40e090,(%rbx)
  40a7e0:	5b                   	pop    %rbx
  40a7e1:	c3                   	retq   
  40a7e2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40a7e9:	1f 84 00 00 00 00 00 

000000000040a7f0 <_ZN4Poco14LogicExceptionC1ERKSsS2_i>:
  40a7f0:	53                   	push   %rbx
  40a7f1:	48 89 fb             	mov    %rdi,%rbx
  40a7f4:	e8 17 e0 ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40a7f9:	48 c7 03 90 e0 40 00 	movq   $0x40e090,(%rbx)
  40a800:	5b                   	pop    %rbx
  40a801:	c3                   	retq   
  40a802:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40a809:	1f 84 00 00 00 00 00 

000000000040a810 <_ZN4Poco14LogicExceptionC1ERKSsRKNS_9ExceptionEi>:
  40a810:	53                   	push   %rbx
  40a811:	48 89 fb             	mov    %rdi,%rbx
  40a814:	e8 a7 e0 ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40a819:	48 c7 03 90 e0 40 00 	movq   $0x40e090,(%rbx)
  40a820:	5b                   	pop    %rbx
  40a821:	c3                   	retq   
  40a822:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40a829:	1f 84 00 00 00 00 00 

000000000040a830 <_ZN4Poco14LogicExceptionC1ERKS0_>:
  40a830:	53                   	push   %rbx
  40a831:	48 89 fb             	mov    %rdi,%rbx
  40a834:	e8 f7 e0 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40a839:	48 c7 03 90 e0 40 00 	movq   $0x40e090,(%rbx)
  40a840:	5b                   	pop    %rbx
  40a841:	c3                   	retq   
  40a842:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40a849:	1f 84 00 00 00 00 00 

000000000040a850 <_ZN4Poco14LogicExceptionaSERKS0_>:
  40a850:	53                   	push   %rbx
  40a851:	48 89 fb             	mov    %rdi,%rbx
  40a854:	e8 07 fe ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40a859:	48 89 d8             	mov    %rbx,%rax
  40a85c:	5b                   	pop    %rbx
  40a85d:	c3                   	retq   
  40a85e:	66 90                	xchg   %ax,%ax

000000000040a860 <_ZN4Poco27AssertionViolationExceptionC1Ei>:
  40a860:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40a867:	00 
  40a868:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40a86f:	00 
  40a870:	89 77 18             	mov    %esi,0x18(%rdi)
  40a873:	48 c7 07 f0 e0 40 00 	movq   $0x40e0f0,(%rdi)
  40a87a:	c3                   	retq   
  40a87b:	90                   	nop
  40a87c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040a880 <_ZN4Poco27AssertionViolationExceptionC1ERKSsi>:
  40a880:	53                   	push   %rbx
  40a881:	48 89 fb             	mov    %rdi,%rbx
  40a884:	e8 37 df ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40a889:	48 c7 03 f0 e0 40 00 	movq   $0x40e0f0,(%rbx)
  40a890:	5b                   	pop    %rbx
  40a891:	c3                   	retq   
  40a892:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40a899:	1f 84 00 00 00 00 00 

000000000040a8a0 <_ZN4Poco27AssertionViolationExceptionC1ERKSsS2_i>:
  40a8a0:	53                   	push   %rbx
  40a8a1:	48 89 fb             	mov    %rdi,%rbx
  40a8a4:	e8 67 df ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40a8a9:	48 c7 03 f0 e0 40 00 	movq   $0x40e0f0,(%rbx)
  40a8b0:	5b                   	pop    %rbx
  40a8b1:	c3                   	retq   
  40a8b2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40a8b9:	1f 84 00 00 00 00 00 

000000000040a8c0 <_ZN4Poco27AssertionViolationExceptionC1ERKSsRKNS_9ExceptionEi>:
  40a8c0:	53                   	push   %rbx
  40a8c1:	48 89 fb             	mov    %rdi,%rbx
  40a8c4:	e8 f7 df ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40a8c9:	48 c7 03 f0 e0 40 00 	movq   $0x40e0f0,(%rbx)
  40a8d0:	5b                   	pop    %rbx
  40a8d1:	c3                   	retq   
  40a8d2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40a8d9:	1f 84 00 00 00 00 00 

000000000040a8e0 <_ZN4Poco27AssertionViolationExceptionC1ERKS0_>:
  40a8e0:	53                   	push   %rbx
  40a8e1:	48 89 fb             	mov    %rdi,%rbx
  40a8e4:	e8 47 e0 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40a8e9:	48 c7 03 f0 e0 40 00 	movq   $0x40e0f0,(%rbx)
  40a8f0:	5b                   	pop    %rbx
  40a8f1:	c3                   	retq   
  40a8f2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40a8f9:	1f 84 00 00 00 00 00 

000000000040a900 <_ZN4Poco27AssertionViolationExceptionaSERKS0_>:
  40a900:	53                   	push   %rbx
  40a901:	48 89 fb             	mov    %rdi,%rbx
  40a904:	e8 57 fd ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40a909:	48 89 d8             	mov    %rbx,%rax
  40a90c:	5b                   	pop    %rbx
  40a90d:	c3                   	retq   
  40a90e:	66 90                	xchg   %ax,%ax

000000000040a910 <_ZN4Poco20NullPointerExceptionC1Ei>:
  40a910:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40a917:	00 
  40a918:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40a91f:	00 
  40a920:	89 77 18             	mov    %esi,0x18(%rdi)
  40a923:	48 c7 07 50 e1 40 00 	movq   $0x40e150,(%rdi)
  40a92a:	c3                   	retq   
  40a92b:	90                   	nop
  40a92c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040a930 <_ZN4Poco20NullPointerExceptionC1ERKSsi>:
  40a930:	53                   	push   %rbx
  40a931:	48 89 fb             	mov    %rdi,%rbx
  40a934:	e8 87 de ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40a939:	48 c7 03 50 e1 40 00 	movq   $0x40e150,(%rbx)
  40a940:	5b                   	pop    %rbx
  40a941:	c3                   	retq   
  40a942:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40a949:	1f 84 00 00 00 00 00 

000000000040a950 <_ZN4Poco20NullPointerExceptionC1ERKSsS2_i>:
  40a950:	53                   	push   %rbx
  40a951:	48 89 fb             	mov    %rdi,%rbx
  40a954:	e8 b7 de ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40a959:	48 c7 03 50 e1 40 00 	movq   $0x40e150,(%rbx)
  40a960:	5b                   	pop    %rbx
  40a961:	c3                   	retq   
  40a962:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40a969:	1f 84 00 00 00 00 00 

000000000040a970 <_ZN4Poco20NullPointerExceptionC1ERKSsRKNS_9ExceptionEi>:
  40a970:	53                   	push   %rbx
  40a971:	48 89 fb             	mov    %rdi,%rbx
  40a974:	e8 47 df ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40a979:	48 c7 03 50 e1 40 00 	movq   $0x40e150,(%rbx)
  40a980:	5b                   	pop    %rbx
  40a981:	c3                   	retq   
  40a982:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40a989:	1f 84 00 00 00 00 00 

000000000040a990 <_ZN4Poco20NullPointerExceptionC1ERKS0_>:
  40a990:	53                   	push   %rbx
  40a991:	48 89 fb             	mov    %rdi,%rbx
  40a994:	e8 97 df ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40a999:	48 c7 03 50 e1 40 00 	movq   $0x40e150,(%rbx)
  40a9a0:	5b                   	pop    %rbx
  40a9a1:	c3                   	retq   
  40a9a2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40a9a9:	1f 84 00 00 00 00 00 

000000000040a9b0 <_ZN4Poco20NullPointerExceptionaSERKS0_>:
  40a9b0:	53                   	push   %rbx
  40a9b1:	48 89 fb             	mov    %rdi,%rbx
  40a9b4:	e8 a7 fc ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40a9b9:	48 89 d8             	mov    %rbx,%rax
  40a9bc:	5b                   	pop    %rbx
  40a9bd:	c3                   	retq   
  40a9be:	66 90                	xchg   %ax,%ax

000000000040a9c0 <_ZN4Poco18NullValueExceptionC1Ei>:
  40a9c0:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40a9c7:	00 
  40a9c8:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40a9cf:	00 
  40a9d0:	89 77 18             	mov    %esi,0x18(%rdi)
  40a9d3:	48 c7 07 b0 e1 40 00 	movq   $0x40e1b0,(%rdi)
  40a9da:	c3                   	retq   
  40a9db:	90                   	nop
  40a9dc:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040a9e0 <_ZN4Poco18NullValueExceptionC1ERKSsi>:
  40a9e0:	53                   	push   %rbx
  40a9e1:	48 89 fb             	mov    %rdi,%rbx
  40a9e4:	e8 d7 dd ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40a9e9:	48 c7 03 b0 e1 40 00 	movq   $0x40e1b0,(%rbx)
  40a9f0:	5b                   	pop    %rbx
  40a9f1:	c3                   	retq   
  40a9f2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40a9f9:	1f 84 00 00 00 00 00 

000000000040aa00 <_ZN4Poco18NullValueExceptionC1ERKSsS2_i>:
  40aa00:	53                   	push   %rbx
  40aa01:	48 89 fb             	mov    %rdi,%rbx
  40aa04:	e8 07 de ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40aa09:	48 c7 03 b0 e1 40 00 	movq   $0x40e1b0,(%rbx)
  40aa10:	5b                   	pop    %rbx
  40aa11:	c3                   	retq   
  40aa12:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40aa19:	1f 84 00 00 00 00 00 

000000000040aa20 <_ZN4Poco18NullValueExceptionC1ERKSsRKNS_9ExceptionEi>:
  40aa20:	53                   	push   %rbx
  40aa21:	48 89 fb             	mov    %rdi,%rbx
  40aa24:	e8 97 de ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40aa29:	48 c7 03 b0 e1 40 00 	movq   $0x40e1b0,(%rbx)
  40aa30:	5b                   	pop    %rbx
  40aa31:	c3                   	retq   
  40aa32:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40aa39:	1f 84 00 00 00 00 00 

000000000040aa40 <_ZN4Poco18NullValueExceptionC1ERKS0_>:
  40aa40:	53                   	push   %rbx
  40aa41:	48 89 fb             	mov    %rdi,%rbx
  40aa44:	e8 e7 de ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40aa49:	48 c7 03 b0 e1 40 00 	movq   $0x40e1b0,(%rbx)
  40aa50:	5b                   	pop    %rbx
  40aa51:	c3                   	retq   
  40aa52:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40aa59:	1f 84 00 00 00 00 00 

000000000040aa60 <_ZN4Poco18NullValueExceptionaSERKS0_>:
  40aa60:	53                   	push   %rbx
  40aa61:	48 89 fb             	mov    %rdi,%rbx
  40aa64:	e8 f7 fb ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40aa69:	48 89 d8             	mov    %rbx,%rax
  40aa6c:	5b                   	pop    %rbx
  40aa6d:	c3                   	retq   
  40aa6e:	66 90                	xchg   %ax,%ax

000000000040aa70 <_ZN4Poco17BugcheckExceptionC1Ei>:
  40aa70:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40aa77:	00 
  40aa78:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40aa7f:	00 
  40aa80:	89 77 18             	mov    %esi,0x18(%rdi)
  40aa83:	48 c7 07 10 e2 40 00 	movq   $0x40e210,(%rdi)
  40aa8a:	c3                   	retq   
  40aa8b:	90                   	nop
  40aa8c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040aa90 <_ZN4Poco17BugcheckExceptionC1ERKSsi>:
  40aa90:	53                   	push   %rbx
  40aa91:	48 89 fb             	mov    %rdi,%rbx
  40aa94:	e8 27 dd ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40aa99:	48 c7 03 10 e2 40 00 	movq   $0x40e210,(%rbx)
  40aaa0:	5b                   	pop    %rbx
  40aaa1:	c3                   	retq   
  40aaa2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40aaa9:	1f 84 00 00 00 00 00 

000000000040aab0 <_ZN4Poco17BugcheckExceptionC1ERKSsS2_i>:
  40aab0:	53                   	push   %rbx
  40aab1:	48 89 fb             	mov    %rdi,%rbx
  40aab4:	e8 57 dd ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40aab9:	48 c7 03 10 e2 40 00 	movq   $0x40e210,(%rbx)
  40aac0:	5b                   	pop    %rbx
  40aac1:	c3                   	retq   
  40aac2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40aac9:	1f 84 00 00 00 00 00 

000000000040aad0 <_ZN4Poco17BugcheckExceptionC1ERKSsRKNS_9ExceptionEi>:
  40aad0:	53                   	push   %rbx
  40aad1:	48 89 fb             	mov    %rdi,%rbx
  40aad4:	e8 e7 dd ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40aad9:	48 c7 03 10 e2 40 00 	movq   $0x40e210,(%rbx)
  40aae0:	5b                   	pop    %rbx
  40aae1:	c3                   	retq   
  40aae2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40aae9:	1f 84 00 00 00 00 00 

000000000040aaf0 <_ZN4Poco17BugcheckExceptionC1ERKS0_>:
  40aaf0:	53                   	push   %rbx
  40aaf1:	48 89 fb             	mov    %rdi,%rbx
  40aaf4:	e8 37 de ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40aaf9:	48 c7 03 10 e2 40 00 	movq   $0x40e210,(%rbx)
  40ab00:	5b                   	pop    %rbx
  40ab01:	c3                   	retq   
  40ab02:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40ab09:	1f 84 00 00 00 00 00 

000000000040ab10 <_ZN4Poco17BugcheckExceptionaSERKS0_>:
  40ab10:	53                   	push   %rbx
  40ab11:	48 89 fb             	mov    %rdi,%rbx
  40ab14:	e8 47 fb ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40ab19:	48 89 d8             	mov    %rbx,%rax
  40ab1c:	5b                   	pop    %rbx
  40ab1d:	c3                   	retq   
  40ab1e:	66 90                	xchg   %ax,%ax

000000000040ab20 <_ZN4Poco24InvalidArgumentExceptionC1Ei>:
  40ab20:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40ab27:	00 
  40ab28:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40ab2f:	00 
  40ab30:	89 77 18             	mov    %esi,0x18(%rdi)
  40ab33:	48 c7 07 70 e2 40 00 	movq   $0x40e270,(%rdi)
  40ab3a:	c3                   	retq   
  40ab3b:	90                   	nop
  40ab3c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040ab40 <_ZN4Poco24InvalidArgumentExceptionC1ERKSsi>:
  40ab40:	53                   	push   %rbx
  40ab41:	48 89 fb             	mov    %rdi,%rbx
  40ab44:	e8 77 dc ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40ab49:	48 c7 03 70 e2 40 00 	movq   $0x40e270,(%rbx)
  40ab50:	5b                   	pop    %rbx
  40ab51:	c3                   	retq   
  40ab52:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40ab59:	1f 84 00 00 00 00 00 

000000000040ab60 <_ZN4Poco24InvalidArgumentExceptionC1ERKSsS2_i>:
  40ab60:	53                   	push   %rbx
  40ab61:	48 89 fb             	mov    %rdi,%rbx
  40ab64:	e8 a7 dc ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40ab69:	48 c7 03 70 e2 40 00 	movq   $0x40e270,(%rbx)
  40ab70:	5b                   	pop    %rbx
  40ab71:	c3                   	retq   
  40ab72:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40ab79:	1f 84 00 00 00 00 00 

000000000040ab80 <_ZN4Poco24InvalidArgumentExceptionC1ERKSsRKNS_9ExceptionEi>:
  40ab80:	53                   	push   %rbx
  40ab81:	48 89 fb             	mov    %rdi,%rbx
  40ab84:	e8 37 dd ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40ab89:	48 c7 03 70 e2 40 00 	movq   $0x40e270,(%rbx)
  40ab90:	5b                   	pop    %rbx
  40ab91:	c3                   	retq   
  40ab92:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40ab99:	1f 84 00 00 00 00 00 

000000000040aba0 <_ZN4Poco24InvalidArgumentExceptionC1ERKS0_>:
  40aba0:	53                   	push   %rbx
  40aba1:	48 89 fb             	mov    %rdi,%rbx
  40aba4:	e8 87 dd ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40aba9:	48 c7 03 70 e2 40 00 	movq   $0x40e270,(%rbx)
  40abb0:	5b                   	pop    %rbx
  40abb1:	c3                   	retq   
  40abb2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40abb9:	1f 84 00 00 00 00 00 

000000000040abc0 <_ZN4Poco24InvalidArgumentExceptionaSERKS0_>:
  40abc0:	53                   	push   %rbx
  40abc1:	48 89 fb             	mov    %rdi,%rbx
  40abc4:	e8 97 fa ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40abc9:	48 89 d8             	mov    %rbx,%rax
  40abcc:	5b                   	pop    %rbx
  40abcd:	c3                   	retq   
  40abce:	66 90                	xchg   %ax,%ax

000000000040abd0 <_ZN4Poco23NotImplementedExceptionC1Ei>:
  40abd0:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40abd7:	00 
  40abd8:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40abdf:	00 
  40abe0:	89 77 18             	mov    %esi,0x18(%rdi)
  40abe3:	48 c7 07 d0 e2 40 00 	movq   $0x40e2d0,(%rdi)
  40abea:	c3                   	retq   
  40abeb:	90                   	nop
  40abec:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040abf0 <_ZN4Poco23NotImplementedExceptionC1ERKSsi>:
  40abf0:	53                   	push   %rbx
  40abf1:	48 89 fb             	mov    %rdi,%rbx
  40abf4:	e8 c7 db ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40abf9:	48 c7 03 d0 e2 40 00 	movq   $0x40e2d0,(%rbx)
  40ac00:	5b                   	pop    %rbx
  40ac01:	c3                   	retq   
  40ac02:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40ac09:	1f 84 00 00 00 00 00 

000000000040ac10 <_ZN4Poco23NotImplementedExceptionC1ERKSsS2_i>:
  40ac10:	53                   	push   %rbx
  40ac11:	48 89 fb             	mov    %rdi,%rbx
  40ac14:	e8 f7 db ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40ac19:	48 c7 03 d0 e2 40 00 	movq   $0x40e2d0,(%rbx)
  40ac20:	5b                   	pop    %rbx
  40ac21:	c3                   	retq   
  40ac22:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40ac29:	1f 84 00 00 00 00 00 

000000000040ac30 <_ZN4Poco23NotImplementedExceptionC1ERKSsRKNS_9ExceptionEi>:
  40ac30:	53                   	push   %rbx
  40ac31:	48 89 fb             	mov    %rdi,%rbx
  40ac34:	e8 87 dc ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40ac39:	48 c7 03 d0 e2 40 00 	movq   $0x40e2d0,(%rbx)
  40ac40:	5b                   	pop    %rbx
  40ac41:	c3                   	retq   
  40ac42:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40ac49:	1f 84 00 00 00 00 00 

000000000040ac50 <_ZN4Poco23NotImplementedExceptionC1ERKS0_>:
  40ac50:	53                   	push   %rbx
  40ac51:	48 89 fb             	mov    %rdi,%rbx
  40ac54:	e8 d7 dc ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40ac59:	48 c7 03 d0 e2 40 00 	movq   $0x40e2d0,(%rbx)
  40ac60:	5b                   	pop    %rbx
  40ac61:	c3                   	retq   
  40ac62:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40ac69:	1f 84 00 00 00 00 00 

000000000040ac70 <_ZN4Poco23NotImplementedExceptionaSERKS0_>:
  40ac70:	53                   	push   %rbx
  40ac71:	48 89 fb             	mov    %rdi,%rbx
  40ac74:	e8 e7 f9 ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40ac79:	48 89 d8             	mov    %rbx,%rax
  40ac7c:	5b                   	pop    %rbx
  40ac7d:	c3                   	retq   
  40ac7e:	66 90                	xchg   %ax,%ax

000000000040ac80 <_ZN4Poco14RangeExceptionC1Ei>:
  40ac80:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40ac87:	00 
  40ac88:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40ac8f:	00 
  40ac90:	89 77 18             	mov    %esi,0x18(%rdi)
  40ac93:	48 c7 07 30 e3 40 00 	movq   $0x40e330,(%rdi)
  40ac9a:	c3                   	retq   
  40ac9b:	90                   	nop
  40ac9c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040aca0 <_ZN4Poco14RangeExceptionC1ERKSsi>:
  40aca0:	53                   	push   %rbx
  40aca1:	48 89 fb             	mov    %rdi,%rbx
  40aca4:	e8 17 db ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40aca9:	48 c7 03 30 e3 40 00 	movq   $0x40e330,(%rbx)
  40acb0:	5b                   	pop    %rbx
  40acb1:	c3                   	retq   
  40acb2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40acb9:	1f 84 00 00 00 00 00 

000000000040acc0 <_ZN4Poco14RangeExceptionC1ERKSsS2_i>:
  40acc0:	53                   	push   %rbx
  40acc1:	48 89 fb             	mov    %rdi,%rbx
  40acc4:	e8 47 db ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40acc9:	48 c7 03 30 e3 40 00 	movq   $0x40e330,(%rbx)
  40acd0:	5b                   	pop    %rbx
  40acd1:	c3                   	retq   
  40acd2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40acd9:	1f 84 00 00 00 00 00 

000000000040ace0 <_ZN4Poco14RangeExceptionC1ERKSsRKNS_9ExceptionEi>:
  40ace0:	53                   	push   %rbx
  40ace1:	48 89 fb             	mov    %rdi,%rbx
  40ace4:	e8 d7 db ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40ace9:	48 c7 03 30 e3 40 00 	movq   $0x40e330,(%rbx)
  40acf0:	5b                   	pop    %rbx
  40acf1:	c3                   	retq   
  40acf2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40acf9:	1f 84 00 00 00 00 00 

000000000040ad00 <_ZN4Poco14RangeExceptionC1ERKS0_>:
  40ad00:	53                   	push   %rbx
  40ad01:	48 89 fb             	mov    %rdi,%rbx
  40ad04:	e8 27 dc ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40ad09:	48 c7 03 30 e3 40 00 	movq   $0x40e330,(%rbx)
  40ad10:	5b                   	pop    %rbx
  40ad11:	c3                   	retq   
  40ad12:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40ad19:	1f 84 00 00 00 00 00 

000000000040ad20 <_ZN4Poco14RangeExceptionaSERKS0_>:
  40ad20:	53                   	push   %rbx
  40ad21:	48 89 fb             	mov    %rdi,%rbx
  40ad24:	e8 37 f9 ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40ad29:	48 89 d8             	mov    %rbx,%rax
  40ad2c:	5b                   	pop    %rbx
  40ad2d:	c3                   	retq   
  40ad2e:	66 90                	xchg   %ax,%ax

000000000040ad30 <_ZN4Poco21IllegalStateExceptionC1Ei>:
  40ad30:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40ad37:	00 
  40ad38:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40ad3f:	00 
  40ad40:	89 77 18             	mov    %esi,0x18(%rdi)
  40ad43:	48 c7 07 90 e3 40 00 	movq   $0x40e390,(%rdi)
  40ad4a:	c3                   	retq   
  40ad4b:	90                   	nop
  40ad4c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040ad50 <_ZN4Poco21IllegalStateExceptionC1ERKSsi>:
  40ad50:	53                   	push   %rbx
  40ad51:	48 89 fb             	mov    %rdi,%rbx
  40ad54:	e8 67 da ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40ad59:	48 c7 03 90 e3 40 00 	movq   $0x40e390,(%rbx)
  40ad60:	5b                   	pop    %rbx
  40ad61:	c3                   	retq   
  40ad62:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40ad69:	1f 84 00 00 00 00 00 

000000000040ad70 <_ZN4Poco21IllegalStateExceptionC1ERKSsS2_i>:
  40ad70:	53                   	push   %rbx
  40ad71:	48 89 fb             	mov    %rdi,%rbx
  40ad74:	e8 97 da ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40ad79:	48 c7 03 90 e3 40 00 	movq   $0x40e390,(%rbx)
  40ad80:	5b                   	pop    %rbx
  40ad81:	c3                   	retq   
  40ad82:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40ad89:	1f 84 00 00 00 00 00 

000000000040ad90 <_ZN4Poco21IllegalStateExceptionC1ERKSsRKNS_9ExceptionEi>:
  40ad90:	53                   	push   %rbx
  40ad91:	48 89 fb             	mov    %rdi,%rbx
  40ad94:	e8 27 db ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40ad99:	48 c7 03 90 e3 40 00 	movq   $0x40e390,(%rbx)
  40ada0:	5b                   	pop    %rbx
  40ada1:	c3                   	retq   
  40ada2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40ada9:	1f 84 00 00 00 00 00 

000000000040adb0 <_ZN4Poco21IllegalStateExceptionC1ERKS0_>:
  40adb0:	53                   	push   %rbx
  40adb1:	48 89 fb             	mov    %rdi,%rbx
  40adb4:	e8 77 db ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40adb9:	48 c7 03 90 e3 40 00 	movq   $0x40e390,(%rbx)
  40adc0:	5b                   	pop    %rbx
  40adc1:	c3                   	retq   
  40adc2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40adc9:	1f 84 00 00 00 00 00 

000000000040add0 <_ZN4Poco21IllegalStateExceptionaSERKS0_>:
  40add0:	53                   	push   %rbx
  40add1:	48 89 fb             	mov    %rdi,%rbx
  40add4:	e8 87 f8 ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40add9:	48 89 d8             	mov    %rbx,%rax
  40addc:	5b                   	pop    %rbx
  40addd:	c3                   	retq   
  40adde:	66 90                	xchg   %ax,%ax

000000000040ade0 <_ZN4Poco22InvalidAccessExceptionC1Ei>:
  40ade0:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40ade7:	00 
  40ade8:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40adef:	00 
  40adf0:	89 77 18             	mov    %esi,0x18(%rdi)
  40adf3:	48 c7 07 f0 e3 40 00 	movq   $0x40e3f0,(%rdi)
  40adfa:	c3                   	retq   
  40adfb:	90                   	nop
  40adfc:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040ae00 <_ZN4Poco22InvalidAccessExceptionC1ERKSsi>:
  40ae00:	53                   	push   %rbx
  40ae01:	48 89 fb             	mov    %rdi,%rbx
  40ae04:	e8 b7 d9 ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40ae09:	48 c7 03 f0 e3 40 00 	movq   $0x40e3f0,(%rbx)
  40ae10:	5b                   	pop    %rbx
  40ae11:	c3                   	retq   
  40ae12:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40ae19:	1f 84 00 00 00 00 00 

000000000040ae20 <_ZN4Poco22InvalidAccessExceptionC1ERKSsS2_i>:
  40ae20:	53                   	push   %rbx
  40ae21:	48 89 fb             	mov    %rdi,%rbx
  40ae24:	e8 e7 d9 ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40ae29:	48 c7 03 f0 e3 40 00 	movq   $0x40e3f0,(%rbx)
  40ae30:	5b                   	pop    %rbx
  40ae31:	c3                   	retq   
  40ae32:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40ae39:	1f 84 00 00 00 00 00 

000000000040ae40 <_ZN4Poco22InvalidAccessExceptionC1ERKSsRKNS_9ExceptionEi>:
  40ae40:	53                   	push   %rbx
  40ae41:	48 89 fb             	mov    %rdi,%rbx
  40ae44:	e8 77 da ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40ae49:	48 c7 03 f0 e3 40 00 	movq   $0x40e3f0,(%rbx)
  40ae50:	5b                   	pop    %rbx
  40ae51:	c3                   	retq   
  40ae52:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40ae59:	1f 84 00 00 00 00 00 

000000000040ae60 <_ZN4Poco22InvalidAccessExceptionC1ERKS0_>:
  40ae60:	53                   	push   %rbx
  40ae61:	48 89 fb             	mov    %rdi,%rbx
  40ae64:	e8 c7 da ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40ae69:	48 c7 03 f0 e3 40 00 	movq   $0x40e3f0,(%rbx)
  40ae70:	5b                   	pop    %rbx
  40ae71:	c3                   	retq   
  40ae72:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40ae79:	1f 84 00 00 00 00 00 

000000000040ae80 <_ZN4Poco22InvalidAccessExceptionaSERKS0_>:
  40ae80:	53                   	push   %rbx
  40ae81:	48 89 fb             	mov    %rdi,%rbx
  40ae84:	e8 d7 f7 ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40ae89:	48 89 d8             	mov    %rbx,%rax
  40ae8c:	5b                   	pop    %rbx
  40ae8d:	c3                   	retq   
  40ae8e:	66 90                	xchg   %ax,%ax

000000000040ae90 <_ZN4Poco15SignalExceptionC1Ei>:
  40ae90:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40ae97:	00 
  40ae98:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40ae9f:	00 
  40aea0:	89 77 18             	mov    %esi,0x18(%rdi)
  40aea3:	48 c7 07 50 e4 40 00 	movq   $0x40e450,(%rdi)
  40aeaa:	c3                   	retq   
  40aeab:	90                   	nop
  40aeac:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040aeb0 <_ZN4Poco15SignalExceptionC1ERKSsi>:
  40aeb0:	53                   	push   %rbx
  40aeb1:	48 89 fb             	mov    %rdi,%rbx
  40aeb4:	e8 07 d9 ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40aeb9:	48 c7 03 50 e4 40 00 	movq   $0x40e450,(%rbx)
  40aec0:	5b                   	pop    %rbx
  40aec1:	c3                   	retq   
  40aec2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40aec9:	1f 84 00 00 00 00 00 

000000000040aed0 <_ZN4Poco15SignalExceptionC1ERKSsS2_i>:
  40aed0:	53                   	push   %rbx
  40aed1:	48 89 fb             	mov    %rdi,%rbx
  40aed4:	e8 37 d9 ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40aed9:	48 c7 03 50 e4 40 00 	movq   $0x40e450,(%rbx)
  40aee0:	5b                   	pop    %rbx
  40aee1:	c3                   	retq   
  40aee2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40aee9:	1f 84 00 00 00 00 00 

000000000040aef0 <_ZN4Poco15SignalExceptionC1ERKSsRKNS_9ExceptionEi>:
  40aef0:	53                   	push   %rbx
  40aef1:	48 89 fb             	mov    %rdi,%rbx
  40aef4:	e8 c7 d9 ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40aef9:	48 c7 03 50 e4 40 00 	movq   $0x40e450,(%rbx)
  40af00:	5b                   	pop    %rbx
  40af01:	c3                   	retq   
  40af02:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40af09:	1f 84 00 00 00 00 00 

000000000040af10 <_ZN4Poco15SignalExceptionC1ERKS0_>:
  40af10:	53                   	push   %rbx
  40af11:	48 89 fb             	mov    %rdi,%rbx
  40af14:	e8 17 da ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40af19:	48 c7 03 50 e4 40 00 	movq   $0x40e450,(%rbx)
  40af20:	5b                   	pop    %rbx
  40af21:	c3                   	retq   
  40af22:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40af29:	1f 84 00 00 00 00 00 

000000000040af30 <_ZN4Poco15SignalExceptionaSERKS0_>:
  40af30:	53                   	push   %rbx
  40af31:	48 89 fb             	mov    %rdi,%rbx
  40af34:	e8 27 f7 ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40af39:	48 89 d8             	mov    %rbx,%rax
  40af3c:	5b                   	pop    %rbx
  40af3d:	c3                   	retq   
  40af3e:	66 90                	xchg   %ax,%ax

000000000040af40 <_ZN4Poco18UnhandledExceptionC1Ei>:
  40af40:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40af47:	00 
  40af48:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40af4f:	00 
  40af50:	89 77 18             	mov    %esi,0x18(%rdi)
  40af53:	48 c7 07 b0 e4 40 00 	movq   $0x40e4b0,(%rdi)
  40af5a:	c3                   	retq   
  40af5b:	90                   	nop
  40af5c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040af60 <_ZN4Poco18UnhandledExceptionC1ERKSsi>:
  40af60:	53                   	push   %rbx
  40af61:	48 89 fb             	mov    %rdi,%rbx
  40af64:	e8 57 d8 ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40af69:	48 c7 03 b0 e4 40 00 	movq   $0x40e4b0,(%rbx)
  40af70:	5b                   	pop    %rbx
  40af71:	c3                   	retq   
  40af72:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40af79:	1f 84 00 00 00 00 00 

000000000040af80 <_ZN4Poco18UnhandledExceptionC1ERKSsS2_i>:
  40af80:	53                   	push   %rbx
  40af81:	48 89 fb             	mov    %rdi,%rbx
  40af84:	e8 87 d8 ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40af89:	48 c7 03 b0 e4 40 00 	movq   $0x40e4b0,(%rbx)
  40af90:	5b                   	pop    %rbx
  40af91:	c3                   	retq   
  40af92:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40af99:	1f 84 00 00 00 00 00 

000000000040afa0 <_ZN4Poco18UnhandledExceptionC1ERKSsRKNS_9ExceptionEi>:
  40afa0:	53                   	push   %rbx
  40afa1:	48 89 fb             	mov    %rdi,%rbx
  40afa4:	e8 17 d9 ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40afa9:	48 c7 03 b0 e4 40 00 	movq   $0x40e4b0,(%rbx)
  40afb0:	5b                   	pop    %rbx
  40afb1:	c3                   	retq   
  40afb2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40afb9:	1f 84 00 00 00 00 00 

000000000040afc0 <_ZN4Poco18UnhandledExceptionC1ERKS0_>:
  40afc0:	53                   	push   %rbx
  40afc1:	48 89 fb             	mov    %rdi,%rbx
  40afc4:	e8 67 d9 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40afc9:	48 c7 03 b0 e4 40 00 	movq   $0x40e4b0,(%rbx)
  40afd0:	5b                   	pop    %rbx
  40afd1:	c3                   	retq   
  40afd2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40afd9:	1f 84 00 00 00 00 00 

000000000040afe0 <_ZN4Poco18UnhandledExceptionaSERKS0_>:
  40afe0:	53                   	push   %rbx
  40afe1:	48 89 fb             	mov    %rdi,%rbx
  40afe4:	e8 77 f6 ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40afe9:	48 89 d8             	mov    %rbx,%rax
  40afec:	5b                   	pop    %rbx
  40afed:	c3                   	retq   
  40afee:	66 90                	xchg   %ax,%ax

000000000040aff0 <_ZN4Poco16RuntimeExceptionC1Ei>:
  40aff0:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40aff7:	00 
  40aff8:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40afff:	00 
  40b000:	89 77 18             	mov    %esi,0x18(%rdi)
  40b003:	48 c7 07 10 e5 40 00 	movq   $0x40e510,(%rdi)
  40b00a:	c3                   	retq   
  40b00b:	90                   	nop
  40b00c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040b010 <_ZN4Poco16RuntimeExceptionC1ERKSsi>:
  40b010:	53                   	push   %rbx
  40b011:	48 89 fb             	mov    %rdi,%rbx
  40b014:	e8 a7 d7 ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40b019:	48 c7 03 10 e5 40 00 	movq   $0x40e510,(%rbx)
  40b020:	5b                   	pop    %rbx
  40b021:	c3                   	retq   
  40b022:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b029:	1f 84 00 00 00 00 00 

000000000040b030 <_ZN4Poco16RuntimeExceptionC1ERKSsS2_i>:
  40b030:	53                   	push   %rbx
  40b031:	48 89 fb             	mov    %rdi,%rbx
  40b034:	e8 d7 d7 ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40b039:	48 c7 03 10 e5 40 00 	movq   $0x40e510,(%rbx)
  40b040:	5b                   	pop    %rbx
  40b041:	c3                   	retq   
  40b042:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b049:	1f 84 00 00 00 00 00 

000000000040b050 <_ZN4Poco16RuntimeExceptionC1ERKSsRKNS_9ExceptionEi>:
  40b050:	53                   	push   %rbx
  40b051:	48 89 fb             	mov    %rdi,%rbx
  40b054:	e8 67 d8 ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40b059:	48 c7 03 10 e5 40 00 	movq   $0x40e510,(%rbx)
  40b060:	5b                   	pop    %rbx
  40b061:	c3                   	retq   
  40b062:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b069:	1f 84 00 00 00 00 00 

000000000040b070 <_ZN4Poco16RuntimeExceptionC1ERKS0_>:
  40b070:	53                   	push   %rbx
  40b071:	48 89 fb             	mov    %rdi,%rbx
  40b074:	e8 b7 d8 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40b079:	48 c7 03 10 e5 40 00 	movq   $0x40e510,(%rbx)
  40b080:	5b                   	pop    %rbx
  40b081:	c3                   	retq   
  40b082:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b089:	1f 84 00 00 00 00 00 

000000000040b090 <_ZN4Poco16RuntimeExceptionaSERKS0_>:
  40b090:	53                   	push   %rbx
  40b091:	48 89 fb             	mov    %rdi,%rbx
  40b094:	e8 c7 f5 ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40b099:	48 89 d8             	mov    %rbx,%rax
  40b09c:	5b                   	pop    %rbx
  40b09d:	c3                   	retq   
  40b09e:	66 90                	xchg   %ax,%ax

000000000040b0a0 <_ZN4Poco17NotFoundExceptionC1Ei>:
  40b0a0:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40b0a7:	00 
  40b0a8:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40b0af:	00 
  40b0b0:	89 77 18             	mov    %esi,0x18(%rdi)
  40b0b3:	48 c7 07 70 e5 40 00 	movq   $0x40e570,(%rdi)
  40b0ba:	c3                   	retq   
  40b0bb:	90                   	nop
  40b0bc:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040b0c0 <_ZN4Poco17NotFoundExceptionC1ERKSsi>:
  40b0c0:	53                   	push   %rbx
  40b0c1:	48 89 fb             	mov    %rdi,%rbx
  40b0c4:	e8 f7 d6 ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40b0c9:	48 c7 03 70 e5 40 00 	movq   $0x40e570,(%rbx)
  40b0d0:	5b                   	pop    %rbx
  40b0d1:	c3                   	retq   
  40b0d2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b0d9:	1f 84 00 00 00 00 00 

000000000040b0e0 <_ZN4Poco17NotFoundExceptionC1ERKSsS2_i>:
  40b0e0:	53                   	push   %rbx
  40b0e1:	48 89 fb             	mov    %rdi,%rbx
  40b0e4:	e8 27 d7 ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40b0e9:	48 c7 03 70 e5 40 00 	movq   $0x40e570,(%rbx)
  40b0f0:	5b                   	pop    %rbx
  40b0f1:	c3                   	retq   
  40b0f2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b0f9:	1f 84 00 00 00 00 00 

000000000040b100 <_ZN4Poco17NotFoundExceptionC1ERKSsRKNS_9ExceptionEi>:
  40b100:	53                   	push   %rbx
  40b101:	48 89 fb             	mov    %rdi,%rbx
  40b104:	e8 b7 d7 ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40b109:	48 c7 03 70 e5 40 00 	movq   $0x40e570,(%rbx)
  40b110:	5b                   	pop    %rbx
  40b111:	c3                   	retq   
  40b112:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b119:	1f 84 00 00 00 00 00 

000000000040b120 <_ZN4Poco17NotFoundExceptionC1ERKS0_>:
  40b120:	53                   	push   %rbx
  40b121:	48 89 fb             	mov    %rdi,%rbx
  40b124:	e8 07 d8 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40b129:	48 c7 03 70 e5 40 00 	movq   $0x40e570,(%rbx)
  40b130:	5b                   	pop    %rbx
  40b131:	c3                   	retq   
  40b132:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b139:	1f 84 00 00 00 00 00 

000000000040b140 <_ZN4Poco17NotFoundExceptionaSERKS0_>:
  40b140:	53                   	push   %rbx
  40b141:	48 89 fb             	mov    %rdi,%rbx
  40b144:	e8 17 f5 ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40b149:	48 89 d8             	mov    %rbx,%rax
  40b14c:	5b                   	pop    %rbx
  40b14d:	c3                   	retq   
  40b14e:	66 90                	xchg   %ax,%ax

000000000040b150 <_ZN4Poco15ExistsExceptionC1Ei>:
  40b150:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40b157:	00 
  40b158:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40b15f:	00 
  40b160:	89 77 18             	mov    %esi,0x18(%rdi)
  40b163:	48 c7 07 d0 e5 40 00 	movq   $0x40e5d0,(%rdi)
  40b16a:	c3                   	retq   
  40b16b:	90                   	nop
  40b16c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040b170 <_ZN4Poco15ExistsExceptionC1ERKSsi>:
  40b170:	53                   	push   %rbx
  40b171:	48 89 fb             	mov    %rdi,%rbx
  40b174:	e8 47 d6 ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40b179:	48 c7 03 d0 e5 40 00 	movq   $0x40e5d0,(%rbx)
  40b180:	5b                   	pop    %rbx
  40b181:	c3                   	retq   
  40b182:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b189:	1f 84 00 00 00 00 00 

000000000040b190 <_ZN4Poco15ExistsExceptionC1ERKSsS2_i>:
  40b190:	53                   	push   %rbx
  40b191:	48 89 fb             	mov    %rdi,%rbx
  40b194:	e8 77 d6 ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40b199:	48 c7 03 d0 e5 40 00 	movq   $0x40e5d0,(%rbx)
  40b1a0:	5b                   	pop    %rbx
  40b1a1:	c3                   	retq   
  40b1a2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b1a9:	1f 84 00 00 00 00 00 

000000000040b1b0 <_ZN4Poco15ExistsExceptionC1ERKSsRKNS_9ExceptionEi>:
  40b1b0:	53                   	push   %rbx
  40b1b1:	48 89 fb             	mov    %rdi,%rbx
  40b1b4:	e8 07 d7 ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40b1b9:	48 c7 03 d0 e5 40 00 	movq   $0x40e5d0,(%rbx)
  40b1c0:	5b                   	pop    %rbx
  40b1c1:	c3                   	retq   
  40b1c2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b1c9:	1f 84 00 00 00 00 00 

000000000040b1d0 <_ZN4Poco15ExistsExceptionC1ERKS0_>:
  40b1d0:	53                   	push   %rbx
  40b1d1:	48 89 fb             	mov    %rdi,%rbx
  40b1d4:	e8 57 d7 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40b1d9:	48 c7 03 d0 e5 40 00 	movq   $0x40e5d0,(%rbx)
  40b1e0:	5b                   	pop    %rbx
  40b1e1:	c3                   	retq   
  40b1e2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b1e9:	1f 84 00 00 00 00 00 

000000000040b1f0 <_ZN4Poco15ExistsExceptionaSERKS0_>:
  40b1f0:	53                   	push   %rbx
  40b1f1:	48 89 fb             	mov    %rdi,%rbx
  40b1f4:	e8 67 f4 ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40b1f9:	48 89 d8             	mov    %rbx,%rax
  40b1fc:	5b                   	pop    %rbx
  40b1fd:	c3                   	retq   
  40b1fe:	66 90                	xchg   %ax,%ax

000000000040b200 <_ZN4Poco16TimeoutExceptionC1Ei>:
  40b200:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40b207:	00 
  40b208:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40b20f:	00 
  40b210:	89 77 18             	mov    %esi,0x18(%rdi)
  40b213:	48 c7 07 30 e6 40 00 	movq   $0x40e630,(%rdi)
  40b21a:	c3                   	retq   
  40b21b:	90                   	nop
  40b21c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040b220 <_ZN4Poco16TimeoutExceptionC1ERKSsi>:
  40b220:	53                   	push   %rbx
  40b221:	48 89 fb             	mov    %rdi,%rbx
  40b224:	e8 97 d5 ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40b229:	48 c7 03 30 e6 40 00 	movq   $0x40e630,(%rbx)
  40b230:	5b                   	pop    %rbx
  40b231:	c3                   	retq   
  40b232:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b239:	1f 84 00 00 00 00 00 

000000000040b240 <_ZN4Poco16TimeoutExceptionC1ERKSsS2_i>:
  40b240:	53                   	push   %rbx
  40b241:	48 89 fb             	mov    %rdi,%rbx
  40b244:	e8 c7 d5 ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40b249:	48 c7 03 30 e6 40 00 	movq   $0x40e630,(%rbx)
  40b250:	5b                   	pop    %rbx
  40b251:	c3                   	retq   
  40b252:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b259:	1f 84 00 00 00 00 00 

000000000040b260 <_ZN4Poco16TimeoutExceptionC1ERKSsRKNS_9ExceptionEi>:
  40b260:	53                   	push   %rbx
  40b261:	48 89 fb             	mov    %rdi,%rbx
  40b264:	e8 57 d6 ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40b269:	48 c7 03 30 e6 40 00 	movq   $0x40e630,(%rbx)
  40b270:	5b                   	pop    %rbx
  40b271:	c3                   	retq   
  40b272:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b279:	1f 84 00 00 00 00 00 

000000000040b280 <_ZN4Poco16TimeoutExceptionC1ERKS0_>:
  40b280:	53                   	push   %rbx
  40b281:	48 89 fb             	mov    %rdi,%rbx
  40b284:	e8 a7 d6 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40b289:	48 c7 03 30 e6 40 00 	movq   $0x40e630,(%rbx)
  40b290:	5b                   	pop    %rbx
  40b291:	c3                   	retq   
  40b292:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b299:	1f 84 00 00 00 00 00 

000000000040b2a0 <_ZN4Poco16TimeoutExceptionaSERKS0_>:
  40b2a0:	53                   	push   %rbx
  40b2a1:	48 89 fb             	mov    %rdi,%rbx
  40b2a4:	e8 b7 f3 ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40b2a9:	48 89 d8             	mov    %rbx,%rax
  40b2ac:	5b                   	pop    %rbx
  40b2ad:	c3                   	retq   
  40b2ae:	66 90                	xchg   %ax,%ax

000000000040b2b0 <_ZN4Poco15SystemExceptionC1Ei>:
  40b2b0:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40b2b7:	00 
  40b2b8:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40b2bf:	00 
  40b2c0:	89 77 18             	mov    %esi,0x18(%rdi)
  40b2c3:	48 c7 07 90 e6 40 00 	movq   $0x40e690,(%rdi)
  40b2ca:	c3                   	retq   
  40b2cb:	90                   	nop
  40b2cc:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>:
  40b2d0:	53                   	push   %rbx
  40b2d1:	48 89 fb             	mov    %rdi,%rbx
  40b2d4:	e8 e7 d4 ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40b2d9:	48 c7 03 90 e6 40 00 	movq   $0x40e690,(%rbx)
  40b2e0:	5b                   	pop    %rbx
  40b2e1:	c3                   	retq   
  40b2e2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b2e9:	1f 84 00 00 00 00 00 

000000000040b2f0 <_ZN4Poco15SystemExceptionC1ERKSsS2_i>:
  40b2f0:	53                   	push   %rbx
  40b2f1:	48 89 fb             	mov    %rdi,%rbx
  40b2f4:	e8 17 d5 ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40b2f9:	48 c7 03 90 e6 40 00 	movq   $0x40e690,(%rbx)
  40b300:	5b                   	pop    %rbx
  40b301:	c3                   	retq   
  40b302:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b309:	1f 84 00 00 00 00 00 

000000000040b310 <_ZN4Poco15SystemExceptionC1ERKSsRKNS_9ExceptionEi>:
  40b310:	53                   	push   %rbx
  40b311:	48 89 fb             	mov    %rdi,%rbx
  40b314:	e8 a7 d5 ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40b319:	48 c7 03 90 e6 40 00 	movq   $0x40e690,(%rbx)
  40b320:	5b                   	pop    %rbx
  40b321:	c3                   	retq   
  40b322:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b329:	1f 84 00 00 00 00 00 

000000000040b330 <_ZN4Poco15SystemExceptionC1ERKS0_>:
  40b330:	53                   	push   %rbx
  40b331:	48 89 fb             	mov    %rdi,%rbx
  40b334:	e8 f7 d5 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40b339:	48 c7 03 90 e6 40 00 	movq   $0x40e690,(%rbx)
  40b340:	5b                   	pop    %rbx
  40b341:	c3                   	retq   
  40b342:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b349:	1f 84 00 00 00 00 00 

000000000040b350 <_ZN4Poco15SystemExceptionaSERKS0_>:
  40b350:	53                   	push   %rbx
  40b351:	48 89 fb             	mov    %rdi,%rbx
  40b354:	e8 07 f3 ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40b359:	48 89 d8             	mov    %rbx,%rax
  40b35c:	5b                   	pop    %rbx
  40b35d:	c3                   	retq   
  40b35e:	66 90                	xchg   %ax,%ax

000000000040b360 <_ZN4Poco26RegularExpressionExceptionC1Ei>:
  40b360:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40b367:	00 
  40b368:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40b36f:	00 
  40b370:	89 77 18             	mov    %esi,0x18(%rdi)
  40b373:	48 c7 07 f0 e6 40 00 	movq   $0x40e6f0,(%rdi)
  40b37a:	c3                   	retq   
  40b37b:	90                   	nop
  40b37c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040b380 <_ZN4Poco26RegularExpressionExceptionC1ERKSsi>:
  40b380:	53                   	push   %rbx
  40b381:	48 89 fb             	mov    %rdi,%rbx
  40b384:	e8 37 d4 ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40b389:	48 c7 03 f0 e6 40 00 	movq   $0x40e6f0,(%rbx)
  40b390:	5b                   	pop    %rbx
  40b391:	c3                   	retq   
  40b392:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b399:	1f 84 00 00 00 00 00 

000000000040b3a0 <_ZN4Poco26RegularExpressionExceptionC1ERKSsS2_i>:
  40b3a0:	53                   	push   %rbx
  40b3a1:	48 89 fb             	mov    %rdi,%rbx
  40b3a4:	e8 67 d4 ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40b3a9:	48 c7 03 f0 e6 40 00 	movq   $0x40e6f0,(%rbx)
  40b3b0:	5b                   	pop    %rbx
  40b3b1:	c3                   	retq   
  40b3b2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b3b9:	1f 84 00 00 00 00 00 

000000000040b3c0 <_ZN4Poco26RegularExpressionExceptionC1ERKSsRKNS_9ExceptionEi>:
  40b3c0:	53                   	push   %rbx
  40b3c1:	48 89 fb             	mov    %rdi,%rbx
  40b3c4:	e8 f7 d4 ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40b3c9:	48 c7 03 f0 e6 40 00 	movq   $0x40e6f0,(%rbx)
  40b3d0:	5b                   	pop    %rbx
  40b3d1:	c3                   	retq   
  40b3d2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b3d9:	1f 84 00 00 00 00 00 

000000000040b3e0 <_ZN4Poco26RegularExpressionExceptionC1ERKS0_>:
  40b3e0:	53                   	push   %rbx
  40b3e1:	48 89 fb             	mov    %rdi,%rbx
  40b3e4:	e8 47 d5 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40b3e9:	48 c7 03 f0 e6 40 00 	movq   $0x40e6f0,(%rbx)
  40b3f0:	5b                   	pop    %rbx
  40b3f1:	c3                   	retq   
  40b3f2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b3f9:	1f 84 00 00 00 00 00 

000000000040b400 <_ZN4Poco26RegularExpressionExceptionaSERKS0_>:
  40b400:	53                   	push   %rbx
  40b401:	48 89 fb             	mov    %rdi,%rbx
  40b404:	e8 57 f2 ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40b409:	48 89 d8             	mov    %rbx,%rax
  40b40c:	5b                   	pop    %rbx
  40b40d:	c3                   	retq   
  40b40e:	66 90                	xchg   %ax,%ax

000000000040b410 <_ZN4Poco20LibraryLoadExceptionC1Ei>:
  40b410:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40b417:	00 
  40b418:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40b41f:	00 
  40b420:	89 77 18             	mov    %esi,0x18(%rdi)
  40b423:	48 c7 07 50 e7 40 00 	movq   $0x40e750,(%rdi)
  40b42a:	c3                   	retq   
  40b42b:	90                   	nop
  40b42c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040b430 <_ZN4Poco20LibraryLoadExceptionC1ERKSsi>:
  40b430:	53                   	push   %rbx
  40b431:	48 89 fb             	mov    %rdi,%rbx
  40b434:	e8 87 d3 ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40b439:	48 c7 03 50 e7 40 00 	movq   $0x40e750,(%rbx)
  40b440:	5b                   	pop    %rbx
  40b441:	c3                   	retq   
  40b442:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b449:	1f 84 00 00 00 00 00 

000000000040b450 <_ZN4Poco20LibraryLoadExceptionC1ERKSsS2_i>:
  40b450:	53                   	push   %rbx
  40b451:	48 89 fb             	mov    %rdi,%rbx
  40b454:	e8 b7 d3 ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40b459:	48 c7 03 50 e7 40 00 	movq   $0x40e750,(%rbx)
  40b460:	5b                   	pop    %rbx
  40b461:	c3                   	retq   
  40b462:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b469:	1f 84 00 00 00 00 00 

000000000040b470 <_ZN4Poco20LibraryLoadExceptionC1ERKSsRKNS_9ExceptionEi>:
  40b470:	53                   	push   %rbx
  40b471:	48 89 fb             	mov    %rdi,%rbx
  40b474:	e8 47 d4 ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40b479:	48 c7 03 50 e7 40 00 	movq   $0x40e750,(%rbx)
  40b480:	5b                   	pop    %rbx
  40b481:	c3                   	retq   
  40b482:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b489:	1f 84 00 00 00 00 00 

000000000040b490 <_ZN4Poco20LibraryLoadExceptionC1ERKS0_>:
  40b490:	53                   	push   %rbx
  40b491:	48 89 fb             	mov    %rdi,%rbx
  40b494:	e8 97 d4 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40b499:	48 c7 03 50 e7 40 00 	movq   $0x40e750,(%rbx)
  40b4a0:	5b                   	pop    %rbx
  40b4a1:	c3                   	retq   
  40b4a2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b4a9:	1f 84 00 00 00 00 00 

000000000040b4b0 <_ZN4Poco20LibraryLoadExceptionaSERKS0_>:
  40b4b0:	53                   	push   %rbx
  40b4b1:	48 89 fb             	mov    %rdi,%rbx
  40b4b4:	e8 a7 f1 ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40b4b9:	48 89 d8             	mov    %rbx,%rax
  40b4bc:	5b                   	pop    %rbx
  40b4bd:	c3                   	retq   
  40b4be:	66 90                	xchg   %ax,%ax

000000000040b4c0 <_ZN4Poco29LibraryAlreadyLoadedExceptionC1Ei>:
  40b4c0:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40b4c7:	00 
  40b4c8:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40b4cf:	00 
  40b4d0:	89 77 18             	mov    %esi,0x18(%rdi)
  40b4d3:	48 c7 07 b0 e7 40 00 	movq   $0x40e7b0,(%rdi)
  40b4da:	c3                   	retq   
  40b4db:	90                   	nop
  40b4dc:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040b4e0 <_ZN4Poco29LibraryAlreadyLoadedExceptionC1ERKSsi>:
  40b4e0:	53                   	push   %rbx
  40b4e1:	48 89 fb             	mov    %rdi,%rbx
  40b4e4:	e8 d7 d2 ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40b4e9:	48 c7 03 b0 e7 40 00 	movq   $0x40e7b0,(%rbx)
  40b4f0:	5b                   	pop    %rbx
  40b4f1:	c3                   	retq   
  40b4f2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b4f9:	1f 84 00 00 00 00 00 

000000000040b500 <_ZN4Poco29LibraryAlreadyLoadedExceptionC1ERKSsS2_i>:
  40b500:	53                   	push   %rbx
  40b501:	48 89 fb             	mov    %rdi,%rbx
  40b504:	e8 07 d3 ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40b509:	48 c7 03 b0 e7 40 00 	movq   $0x40e7b0,(%rbx)
  40b510:	5b                   	pop    %rbx
  40b511:	c3                   	retq   
  40b512:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b519:	1f 84 00 00 00 00 00 

000000000040b520 <_ZN4Poco29LibraryAlreadyLoadedExceptionC1ERKSsRKNS_9ExceptionEi>:
  40b520:	53                   	push   %rbx
  40b521:	48 89 fb             	mov    %rdi,%rbx
  40b524:	e8 97 d3 ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40b529:	48 c7 03 b0 e7 40 00 	movq   $0x40e7b0,(%rbx)
  40b530:	5b                   	pop    %rbx
  40b531:	c3                   	retq   
  40b532:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b539:	1f 84 00 00 00 00 00 

000000000040b540 <_ZN4Poco29LibraryAlreadyLoadedExceptionC1ERKS0_>:
  40b540:	53                   	push   %rbx
  40b541:	48 89 fb             	mov    %rdi,%rbx
  40b544:	e8 e7 d3 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40b549:	48 c7 03 b0 e7 40 00 	movq   $0x40e7b0,(%rbx)
  40b550:	5b                   	pop    %rbx
  40b551:	c3                   	retq   
  40b552:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b559:	1f 84 00 00 00 00 00 

000000000040b560 <_ZN4Poco29LibraryAlreadyLoadedExceptionaSERKS0_>:
  40b560:	53                   	push   %rbx
  40b561:	48 89 fb             	mov    %rdi,%rbx
  40b564:	e8 f7 f0 ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40b569:	48 89 d8             	mov    %rbx,%rax
  40b56c:	5b                   	pop    %rbx
  40b56d:	c3                   	retq   
  40b56e:	66 90                	xchg   %ax,%ax

000000000040b570 <_ZN4Poco26NoThreadAvailableExceptionC1Ei>:
  40b570:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40b577:	00 
  40b578:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40b57f:	00 
  40b580:	89 77 18             	mov    %esi,0x18(%rdi)
  40b583:	48 c7 07 10 e8 40 00 	movq   $0x40e810,(%rdi)
  40b58a:	c3                   	retq   
  40b58b:	90                   	nop
  40b58c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040b590 <_ZN4Poco26NoThreadAvailableExceptionC1ERKSsi>:
  40b590:	53                   	push   %rbx
  40b591:	48 89 fb             	mov    %rdi,%rbx
  40b594:	e8 27 d2 ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40b599:	48 c7 03 10 e8 40 00 	movq   $0x40e810,(%rbx)
  40b5a0:	5b                   	pop    %rbx
  40b5a1:	c3                   	retq   
  40b5a2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b5a9:	1f 84 00 00 00 00 00 

000000000040b5b0 <_ZN4Poco26NoThreadAvailableExceptionC1ERKSsS2_i>:
  40b5b0:	53                   	push   %rbx
  40b5b1:	48 89 fb             	mov    %rdi,%rbx
  40b5b4:	e8 57 d2 ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40b5b9:	48 c7 03 10 e8 40 00 	movq   $0x40e810,(%rbx)
  40b5c0:	5b                   	pop    %rbx
  40b5c1:	c3                   	retq   
  40b5c2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b5c9:	1f 84 00 00 00 00 00 

000000000040b5d0 <_ZN4Poco26NoThreadAvailableExceptionC1ERKSsRKNS_9ExceptionEi>:
  40b5d0:	53                   	push   %rbx
  40b5d1:	48 89 fb             	mov    %rdi,%rbx
  40b5d4:	e8 e7 d2 ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40b5d9:	48 c7 03 10 e8 40 00 	movq   $0x40e810,(%rbx)
  40b5e0:	5b                   	pop    %rbx
  40b5e1:	c3                   	retq   
  40b5e2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b5e9:	1f 84 00 00 00 00 00 

000000000040b5f0 <_ZN4Poco26NoThreadAvailableExceptionC1ERKS0_>:
  40b5f0:	53                   	push   %rbx
  40b5f1:	48 89 fb             	mov    %rdi,%rbx
  40b5f4:	e8 37 d3 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40b5f9:	48 c7 03 10 e8 40 00 	movq   $0x40e810,(%rbx)
  40b600:	5b                   	pop    %rbx
  40b601:	c3                   	retq   
  40b602:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b609:	1f 84 00 00 00 00 00 

000000000040b610 <_ZN4Poco26NoThreadAvailableExceptionaSERKS0_>:
  40b610:	53                   	push   %rbx
  40b611:	48 89 fb             	mov    %rdi,%rbx
  40b614:	e8 47 f0 ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40b619:	48 89 d8             	mov    %rbx,%rax
  40b61c:	5b                   	pop    %rbx
  40b61d:	c3                   	retq   
  40b61e:	66 90                	xchg   %ax,%ax

000000000040b620 <_ZN4Poco29PropertyNotSupportedExceptionC1Ei>:
  40b620:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40b627:	00 
  40b628:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40b62f:	00 
  40b630:	89 77 18             	mov    %esi,0x18(%rdi)
  40b633:	48 c7 07 70 e8 40 00 	movq   $0x40e870,(%rdi)
  40b63a:	c3                   	retq   
  40b63b:	90                   	nop
  40b63c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040b640 <_ZN4Poco29PropertyNotSupportedExceptionC1ERKSsi>:
  40b640:	53                   	push   %rbx
  40b641:	48 89 fb             	mov    %rdi,%rbx
  40b644:	e8 77 d1 ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40b649:	48 c7 03 70 e8 40 00 	movq   $0x40e870,(%rbx)
  40b650:	5b                   	pop    %rbx
  40b651:	c3                   	retq   
  40b652:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b659:	1f 84 00 00 00 00 00 

000000000040b660 <_ZN4Poco29PropertyNotSupportedExceptionC1ERKSsS2_i>:
  40b660:	53                   	push   %rbx
  40b661:	48 89 fb             	mov    %rdi,%rbx
  40b664:	e8 a7 d1 ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40b669:	48 c7 03 70 e8 40 00 	movq   $0x40e870,(%rbx)
  40b670:	5b                   	pop    %rbx
  40b671:	c3                   	retq   
  40b672:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b679:	1f 84 00 00 00 00 00 

000000000040b680 <_ZN4Poco29PropertyNotSupportedExceptionC1ERKSsRKNS_9ExceptionEi>:
  40b680:	53                   	push   %rbx
  40b681:	48 89 fb             	mov    %rdi,%rbx
  40b684:	e8 37 d2 ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40b689:	48 c7 03 70 e8 40 00 	movq   $0x40e870,(%rbx)
  40b690:	5b                   	pop    %rbx
  40b691:	c3                   	retq   
  40b692:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b699:	1f 84 00 00 00 00 00 

000000000040b6a0 <_ZN4Poco29PropertyNotSupportedExceptionC1ERKS0_>:
  40b6a0:	53                   	push   %rbx
  40b6a1:	48 89 fb             	mov    %rdi,%rbx
  40b6a4:	e8 87 d2 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40b6a9:	48 c7 03 70 e8 40 00 	movq   $0x40e870,(%rbx)
  40b6b0:	5b                   	pop    %rbx
  40b6b1:	c3                   	retq   
  40b6b2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b6b9:	1f 84 00 00 00 00 00 

000000000040b6c0 <_ZN4Poco29PropertyNotSupportedExceptionaSERKS0_>:
  40b6c0:	53                   	push   %rbx
  40b6c1:	48 89 fb             	mov    %rdi,%rbx
  40b6c4:	e8 97 ef ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40b6c9:	48 89 d8             	mov    %rbx,%rax
  40b6cc:	5b                   	pop    %rbx
  40b6cd:	c3                   	retq   
  40b6ce:	66 90                	xchg   %ax,%ax

000000000040b6d0 <_ZN4Poco21PoolOverflowExceptionC1Ei>:
  40b6d0:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40b6d7:	00 
  40b6d8:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40b6df:	00 
  40b6e0:	89 77 18             	mov    %esi,0x18(%rdi)
  40b6e3:	48 c7 07 d0 e8 40 00 	movq   $0x40e8d0,(%rdi)
  40b6ea:	c3                   	retq   
  40b6eb:	90                   	nop
  40b6ec:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040b6f0 <_ZN4Poco21PoolOverflowExceptionC1ERKSsi>:
  40b6f0:	53                   	push   %rbx
  40b6f1:	48 89 fb             	mov    %rdi,%rbx
  40b6f4:	e8 c7 d0 ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40b6f9:	48 c7 03 d0 e8 40 00 	movq   $0x40e8d0,(%rbx)
  40b700:	5b                   	pop    %rbx
  40b701:	c3                   	retq   
  40b702:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b709:	1f 84 00 00 00 00 00 

000000000040b710 <_ZN4Poco21PoolOverflowExceptionC1ERKSsS2_i>:
  40b710:	53                   	push   %rbx
  40b711:	48 89 fb             	mov    %rdi,%rbx
  40b714:	e8 f7 d0 ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40b719:	48 c7 03 d0 e8 40 00 	movq   $0x40e8d0,(%rbx)
  40b720:	5b                   	pop    %rbx
  40b721:	c3                   	retq   
  40b722:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b729:	1f 84 00 00 00 00 00 

000000000040b730 <_ZN4Poco21PoolOverflowExceptionC1ERKSsRKNS_9ExceptionEi>:
  40b730:	53                   	push   %rbx
  40b731:	48 89 fb             	mov    %rdi,%rbx
  40b734:	e8 87 d1 ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40b739:	48 c7 03 d0 e8 40 00 	movq   $0x40e8d0,(%rbx)
  40b740:	5b                   	pop    %rbx
  40b741:	c3                   	retq   
  40b742:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b749:	1f 84 00 00 00 00 00 

000000000040b750 <_ZN4Poco21PoolOverflowExceptionC1ERKS0_>:
  40b750:	53                   	push   %rbx
  40b751:	48 89 fb             	mov    %rdi,%rbx
  40b754:	e8 d7 d1 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40b759:	48 c7 03 d0 e8 40 00 	movq   $0x40e8d0,(%rbx)
  40b760:	5b                   	pop    %rbx
  40b761:	c3                   	retq   
  40b762:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b769:	1f 84 00 00 00 00 00 

000000000040b770 <_ZN4Poco21PoolOverflowExceptionaSERKS0_>:
  40b770:	53                   	push   %rbx
  40b771:	48 89 fb             	mov    %rdi,%rbx
  40b774:	e8 e7 ee ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40b779:	48 89 d8             	mov    %rbx,%rax
  40b77c:	5b                   	pop    %rbx
  40b77d:	c3                   	retq   
  40b77e:	66 90                	xchg   %ax,%ax

000000000040b780 <_ZN4Poco21NoPermissionExceptionC1Ei>:
  40b780:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40b787:	00 
  40b788:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40b78f:	00 
  40b790:	89 77 18             	mov    %esi,0x18(%rdi)
  40b793:	48 c7 07 30 e9 40 00 	movq   $0x40e930,(%rdi)
  40b79a:	c3                   	retq   
  40b79b:	90                   	nop
  40b79c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040b7a0 <_ZN4Poco21NoPermissionExceptionC1ERKSsi>:
  40b7a0:	53                   	push   %rbx
  40b7a1:	48 89 fb             	mov    %rdi,%rbx
  40b7a4:	e8 17 d0 ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40b7a9:	48 c7 03 30 e9 40 00 	movq   $0x40e930,(%rbx)
  40b7b0:	5b                   	pop    %rbx
  40b7b1:	c3                   	retq   
  40b7b2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b7b9:	1f 84 00 00 00 00 00 

000000000040b7c0 <_ZN4Poco21NoPermissionExceptionC1ERKSsS2_i>:
  40b7c0:	53                   	push   %rbx
  40b7c1:	48 89 fb             	mov    %rdi,%rbx
  40b7c4:	e8 47 d0 ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40b7c9:	48 c7 03 30 e9 40 00 	movq   $0x40e930,(%rbx)
  40b7d0:	5b                   	pop    %rbx
  40b7d1:	c3                   	retq   
  40b7d2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b7d9:	1f 84 00 00 00 00 00 

000000000040b7e0 <_ZN4Poco21NoPermissionExceptionC1ERKSsRKNS_9ExceptionEi>:
  40b7e0:	53                   	push   %rbx
  40b7e1:	48 89 fb             	mov    %rdi,%rbx
  40b7e4:	e8 d7 d0 ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40b7e9:	48 c7 03 30 e9 40 00 	movq   $0x40e930,(%rbx)
  40b7f0:	5b                   	pop    %rbx
  40b7f1:	c3                   	retq   
  40b7f2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b7f9:	1f 84 00 00 00 00 00 

000000000040b800 <_ZN4Poco21NoPermissionExceptionC1ERKS0_>:
  40b800:	53                   	push   %rbx
  40b801:	48 89 fb             	mov    %rdi,%rbx
  40b804:	e8 27 d1 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40b809:	48 c7 03 30 e9 40 00 	movq   $0x40e930,(%rbx)
  40b810:	5b                   	pop    %rbx
  40b811:	c3                   	retq   
  40b812:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b819:	1f 84 00 00 00 00 00 

000000000040b820 <_ZN4Poco21NoPermissionExceptionaSERKS0_>:
  40b820:	53                   	push   %rbx
  40b821:	48 89 fb             	mov    %rdi,%rbx
  40b824:	e8 37 ee ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40b829:	48 89 d8             	mov    %rbx,%rax
  40b82c:	5b                   	pop    %rbx
  40b82d:	c3                   	retq   
  40b82e:	66 90                	xchg   %ax,%ax

000000000040b830 <_ZN4Poco20OutOfMemoryExceptionC1Ei>:
  40b830:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40b837:	00 
  40b838:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40b83f:	00 
  40b840:	89 77 18             	mov    %esi,0x18(%rdi)
  40b843:	48 c7 07 90 e9 40 00 	movq   $0x40e990,(%rdi)
  40b84a:	c3                   	retq   
  40b84b:	90                   	nop
  40b84c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040b850 <_ZN4Poco20OutOfMemoryExceptionC1ERKSsi>:
  40b850:	53                   	push   %rbx
  40b851:	48 89 fb             	mov    %rdi,%rbx
  40b854:	e8 67 cf ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40b859:	48 c7 03 90 e9 40 00 	movq   $0x40e990,(%rbx)
  40b860:	5b                   	pop    %rbx
  40b861:	c3                   	retq   
  40b862:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b869:	1f 84 00 00 00 00 00 

000000000040b870 <_ZN4Poco20OutOfMemoryExceptionC1ERKSsS2_i>:
  40b870:	53                   	push   %rbx
  40b871:	48 89 fb             	mov    %rdi,%rbx
  40b874:	e8 97 cf ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40b879:	48 c7 03 90 e9 40 00 	movq   $0x40e990,(%rbx)
  40b880:	5b                   	pop    %rbx
  40b881:	c3                   	retq   
  40b882:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b889:	1f 84 00 00 00 00 00 

000000000040b890 <_ZN4Poco20OutOfMemoryExceptionC1ERKSsRKNS_9ExceptionEi>:
  40b890:	53                   	push   %rbx
  40b891:	48 89 fb             	mov    %rdi,%rbx
  40b894:	e8 27 d0 ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40b899:	48 c7 03 90 e9 40 00 	movq   $0x40e990,(%rbx)
  40b8a0:	5b                   	pop    %rbx
  40b8a1:	c3                   	retq   
  40b8a2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b8a9:	1f 84 00 00 00 00 00 

000000000040b8b0 <_ZN4Poco20OutOfMemoryExceptionC1ERKS0_>:
  40b8b0:	53                   	push   %rbx
  40b8b1:	48 89 fb             	mov    %rdi,%rbx
  40b8b4:	e8 77 d0 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40b8b9:	48 c7 03 90 e9 40 00 	movq   $0x40e990,(%rbx)
  40b8c0:	5b                   	pop    %rbx
  40b8c1:	c3                   	retq   
  40b8c2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b8c9:	1f 84 00 00 00 00 00 

000000000040b8d0 <_ZN4Poco20OutOfMemoryExceptionaSERKS0_>:
  40b8d0:	53                   	push   %rbx
  40b8d1:	48 89 fb             	mov    %rdi,%rbx
  40b8d4:	e8 87 ed ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40b8d9:	48 89 d8             	mov    %rbx,%rax
  40b8dc:	5b                   	pop    %rbx
  40b8dd:	c3                   	retq   
  40b8de:	66 90                	xchg   %ax,%ax

000000000040b8e0 <_ZN4Poco13DataExceptionC1Ei>:
  40b8e0:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40b8e7:	00 
  40b8e8:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40b8ef:	00 
  40b8f0:	89 77 18             	mov    %esi,0x18(%rdi)
  40b8f3:	48 c7 07 f0 e9 40 00 	movq   $0x40e9f0,(%rdi)
  40b8fa:	c3                   	retq   
  40b8fb:	90                   	nop
  40b8fc:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040b900 <_ZN4Poco13DataExceptionC1ERKSsi>:
  40b900:	53                   	push   %rbx
  40b901:	48 89 fb             	mov    %rdi,%rbx
  40b904:	e8 b7 ce ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40b909:	48 c7 03 f0 e9 40 00 	movq   $0x40e9f0,(%rbx)
  40b910:	5b                   	pop    %rbx
  40b911:	c3                   	retq   
  40b912:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b919:	1f 84 00 00 00 00 00 

000000000040b920 <_ZN4Poco13DataExceptionC1ERKSsS2_i>:
  40b920:	53                   	push   %rbx
  40b921:	48 89 fb             	mov    %rdi,%rbx
  40b924:	e8 e7 ce ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40b929:	48 c7 03 f0 e9 40 00 	movq   $0x40e9f0,(%rbx)
  40b930:	5b                   	pop    %rbx
  40b931:	c3                   	retq   
  40b932:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b939:	1f 84 00 00 00 00 00 

000000000040b940 <_ZN4Poco13DataExceptionC1ERKSsRKNS_9ExceptionEi>:
  40b940:	53                   	push   %rbx
  40b941:	48 89 fb             	mov    %rdi,%rbx
  40b944:	e8 77 cf ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40b949:	48 c7 03 f0 e9 40 00 	movq   $0x40e9f0,(%rbx)
  40b950:	5b                   	pop    %rbx
  40b951:	c3                   	retq   
  40b952:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b959:	1f 84 00 00 00 00 00 

000000000040b960 <_ZN4Poco13DataExceptionC1ERKS0_>:
  40b960:	53                   	push   %rbx
  40b961:	48 89 fb             	mov    %rdi,%rbx
  40b964:	e8 c7 cf ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40b969:	48 c7 03 f0 e9 40 00 	movq   $0x40e9f0,(%rbx)
  40b970:	5b                   	pop    %rbx
  40b971:	c3                   	retq   
  40b972:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b979:	1f 84 00 00 00 00 00 

000000000040b980 <_ZN4Poco13DataExceptionaSERKS0_>:
  40b980:	53                   	push   %rbx
  40b981:	48 89 fb             	mov    %rdi,%rbx
  40b984:	e8 d7 ec ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40b989:	48 89 d8             	mov    %rbx,%rax
  40b98c:	5b                   	pop    %rbx
  40b98d:	c3                   	retq   
  40b98e:	66 90                	xchg   %ax,%ax

000000000040b990 <_ZN4Poco19DataFormatExceptionC1Ei>:
  40b990:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40b997:	00 
  40b998:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40b99f:	00 
  40b9a0:	89 77 18             	mov    %esi,0x18(%rdi)
  40b9a3:	48 c7 07 50 ea 40 00 	movq   $0x40ea50,(%rdi)
  40b9aa:	c3                   	retq   
  40b9ab:	90                   	nop
  40b9ac:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040b9b0 <_ZN4Poco19DataFormatExceptionC1ERKSsi>:
  40b9b0:	53                   	push   %rbx
  40b9b1:	48 89 fb             	mov    %rdi,%rbx
  40b9b4:	e8 07 ce ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40b9b9:	48 c7 03 50 ea 40 00 	movq   $0x40ea50,(%rbx)
  40b9c0:	5b                   	pop    %rbx
  40b9c1:	c3                   	retq   
  40b9c2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b9c9:	1f 84 00 00 00 00 00 

000000000040b9d0 <_ZN4Poco19DataFormatExceptionC1ERKSsS2_i>:
  40b9d0:	53                   	push   %rbx
  40b9d1:	48 89 fb             	mov    %rdi,%rbx
  40b9d4:	e8 37 ce ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40b9d9:	48 c7 03 50 ea 40 00 	movq   $0x40ea50,(%rbx)
  40b9e0:	5b                   	pop    %rbx
  40b9e1:	c3                   	retq   
  40b9e2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40b9e9:	1f 84 00 00 00 00 00 

000000000040b9f0 <_ZN4Poco19DataFormatExceptionC1ERKSsRKNS_9ExceptionEi>:
  40b9f0:	53                   	push   %rbx
  40b9f1:	48 89 fb             	mov    %rdi,%rbx
  40b9f4:	e8 c7 ce ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40b9f9:	48 c7 03 50 ea 40 00 	movq   $0x40ea50,(%rbx)
  40ba00:	5b                   	pop    %rbx
  40ba01:	c3                   	retq   
  40ba02:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40ba09:	1f 84 00 00 00 00 00 

000000000040ba10 <_ZN4Poco19DataFormatExceptionC1ERKS0_>:
  40ba10:	53                   	push   %rbx
  40ba11:	48 89 fb             	mov    %rdi,%rbx
  40ba14:	e8 17 cf ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40ba19:	48 c7 03 50 ea 40 00 	movq   $0x40ea50,(%rbx)
  40ba20:	5b                   	pop    %rbx
  40ba21:	c3                   	retq   
  40ba22:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40ba29:	1f 84 00 00 00 00 00 

000000000040ba30 <_ZN4Poco19DataFormatExceptionaSERKS0_>:
  40ba30:	53                   	push   %rbx
  40ba31:	48 89 fb             	mov    %rdi,%rbx
  40ba34:	e8 27 ec ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40ba39:	48 89 d8             	mov    %rbx,%rax
  40ba3c:	5b                   	pop    %rbx
  40ba3d:	c3                   	retq   
  40ba3e:	66 90                	xchg   %ax,%ax

000000000040ba40 <_ZN4Poco15SyntaxExceptionC1Ei>:
  40ba40:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40ba47:	00 
  40ba48:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40ba4f:	00 
  40ba50:	89 77 18             	mov    %esi,0x18(%rdi)
  40ba53:	48 c7 07 b0 ea 40 00 	movq   $0x40eab0,(%rdi)
  40ba5a:	c3                   	retq   
  40ba5b:	90                   	nop
  40ba5c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040ba60 <_ZN4Poco15SyntaxExceptionC1ERKSsi>:
  40ba60:	53                   	push   %rbx
  40ba61:	48 89 fb             	mov    %rdi,%rbx
  40ba64:	e8 57 cd ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40ba69:	48 c7 03 b0 ea 40 00 	movq   $0x40eab0,(%rbx)
  40ba70:	5b                   	pop    %rbx
  40ba71:	c3                   	retq   
  40ba72:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40ba79:	1f 84 00 00 00 00 00 

000000000040ba80 <_ZN4Poco15SyntaxExceptionC1ERKSsS2_i>:
  40ba80:	53                   	push   %rbx
  40ba81:	48 89 fb             	mov    %rdi,%rbx
  40ba84:	e8 87 cd ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40ba89:	48 c7 03 b0 ea 40 00 	movq   $0x40eab0,(%rbx)
  40ba90:	5b                   	pop    %rbx
  40ba91:	c3                   	retq   
  40ba92:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40ba99:	1f 84 00 00 00 00 00 

000000000040baa0 <_ZN4Poco15SyntaxExceptionC1ERKSsRKNS_9ExceptionEi>:
  40baa0:	53                   	push   %rbx
  40baa1:	48 89 fb             	mov    %rdi,%rbx
  40baa4:	e8 17 ce ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40baa9:	48 c7 03 b0 ea 40 00 	movq   $0x40eab0,(%rbx)
  40bab0:	5b                   	pop    %rbx
  40bab1:	c3                   	retq   
  40bab2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40bab9:	1f 84 00 00 00 00 00 

000000000040bac0 <_ZN4Poco15SyntaxExceptionC1ERKS0_>:
  40bac0:	53                   	push   %rbx
  40bac1:	48 89 fb             	mov    %rdi,%rbx
  40bac4:	e8 67 ce ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40bac9:	48 c7 03 b0 ea 40 00 	movq   $0x40eab0,(%rbx)
  40bad0:	5b                   	pop    %rbx
  40bad1:	c3                   	retq   
  40bad2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40bad9:	1f 84 00 00 00 00 00 

000000000040bae0 <_ZN4Poco15SyntaxExceptionaSERKS0_>:
  40bae0:	53                   	push   %rbx
  40bae1:	48 89 fb             	mov    %rdi,%rbx
  40bae4:	e8 77 eb ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40bae9:	48 89 d8             	mov    %rbx,%rax
  40baec:	5b                   	pop    %rbx
  40baed:	c3                   	retq   
  40baee:	66 90                	xchg   %ax,%ax

000000000040baf0 <_ZN4Poco26CircularReferenceExceptionC1Ei>:
  40baf0:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40baf7:	00 
  40baf8:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40baff:	00 
  40bb00:	89 77 18             	mov    %esi,0x18(%rdi)
  40bb03:	48 c7 07 10 eb 40 00 	movq   $0x40eb10,(%rdi)
  40bb0a:	c3                   	retq   
  40bb0b:	90                   	nop
  40bb0c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040bb10 <_ZN4Poco26CircularReferenceExceptionC1ERKSsi>:
  40bb10:	53                   	push   %rbx
  40bb11:	48 89 fb             	mov    %rdi,%rbx
  40bb14:	e8 a7 cc ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40bb19:	48 c7 03 10 eb 40 00 	movq   $0x40eb10,(%rbx)
  40bb20:	5b                   	pop    %rbx
  40bb21:	c3                   	retq   
  40bb22:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40bb29:	1f 84 00 00 00 00 00 

000000000040bb30 <_ZN4Poco26CircularReferenceExceptionC1ERKSsS2_i>:
  40bb30:	53                   	push   %rbx
  40bb31:	48 89 fb             	mov    %rdi,%rbx
  40bb34:	e8 d7 cc ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40bb39:	48 c7 03 10 eb 40 00 	movq   $0x40eb10,(%rbx)
  40bb40:	5b                   	pop    %rbx
  40bb41:	c3                   	retq   
  40bb42:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40bb49:	1f 84 00 00 00 00 00 

000000000040bb50 <_ZN4Poco26CircularReferenceExceptionC1ERKSsRKNS_9ExceptionEi>:
  40bb50:	53                   	push   %rbx
  40bb51:	48 89 fb             	mov    %rdi,%rbx
  40bb54:	e8 67 cd ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40bb59:	48 c7 03 10 eb 40 00 	movq   $0x40eb10,(%rbx)
  40bb60:	5b                   	pop    %rbx
  40bb61:	c3                   	retq   
  40bb62:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40bb69:	1f 84 00 00 00 00 00 

000000000040bb70 <_ZN4Poco26CircularReferenceExceptionC1ERKS0_>:
  40bb70:	53                   	push   %rbx
  40bb71:	48 89 fb             	mov    %rdi,%rbx
  40bb74:	e8 b7 cd ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40bb79:	48 c7 03 10 eb 40 00 	movq   $0x40eb10,(%rbx)
  40bb80:	5b                   	pop    %rbx
  40bb81:	c3                   	retq   
  40bb82:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40bb89:	1f 84 00 00 00 00 00 

000000000040bb90 <_ZN4Poco26CircularReferenceExceptionaSERKS0_>:
  40bb90:	53                   	push   %rbx
  40bb91:	48 89 fb             	mov    %rdi,%rbx
  40bb94:	e8 c7 ea ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40bb99:	48 89 d8             	mov    %rbx,%rax
  40bb9c:	5b                   	pop    %rbx
  40bb9d:	c3                   	retq   
  40bb9e:	66 90                	xchg   %ax,%ax

000000000040bba0 <_ZN4Poco19PathSyntaxExceptionC1Ei>:
  40bba0:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40bba7:	00 
  40bba8:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40bbaf:	00 
  40bbb0:	89 77 18             	mov    %esi,0x18(%rdi)
  40bbb3:	48 c7 07 70 eb 40 00 	movq   $0x40eb70,(%rdi)
  40bbba:	c3                   	retq   
  40bbbb:	90                   	nop
  40bbbc:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040bbc0 <_ZN4Poco19PathSyntaxExceptionC1ERKSsi>:
  40bbc0:	53                   	push   %rbx
  40bbc1:	48 89 fb             	mov    %rdi,%rbx
  40bbc4:	e8 f7 cb ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40bbc9:	48 c7 03 70 eb 40 00 	movq   $0x40eb70,(%rbx)
  40bbd0:	5b                   	pop    %rbx
  40bbd1:	c3                   	retq   
  40bbd2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40bbd9:	1f 84 00 00 00 00 00 

000000000040bbe0 <_ZN4Poco19PathSyntaxExceptionC1ERKSsS2_i>:
  40bbe0:	53                   	push   %rbx
  40bbe1:	48 89 fb             	mov    %rdi,%rbx
  40bbe4:	e8 27 cc ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40bbe9:	48 c7 03 70 eb 40 00 	movq   $0x40eb70,(%rbx)
  40bbf0:	5b                   	pop    %rbx
  40bbf1:	c3                   	retq   
  40bbf2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40bbf9:	1f 84 00 00 00 00 00 

000000000040bc00 <_ZN4Poco19PathSyntaxExceptionC1ERKSsRKNS_9ExceptionEi>:
  40bc00:	53                   	push   %rbx
  40bc01:	48 89 fb             	mov    %rdi,%rbx
  40bc04:	e8 b7 cc ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40bc09:	48 c7 03 70 eb 40 00 	movq   $0x40eb70,(%rbx)
  40bc10:	5b                   	pop    %rbx
  40bc11:	c3                   	retq   
  40bc12:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40bc19:	1f 84 00 00 00 00 00 

000000000040bc20 <_ZN4Poco19PathSyntaxExceptionC1ERKS0_>:
  40bc20:	53                   	push   %rbx
  40bc21:	48 89 fb             	mov    %rdi,%rbx
  40bc24:	e8 07 cd ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40bc29:	48 c7 03 70 eb 40 00 	movq   $0x40eb70,(%rbx)
  40bc30:	5b                   	pop    %rbx
  40bc31:	c3                   	retq   
  40bc32:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40bc39:	1f 84 00 00 00 00 00 

000000000040bc40 <_ZN4Poco19PathSyntaxExceptionaSERKS0_>:
  40bc40:	53                   	push   %rbx
  40bc41:	48 89 fb             	mov    %rdi,%rbx
  40bc44:	e8 17 ea ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40bc49:	48 89 d8             	mov    %rbx,%rax
  40bc4c:	5b                   	pop    %rbx
  40bc4d:	c3                   	retq   
  40bc4e:	66 90                	xchg   %ax,%ax

000000000040bc50 <_ZN4Poco11IOExceptionC1Ei>:
  40bc50:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40bc57:	00 
  40bc58:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40bc5f:	00 
  40bc60:	89 77 18             	mov    %esi,0x18(%rdi)
  40bc63:	48 c7 07 d0 eb 40 00 	movq   $0x40ebd0,(%rdi)
  40bc6a:	c3                   	retq   
  40bc6b:	90                   	nop
  40bc6c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040bc70 <_ZN4Poco11IOExceptionC1ERKSsi>:
  40bc70:	53                   	push   %rbx
  40bc71:	48 89 fb             	mov    %rdi,%rbx
  40bc74:	e8 47 cb ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40bc79:	48 c7 03 d0 eb 40 00 	movq   $0x40ebd0,(%rbx)
  40bc80:	5b                   	pop    %rbx
  40bc81:	c3                   	retq   
  40bc82:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40bc89:	1f 84 00 00 00 00 00 

000000000040bc90 <_ZN4Poco11IOExceptionC1ERKSsS2_i>:
  40bc90:	53                   	push   %rbx
  40bc91:	48 89 fb             	mov    %rdi,%rbx
  40bc94:	e8 77 cb ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40bc99:	48 c7 03 d0 eb 40 00 	movq   $0x40ebd0,(%rbx)
  40bca0:	5b                   	pop    %rbx
  40bca1:	c3                   	retq   
  40bca2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40bca9:	1f 84 00 00 00 00 00 

000000000040bcb0 <_ZN4Poco11IOExceptionC1ERKSsRKNS_9ExceptionEi>:
  40bcb0:	53                   	push   %rbx
  40bcb1:	48 89 fb             	mov    %rdi,%rbx
  40bcb4:	e8 07 cc ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40bcb9:	48 c7 03 d0 eb 40 00 	movq   $0x40ebd0,(%rbx)
  40bcc0:	5b                   	pop    %rbx
  40bcc1:	c3                   	retq   
  40bcc2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40bcc9:	1f 84 00 00 00 00 00 

000000000040bcd0 <_ZN4Poco11IOExceptionC1ERKS0_>:
  40bcd0:	53                   	push   %rbx
  40bcd1:	48 89 fb             	mov    %rdi,%rbx
  40bcd4:	e8 57 cc ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40bcd9:	48 c7 03 d0 eb 40 00 	movq   $0x40ebd0,(%rbx)
  40bce0:	5b                   	pop    %rbx
  40bce1:	c3                   	retq   
  40bce2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40bce9:	1f 84 00 00 00 00 00 

000000000040bcf0 <_ZN4Poco11IOExceptionaSERKS0_>:
  40bcf0:	53                   	push   %rbx
  40bcf1:	48 89 fb             	mov    %rdi,%rbx
  40bcf4:	e8 67 e9 ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40bcf9:	48 89 d8             	mov    %rbx,%rax
  40bcfc:	5b                   	pop    %rbx
  40bcfd:	c3                   	retq   
  40bcfe:	66 90                	xchg   %ax,%ax

000000000040bd00 <_ZN4Poco17ProtocolExceptionC1Ei>:
  40bd00:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40bd07:	00 
  40bd08:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40bd0f:	00 
  40bd10:	89 77 18             	mov    %esi,0x18(%rdi)
  40bd13:	48 c7 07 30 ec 40 00 	movq   $0x40ec30,(%rdi)
  40bd1a:	c3                   	retq   
  40bd1b:	90                   	nop
  40bd1c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040bd20 <_ZN4Poco17ProtocolExceptionC1ERKSsi>:
  40bd20:	53                   	push   %rbx
  40bd21:	48 89 fb             	mov    %rdi,%rbx
  40bd24:	e8 97 ca ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40bd29:	48 c7 03 30 ec 40 00 	movq   $0x40ec30,(%rbx)
  40bd30:	5b                   	pop    %rbx
  40bd31:	c3                   	retq   
  40bd32:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40bd39:	1f 84 00 00 00 00 00 

000000000040bd40 <_ZN4Poco17ProtocolExceptionC1ERKSsS2_i>:
  40bd40:	53                   	push   %rbx
  40bd41:	48 89 fb             	mov    %rdi,%rbx
  40bd44:	e8 c7 ca ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40bd49:	48 c7 03 30 ec 40 00 	movq   $0x40ec30,(%rbx)
  40bd50:	5b                   	pop    %rbx
  40bd51:	c3                   	retq   
  40bd52:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40bd59:	1f 84 00 00 00 00 00 

000000000040bd60 <_ZN4Poco17ProtocolExceptionC1ERKSsRKNS_9ExceptionEi>:
  40bd60:	53                   	push   %rbx
  40bd61:	48 89 fb             	mov    %rdi,%rbx
  40bd64:	e8 57 cb ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40bd69:	48 c7 03 30 ec 40 00 	movq   $0x40ec30,(%rbx)
  40bd70:	5b                   	pop    %rbx
  40bd71:	c3                   	retq   
  40bd72:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40bd79:	1f 84 00 00 00 00 00 

000000000040bd80 <_ZN4Poco17ProtocolExceptionC1ERKS0_>:
  40bd80:	53                   	push   %rbx
  40bd81:	48 89 fb             	mov    %rdi,%rbx
  40bd84:	e8 a7 cb ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40bd89:	48 c7 03 30 ec 40 00 	movq   $0x40ec30,(%rbx)
  40bd90:	5b                   	pop    %rbx
  40bd91:	c3                   	retq   
  40bd92:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40bd99:	1f 84 00 00 00 00 00 

000000000040bda0 <_ZN4Poco17ProtocolExceptionaSERKS0_>:
  40bda0:	53                   	push   %rbx
  40bda1:	48 89 fb             	mov    %rdi,%rbx
  40bda4:	e8 b7 e8 ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40bda9:	48 89 d8             	mov    %rbx,%rax
  40bdac:	5b                   	pop    %rbx
  40bdad:	c3                   	retq   
  40bdae:	66 90                	xchg   %ax,%ax

000000000040bdb0 <_ZN4Poco13FileExceptionC1Ei>:
  40bdb0:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40bdb7:	00 
  40bdb8:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40bdbf:	00 
  40bdc0:	89 77 18             	mov    %esi,0x18(%rdi)
  40bdc3:	48 c7 07 90 ec 40 00 	movq   $0x40ec90,(%rdi)
  40bdca:	c3                   	retq   
  40bdcb:	90                   	nop
  40bdcc:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040bdd0 <_ZN4Poco13FileExceptionC1ERKSsi>:
  40bdd0:	53                   	push   %rbx
  40bdd1:	48 89 fb             	mov    %rdi,%rbx
  40bdd4:	e8 e7 c9 ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40bdd9:	48 c7 03 90 ec 40 00 	movq   $0x40ec90,(%rbx)
  40bde0:	5b                   	pop    %rbx
  40bde1:	c3                   	retq   
  40bde2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40bde9:	1f 84 00 00 00 00 00 

000000000040bdf0 <_ZN4Poco13FileExceptionC1ERKSsS2_i>:
  40bdf0:	53                   	push   %rbx
  40bdf1:	48 89 fb             	mov    %rdi,%rbx
  40bdf4:	e8 17 ca ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40bdf9:	48 c7 03 90 ec 40 00 	movq   $0x40ec90,(%rbx)
  40be00:	5b                   	pop    %rbx
  40be01:	c3                   	retq   
  40be02:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40be09:	1f 84 00 00 00 00 00 

000000000040be10 <_ZN4Poco13FileExceptionC1ERKSsRKNS_9ExceptionEi>:
  40be10:	53                   	push   %rbx
  40be11:	48 89 fb             	mov    %rdi,%rbx
  40be14:	e8 a7 ca ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40be19:	48 c7 03 90 ec 40 00 	movq   $0x40ec90,(%rbx)
  40be20:	5b                   	pop    %rbx
  40be21:	c3                   	retq   
  40be22:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40be29:	1f 84 00 00 00 00 00 

000000000040be30 <_ZN4Poco13FileExceptionC1ERKS0_>:
  40be30:	53                   	push   %rbx
  40be31:	48 89 fb             	mov    %rdi,%rbx
  40be34:	e8 f7 ca ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40be39:	48 c7 03 90 ec 40 00 	movq   $0x40ec90,(%rbx)
  40be40:	5b                   	pop    %rbx
  40be41:	c3                   	retq   
  40be42:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40be49:	1f 84 00 00 00 00 00 

000000000040be50 <_ZN4Poco13FileExceptionaSERKS0_>:
  40be50:	53                   	push   %rbx
  40be51:	48 89 fb             	mov    %rdi,%rbx
  40be54:	e8 07 e8 ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40be59:	48 89 d8             	mov    %rbx,%rax
  40be5c:	5b                   	pop    %rbx
  40be5d:	c3                   	retq   
  40be5e:	66 90                	xchg   %ax,%ax

000000000040be60 <_ZN4Poco19FileExistsExceptionC1Ei>:
  40be60:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40be67:	00 
  40be68:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40be6f:	00 
  40be70:	89 77 18             	mov    %esi,0x18(%rdi)
  40be73:	48 c7 07 f0 ec 40 00 	movq   $0x40ecf0,(%rdi)
  40be7a:	c3                   	retq   
  40be7b:	90                   	nop
  40be7c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040be80 <_ZN4Poco19FileExistsExceptionC1ERKSsi>:
  40be80:	53                   	push   %rbx
  40be81:	48 89 fb             	mov    %rdi,%rbx
  40be84:	e8 37 c9 ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40be89:	48 c7 03 f0 ec 40 00 	movq   $0x40ecf0,(%rbx)
  40be90:	5b                   	pop    %rbx
  40be91:	c3                   	retq   
  40be92:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40be99:	1f 84 00 00 00 00 00 

000000000040bea0 <_ZN4Poco19FileExistsExceptionC1ERKSsS2_i>:
  40bea0:	53                   	push   %rbx
  40bea1:	48 89 fb             	mov    %rdi,%rbx
  40bea4:	e8 67 c9 ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40bea9:	48 c7 03 f0 ec 40 00 	movq   $0x40ecf0,(%rbx)
  40beb0:	5b                   	pop    %rbx
  40beb1:	c3                   	retq   
  40beb2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40beb9:	1f 84 00 00 00 00 00 

000000000040bec0 <_ZN4Poco19FileExistsExceptionC1ERKSsRKNS_9ExceptionEi>:
  40bec0:	53                   	push   %rbx
  40bec1:	48 89 fb             	mov    %rdi,%rbx
  40bec4:	e8 f7 c9 ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40bec9:	48 c7 03 f0 ec 40 00 	movq   $0x40ecf0,(%rbx)
  40bed0:	5b                   	pop    %rbx
  40bed1:	c3                   	retq   
  40bed2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40bed9:	1f 84 00 00 00 00 00 

000000000040bee0 <_ZN4Poco19FileExistsExceptionC1ERKS0_>:
  40bee0:	53                   	push   %rbx
  40bee1:	48 89 fb             	mov    %rdi,%rbx
  40bee4:	e8 47 ca ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40bee9:	48 c7 03 f0 ec 40 00 	movq   $0x40ecf0,(%rbx)
  40bef0:	5b                   	pop    %rbx
  40bef1:	c3                   	retq   
  40bef2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40bef9:	1f 84 00 00 00 00 00 

000000000040bf00 <_ZN4Poco19FileExistsExceptionaSERKS0_>:
  40bf00:	53                   	push   %rbx
  40bf01:	48 89 fb             	mov    %rdi,%rbx
  40bf04:	e8 57 e7 ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40bf09:	48 89 d8             	mov    %rbx,%rax
  40bf0c:	5b                   	pop    %rbx
  40bf0d:	c3                   	retq   
  40bf0e:	66 90                	xchg   %ax,%ax

000000000040bf10 <_ZN4Poco21FileNotFoundExceptionC1Ei>:
  40bf10:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40bf17:	00 
  40bf18:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40bf1f:	00 
  40bf20:	89 77 18             	mov    %esi,0x18(%rdi)
  40bf23:	48 c7 07 50 ed 40 00 	movq   $0x40ed50,(%rdi)
  40bf2a:	c3                   	retq   
  40bf2b:	90                   	nop
  40bf2c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040bf30 <_ZN4Poco21FileNotFoundExceptionC1ERKSsi>:
  40bf30:	53                   	push   %rbx
  40bf31:	48 89 fb             	mov    %rdi,%rbx
  40bf34:	e8 87 c8 ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40bf39:	48 c7 03 50 ed 40 00 	movq   $0x40ed50,(%rbx)
  40bf40:	5b                   	pop    %rbx
  40bf41:	c3                   	retq   
  40bf42:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40bf49:	1f 84 00 00 00 00 00 

000000000040bf50 <_ZN4Poco21FileNotFoundExceptionC1ERKSsS2_i>:
  40bf50:	53                   	push   %rbx
  40bf51:	48 89 fb             	mov    %rdi,%rbx
  40bf54:	e8 b7 c8 ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40bf59:	48 c7 03 50 ed 40 00 	movq   $0x40ed50,(%rbx)
  40bf60:	5b                   	pop    %rbx
  40bf61:	c3                   	retq   
  40bf62:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40bf69:	1f 84 00 00 00 00 00 

000000000040bf70 <_ZN4Poco21FileNotFoundExceptionC1ERKSsRKNS_9ExceptionEi>:
  40bf70:	53                   	push   %rbx
  40bf71:	48 89 fb             	mov    %rdi,%rbx
  40bf74:	e8 47 c9 ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40bf79:	48 c7 03 50 ed 40 00 	movq   $0x40ed50,(%rbx)
  40bf80:	5b                   	pop    %rbx
  40bf81:	c3                   	retq   
  40bf82:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40bf89:	1f 84 00 00 00 00 00 

000000000040bf90 <_ZN4Poco21FileNotFoundExceptionC1ERKS0_>:
  40bf90:	53                   	push   %rbx
  40bf91:	48 89 fb             	mov    %rdi,%rbx
  40bf94:	e8 97 c9 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40bf99:	48 c7 03 50 ed 40 00 	movq   $0x40ed50,(%rbx)
  40bfa0:	5b                   	pop    %rbx
  40bfa1:	c3                   	retq   
  40bfa2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40bfa9:	1f 84 00 00 00 00 00 

000000000040bfb0 <_ZN4Poco21FileNotFoundExceptionaSERKS0_>:
  40bfb0:	53                   	push   %rbx
  40bfb1:	48 89 fb             	mov    %rdi,%rbx
  40bfb4:	e8 a7 e6 ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40bfb9:	48 89 d8             	mov    %rbx,%rax
  40bfbc:	5b                   	pop    %rbx
  40bfbd:	c3                   	retq   
  40bfbe:	66 90                	xchg   %ax,%ax

000000000040bfc0 <_ZN4Poco21PathNotFoundExceptionC1Ei>:
  40bfc0:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40bfc7:	00 
  40bfc8:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40bfcf:	00 
  40bfd0:	89 77 18             	mov    %esi,0x18(%rdi)
  40bfd3:	48 c7 07 b0 ed 40 00 	movq   $0x40edb0,(%rdi)
  40bfda:	c3                   	retq   
  40bfdb:	90                   	nop
  40bfdc:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040bfe0 <_ZN4Poco21PathNotFoundExceptionC1ERKSsi>:
  40bfe0:	53                   	push   %rbx
  40bfe1:	48 89 fb             	mov    %rdi,%rbx
  40bfe4:	e8 d7 c7 ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40bfe9:	48 c7 03 b0 ed 40 00 	movq   $0x40edb0,(%rbx)
  40bff0:	5b                   	pop    %rbx
  40bff1:	c3                   	retq   
  40bff2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40bff9:	1f 84 00 00 00 00 00 

000000000040c000 <_ZN4Poco21PathNotFoundExceptionC1ERKSsS2_i>:
  40c000:	53                   	push   %rbx
  40c001:	48 89 fb             	mov    %rdi,%rbx
  40c004:	e8 07 c8 ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40c009:	48 c7 03 b0 ed 40 00 	movq   $0x40edb0,(%rbx)
  40c010:	5b                   	pop    %rbx
  40c011:	c3                   	retq   
  40c012:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c019:	1f 84 00 00 00 00 00 

000000000040c020 <_ZN4Poco21PathNotFoundExceptionC1ERKSsRKNS_9ExceptionEi>:
  40c020:	53                   	push   %rbx
  40c021:	48 89 fb             	mov    %rdi,%rbx
  40c024:	e8 97 c8 ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40c029:	48 c7 03 b0 ed 40 00 	movq   $0x40edb0,(%rbx)
  40c030:	5b                   	pop    %rbx
  40c031:	c3                   	retq   
  40c032:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c039:	1f 84 00 00 00 00 00 

000000000040c040 <_ZN4Poco21PathNotFoundExceptionC1ERKS0_>:
  40c040:	53                   	push   %rbx
  40c041:	48 89 fb             	mov    %rdi,%rbx
  40c044:	e8 e7 c8 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40c049:	48 c7 03 b0 ed 40 00 	movq   $0x40edb0,(%rbx)
  40c050:	5b                   	pop    %rbx
  40c051:	c3                   	retq   
  40c052:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c059:	1f 84 00 00 00 00 00 

000000000040c060 <_ZN4Poco21PathNotFoundExceptionaSERKS0_>:
  40c060:	53                   	push   %rbx
  40c061:	48 89 fb             	mov    %rdi,%rbx
  40c064:	e8 f7 e5 ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40c069:	48 89 d8             	mov    %rbx,%rax
  40c06c:	5b                   	pop    %rbx
  40c06d:	c3                   	retq   
  40c06e:	66 90                	xchg   %ax,%ax

000000000040c070 <_ZN4Poco21FileReadOnlyExceptionC1Ei>:
  40c070:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40c077:	00 
  40c078:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40c07f:	00 
  40c080:	89 77 18             	mov    %esi,0x18(%rdi)
  40c083:	48 c7 07 10 ee 40 00 	movq   $0x40ee10,(%rdi)
  40c08a:	c3                   	retq   
  40c08b:	90                   	nop
  40c08c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040c090 <_ZN4Poco21FileReadOnlyExceptionC1ERKSsi>:
  40c090:	53                   	push   %rbx
  40c091:	48 89 fb             	mov    %rdi,%rbx
  40c094:	e8 27 c7 ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40c099:	48 c7 03 10 ee 40 00 	movq   $0x40ee10,(%rbx)
  40c0a0:	5b                   	pop    %rbx
  40c0a1:	c3                   	retq   
  40c0a2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c0a9:	1f 84 00 00 00 00 00 

000000000040c0b0 <_ZN4Poco21FileReadOnlyExceptionC1ERKSsS2_i>:
  40c0b0:	53                   	push   %rbx
  40c0b1:	48 89 fb             	mov    %rdi,%rbx
  40c0b4:	e8 57 c7 ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40c0b9:	48 c7 03 10 ee 40 00 	movq   $0x40ee10,(%rbx)
  40c0c0:	5b                   	pop    %rbx
  40c0c1:	c3                   	retq   
  40c0c2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c0c9:	1f 84 00 00 00 00 00 

000000000040c0d0 <_ZN4Poco21FileReadOnlyExceptionC1ERKSsRKNS_9ExceptionEi>:
  40c0d0:	53                   	push   %rbx
  40c0d1:	48 89 fb             	mov    %rdi,%rbx
  40c0d4:	e8 e7 c7 ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40c0d9:	48 c7 03 10 ee 40 00 	movq   $0x40ee10,(%rbx)
  40c0e0:	5b                   	pop    %rbx
  40c0e1:	c3                   	retq   
  40c0e2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c0e9:	1f 84 00 00 00 00 00 

000000000040c0f0 <_ZN4Poco21FileReadOnlyExceptionC1ERKS0_>:
  40c0f0:	53                   	push   %rbx
  40c0f1:	48 89 fb             	mov    %rdi,%rbx
  40c0f4:	e8 37 c8 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40c0f9:	48 c7 03 10 ee 40 00 	movq   $0x40ee10,(%rbx)
  40c100:	5b                   	pop    %rbx
  40c101:	c3                   	retq   
  40c102:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c109:	1f 84 00 00 00 00 00 

000000000040c110 <_ZN4Poco21FileReadOnlyExceptionaSERKS0_>:
  40c110:	53                   	push   %rbx
  40c111:	48 89 fb             	mov    %rdi,%rbx
  40c114:	e8 47 e5 ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40c119:	48 89 d8             	mov    %rbx,%rax
  40c11c:	5b                   	pop    %rbx
  40c11d:	c3                   	retq   
  40c11e:	66 90                	xchg   %ax,%ax

000000000040c120 <_ZN4Poco25FileAccessDeniedExceptionC1Ei>:
  40c120:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40c127:	00 
  40c128:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40c12f:	00 
  40c130:	89 77 18             	mov    %esi,0x18(%rdi)
  40c133:	48 c7 07 70 ee 40 00 	movq   $0x40ee70,(%rdi)
  40c13a:	c3                   	retq   
  40c13b:	90                   	nop
  40c13c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040c140 <_ZN4Poco25FileAccessDeniedExceptionC1ERKSsi>:
  40c140:	53                   	push   %rbx
  40c141:	48 89 fb             	mov    %rdi,%rbx
  40c144:	e8 77 c6 ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40c149:	48 c7 03 70 ee 40 00 	movq   $0x40ee70,(%rbx)
  40c150:	5b                   	pop    %rbx
  40c151:	c3                   	retq   
  40c152:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c159:	1f 84 00 00 00 00 00 

000000000040c160 <_ZN4Poco25FileAccessDeniedExceptionC1ERKSsS2_i>:
  40c160:	53                   	push   %rbx
  40c161:	48 89 fb             	mov    %rdi,%rbx
  40c164:	e8 a7 c6 ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40c169:	48 c7 03 70 ee 40 00 	movq   $0x40ee70,(%rbx)
  40c170:	5b                   	pop    %rbx
  40c171:	c3                   	retq   
  40c172:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c179:	1f 84 00 00 00 00 00 

000000000040c180 <_ZN4Poco25FileAccessDeniedExceptionC1ERKSsRKNS_9ExceptionEi>:
  40c180:	53                   	push   %rbx
  40c181:	48 89 fb             	mov    %rdi,%rbx
  40c184:	e8 37 c7 ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40c189:	48 c7 03 70 ee 40 00 	movq   $0x40ee70,(%rbx)
  40c190:	5b                   	pop    %rbx
  40c191:	c3                   	retq   
  40c192:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c199:	1f 84 00 00 00 00 00 

000000000040c1a0 <_ZN4Poco25FileAccessDeniedExceptionC1ERKS0_>:
  40c1a0:	53                   	push   %rbx
  40c1a1:	48 89 fb             	mov    %rdi,%rbx
  40c1a4:	e8 87 c7 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40c1a9:	48 c7 03 70 ee 40 00 	movq   $0x40ee70,(%rbx)
  40c1b0:	5b                   	pop    %rbx
  40c1b1:	c3                   	retq   
  40c1b2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c1b9:	1f 84 00 00 00 00 00 

000000000040c1c0 <_ZN4Poco25FileAccessDeniedExceptionaSERKS0_>:
  40c1c0:	53                   	push   %rbx
  40c1c1:	48 89 fb             	mov    %rdi,%rbx
  40c1c4:	e8 97 e4 ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40c1c9:	48 89 d8             	mov    %rbx,%rax
  40c1cc:	5b                   	pop    %rbx
  40c1cd:	c3                   	retq   
  40c1ce:	66 90                	xchg   %ax,%ax

000000000040c1d0 <_ZN4Poco19CreateFileExceptionC1Ei>:
  40c1d0:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40c1d7:	00 
  40c1d8:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40c1df:	00 
  40c1e0:	89 77 18             	mov    %esi,0x18(%rdi)
  40c1e3:	48 c7 07 d0 ee 40 00 	movq   $0x40eed0,(%rdi)
  40c1ea:	c3                   	retq   
  40c1eb:	90                   	nop
  40c1ec:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040c1f0 <_ZN4Poco19CreateFileExceptionC1ERKSsi>:
  40c1f0:	53                   	push   %rbx
  40c1f1:	48 89 fb             	mov    %rdi,%rbx
  40c1f4:	e8 c7 c5 ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40c1f9:	48 c7 03 d0 ee 40 00 	movq   $0x40eed0,(%rbx)
  40c200:	5b                   	pop    %rbx
  40c201:	c3                   	retq   
  40c202:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c209:	1f 84 00 00 00 00 00 

000000000040c210 <_ZN4Poco19CreateFileExceptionC1ERKSsS2_i>:
  40c210:	53                   	push   %rbx
  40c211:	48 89 fb             	mov    %rdi,%rbx
  40c214:	e8 f7 c5 ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40c219:	48 c7 03 d0 ee 40 00 	movq   $0x40eed0,(%rbx)
  40c220:	5b                   	pop    %rbx
  40c221:	c3                   	retq   
  40c222:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c229:	1f 84 00 00 00 00 00 

000000000040c230 <_ZN4Poco19CreateFileExceptionC1ERKSsRKNS_9ExceptionEi>:
  40c230:	53                   	push   %rbx
  40c231:	48 89 fb             	mov    %rdi,%rbx
  40c234:	e8 87 c6 ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40c239:	48 c7 03 d0 ee 40 00 	movq   $0x40eed0,(%rbx)
  40c240:	5b                   	pop    %rbx
  40c241:	c3                   	retq   
  40c242:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c249:	1f 84 00 00 00 00 00 

000000000040c250 <_ZN4Poco19CreateFileExceptionC1ERKS0_>:
  40c250:	53                   	push   %rbx
  40c251:	48 89 fb             	mov    %rdi,%rbx
  40c254:	e8 d7 c6 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40c259:	48 c7 03 d0 ee 40 00 	movq   $0x40eed0,(%rbx)
  40c260:	5b                   	pop    %rbx
  40c261:	c3                   	retq   
  40c262:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c269:	1f 84 00 00 00 00 00 

000000000040c270 <_ZN4Poco19CreateFileExceptionaSERKS0_>:
  40c270:	53                   	push   %rbx
  40c271:	48 89 fb             	mov    %rdi,%rbx
  40c274:	e8 e7 e3 ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40c279:	48 89 d8             	mov    %rbx,%rax
  40c27c:	5b                   	pop    %rbx
  40c27d:	c3                   	retq   
  40c27e:	66 90                	xchg   %ax,%ax

000000000040c280 <_ZN4Poco17OpenFileExceptionC1Ei>:
  40c280:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40c287:	00 
  40c288:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40c28f:	00 
  40c290:	89 77 18             	mov    %esi,0x18(%rdi)
  40c293:	48 c7 07 30 ef 40 00 	movq   $0x40ef30,(%rdi)
  40c29a:	c3                   	retq   
  40c29b:	90                   	nop
  40c29c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040c2a0 <_ZN4Poco17OpenFileExceptionC1ERKSsi>:
  40c2a0:	53                   	push   %rbx
  40c2a1:	48 89 fb             	mov    %rdi,%rbx
  40c2a4:	e8 17 c5 ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40c2a9:	48 c7 03 30 ef 40 00 	movq   $0x40ef30,(%rbx)
  40c2b0:	5b                   	pop    %rbx
  40c2b1:	c3                   	retq   
  40c2b2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c2b9:	1f 84 00 00 00 00 00 

000000000040c2c0 <_ZN4Poco17OpenFileExceptionC1ERKSsS2_i>:
  40c2c0:	53                   	push   %rbx
  40c2c1:	48 89 fb             	mov    %rdi,%rbx
  40c2c4:	e8 47 c5 ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40c2c9:	48 c7 03 30 ef 40 00 	movq   $0x40ef30,(%rbx)
  40c2d0:	5b                   	pop    %rbx
  40c2d1:	c3                   	retq   
  40c2d2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c2d9:	1f 84 00 00 00 00 00 

000000000040c2e0 <_ZN4Poco17OpenFileExceptionC1ERKSsRKNS_9ExceptionEi>:
  40c2e0:	53                   	push   %rbx
  40c2e1:	48 89 fb             	mov    %rdi,%rbx
  40c2e4:	e8 d7 c5 ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40c2e9:	48 c7 03 30 ef 40 00 	movq   $0x40ef30,(%rbx)
  40c2f0:	5b                   	pop    %rbx
  40c2f1:	c3                   	retq   
  40c2f2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c2f9:	1f 84 00 00 00 00 00 

000000000040c300 <_ZN4Poco17OpenFileExceptionC1ERKS0_>:
  40c300:	53                   	push   %rbx
  40c301:	48 89 fb             	mov    %rdi,%rbx
  40c304:	e8 27 c6 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40c309:	48 c7 03 30 ef 40 00 	movq   $0x40ef30,(%rbx)
  40c310:	5b                   	pop    %rbx
  40c311:	c3                   	retq   
  40c312:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c319:	1f 84 00 00 00 00 00 

000000000040c320 <_ZN4Poco17OpenFileExceptionaSERKS0_>:
  40c320:	53                   	push   %rbx
  40c321:	48 89 fb             	mov    %rdi,%rbx
  40c324:	e8 37 e3 ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40c329:	48 89 d8             	mov    %rbx,%rax
  40c32c:	5b                   	pop    %rbx
  40c32d:	c3                   	retq   
  40c32e:	66 90                	xchg   %ax,%ax

000000000040c330 <_ZN4Poco18WriteFileExceptionC1Ei>:
  40c330:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40c337:	00 
  40c338:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40c33f:	00 
  40c340:	89 77 18             	mov    %esi,0x18(%rdi)
  40c343:	48 c7 07 90 ef 40 00 	movq   $0x40ef90,(%rdi)
  40c34a:	c3                   	retq   
  40c34b:	90                   	nop
  40c34c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040c350 <_ZN4Poco18WriteFileExceptionC1ERKSsi>:
  40c350:	53                   	push   %rbx
  40c351:	48 89 fb             	mov    %rdi,%rbx
  40c354:	e8 67 c4 ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40c359:	48 c7 03 90 ef 40 00 	movq   $0x40ef90,(%rbx)
  40c360:	5b                   	pop    %rbx
  40c361:	c3                   	retq   
  40c362:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c369:	1f 84 00 00 00 00 00 

000000000040c370 <_ZN4Poco18WriteFileExceptionC1ERKSsS2_i>:
  40c370:	53                   	push   %rbx
  40c371:	48 89 fb             	mov    %rdi,%rbx
  40c374:	e8 97 c4 ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40c379:	48 c7 03 90 ef 40 00 	movq   $0x40ef90,(%rbx)
  40c380:	5b                   	pop    %rbx
  40c381:	c3                   	retq   
  40c382:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c389:	1f 84 00 00 00 00 00 

000000000040c390 <_ZN4Poco18WriteFileExceptionC1ERKSsRKNS_9ExceptionEi>:
  40c390:	53                   	push   %rbx
  40c391:	48 89 fb             	mov    %rdi,%rbx
  40c394:	e8 27 c5 ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40c399:	48 c7 03 90 ef 40 00 	movq   $0x40ef90,(%rbx)
  40c3a0:	5b                   	pop    %rbx
  40c3a1:	c3                   	retq   
  40c3a2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c3a9:	1f 84 00 00 00 00 00 

000000000040c3b0 <_ZN4Poco18WriteFileExceptionC1ERKS0_>:
  40c3b0:	53                   	push   %rbx
  40c3b1:	48 89 fb             	mov    %rdi,%rbx
  40c3b4:	e8 77 c5 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40c3b9:	48 c7 03 90 ef 40 00 	movq   $0x40ef90,(%rbx)
  40c3c0:	5b                   	pop    %rbx
  40c3c1:	c3                   	retq   
  40c3c2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c3c9:	1f 84 00 00 00 00 00 

000000000040c3d0 <_ZN4Poco18WriteFileExceptionaSERKS0_>:
  40c3d0:	53                   	push   %rbx
  40c3d1:	48 89 fb             	mov    %rdi,%rbx
  40c3d4:	e8 87 e2 ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40c3d9:	48 89 d8             	mov    %rbx,%rax
  40c3dc:	5b                   	pop    %rbx
  40c3dd:	c3                   	retq   
  40c3de:	66 90                	xchg   %ax,%ax

000000000040c3e0 <_ZN4Poco17ReadFileExceptionC1Ei>:
  40c3e0:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40c3e7:	00 
  40c3e8:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40c3ef:	00 
  40c3f0:	89 77 18             	mov    %esi,0x18(%rdi)
  40c3f3:	48 c7 07 f0 ef 40 00 	movq   $0x40eff0,(%rdi)
  40c3fa:	c3                   	retq   
  40c3fb:	90                   	nop
  40c3fc:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040c400 <_ZN4Poco17ReadFileExceptionC1ERKSsi>:
  40c400:	53                   	push   %rbx
  40c401:	48 89 fb             	mov    %rdi,%rbx
  40c404:	e8 b7 c3 ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40c409:	48 c7 03 f0 ef 40 00 	movq   $0x40eff0,(%rbx)
  40c410:	5b                   	pop    %rbx
  40c411:	c3                   	retq   
  40c412:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c419:	1f 84 00 00 00 00 00 

000000000040c420 <_ZN4Poco17ReadFileExceptionC1ERKSsS2_i>:
  40c420:	53                   	push   %rbx
  40c421:	48 89 fb             	mov    %rdi,%rbx
  40c424:	e8 e7 c3 ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40c429:	48 c7 03 f0 ef 40 00 	movq   $0x40eff0,(%rbx)
  40c430:	5b                   	pop    %rbx
  40c431:	c3                   	retq   
  40c432:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c439:	1f 84 00 00 00 00 00 

000000000040c440 <_ZN4Poco17ReadFileExceptionC1ERKSsRKNS_9ExceptionEi>:
  40c440:	53                   	push   %rbx
  40c441:	48 89 fb             	mov    %rdi,%rbx
  40c444:	e8 77 c4 ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40c449:	48 c7 03 f0 ef 40 00 	movq   $0x40eff0,(%rbx)
  40c450:	5b                   	pop    %rbx
  40c451:	c3                   	retq   
  40c452:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c459:	1f 84 00 00 00 00 00 

000000000040c460 <_ZN4Poco17ReadFileExceptionC1ERKS0_>:
  40c460:	53                   	push   %rbx
  40c461:	48 89 fb             	mov    %rdi,%rbx
  40c464:	e8 c7 c4 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40c469:	48 c7 03 f0 ef 40 00 	movq   $0x40eff0,(%rbx)
  40c470:	5b                   	pop    %rbx
  40c471:	c3                   	retq   
  40c472:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c479:	1f 84 00 00 00 00 00 

000000000040c480 <_ZN4Poco17ReadFileExceptionaSERKS0_>:
  40c480:	53                   	push   %rbx
  40c481:	48 89 fb             	mov    %rdi,%rbx
  40c484:	e8 d7 e1 ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40c489:	48 89 d8             	mov    %rbx,%rax
  40c48c:	5b                   	pop    %rbx
  40c48d:	c3                   	retq   
  40c48e:	66 90                	xchg   %ax,%ax

000000000040c490 <_ZN4Poco25UnknownURISchemeExceptionC1Ei>:
  40c490:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40c497:	00 
  40c498:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40c49f:	00 
  40c4a0:	89 77 18             	mov    %esi,0x18(%rdi)
  40c4a3:	48 c7 07 50 f0 40 00 	movq   $0x40f050,(%rdi)
  40c4aa:	c3                   	retq   
  40c4ab:	90                   	nop
  40c4ac:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040c4b0 <_ZN4Poco25UnknownURISchemeExceptionC1ERKSsi>:
  40c4b0:	53                   	push   %rbx
  40c4b1:	48 89 fb             	mov    %rdi,%rbx
  40c4b4:	e8 07 c3 ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40c4b9:	48 c7 03 50 f0 40 00 	movq   $0x40f050,(%rbx)
  40c4c0:	5b                   	pop    %rbx
  40c4c1:	c3                   	retq   
  40c4c2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c4c9:	1f 84 00 00 00 00 00 

000000000040c4d0 <_ZN4Poco25UnknownURISchemeExceptionC1ERKSsS2_i>:
  40c4d0:	53                   	push   %rbx
  40c4d1:	48 89 fb             	mov    %rdi,%rbx
  40c4d4:	e8 37 c3 ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40c4d9:	48 c7 03 50 f0 40 00 	movq   $0x40f050,(%rbx)
  40c4e0:	5b                   	pop    %rbx
  40c4e1:	c3                   	retq   
  40c4e2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c4e9:	1f 84 00 00 00 00 00 

000000000040c4f0 <_ZN4Poco25UnknownURISchemeExceptionC1ERKSsRKNS_9ExceptionEi>:
  40c4f0:	53                   	push   %rbx
  40c4f1:	48 89 fb             	mov    %rdi,%rbx
  40c4f4:	e8 c7 c3 ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40c4f9:	48 c7 03 50 f0 40 00 	movq   $0x40f050,(%rbx)
  40c500:	5b                   	pop    %rbx
  40c501:	c3                   	retq   
  40c502:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c509:	1f 84 00 00 00 00 00 

000000000040c510 <_ZN4Poco25UnknownURISchemeExceptionC1ERKS0_>:
  40c510:	53                   	push   %rbx
  40c511:	48 89 fb             	mov    %rdi,%rbx
  40c514:	e8 17 c4 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40c519:	48 c7 03 50 f0 40 00 	movq   $0x40f050,(%rbx)
  40c520:	5b                   	pop    %rbx
  40c521:	c3                   	retq   
  40c522:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c529:	1f 84 00 00 00 00 00 

000000000040c530 <_ZN4Poco25UnknownURISchemeExceptionaSERKS0_>:
  40c530:	53                   	push   %rbx
  40c531:	48 89 fb             	mov    %rdi,%rbx
  40c534:	e8 27 e1 ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40c539:	48 89 d8             	mov    %rbx,%rax
  40c53c:	5b                   	pop    %rbx
  40c53d:	c3                   	retq   
  40c53e:	66 90                	xchg   %ax,%ax

000000000040c540 <_ZN4Poco20ApplicationExceptionC1Ei>:
  40c540:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40c547:	00 
  40c548:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40c54f:	00 
  40c550:	89 77 18             	mov    %esi,0x18(%rdi)
  40c553:	48 c7 07 b0 f0 40 00 	movq   $0x40f0b0,(%rdi)
  40c55a:	c3                   	retq   
  40c55b:	90                   	nop
  40c55c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040c560 <_ZN4Poco20ApplicationExceptionC1ERKSsi>:
  40c560:	53                   	push   %rbx
  40c561:	48 89 fb             	mov    %rdi,%rbx
  40c564:	e8 57 c2 ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40c569:	48 c7 03 b0 f0 40 00 	movq   $0x40f0b0,(%rbx)
  40c570:	5b                   	pop    %rbx
  40c571:	c3                   	retq   
  40c572:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c579:	1f 84 00 00 00 00 00 

000000000040c580 <_ZN4Poco20ApplicationExceptionC1ERKSsS2_i>:
  40c580:	53                   	push   %rbx
  40c581:	48 89 fb             	mov    %rdi,%rbx
  40c584:	e8 87 c2 ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40c589:	48 c7 03 b0 f0 40 00 	movq   $0x40f0b0,(%rbx)
  40c590:	5b                   	pop    %rbx
  40c591:	c3                   	retq   
  40c592:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c599:	1f 84 00 00 00 00 00 

000000000040c5a0 <_ZN4Poco20ApplicationExceptionC1ERKSsRKNS_9ExceptionEi>:
  40c5a0:	53                   	push   %rbx
  40c5a1:	48 89 fb             	mov    %rdi,%rbx
  40c5a4:	e8 17 c3 ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40c5a9:	48 c7 03 b0 f0 40 00 	movq   $0x40f0b0,(%rbx)
  40c5b0:	5b                   	pop    %rbx
  40c5b1:	c3                   	retq   
  40c5b2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c5b9:	1f 84 00 00 00 00 00 

000000000040c5c0 <_ZN4Poco20ApplicationExceptionC1ERKS0_>:
  40c5c0:	53                   	push   %rbx
  40c5c1:	48 89 fb             	mov    %rdi,%rbx
  40c5c4:	e8 67 c3 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40c5c9:	48 c7 03 b0 f0 40 00 	movq   $0x40f0b0,(%rbx)
  40c5d0:	5b                   	pop    %rbx
  40c5d1:	c3                   	retq   
  40c5d2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c5d9:	1f 84 00 00 00 00 00 

000000000040c5e0 <_ZN4Poco20ApplicationExceptionaSERKS0_>:
  40c5e0:	53                   	push   %rbx
  40c5e1:	48 89 fb             	mov    %rdi,%rbx
  40c5e4:	e8 77 e0 ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40c5e9:	48 89 d8             	mov    %rbx,%rax
  40c5ec:	5b                   	pop    %rbx
  40c5ed:	c3                   	retq   
  40c5ee:	66 90                	xchg   %ax,%ax

000000000040c5f0 <_ZN4Poco16BadCastExceptionC1Ei>:
  40c5f0:	48 c7 47 08 58 85 61 	movq   $0x618558,0x8(%rdi)
  40c5f7:	00 
  40c5f8:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
  40c5ff:	00 
  40c600:	89 77 18             	mov    %esi,0x18(%rdi)
  40c603:	48 c7 07 10 f1 40 00 	movq   $0x40f110,(%rdi)
  40c60a:	c3                   	retq   
  40c60b:	90                   	nop
  40c60c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040c610 <_ZN4Poco16BadCastExceptionC1ERKSsi>:
  40c610:	53                   	push   %rbx
  40c611:	48 89 fb             	mov    %rdi,%rbx
  40c614:	e8 a7 c1 ff ff       	callq  4087c0 <_ZN4Poco9ExceptionC1ERKSsi>
  40c619:	48 c7 03 10 f1 40 00 	movq   $0x40f110,(%rbx)
  40c620:	5b                   	pop    %rbx
  40c621:	c3                   	retq   
  40c622:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c629:	1f 84 00 00 00 00 00 

000000000040c630 <_ZN4Poco16BadCastExceptionC1ERKSsS2_i>:
  40c630:	53                   	push   %rbx
  40c631:	48 89 fb             	mov    %rdi,%rbx
  40c634:	e8 d7 c1 ff ff       	callq  408810 <_ZN4Poco9ExceptionC1ERKSsS2_i>
  40c639:	48 c7 03 10 f1 40 00 	movq   $0x40f110,(%rbx)
  40c640:	5b                   	pop    %rbx
  40c641:	c3                   	retq   
  40c642:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c649:	1f 84 00 00 00 00 00 

000000000040c650 <_ZN4Poco16BadCastExceptionC1ERKSsRKNS_9ExceptionEi>:
  40c650:	53                   	push   %rbx
  40c651:	48 89 fb             	mov    %rdi,%rbx
  40c654:	e8 67 c2 ff ff       	callq  4088c0 <_ZN4Poco9ExceptionC1ERKSsRKS0_i>
  40c659:	48 c7 03 10 f1 40 00 	movq   $0x40f110,(%rbx)
  40c660:	5b                   	pop    %rbx
  40c661:	c3                   	retq   
  40c662:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c669:	1f 84 00 00 00 00 00 

000000000040c670 <_ZN4Poco16BadCastExceptionC1ERKS0_>:
  40c670:	53                   	push   %rbx
  40c671:	48 89 fb             	mov    %rdi,%rbx
  40c674:	e8 b7 c2 ff ff       	callq  408930 <_ZN4Poco9ExceptionC1ERKS0_>
  40c679:	48 c7 03 10 f1 40 00 	movq   $0x40f110,(%rbx)
  40c680:	5b                   	pop    %rbx
  40c681:	c3                   	retq   
  40c682:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c689:	1f 84 00 00 00 00 00 

000000000040c690 <_ZN4Poco16BadCastExceptionaSERKS0_>:
  40c690:	53                   	push   %rbx
  40c691:	48 89 fb             	mov    %rdi,%rbx
  40c694:	e8 c7 df ff ff       	callq  40a660 <_ZN4Poco9ExceptionaSERKS0_>
  40c699:	48 89 d8             	mov    %rbx,%rax
  40c69c:	5b                   	pop    %rbx
  40c69d:	c3                   	retq   
  40c69e:	66 90                	xchg   %ax,%ax

000000000040c6a0 <_ZN4Poco9MutexImplC1Ev>:
  40c6a0:	55                   	push   %rbp
  40c6a1:	53                   	push   %rbx
  40c6a2:	48 89 fb             	mov    %rdi,%rbx
  40c6a5:	48 83 ec 38          	sub    $0x38,%rsp
  40c6a9:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  40c6ae:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40c6b5:	00 00 
  40c6b7:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  40c6bc:	31 c0                	xor    %eax,%eax
  40c6be:	e8 ad 5e ff ff       	callq  402570 <pthread_mutexattr_init@plt>
  40c6c3:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  40c6c8:	be 01 00 00 00       	mov    $0x1,%esi
  40c6cd:	e8 ee 5c ff ff       	callq  4023c0 <pthread_mutexattr_settype@plt>
  40c6d2:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  40c6d7:	48 89 df             	mov    %rbx,%rdi
  40c6da:	e8 91 5b ff ff       	callq  402270 <pthread_mutex_init@plt>
  40c6df:	85 c0                	test   %eax,%eax
  40c6e1:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  40c6e6:	75 1c                	jne    40c704 <_ZN4Poco9MutexImplC1Ev+0x64>
  40c6e8:	e8 f3 5a ff ff       	callq  4021e0 <pthread_mutexattr_destroy@plt>
  40c6ed:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  40c6f2:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  40c6f9:	00 00 
  40c6fb:	75 61                	jne    40c75e <_ZN4Poco9MutexImplC1Ev+0xbe>
  40c6fd:	48 83 c4 38          	add    $0x38,%rsp
  40c701:	5b                   	pop    %rbx
  40c702:	5d                   	pop    %rbp
  40c703:	c3                   	retq   
  40c704:	e8 d7 5a ff ff       	callq  4021e0 <pthread_mutexattr_destroy@plt>
  40c709:	bf 20 00 00 00       	mov    $0x20,%edi
  40c70e:	e8 ed 5c ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  40c713:	48 8d 54 24 0e       	lea    0xe(%rsp),%rdx
  40c718:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  40c71d:	be 48 f1 40 00       	mov    $0x40f148,%esi
  40c722:	48 89 c3             	mov    %rax,%rbx
  40c725:	e8 f6 5b ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  40c72a:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40c72f:	31 d2                	xor    %edx,%edx
  40c731:	48 89 df             	mov    %rbx,%rdi
  40c734:	e8 97 eb ff ff       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  40c739:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  40c73e:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  40c743:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  40c747:	e8 84 5a ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  40c74c:	ba 30 82 40 00       	mov    $0x408230,%edx
  40c751:	be 20 d8 40 00       	mov    $0x40d820,%esi
  40c756:	48 89 df             	mov    %rbx,%rdi
  40c759:	e8 42 5d ff ff       	callq  4024a0 <__cxa_throw@plt>
  40c75e:	e8 6d 5c ff ff       	callq  4023d0 <__stack_chk_fail@plt>
  40c763:	48 89 c5             	mov    %rax,%rbp
  40c766:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  40c76b:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  40c770:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  40c774:	e8 57 5a ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  40c779:	48 89 df             	mov    %rbx,%rdi
  40c77c:	e8 9f 5c ff ff       	callq  402420 <__cxa_free_exception@plt>
  40c781:	48 89 ef             	mov    %rbp,%rdi
  40c784:	e8 37 5e ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40c789:	48 89 c5             	mov    %rax,%rbp
  40c78c:	eb eb                	jmp    40c779 <_ZN4Poco9MutexImplC1Ev+0xd9>
  40c78e:	66 90                	xchg   %ax,%ax

000000000040c790 <_ZN4Poco9MutexImplC1Eb>:
  40c790:	55                   	push   %rbp
  40c791:	89 f5                	mov    %esi,%ebp
  40c793:	83 f5 01             	xor    $0x1,%ebp
  40c796:	53                   	push   %rbx
  40c797:	48 89 fb             	mov    %rdi,%rbx
  40c79a:	48 83 ec 38          	sub    $0x38,%rsp
  40c79e:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  40c7a3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40c7aa:	00 00 
  40c7ac:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  40c7b1:	31 c0                	xor    %eax,%eax
  40c7b3:	e8 b8 5d ff ff       	callq  402570 <pthread_mutexattr_init@plt>
  40c7b8:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  40c7bd:	40 0f b6 f5          	movzbl %bpl,%esi
  40c7c1:	e8 fa 5b ff ff       	callq  4023c0 <pthread_mutexattr_settype@plt>
  40c7c6:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  40c7cb:	48 89 df             	mov    %rbx,%rdi
  40c7ce:	e8 9d 5a ff ff       	callq  402270 <pthread_mutex_init@plt>
  40c7d3:	85 c0                	test   %eax,%eax
  40c7d5:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  40c7da:	75 1c                	jne    40c7f8 <_ZN4Poco9MutexImplC1Eb+0x68>
  40c7dc:	e8 ff 59 ff ff       	callq  4021e0 <pthread_mutexattr_destroy@plt>
  40c7e1:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  40c7e6:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  40c7ed:	00 00 
  40c7ef:	75 61                	jne    40c852 <_ZN4Poco9MutexImplC1Eb+0xc2>
  40c7f1:	48 83 c4 38          	add    $0x38,%rsp
  40c7f5:	5b                   	pop    %rbx
  40c7f6:	5d                   	pop    %rbp
  40c7f7:	c3                   	retq   
  40c7f8:	e8 e3 59 ff ff       	callq  4021e0 <pthread_mutexattr_destroy@plt>
  40c7fd:	bf 20 00 00 00       	mov    $0x20,%edi
  40c802:	e8 f9 5b ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  40c807:	48 8d 54 24 0e       	lea    0xe(%rsp),%rdx
  40c80c:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  40c811:	be 48 f1 40 00       	mov    $0x40f148,%esi
  40c816:	48 89 c3             	mov    %rax,%rbx
  40c819:	e8 02 5b ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  40c81e:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40c823:	31 d2                	xor    %edx,%edx
  40c825:	48 89 df             	mov    %rbx,%rdi
  40c828:	e8 a3 ea ff ff       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  40c82d:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  40c832:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  40c837:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  40c83b:	e8 90 59 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  40c840:	ba 30 82 40 00       	mov    $0x408230,%edx
  40c845:	be 20 d8 40 00       	mov    $0x40d820,%esi
  40c84a:	48 89 df             	mov    %rbx,%rdi
  40c84d:	e8 4e 5c ff ff       	callq  4024a0 <__cxa_throw@plt>
  40c852:	e8 79 5b ff ff       	callq  4023d0 <__stack_chk_fail@plt>
  40c857:	48 89 c5             	mov    %rax,%rbp
  40c85a:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  40c85f:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  40c864:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  40c868:	e8 63 59 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  40c86d:	48 89 df             	mov    %rbx,%rdi
  40c870:	e8 ab 5b ff ff       	callq  402420 <__cxa_free_exception@plt>
  40c875:	48 89 ef             	mov    %rbp,%rdi
  40c878:	e8 43 5d ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40c87d:	48 89 c5             	mov    %rax,%rbp
  40c880:	eb eb                	jmp    40c86d <_ZN4Poco9MutexImplC1Eb+0xdd>
  40c882:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40c889:	1f 84 00 00 00 00 00 

000000000040c890 <_ZN4Poco9MutexImplD1Ev>:
  40c890:	e9 0b 5d ff ff       	jmpq   4025a0 <pthread_mutex_destroy@plt>
  40c895:	90                   	nop
  40c896:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40c89d:	00 00 00 

000000000040c8a0 <_ZN4Poco9MutexImpl11tryLockImplEl>:
  40c8a0:	55                   	push   %rbp
  40c8a1:	48 89 fd             	mov    %rdi,%rbp
  40c8a4:	53                   	push   %rbx
  40c8a5:	48 89 f3             	mov    %rsi,%rbx
  40c8a8:	31 f6                	xor    %esi,%esi
  40c8aa:	48 83 ec 48          	sub    $0x48,%rsp
  40c8ae:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  40c8b3:	e8 38 59 ff ff       	callq  4021f0 <gettimeofday@plt>
  40c8b8:	48 89 d8             	mov    %rbx,%rax
  40c8bb:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
  40c8c2:	9b c4 20 
  40c8c5:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
  40c8ca:	48 f7 ea             	imul   %rdx
  40c8cd:	48 89 d8             	mov    %rbx,%rax
  40c8d0:	48 c1 f8 3f          	sar    $0x3f,%rax
  40c8d4:	48 69 c9 e8 03 00 00 	imul   $0x3e8,%rcx,%rcx
  40c8db:	48 c1 fa 07          	sar    $0x7,%rdx
  40c8df:	48 29 c2             	sub    %rax,%rdx
  40c8e2:	48 89 d0             	mov    %rdx,%rax
  40c8e5:	48 03 44 24 30       	add    0x30(%rsp),%rax
  40c8ea:	48 69 d2 e8 03 00 00 	imul   $0x3e8,%rdx,%rdx
  40c8f1:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  40c8f6:	48 29 d3             	sub    %rdx,%rbx
  40c8f9:	48 69 db 40 42 0f 00 	imul   $0xf4240,%rbx,%rbx
  40c900:	48 01 cb             	add    %rcx,%rbx
  40c903:	48 81 fb ff c9 9a 3b 	cmp    $0x3b9ac9ff,%rbx
  40c90a:	7f 24                	jg     40c930 <_ZN4Poco9MutexImpl11tryLockImplEl+0x90>
  40c90c:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
  40c911:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  40c916:	48 89 ef             	mov    %rbp,%rdi
  40c919:	e8 52 58 ff ff       	callq  402170 <pthread_mutex_timedlock@plt>
  40c91e:	85 c0                	test   %eax,%eax
  40c920:	74 2e                	je     40c950 <_ZN4Poco9MutexImpl11tryLockImplEl+0xb0>
  40c922:	83 f8 6e             	cmp    $0x6e,%eax
  40c925:	75 35                	jne    40c95c <_ZN4Poco9MutexImpl11tryLockImplEl+0xbc>
  40c927:	48 83 c4 48          	add    $0x48,%rsp
  40c92b:	31 c0                	xor    %eax,%eax
  40c92d:	5b                   	pop    %rbx
  40c92e:	5d                   	pop    %rbp
  40c92f:	c3                   	retq   
  40c930:	48 81 eb 00 ca 9a 3b 	sub    $0x3b9aca00,%rbx
  40c937:	48 83 c0 01          	add    $0x1,%rax
  40c93b:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
  40c940:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  40c945:	eb ca                	jmp    40c911 <_ZN4Poco9MutexImpl11tryLockImplEl+0x71>
  40c947:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40c94e:	00 00 
  40c950:	48 83 c4 48          	add    $0x48,%rsp
  40c954:	b8 01 00 00 00       	mov    $0x1,%eax
  40c959:	5b                   	pop    %rbx
  40c95a:	5d                   	pop    %rbp
  40c95b:	c3                   	retq   
  40c95c:	bf 20 00 00 00       	mov    $0x20,%edi
  40c961:	e8 9a 5a ff ff       	callq  402400 <__cxa_allocate_exception@plt>
  40c966:	48 8d 54 24 0e       	lea    0xe(%rsp),%rdx
  40c96b:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  40c970:	be 60 cc 40 00       	mov    $0x40cc60,%esi
  40c975:	48 89 c3             	mov    %rax,%rbx
  40c978:	e8 a3 59 ff ff       	callq  402320 <_ZNSsC1EPKcRKSaIcE@plt>
  40c97d:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40c982:	31 d2                	xor    %edx,%edx
  40c984:	48 89 df             	mov    %rbx,%rdi
  40c987:	e8 44 e9 ff ff       	callq  40b2d0 <_ZN4Poco15SystemExceptionC1ERKSsi>
  40c98c:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  40c991:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  40c996:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  40c99a:	e8 31 58 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  40c99f:	ba 30 82 40 00       	mov    $0x408230,%edx
  40c9a4:	be 20 d8 40 00       	mov    $0x40d820,%esi
  40c9a9:	48 89 df             	mov    %rbx,%rdi
  40c9ac:	e8 ef 5a ff ff       	callq  4024a0 <__cxa_throw@plt>
  40c9b1:	48 89 c5             	mov    %rax,%rbp
  40c9b4:	48 89 df             	mov    %rbx,%rdi
  40c9b7:	e8 64 5a ff ff       	callq  402420 <__cxa_free_exception@plt>
  40c9bc:	48 89 ef             	mov    %rbp,%rdi
  40c9bf:	e8 fc 5b ff ff       	callq  4025c0 <_Unwind_Resume@plt>
  40c9c4:	48 89 c5             	mov    %rax,%rbp
  40c9c7:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  40c9cc:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  40c9d1:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  40c9d5:	e8 f6 57 ff ff       	callq  4021d0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  40c9da:	eb d8                	jmp    40c9b4 <_ZN4Poco9MutexImpl11tryLockImplEl+0x114>
  40c9dc:	0f 1f 40 00          	nopl   0x0(%rax)

000000000040c9e0 <_ZN4Poco13FastMutexImplC1Ev>:
  40c9e0:	be 01 00 00 00       	mov    $0x1,%esi
  40c9e5:	e9 a6 fd ff ff       	jmpq   40c790 <_ZN4Poco9MutexImplC1Eb>
  40c9ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000000040c9f0 <_ZN4Poco13FastMutexImplD1Ev>:
  40c9f0:	e9 ab 5b ff ff       	jmpq   4025a0 <pthread_mutex_destroy@plt>
  40c9f5:	90                   	nop
  40c9f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40c9fd:	00 00 00 

000000000040ca00 <_ZN4Poco5MutexC1Ev>:
  40ca00:	e9 9b fc ff ff       	jmpq   40c6a0 <_ZN4Poco9MutexImplC1Ev>
  40ca05:	90                   	nop
  40ca06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40ca0d:	00 00 00 

000000000040ca10 <_ZN4Poco5MutexD1Ev>:
  40ca10:	e9 8b 5b ff ff       	jmpq   4025a0 <pthread_mutex_destroy@plt>
  40ca15:	90                   	nop
  40ca16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40ca1d:	00 00 00 

000000000040ca20 <_ZN4Poco9FastMutexC1Ev>:
  40ca20:	be 01 00 00 00       	mov    $0x1,%esi
  40ca25:	e9 66 fd ff ff       	jmpq   40c790 <_ZN4Poco9MutexImplC1Eb>
  40ca2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000000040ca30 <_ZN4Poco9FastMutexD1Ev>:
  40ca30:	e9 6b 5b ff ff       	jmpq   4025a0 <pthread_mutex_destroy@plt>
  40ca35:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40ca3c:	00 00 00 
  40ca3f:	90                   	nop

000000000040ca40 <_ZN4Poco16RefCountedObjectD1Ev>:
  40ca40:	48 c7 07 b0 f1 40 00 	movq   $0x40f1b0,(%rdi)
  40ca47:	48 83 c7 08          	add    $0x8,%rdi
  40ca4b:	e9 60 93 ff ff       	jmpq   405db0 <_ZN4Poco13AtomicCounterD1Ev>

000000000040ca50 <_ZN4Poco16RefCountedObjectD0Ev>:
  40ca50:	53                   	push   %rbx
  40ca51:	48 89 fb             	mov    %rdi,%rbx
  40ca54:	48 c7 07 b0 f1 40 00 	movq   $0x40f1b0,(%rdi)
  40ca5b:	48 8d 7f 08          	lea    0x8(%rdi),%rdi
  40ca5f:	e8 4c 93 ff ff       	callq  405db0 <_ZN4Poco13AtomicCounterD1Ev>
  40ca64:	48 89 df             	mov    %rbx,%rdi
  40ca67:	5b                   	pop    %rbx
  40ca68:	e9 53 57 ff ff       	jmpq   4021c0 <_ZdlPv@plt>
  40ca6d:	90                   	nop
  40ca6e:	66 90                	xchg   %ax,%ax

000000000040ca70 <_ZN4Poco16RefCountedObjectC1Ev>:
  40ca70:	48 c7 07 b0 f1 40 00 	movq   $0x40f1b0,(%rdi)
  40ca77:	be 01 00 00 00       	mov    $0x1,%esi
  40ca7c:	48 83 c7 08          	add    $0x8,%rdi
  40ca80:	e9 0b 93 ff ff       	jmpq   405d90 <_ZN4Poco13AtomicCounterC1Ei>
  40ca85:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40ca8c:	00 00 00 
  40ca8f:	90                   	nop

000000000040ca90 <__libc_csu_init>:
  40ca90:	41 57                	push   %r15
  40ca92:	41 89 ff             	mov    %edi,%r15d
  40ca95:	41 56                	push   %r14
  40ca97:	49 89 f6             	mov    %rsi,%r14
  40ca9a:	41 55                	push   %r13
  40ca9c:	49 89 d5             	mov    %rdx,%r13
  40ca9f:	41 54                	push   %r12
  40caa1:	4c 8d 25 a0 b2 20 00 	lea    0x20b2a0(%rip),%r12        # 617d48 <__frame_dummy_init_array_entry>
  40caa8:	55                   	push   %rbp
  40caa9:	48 8d 2d c0 b2 20 00 	lea    0x20b2c0(%rip),%rbp        # 617d70 <__init_array_end>
  40cab0:	53                   	push   %rbx
  40cab1:	4c 29 e5             	sub    %r12,%rbp
  40cab4:	31 db                	xor    %ebx,%ebx
  40cab6:	48 c1 fd 03          	sar    $0x3,%rbp
  40caba:	48 83 ec 08          	sub    $0x8,%rsp
  40cabe:	e8 35 56 ff ff       	callq  4020f8 <_init>
  40cac3:	48 85 ed             	test   %rbp,%rbp
  40cac6:	74 1e                	je     40cae6 <__libc_csu_init+0x56>
  40cac8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40cacf:	00 
  40cad0:	4c 89 ea             	mov    %r13,%rdx
  40cad3:	4c 89 f6             	mov    %r14,%rsi
  40cad6:	44 89 ff             	mov    %r15d,%edi
  40cad9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40cadd:	48 83 c3 01          	add    $0x1,%rbx
  40cae1:	48 39 eb             	cmp    %rbp,%rbx
  40cae4:	75 ea                	jne    40cad0 <__libc_csu_init+0x40>
  40cae6:	48 83 c4 08          	add    $0x8,%rsp
  40caea:	5b                   	pop    %rbx
  40caeb:	5d                   	pop    %rbp
  40caec:	41 5c                	pop    %r12
  40caee:	41 5d                	pop    %r13
  40caf0:	41 5e                	pop    %r14
  40caf2:	41 5f                	pop    %r15
  40caf4:	c3                   	retq   
  40caf5:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  40cafc:	00 00 00 00 

000000000040cb00 <__libc_csu_fini>:
  40cb00:	f3 c3                	repz retq 

Disassembly of section .fini:

000000000040cb04 <_fini>:
  40cb04:	48 83 ec 08          	sub    $0x8,%rsp
  40cb08:	48 83 c4 08          	add    $0x8,%rsp
  40cb0c:	c3                   	retq   
