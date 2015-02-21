
thread:     file format elf64-x86-64


Disassembly of section .init:

0000000000000e98 <_init>:
 e98:	48 83 ec 08          	sub    $0x8,%rsp
 e9c:	48 8b 05 05 11 20 00 	mov    0x201105(%rip),%rax        # 201fa8 <_DYNAMIC+0x1e0>
 ea3:	48 85 c0             	test   %rax,%rax
 ea6:	74 05                	je     ead <_init+0x15>
 ea8:	e8 43 00 00 00       	callq  ef0 <__gmon_start__@plt>
 ead:	48 83 c4 08          	add    $0x8,%rsp
 eb1:	c3                   	retq   

Disassembly of section .plt:

0000000000000ec0 <_ZN4Poco8RunnableC2Ev@plt-0x10>:
     ec0:	ff 35 42 11 20 00    	pushq  0x201142(%rip)        # 202008 <_GLOBAL_OFFSET_TABLE_+0x8>
     ec6:	ff 25 44 11 20 00    	jmpq   *0x201144(%rip)        # 202010 <_GLOBAL_OFFSET_TABLE_+0x10>
     ecc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000ed0 <_ZN4Poco8RunnableC2Ev@plt>:
     ed0:	ff 25 42 11 20 00    	jmpq   *0x201142(%rip)        # 202018 <_GLOBAL_OFFSET_TABLE_+0x18>
     ed6:	68 00 00 00 00       	pushq  $0x0
     edb:	e9 e0 ff ff ff       	jmpq   ec0 <_init+0x28>

0000000000000ee0 <_ZNSolsEi@plt>:
     ee0:	ff 25 3a 11 20 00    	jmpq   *0x20113a(%rip)        # 202020 <_GLOBAL_OFFSET_TABLE_+0x20>
     ee6:	68 01 00 00 00       	pushq  $0x1
     eeb:	e9 d0 ff ff ff       	jmpq   ec0 <_init+0x28>

0000000000000ef0 <__gmon_start__@plt>:
     ef0:	ff 25 32 11 20 00    	jmpq   *0x201132(%rip)        # 202028 <_GLOBAL_OFFSET_TABLE_+0x28>
     ef6:	68 02 00 00 00       	pushq  $0x2
     efb:	e9 c0 ff ff ff       	jmpq   ec0 <_init+0x28>

0000000000000f00 <_ZdlPv@plt>:
     f00:	ff 25 2a 11 20 00    	jmpq   *0x20112a(%rip)        # 202030 <_GLOBAL_OFFSET_TABLE_+0x30>
     f06:	68 03 00 00 00       	pushq  $0x3
     f0b:	e9 b0 ff ff ff       	jmpq   ec0 <_init+0x28>

0000000000000f10 <_ZNSt8ios_base4InitC1Ev@plt>:
     f10:	ff 25 22 11 20 00    	jmpq   *0x201122(%rip)        # 202038 <_GLOBAL_OFFSET_TABLE_+0x38>
     f16:	68 04 00 00 00       	pushq  $0x4
     f1b:	e9 a0 ff ff ff       	jmpq   ec0 <_init+0x28>

0000000000000f20 <__cxa_atexit@plt>:
     f20:	ff 25 1a 11 20 00    	jmpq   *0x20111a(%rip)        # 202040 <_GLOBAL_OFFSET_TABLE_+0x40>
     f26:	68 05 00 00 00       	pushq  $0x5
     f2b:	e9 90 ff ff ff       	jmpq   ec0 <_init+0x28>

0000000000000f30 <_ZN4Poco6ThreadD1Ev@plt>:
     f30:	ff 25 12 11 20 00    	jmpq   *0x201112(%rip)        # 202048 <_GLOBAL_OFFSET_TABLE_+0x48>
     f36:	68 06 00 00 00       	pushq  $0x6
     f3b:	e9 80 ff ff ff       	jmpq   ec0 <_init+0x28>

0000000000000f40 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
     f40:	ff 25 0a 11 20 00    	jmpq   *0x20110a(%rip)        # 202050 <_GLOBAL_OFFSET_TABLE_+0x50>
     f46:	68 07 00 00 00       	pushq  $0x7
     f4b:	e9 70 ff ff ff       	jmpq   ec0 <_init+0x28>

0000000000000f50 <_ZN4Poco6Thread4joinEv@plt>:
     f50:	ff 25 02 11 20 00    	jmpq   *0x201102(%rip)        # 202058 <_GLOBAL_OFFSET_TABLE_+0x58>
     f56:	68 08 00 00 00       	pushq  $0x8
     f5b:	e9 60 ff ff ff       	jmpq   ec0 <_init+0x28>

0000000000000f60 <__cxa_finalize@plt>:
     f60:	ff 25 fa 10 20 00    	jmpq   *0x2010fa(%rip)        # 202060 <_GLOBAL_OFFSET_TABLE_+0x60>
     f66:	68 09 00 00 00       	pushq  $0x9
     f6b:	e9 50 ff ff ff       	jmpq   ec0 <_init+0x28>

0000000000000f70 <_ZN4Poco8RunnableaSERKS0_@plt>:
     f70:	ff 25 f2 10 20 00    	jmpq   *0x2010f2(%rip)        # 202068 <_GLOBAL_OFFSET_TABLE_+0x68>
     f76:	68 0a 00 00 00       	pushq  $0xa
     f7b:	e9 40 ff ff ff       	jmpq   ec0 <_init+0x28>

0000000000000f80 <_ZN4Poco6ThreadC1Ev@plt>:
     f80:	ff 25 ea 10 20 00    	jmpq   *0x2010ea(%rip)        # 202070 <_GLOBAL_OFFSET_TABLE_+0x70>
     f86:	68 0b 00 00 00       	pushq  $0xb
     f8b:	e9 30 ff ff ff       	jmpq   ec0 <_init+0x28>

0000000000000f90 <_ZN4Poco6Thread5startERNS_8RunnableE@plt>:
     f90:	ff 25 e2 10 20 00    	jmpq   *0x2010e2(%rip)        # 202078 <_GLOBAL_OFFSET_TABLE_+0x78>
     f96:	68 0c 00 00 00       	pushq  $0xc
     f9b:	e9 20 ff ff ff       	jmpq   ec0 <_init+0x28>

0000000000000fa0 <_ZN8MyWorkerC1Ei@plt>:
     fa0:	ff 25 da 10 20 00    	jmpq   *0x2010da(%rip)        # 202080 <_GLOBAL_OFFSET_TABLE_+0x80>
     fa6:	68 0d 00 00 00       	pushq  $0xd
     fab:	e9 10 ff ff ff       	jmpq   ec0 <_init+0x28>

0000000000000fb0 <_ZN8MyWorkerD1Ev@plt>:
     fb0:	ff 25 d2 10 20 00    	jmpq   *0x2010d2(%rip)        # 202088 <_GLOBAL_OFFSET_TABLE_+0x88>
     fb6:	68 0e 00 00 00       	pushq  $0xe
     fbb:	e9 00 ff ff ff       	jmpq   ec0 <_init+0x28>

0000000000000fc0 <_ZNSolsEPFRSoS_E@plt>:
     fc0:	ff 25 ca 10 20 00    	jmpq   *0x2010ca(%rip)        # 202090 <_GLOBAL_OFFSET_TABLE_+0x90>
     fc6:	68 0f 00 00 00       	pushq  $0xf
     fcb:	e9 f0 fe ff ff       	jmpq   ec0 <_init+0x28>

0000000000000fd0 <_Unwind_Resume@plt>:
     fd0:	ff 25 c2 10 20 00    	jmpq   *0x2010c2(%rip)        # 202098 <_GLOBAL_OFFSET_TABLE_+0x98>
     fd6:	68 10 00 00 00       	pushq  $0x10
     fdb:	e9 e0 fe ff ff       	jmpq   ec0 <_init+0x28>

0000000000000fe0 <_ZN8MyWorkeraSERKS_@plt>:
     fe0:	ff 25 ba 10 20 00    	jmpq   *0x2010ba(%rip)        # 2020a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
     fe6:	68 11 00 00 00       	pushq  $0x11
     feb:	e9 d0 fe ff ff       	jmpq   ec0 <_init+0x28>

0000000000000ff0 <_ZN4Poco8RunnableD2Ev@plt>:
     ff0:	ff 25 b2 10 20 00    	jmpq   *0x2010b2(%rip)        # 2020a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
     ff6:	68 12 00 00 00       	pushq  $0x12
     ffb:	e9 c0 fe ff ff       	jmpq   ec0 <_init+0x28>

Disassembly of section .text:

0000000000001000 <deregister_tm_clones>:
    1000:	48 8d 05 c0 10 20 00 	lea    0x2010c0(%rip),%rax        # 2020c7 <_ZStL8__ioinit+0x6>
    1007:	48 8d 3d b2 10 20 00 	lea    0x2010b2(%rip),%rdi        # 2020c0 <_edata>
    100e:	55                   	push   %rbp
    100f:	48 29 f8             	sub    %rdi,%rax
    1012:	48 89 e5             	mov    %rsp,%rbp
    1015:	48 83 f8 0e          	cmp    $0xe,%rax
    1019:	77 02                	ja     101d <deregister_tm_clones+0x1d>
    101b:	5d                   	pop    %rbp
    101c:	c3                   	retq   
    101d:	48 8b 05 9c 0f 20 00 	mov    0x200f9c(%rip),%rax        # 201fc0 <_DYNAMIC+0x1f8>
    1024:	48 85 c0             	test   %rax,%rax
    1027:	74 f2                	je     101b <deregister_tm_clones+0x1b>
    1029:	5d                   	pop    %rbp
    102a:	ff e0                	jmpq   *%rax
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <register_tm_clones>:
    1030:	48 8d 05 89 10 20 00 	lea    0x201089(%rip),%rax        # 2020c0 <_edata>
    1037:	48 8d 3d 82 10 20 00 	lea    0x201082(%rip),%rdi        # 2020c0 <_edata>
    103e:	55                   	push   %rbp
    103f:	48 29 f8             	sub    %rdi,%rax
    1042:	48 89 e5             	mov    %rsp,%rbp
    1045:	48 c1 f8 03          	sar    $0x3,%rax
    1049:	48 89 c2             	mov    %rax,%rdx
    104c:	48 c1 ea 3f          	shr    $0x3f,%rdx
    1050:	48 01 d0             	add    %rdx,%rax
    1053:	48 d1 f8             	sar    %rax
    1056:	75 02                	jne    105a <register_tm_clones+0x2a>
    1058:	5d                   	pop    %rbp
    1059:	c3                   	retq   
    105a:	48 8b 15 67 0f 20 00 	mov    0x200f67(%rip),%rdx        # 201fc8 <_DYNAMIC+0x200>
    1061:	48 85 d2             	test   %rdx,%rdx
    1064:	74 f2                	je     1058 <register_tm_clones+0x28>
    1066:	5d                   	pop    %rbp
    1067:	48 89 c6             	mov    %rax,%rsi
    106a:	ff e2                	jmpq   *%rdx
    106c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001070 <__do_global_dtors_aux>:
    1070:	80 3d 49 10 20 00 00 	cmpb   $0x0,0x201049(%rip)        # 2020c0 <_edata>
    1077:	75 27                	jne    10a0 <__do_global_dtors_aux+0x30>
    1079:	48 83 3d 4f 0f 20 00 	cmpq   $0x0,0x200f4f(%rip)        # 201fd0 <_DYNAMIC+0x208>
    1080:	00 
    1081:	55                   	push   %rbp
    1082:	48 89 e5             	mov    %rsp,%rbp
    1085:	74 0c                	je     1093 <__do_global_dtors_aux+0x23>
    1087:	48 8b 3d 22 10 20 00 	mov    0x201022(%rip),%rdi        # 2020b0 <__dso_handle>
    108e:	e8 cd fe ff ff       	callq  f60 <__cxa_finalize@plt>
    1093:	e8 68 ff ff ff       	callq  1000 <deregister_tm_clones>
    1098:	5d                   	pop    %rbp
    1099:	c6 05 20 10 20 00 01 	movb   $0x1,0x201020(%rip)        # 2020c0 <_edata>
    10a0:	f3 c3                	repz retq 
    10a2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
    10a9:	1f 84 00 00 00 00 00 

00000000000010b0 <frame_dummy>:
    10b0:	48 83 3d c0 0c 20 00 	cmpq   $0x0,0x200cc0(%rip)        # 201d78 <__JCR_END__>
    10b7:	00 
    10b8:	74 26                	je     10e0 <frame_dummy+0x30>
    10ba:	48 8b 05 ef 0e 20 00 	mov    0x200eef(%rip),%rax        # 201fb0 <_DYNAMIC+0x1e8>
    10c1:	48 85 c0             	test   %rax,%rax
    10c4:	74 1a                	je     10e0 <frame_dummy+0x30>
    10c6:	55                   	push   %rbp
    10c7:	48 8d 3d aa 0c 20 00 	lea    0x200caa(%rip),%rdi        # 201d78 <__JCR_END__>
    10ce:	48 89 e5             	mov    %rsp,%rbp
    10d1:	ff d0                	callq  *%rax
    10d3:	5d                   	pop    %rbp
    10d4:	e9 57 ff ff ff       	jmpq   1030 <register_tm_clones>
    10d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10e0:	e9 4b ff ff ff       	jmpq   1030 <register_tm_clones>

00000000000010e5 <main>:
private:
  int n;
};

int main()
{
    10e5:	55                   	push   %rbp
    10e6:	48 89 e5             	mov    %rsp,%rbp
    10e9:	41 55                	push   %r13
    10eb:	41 54                	push   %r12
    10ed:	53                   	push   %rbx
    10ee:	48 81 ec 58 02 00 00 	sub    $0x258,%rsp
  const int N = 5;
    10f5:	c7 85 9c fd ff ff 05 	movl   $0x5,-0x264(%rbp)
    10fc:	00 00 00 

  MyWorker w[N];
    10ff:	4c 8d a5 b0 fd ff ff 	lea    -0x250(%rbp),%r12
    1106:	bb 04 00 00 00       	mov    $0x4,%ebx
    110b:	4d 89 e5             	mov    %r12,%r13
    110e:	eb 15                	jmp    1125 <main+0x40>
    1110:	be ff ff ff ff       	mov    $0xffffffff,%esi
    1115:	4c 89 ef             	mov    %r13,%rdi
    1118:	e8 83 fe ff ff       	callq  fa0 <_ZN8MyWorkerC1Ei@plt>
    111d:	49 83 c5 10          	add    $0x10,%r13
    1121:	48 83 eb 01          	sub    $0x1,%rbx
    1125:	48 83 fb ff          	cmp    $0xffffffffffffffff,%rbx
    1129:	75 e5                	jne    1110 <main+0x2b>
  for (int i = 0; i < N; i++) w[i] = MyWorker(i);
    112b:	c7 85 90 fd ff ff 00 	movl   $0x0,-0x270(%rbp)
    1132:	00 00 00 
    1135:	eb 56                	jmp    118d <main+0xa8>
    1137:	8b 95 90 fd ff ff    	mov    -0x270(%rbp),%edx
    113d:	48 8d 85 a0 fd ff ff 	lea    -0x260(%rbp),%rax
    1144:	89 d6                	mov    %edx,%esi
    1146:	48 89 c7             	mov    %rax,%rdi
    1149:	e8 52 fe ff ff       	callq  fa0 <_ZN8MyWorkerC1Ei@plt>
    114e:	48 8d 85 b0 fd ff ff 	lea    -0x250(%rbp),%rax
    1155:	8b 95 90 fd ff ff    	mov    -0x270(%rbp),%edx
    115b:	48 63 d2             	movslq %edx,%rdx
    115e:	48 c1 e2 04          	shl    $0x4,%rdx
    1162:	48 01 c2             	add    %rax,%rdx
    1165:	48 8d 85 a0 fd ff ff 	lea    -0x260(%rbp),%rax
    116c:	48 89 c6             	mov    %rax,%rsi
    116f:	48 89 d7             	mov    %rdx,%rdi
    1172:	e8 69 fe ff ff       	callq  fe0 <_ZN8MyWorkeraSERKS_@plt>
    1177:	48 8d 85 a0 fd ff ff 	lea    -0x260(%rbp),%rax
    117e:	48 89 c7             	mov    %rax,%rdi
    1181:	e8 2a fe ff ff       	callq  fb0 <_ZN8MyWorkerD1Ev@plt>
    1186:	83 85 90 fd ff ff 01 	addl   $0x1,-0x270(%rbp)
    118d:	83 bd 90 fd ff ff 04 	cmpl   $0x4,-0x270(%rbp)
    1194:	7e a1                	jle    1137 <main+0x52>

  Thread t[N];
    1196:	48 8d 9d 00 fe ff ff 	lea    -0x200(%rbp),%rbx
    119d:	41 bc 04 00 00 00    	mov    $0x4,%r12d
    11a3:	49 89 dd             	mov    %rbx,%r13
    11a6:	eb 10                	jmp    11b8 <main+0xd3>
    11a8:	4c 89 ef             	mov    %r13,%rdi
    11ab:	e8 d0 fd ff ff       	callq  f80 <_ZN4Poco6ThreadC1Ev@plt>
    11b0:	49 83 c5 60          	add    $0x60,%r13
    11b4:	49 83 ec 01          	sub    $0x1,%r12
    11b8:	49 83 fc ff          	cmp    $0xffffffffffffffff,%r12
    11bc:	75 ea                	jne    11a8 <main+0xc3>
  for (int i = 0; i < N; i++) t[i].start(w[i]);
    11be:	c7 85 94 fd ff ff 00 	movl   $0x0,-0x26c(%rbp)
    11c5:	00 00 00 
    11c8:	eb 4a                	jmp    1214 <main+0x12f>
    11ca:	48 8d 85 b0 fd ff ff 	lea    -0x250(%rbp),%rax
    11d1:	8b 95 94 fd ff ff    	mov    -0x26c(%rbp),%edx
    11d7:	48 63 d2             	movslq %edx,%rdx
    11da:	48 c1 e2 04          	shl    $0x4,%rdx
    11de:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
    11e2:	48 8d b5 00 fe ff ff 	lea    -0x200(%rbp),%rsi
    11e9:	8b 85 94 fd ff ff    	mov    -0x26c(%rbp),%eax
    11ef:	48 63 d0             	movslq %eax,%rdx
    11f2:	48 89 d0             	mov    %rdx,%rax
    11f5:	48 01 c0             	add    %rax,%rax
    11f8:	48 01 d0             	add    %rdx,%rax
    11fb:	48 c1 e0 05          	shl    $0x5,%rax
    11ff:	48 01 f0             	add    %rsi,%rax
    1202:	48 89 ce             	mov    %rcx,%rsi
    1205:	48 89 c7             	mov    %rax,%rdi
    1208:	e8 83 fd ff ff       	callq  f90 <_ZN4Poco6Thread5startERNS_8RunnableE@plt>
    120d:	83 85 94 fd ff ff 01 	addl   $0x1,-0x26c(%rbp)
    1214:	83 bd 94 fd ff ff 04 	cmpl   $0x4,-0x26c(%rbp)
    121b:	7e ad                	jle    11ca <main+0xe5>
  for (int i = 0; i < N; i++) t[i].join();  // wait for all threads to end
    121d:	c7 85 98 fd ff ff 00 	movl   $0x0,-0x268(%rbp)
    1224:	00 00 00 
    1227:	eb 2f                	jmp    1258 <main+0x173>
    1229:	48 8d 8d 00 fe ff ff 	lea    -0x200(%rbp),%rcx
    1230:	8b 85 98 fd ff ff    	mov    -0x268(%rbp),%eax
    1236:	48 63 d0             	movslq %eax,%rdx
    1239:	48 89 d0             	mov    %rdx,%rax
    123c:	48 01 c0             	add    %rax,%rax
    123f:	48 01 d0             	add    %rdx,%rax
    1242:	48 c1 e0 05          	shl    $0x5,%rax
    1246:	48 01 c8             	add    %rcx,%rax
    1249:	48 89 c7             	mov    %rax,%rdi
    124c:	e8 ff fc ff ff       	callq  f50 <_ZN4Poco6Thread4joinEv@plt>
    1251:	83 85 98 fd ff ff 01 	addl   $0x1,-0x268(%rbp)
    1258:	83 bd 98 fd ff ff 04 	cmpl   $0x4,-0x268(%rbp)
    125f:	7e c8                	jle    1229 <main+0x144>

  cout << endl << "Threads joined" << endl;
    1261:	48 8b 05 80 0d 20 00 	mov    0x200d80(%rip),%rax        # 201fe8 <_DYNAMIC+0x220>
    1268:	48 89 c6             	mov    %rax,%rsi
    126b:	48 8b 05 66 0d 20 00 	mov    0x200d66(%rip),%rax        # 201fd8 <_DYNAMIC+0x210>
    1272:	48 89 c7             	mov    %rax,%rdi
    1275:	e8 46 fd ff ff       	callq  fc0 <_ZNSolsEPFRSoS_E@plt>
    127a:	48 8d 35 0e 03 00 00 	lea    0x30e(%rip),%rsi        # 158f <_fini+0xb>
    1281:	48 89 c7             	mov    %rax,%rdi
    1284:	e8 b7 fc ff ff       	callq  f40 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1289:	48 8b 15 58 0d 20 00 	mov    0x200d58(%rip),%rdx        # 201fe8 <_DYNAMIC+0x220>
    1290:	48 89 d6             	mov    %rdx,%rsi
    1293:	48 89 c7             	mov    %rax,%rdi
    1296:	e8 25 fd ff ff       	callq  fc0 <_ZNSolsEPFRSoS_E@plt>

  return 0;
    129b:	41 bc 00 00 00 00    	mov    $0x0,%r12d
  const int N = 5;

  MyWorker w[N];
  for (int i = 0; i < N; i++) w[i] = MyWorker(i);

  Thread t[N];
    12a1:	48 8d 9d 00 fe ff ff 	lea    -0x200(%rbp),%rbx
    12a8:	48 81 c3 e0 01 00 00 	add    $0x1e0,%rbx
    12af:	48 8d 85 00 fe ff ff 	lea    -0x200(%rbp),%rax
    12b6:	48 39 c3             	cmp    %rax,%rbx
    12b9:	74 0e                	je     12c9 <main+0x1e4>
    12bb:	48 83 eb 60          	sub    $0x60,%rbx
    12bf:	48 89 df             	mov    %rbx,%rdi
    12c2:	e8 69 fc ff ff       	callq  f30 <_ZN4Poco6ThreadD1Ev@plt>
    12c7:	eb e6                	jmp    12af <main+0x1ca>
  for (int i = 0; i < N; i++) t[i].start(w[i]);
  for (int i = 0; i < N; i++) t[i].join();  // wait for all threads to end

  cout << endl << "Threads joined" << endl;

  return 0;
    12c9:	48 8d 9d b0 fd ff ff 	lea    -0x250(%rbp),%rbx
    12d0:	48 83 c3 50          	add    $0x50,%rbx
    12d4:	48 8d 85 b0 fd ff ff 	lea    -0x250(%rbp),%rax
    12db:	48 39 c3             	cmp    %rax,%rbx
    12de:	74 11                	je     12f1 <main+0x20c>
    12e0:	48 83 eb 10          	sub    $0x10,%rbx

int main()
{
  const int N = 5;

  MyWorker w[N];
    12e4:	48 8b 03             	mov    (%rbx),%rax
    12e7:	48 8b 00             	mov    (%rax),%rax
    12ea:	48 89 df             	mov    %rbx,%rdi
    12ed:	ff d0                	callq  *%rax
  for (int i = 0; i < N; i++) t[i].start(w[i]);
  for (int i = 0; i < N; i++) t[i].join();  // wait for all threads to end

  cout << endl << "Threads joined" << endl;

  return 0;
    12ef:	eb e3                	jmp    12d4 <main+0x1ef>
    12f1:	44 89 e0             	mov    %r12d,%eax
    12f4:	e9 d6 00 00 00       	jmpq   13cf <main+0x2ea>
    12f9:	49 89 c5             	mov    %rax,%r13
    12fc:	4d 85 e4             	test   %r12,%r12
    12ff:	74 26                	je     1327 <main+0x242>

int main()
{
  const int N = 5;

  MyWorker w[N];
    1301:	b8 04 00 00 00       	mov    $0x4,%eax
    1306:	48 29 d8             	sub    %rbx,%rax
    1309:	48 c1 e0 04          	shl    $0x4,%rax
    130d:	49 8d 1c 04          	lea    (%r12,%rax,1),%rbx
    1311:	4c 39 e3             	cmp    %r12,%rbx
    1314:	74 11                	je     1327 <main+0x242>
    1316:	48 83 eb 10          	sub    $0x10,%rbx
    131a:	48 8b 03             	mov    (%rbx),%rax
    131d:	48 8b 00             	mov    (%rax),%rax
    1320:	48 89 df             	mov    %rbx,%rdi
    1323:	ff d0                	callq  *%rax
    1325:	eb ea                	jmp    1311 <main+0x22c>
    1327:	4c 89 e8             	mov    %r13,%rax
    132a:	48 89 c7             	mov    %rax,%rdi
    132d:	e8 9e fc ff ff       	callq  fd0 <_Unwind_Resume@plt>
    1332:	49 89 c5             	mov    %rax,%r13
    1335:	48 85 db             	test   %rbx,%rbx
    1338:	74 2f                	je     1369 <main+0x284>
  for (int i = 0; i < N; i++) w[i] = MyWorker(i);

  Thread t[N];
    133a:	b8 04 00 00 00       	mov    $0x4,%eax
    133f:	4c 29 e0             	sub    %r12,%rax
    1342:	48 89 c2             	mov    %rax,%rdx
    1345:	48 89 d0             	mov    %rdx,%rax
    1348:	48 01 c0             	add    %rax,%rax
    134b:	48 01 d0             	add    %rdx,%rax
    134e:	48 c1 e0 05          	shl    $0x5,%rax
    1352:	4c 8d 24 03          	lea    (%rbx,%rax,1),%r12
    1356:	49 39 dc             	cmp    %rbx,%r12
    1359:	74 0e                	je     1369 <main+0x284>
    135b:	49 83 ec 60          	sub    $0x60,%r12
    135f:	4c 89 e7             	mov    %r12,%rdi
    1362:	e8 c9 fb ff ff       	callq  f30 <_ZN4Poco6ThreadD1Ev@plt>
    1367:	eb ed                	jmp    1356 <main+0x271>
    1369:	4d 89 ec             	mov    %r13,%r12
    136c:	eb 2e                	jmp    139c <main+0x2b7>
    136e:	49 89 c4             	mov    %rax,%r12
    1371:	48 8d 9d 00 fe ff ff 	lea    -0x200(%rbp),%rbx
    1378:	48 81 c3 e0 01 00 00 	add    $0x1e0,%rbx
    137f:	48 8d 85 00 fe ff ff 	lea    -0x200(%rbp),%rax
    1386:	48 39 c3             	cmp    %rax,%rbx
    1389:	74 11                	je     139c <main+0x2b7>
    138b:	48 83 eb 60          	sub    $0x60,%rbx
    138f:	48 89 df             	mov    %rbx,%rdi
    1392:	e8 99 fb ff ff       	callq  f30 <_ZN4Poco6ThreadD1Ev@plt>
    1397:	eb e6                	jmp    137f <main+0x29a>
    1399:	49 89 c4             	mov    %rax,%r12
  for (int i = 0; i < N; i++) t[i].start(w[i]);
  for (int i = 0; i < N; i++) t[i].join();  // wait for all threads to end

  cout << endl << "Threads joined" << endl;

  return 0;
    139c:	48 8d 9d b0 fd ff ff 	lea    -0x250(%rbp),%rbx
    13a3:	48 83 c3 50          	add    $0x50,%rbx
    13a7:	48 8d 85 b0 fd ff ff 	lea    -0x250(%rbp),%rax
    13ae:	48 39 c3             	cmp    %rax,%rbx
    13b1:	74 11                	je     13c4 <main+0x2df>
    13b3:	48 83 eb 10          	sub    $0x10,%rbx

int main()
{
  const int N = 5;

  MyWorker w[N];
    13b7:	48 8b 03             	mov    (%rbx),%rax
    13ba:	48 8b 00             	mov    (%rax),%rax
    13bd:	48 89 df             	mov    %rbx,%rdi
    13c0:	ff d0                	callq  *%rax
  for (int i = 0; i < N; i++) t[i].start(w[i]);
  for (int i = 0; i < N; i++) t[i].join();  // wait for all threads to end

  cout << endl << "Threads joined" << endl;

  return 0;
    13c2:	eb e3                	jmp    13a7 <main+0x2c2>
    13c4:	4c 89 e0             	mov    %r12,%rax
    13c7:	48 89 c7             	mov    %rax,%rdi
    13ca:	e8 01 fc ff ff       	callq  fd0 <_Unwind_Resume@plt>
}
    13cf:	48 81 c4 58 02 00 00 	add    $0x258,%rsp
    13d6:	5b                   	pop    %rbx
    13d7:	41 5c                	pop    %r12
    13d9:	41 5d                	pop    %r13
    13db:	5d                   	pop    %rbp
    13dc:	c3                   	retq   

00000000000013dd <_Z41__static_initialization_and_destruction_0ii>:
    13dd:	55                   	push   %rbp
    13de:	48 89 e5             	mov    %rsp,%rbp
    13e1:	48 83 ec 10          	sub    $0x10,%rsp
    13e5:	89 7d fc             	mov    %edi,-0x4(%rbp)
    13e8:	89 75 f8             	mov    %esi,-0x8(%rbp)
    13eb:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
    13ef:	75 32                	jne    1423 <_Z41__static_initialization_and_destruction_0ii+0x46>
    13f1:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
    13f8:	75 29                	jne    1423 <_Z41__static_initialization_and_destruction_0ii+0x46>
  extern wostream wclog;	/// Linked to standard error (buffered)
#endif
  //@}

  // For construction of filebuffers for cout, cin, cerr, clog et. al.
  static ios_base::Init __ioinit;
    13fa:	48 8d 3d c0 0c 20 00 	lea    0x200cc0(%rip),%rdi        # 2020c1 <_ZStL8__ioinit>
    1401:	e8 0a fb ff ff       	callq  f10 <_ZNSt8ios_base4InitC1Ev@plt>
    1406:	48 8d 15 a3 0c 20 00 	lea    0x200ca3(%rip),%rdx        # 2020b0 <__dso_handle>
    140d:	48 8d 35 ad 0c 20 00 	lea    0x200cad(%rip),%rsi        # 2020c1 <_ZStL8__ioinit>
    1414:	48 8b 05 9d 0b 20 00 	mov    0x200b9d(%rip),%rax        # 201fb8 <_DYNAMIC+0x1f0>
    141b:	48 89 c7             	mov    %rax,%rdi
    141e:	e8 fd fa ff ff       	callq  f20 <__cxa_atexit@plt>
    1423:	c9                   	leaveq 
    1424:	c3                   	retq   

0000000000001425 <_GLOBAL__sub_I_thread.cc>:
    1425:	55                   	push   %rbp
    1426:	48 89 e5             	mov    %rsp,%rbp
    1429:	be ff ff 00 00       	mov    $0xffff,%esi
    142e:	bf 01 00 00 00       	mov    $0x1,%edi
    1433:	e8 a5 ff ff ff       	callq  13dd <_Z41__static_initialization_and_destruction_0ii>
    1438:	5d                   	pop    %rbp
    1439:	c3                   	retq   

000000000000143a <_ZN8MyWorkerC1Ei>:
using namespace std;

class MyWorker : public Runnable
{
public:
  MyWorker(int k = -1) : Runnable(), n(k) {}
    143a:	55                   	push   %rbp
    143b:	48 89 e5             	mov    %rsp,%rbp
    143e:	48 83 ec 10          	sub    $0x10,%rsp
    1442:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1446:	89 75 f4             	mov    %esi,-0xc(%rbp)
    1449:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    144d:	48 89 c7             	mov    %rax,%rdi
    1450:	e8 7b fa ff ff       	callq  ed0 <_ZN4Poco8RunnableC2Ev@plt>
    1455:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1459:	48 8b 15 80 0b 20 00 	mov    0x200b80(%rip),%rdx        # 201fe0 <_DYNAMIC+0x218>
    1460:	48 8d 52 10          	lea    0x10(%rdx),%rdx
    1464:	48 89 10             	mov    %rdx,(%rax)
    1467:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    146b:	8b 55 f4             	mov    -0xc(%rbp),%edx
    146e:	89 50 08             	mov    %edx,0x8(%rax)
    1471:	c9                   	leaveq 
    1472:	c3                   	retq   
    1473:	90                   	nop

0000000000001474 <_ZN8MyWorker3runEv>:

  virtual void run()
    1474:	55                   	push   %rbp
    1475:	48 89 e5             	mov    %rsp,%rbp
    1478:	48 83 ec 20          	sub    $0x20,%rsp
    147c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  {
    for (int i = 1; i <= 10; i++)
    1480:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
    1487:	eb 41                	jmp    14ca <_ZN8MyWorker3runEv+0x56>
    {
      for (int j = 0; j < 1000000; j++) ; // do nothing
    1489:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1490:	eb 04                	jmp    1496 <_ZN8MyWorker3runEv+0x22>
    1492:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    1496:	81 7d fc 3f 42 0f 00 	cmpl   $0xf423f,-0x4(%rbp)
    149d:	7e f3                	jle    1492 <_ZN8MyWorker3runEv+0x1e>
      cout << n << " ";
    149f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14a3:	8b 40 08             	mov    0x8(%rax),%eax
    14a6:	89 c6                	mov    %eax,%esi
    14a8:	48 8b 05 29 0b 20 00 	mov    0x200b29(%rip),%rax        # 201fd8 <_DYNAMIC+0x210>
    14af:	48 89 c7             	mov    %rax,%rdi
    14b2:	e8 29 fa ff ff       	callq  ee0 <_ZNSolsEi@plt>
    14b7:	48 8d 35 cf 00 00 00 	lea    0xcf(%rip),%rsi        # 158d <_fini+0x9>
    14be:	48 89 c7             	mov    %rax,%rdi
    14c1:	e8 7a fa ff ff       	callq  f40 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
public:
  MyWorker(int k = -1) : Runnable(), n(k) {}

  virtual void run()
  {
    for (int i = 1; i <= 10; i++)
    14c6:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    14ca:	83 7d f8 0a          	cmpl   $0xa,-0x8(%rbp)
    14ce:	7e b9                	jle    1489 <_ZN8MyWorker3runEv+0x15>
    {
      for (int j = 0; j < 1000000; j++) ; // do nothing
      cout << n << " ";
    }
  }
    14d0:	c9                   	leaveq 
    14d1:	c3                   	retq   

00000000000014d2 <_ZN4Poco8RunnableaSERKS0_>:


namespace Poco {


class Foundation_API Runnable
    14d2:	55                   	push   %rbp
    14d3:	48 89 e5             	mov    %rsp,%rbp
    14d6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    14da:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    14de:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    14e2:	5d                   	pop    %rbp
    14e3:	c3                   	retq   

00000000000014e4 <_ZN8MyWorkeraSERKS_>:
#include<iostream>

using namespace Poco;
using namespace std;

class MyWorker : public Runnable
    14e4:	55                   	push   %rbp
    14e5:	48 89 e5             	mov    %rsp,%rbp
    14e8:	48 83 ec 10          	sub    $0x10,%rsp
    14ec:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    14f0:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    14f4:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    14f8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    14fc:	48 89 d6             	mov    %rdx,%rsi
    14ff:	48 89 c7             	mov    %rax,%rdi
    1502:	e8 69 fa ff ff       	callq  f70 <_ZN4Poco8RunnableaSERKS0_@plt>
    1507:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    150b:	8b 50 08             	mov    0x8(%rax),%edx
    150e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1512:	89 50 08             	mov    %edx,0x8(%rax)
    1515:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1519:	c9                   	leaveq 
    151a:	c3                   	retq   
    151b:	90                   	nop

000000000000151c <_ZN8MyWorkerD1Ev>:
    151c:	55                   	push   %rbp
    151d:	48 89 e5             	mov    %rsp,%rbp
    1520:	48 83 ec 10          	sub    $0x10,%rsp
    1524:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1528:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    152c:	48 8b 15 ad 0a 20 00 	mov    0x200aad(%rip),%rdx        # 201fe0 <_DYNAMIC+0x218>
    1533:	48 8d 52 10          	lea    0x10(%rdx),%rdx
    1537:	48 89 10             	mov    %rdx,(%rax)
    153a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    153e:	48 89 c7             	mov    %rax,%rdi
    1541:	e8 aa fa ff ff       	callq  ff0 <_ZN4Poco8RunnableD2Ev@plt>
    1546:	b8 00 00 00 00       	mov    $0x0,%eax
    154b:	85 c0                	test   %eax,%eax
    154d:	74 0c                	je     155b <_ZN8MyWorkerD1Ev+0x3f>
    154f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1553:	48 89 c7             	mov    %rax,%rdi
    1556:	e8 a5 f9 ff ff       	callq  f00 <_ZdlPv@plt>
    155b:	c9                   	leaveq 
    155c:	c3                   	retq   
    155d:	90                   	nop

000000000000155e <_ZN8MyWorkerD0Ev>:
    155e:	55                   	push   %rbp
    155f:	48 89 e5             	mov    %rsp,%rbp
    1562:	48 83 ec 10          	sub    $0x10,%rsp
    1566:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    156a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    156e:	48 89 c7             	mov    %rax,%rdi
    1571:	e8 3a fa ff ff       	callq  fb0 <_ZN8MyWorkerD1Ev@plt>
    1576:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    157a:	48 89 c7             	mov    %rax,%rdi
    157d:	e8 7e f9 ff ff       	callq  f00 <_ZdlPv@plt>
    1582:	c9                   	leaveq 
    1583:	c3                   	retq   

Disassembly of section .fini:

0000000000001584 <_fini>:
    1584:	48 83 ec 08          	sub    $0x8,%rsp
    1588:	48 83 c4 08          	add    $0x8,%rsp
    158c:	c3                   	retq   
