
user/_wc:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <wc>:
   0:	7139                	addi	sp,sp,-64
   2:	fc06                	sd	ra,56(sp)
   4:	f822                	sd	s0,48(sp)
   6:	0080                	addi	s0,sp,64
   8:	87aa                	mv	a5,a0
   a:	fcb43023          	sd	a1,-64(s0)
   e:	fcf42623          	sw	a5,-52(s0)
  12:	fe042023          	sw	zero,-32(s0)
  16:	fe042783          	lw	a5,-32(s0)
  1a:	fef42223          	sw	a5,-28(s0)
  1e:	fe442783          	lw	a5,-28(s0)
  22:	fef42423          	sw	a5,-24(s0)
  26:	fc042e23          	sw	zero,-36(s0)
  2a:	a861                	j	c2 <wc+0xc2>
  2c:	fe042623          	sw	zero,-20(s0)
  30:	a041                	j	b0 <wc+0xb0>
  32:	fe042783          	lw	a5,-32(s0)
  36:	2785                	addiw	a5,a5,1
  38:	fef42023          	sw	a5,-32(s0)
  3c:	00001717          	auipc	a4,0x1
  40:	fe470713          	addi	a4,a4,-28 # 1020 <buf>
  44:	fec42783          	lw	a5,-20(s0)
  48:	97ba                	add	a5,a5,a4
  4a:	0007c783          	lbu	a5,0(a5)
  4e:	873e                	mv	a4,a5
  50:	47a9                	li	a5,10
  52:	00f71763          	bne	a4,a5,60 <wc+0x60>
  56:	fe842783          	lw	a5,-24(s0)
  5a:	2785                	addiw	a5,a5,1
  5c:	fef42423          	sw	a5,-24(s0)
  60:	00001717          	auipc	a4,0x1
  64:	fc070713          	addi	a4,a4,-64 # 1020 <buf>
  68:	fec42783          	lw	a5,-20(s0)
  6c:	97ba                	add	a5,a5,a4
  6e:	0007c783          	lbu	a5,0(a5)
  72:	85be                	mv	a1,a5
  74:	00001517          	auipc	a0,0x1
  78:	edc50513          	addi	a0,a0,-292 # f50 <malloc+0x13c>
  7c:	00000097          	auipc	ra,0x0
  80:	30a080e7          	jalr	778(ra) # 386 <strchr>
  84:	87aa                	mv	a5,a0
  86:	c781                	beqz	a5,8e <wc+0x8e>
  88:	fc042e23          	sw	zero,-36(s0)
  8c:	a829                	j	a6 <wc+0xa6>
  8e:	fdc42783          	lw	a5,-36(s0)
  92:	2781                	sext.w	a5,a5
  94:	eb89                	bnez	a5,a6 <wc+0xa6>
  96:	fe442783          	lw	a5,-28(s0)
  9a:	2785                	addiw	a5,a5,1
  9c:	fef42223          	sw	a5,-28(s0)
  a0:	4785                	li	a5,1
  a2:	fcf42e23          	sw	a5,-36(s0)
  a6:	fec42783          	lw	a5,-20(s0)
  aa:	2785                	addiw	a5,a5,1
  ac:	fef42623          	sw	a5,-20(s0)
  b0:	fec42783          	lw	a5,-20(s0)
  b4:	873e                	mv	a4,a5
  b6:	fd842783          	lw	a5,-40(s0)
  ba:	2701                	sext.w	a4,a4
  bc:	2781                	sext.w	a5,a5
  be:	f6f74ae3          	blt	a4,a5,32 <wc+0x32>
  c2:	fcc42783          	lw	a5,-52(s0)
  c6:	20000613          	li	a2,512
  ca:	00001597          	auipc	a1,0x1
  ce:	f5658593          	addi	a1,a1,-170 # 1020 <buf>
  d2:	853e                	mv	a0,a5
  d4:	00000097          	auipc	ra,0x0
  d8:	616080e7          	jalr	1558(ra) # 6ea <read>
  dc:	87aa                	mv	a5,a0
  de:	fcf42c23          	sw	a5,-40(s0)
  e2:	fd842783          	lw	a5,-40(s0)
  e6:	2781                	sext.w	a5,a5
  e8:	f4f042e3          	bgtz	a5,2c <wc+0x2c>
  ec:	fd842783          	lw	a5,-40(s0)
  f0:	2781                	sext.w	a5,a5
  f2:	0007df63          	bgez	a5,110 <wc+0x110>
  f6:	00001517          	auipc	a0,0x1
  fa:	e6250513          	addi	a0,a0,-414 # f58 <malloc+0x144>
  fe:	00001097          	auipc	ra,0x1
 102:	b24080e7          	jalr	-1244(ra) # c22 <printf>
 106:	4505                	li	a0,1
 108:	00000097          	auipc	ra,0x0
 10c:	5ca080e7          	jalr	1482(ra) # 6d2 <exit>
 110:	fe042683          	lw	a3,-32(s0)
 114:	fe442603          	lw	a2,-28(s0)
 118:	fe842783          	lw	a5,-24(s0)
 11c:	fc043703          	ld	a4,-64(s0)
 120:	85be                	mv	a1,a5
 122:	00001517          	auipc	a0,0x1
 126:	e4650513          	addi	a0,a0,-442 # f68 <malloc+0x154>
 12a:	00001097          	auipc	ra,0x1
 12e:	af8080e7          	jalr	-1288(ra) # c22 <printf>
 132:	0001                	nop
 134:	70e2                	ld	ra,56(sp)
 136:	7442                	ld	s0,48(sp)
 138:	6121                	addi	sp,sp,64
 13a:	8082                	ret

000000000000013c <main>:
 13c:	7179                	addi	sp,sp,-48
 13e:	f406                	sd	ra,40(sp)
 140:	f022                	sd	s0,32(sp)
 142:	1800                	addi	s0,sp,48
 144:	87aa                	mv	a5,a0
 146:	fcb43823          	sd	a1,-48(s0)
 14a:	fcf42e23          	sw	a5,-36(s0)
 14e:	fdc42783          	lw	a5,-36(s0)
 152:	0007871b          	sext.w	a4,a5
 156:	4785                	li	a5,1
 158:	02e7c063          	blt	a5,a4,178 <main+0x3c>
 15c:	00001597          	auipc	a1,0x1
 160:	e1c58593          	addi	a1,a1,-484 # f78 <malloc+0x164>
 164:	4501                	li	a0,0
 166:	00000097          	auipc	ra,0x0
 16a:	e9a080e7          	jalr	-358(ra) # 0 <wc>
 16e:	4501                	li	a0,0
 170:	00000097          	auipc	ra,0x0
 174:	562080e7          	jalr	1378(ra) # 6d2 <exit>
 178:	4785                	li	a5,1
 17a:	fef42623          	sw	a5,-20(s0)
 17e:	a071                	j	20a <main+0xce>
 180:	fec42783          	lw	a5,-20(s0)
 184:	078e                	slli	a5,a5,0x3
 186:	fd043703          	ld	a4,-48(s0)
 18a:	97ba                	add	a5,a5,a4
 18c:	639c                	ld	a5,0(a5)
 18e:	4581                	li	a1,0
 190:	853e                	mv	a0,a5
 192:	00000097          	auipc	ra,0x0
 196:	580080e7          	jalr	1408(ra) # 712 <open>
 19a:	87aa                	mv	a5,a0
 19c:	fef42423          	sw	a5,-24(s0)
 1a0:	fe842783          	lw	a5,-24(s0)
 1a4:	2781                	sext.w	a5,a5
 1a6:	0207d763          	bgez	a5,1d4 <main+0x98>
 1aa:	fec42783          	lw	a5,-20(s0)
 1ae:	078e                	slli	a5,a5,0x3
 1b0:	fd043703          	ld	a4,-48(s0)
 1b4:	97ba                	add	a5,a5,a4
 1b6:	639c                	ld	a5,0(a5)
 1b8:	85be                	mv	a1,a5
 1ba:	00001517          	auipc	a0,0x1
 1be:	dc650513          	addi	a0,a0,-570 # f80 <malloc+0x16c>
 1c2:	00001097          	auipc	ra,0x1
 1c6:	a60080e7          	jalr	-1440(ra) # c22 <printf>
 1ca:	4505                	li	a0,1
 1cc:	00000097          	auipc	ra,0x0
 1d0:	506080e7          	jalr	1286(ra) # 6d2 <exit>
 1d4:	fec42783          	lw	a5,-20(s0)
 1d8:	078e                	slli	a5,a5,0x3
 1da:	fd043703          	ld	a4,-48(s0)
 1de:	97ba                	add	a5,a5,a4
 1e0:	6398                	ld	a4,0(a5)
 1e2:	fe842783          	lw	a5,-24(s0)
 1e6:	85ba                	mv	a1,a4
 1e8:	853e                	mv	a0,a5
 1ea:	00000097          	auipc	ra,0x0
 1ee:	e16080e7          	jalr	-490(ra) # 0 <wc>
 1f2:	fe842783          	lw	a5,-24(s0)
 1f6:	853e                	mv	a0,a5
 1f8:	00000097          	auipc	ra,0x0
 1fc:	502080e7          	jalr	1282(ra) # 6fa <close>
 200:	fec42783          	lw	a5,-20(s0)
 204:	2785                	addiw	a5,a5,1
 206:	fef42623          	sw	a5,-20(s0)
 20a:	fec42783          	lw	a5,-20(s0)
 20e:	873e                	mv	a4,a5
 210:	fdc42783          	lw	a5,-36(s0)
 214:	2701                	sext.w	a4,a4
 216:	2781                	sext.w	a5,a5
 218:	f6f744e3          	blt	a4,a5,180 <main+0x44>
 21c:	4501                	li	a0,0
 21e:	00000097          	auipc	ra,0x0
 222:	4b4080e7          	jalr	1204(ra) # 6d2 <exit>

0000000000000226 <_main>:
 226:	1141                	addi	sp,sp,-16
 228:	e406                	sd	ra,8(sp)
 22a:	e022                	sd	s0,0(sp)
 22c:	0800                	addi	s0,sp,16
 22e:	00000097          	auipc	ra,0x0
 232:	f0e080e7          	jalr	-242(ra) # 13c <main>
 236:	4501                	li	a0,0
 238:	00000097          	auipc	ra,0x0
 23c:	49a080e7          	jalr	1178(ra) # 6d2 <exit>

0000000000000240 <strcpy>:
 240:	7179                	addi	sp,sp,-48
 242:	f422                	sd	s0,40(sp)
 244:	1800                	addi	s0,sp,48
 246:	fca43c23          	sd	a0,-40(s0)
 24a:	fcb43823          	sd	a1,-48(s0)
 24e:	fd843783          	ld	a5,-40(s0)
 252:	fef43423          	sd	a5,-24(s0)
 256:	0001                	nop
 258:	fd043703          	ld	a4,-48(s0)
 25c:	00170793          	addi	a5,a4,1
 260:	fcf43823          	sd	a5,-48(s0)
 264:	fd843783          	ld	a5,-40(s0)
 268:	00178693          	addi	a3,a5,1
 26c:	fcd43c23          	sd	a3,-40(s0)
 270:	00074703          	lbu	a4,0(a4)
 274:	00e78023          	sb	a4,0(a5)
 278:	0007c783          	lbu	a5,0(a5)
 27c:	fff1                	bnez	a5,258 <strcpy+0x18>
 27e:	fe843783          	ld	a5,-24(s0)
 282:	853e                	mv	a0,a5
 284:	7422                	ld	s0,40(sp)
 286:	6145                	addi	sp,sp,48
 288:	8082                	ret

000000000000028a <strcmp>:
 28a:	1101                	addi	sp,sp,-32
 28c:	ec22                	sd	s0,24(sp)
 28e:	1000                	addi	s0,sp,32
 290:	fea43423          	sd	a0,-24(s0)
 294:	feb43023          	sd	a1,-32(s0)
 298:	a819                	j	2ae <strcmp+0x24>
 29a:	fe843783          	ld	a5,-24(s0)
 29e:	0785                	addi	a5,a5,1
 2a0:	fef43423          	sd	a5,-24(s0)
 2a4:	fe043783          	ld	a5,-32(s0)
 2a8:	0785                	addi	a5,a5,1
 2aa:	fef43023          	sd	a5,-32(s0)
 2ae:	fe843783          	ld	a5,-24(s0)
 2b2:	0007c783          	lbu	a5,0(a5)
 2b6:	cb99                	beqz	a5,2cc <strcmp+0x42>
 2b8:	fe843783          	ld	a5,-24(s0)
 2bc:	0007c703          	lbu	a4,0(a5)
 2c0:	fe043783          	ld	a5,-32(s0)
 2c4:	0007c783          	lbu	a5,0(a5)
 2c8:	fcf709e3          	beq	a4,a5,29a <strcmp+0x10>
 2cc:	fe843783          	ld	a5,-24(s0)
 2d0:	0007c783          	lbu	a5,0(a5)
 2d4:	0007871b          	sext.w	a4,a5
 2d8:	fe043783          	ld	a5,-32(s0)
 2dc:	0007c783          	lbu	a5,0(a5)
 2e0:	2781                	sext.w	a5,a5
 2e2:	40f707bb          	subw	a5,a4,a5
 2e6:	2781                	sext.w	a5,a5
 2e8:	853e                	mv	a0,a5
 2ea:	6462                	ld	s0,24(sp)
 2ec:	6105                	addi	sp,sp,32
 2ee:	8082                	ret

00000000000002f0 <strlen>:
 2f0:	7179                	addi	sp,sp,-48
 2f2:	f422                	sd	s0,40(sp)
 2f4:	1800                	addi	s0,sp,48
 2f6:	fca43c23          	sd	a0,-40(s0)
 2fa:	fe042623          	sw	zero,-20(s0)
 2fe:	a031                	j	30a <strlen+0x1a>
 300:	fec42783          	lw	a5,-20(s0)
 304:	2785                	addiw	a5,a5,1
 306:	fef42623          	sw	a5,-20(s0)
 30a:	fec42783          	lw	a5,-20(s0)
 30e:	fd843703          	ld	a4,-40(s0)
 312:	97ba                	add	a5,a5,a4
 314:	0007c783          	lbu	a5,0(a5)
 318:	f7e5                	bnez	a5,300 <strlen+0x10>
 31a:	fec42783          	lw	a5,-20(s0)
 31e:	853e                	mv	a0,a5
 320:	7422                	ld	s0,40(sp)
 322:	6145                	addi	sp,sp,48
 324:	8082                	ret

0000000000000326 <memset>:
 326:	7179                	addi	sp,sp,-48
 328:	f422                	sd	s0,40(sp)
 32a:	1800                	addi	s0,sp,48
 32c:	fca43c23          	sd	a0,-40(s0)
 330:	87ae                	mv	a5,a1
 332:	8732                	mv	a4,a2
 334:	fcf42a23          	sw	a5,-44(s0)
 338:	87ba                	mv	a5,a4
 33a:	fcf42823          	sw	a5,-48(s0)
 33e:	fd843783          	ld	a5,-40(s0)
 342:	fef43023          	sd	a5,-32(s0)
 346:	fe042623          	sw	zero,-20(s0)
 34a:	a00d                	j	36c <memset+0x46>
 34c:	fec42783          	lw	a5,-20(s0)
 350:	fe043703          	ld	a4,-32(s0)
 354:	97ba                	add	a5,a5,a4
 356:	fd442703          	lw	a4,-44(s0)
 35a:	0ff77713          	zext.b	a4,a4
 35e:	00e78023          	sb	a4,0(a5)
 362:	fec42783          	lw	a5,-20(s0)
 366:	2785                	addiw	a5,a5,1
 368:	fef42623          	sw	a5,-20(s0)
 36c:	fec42703          	lw	a4,-20(s0)
 370:	fd042783          	lw	a5,-48(s0)
 374:	2781                	sext.w	a5,a5
 376:	fcf76be3          	bltu	a4,a5,34c <memset+0x26>
 37a:	fd843783          	ld	a5,-40(s0)
 37e:	853e                	mv	a0,a5
 380:	7422                	ld	s0,40(sp)
 382:	6145                	addi	sp,sp,48
 384:	8082                	ret

0000000000000386 <strchr>:
 386:	1101                	addi	sp,sp,-32
 388:	ec22                	sd	s0,24(sp)
 38a:	1000                	addi	s0,sp,32
 38c:	fea43423          	sd	a0,-24(s0)
 390:	87ae                	mv	a5,a1
 392:	fef403a3          	sb	a5,-25(s0)
 396:	a01d                	j	3bc <strchr+0x36>
 398:	fe843783          	ld	a5,-24(s0)
 39c:	0007c703          	lbu	a4,0(a5)
 3a0:	fe744783          	lbu	a5,-25(s0)
 3a4:	0ff7f793          	zext.b	a5,a5
 3a8:	00e79563          	bne	a5,a4,3b2 <strchr+0x2c>
 3ac:	fe843783          	ld	a5,-24(s0)
 3b0:	a821                	j	3c8 <strchr+0x42>
 3b2:	fe843783          	ld	a5,-24(s0)
 3b6:	0785                	addi	a5,a5,1
 3b8:	fef43423          	sd	a5,-24(s0)
 3bc:	fe843783          	ld	a5,-24(s0)
 3c0:	0007c783          	lbu	a5,0(a5)
 3c4:	fbf1                	bnez	a5,398 <strchr+0x12>
 3c6:	4781                	li	a5,0
 3c8:	853e                	mv	a0,a5
 3ca:	6462                	ld	s0,24(sp)
 3cc:	6105                	addi	sp,sp,32
 3ce:	8082                	ret

00000000000003d0 <gets>:
 3d0:	7179                	addi	sp,sp,-48
 3d2:	f406                	sd	ra,40(sp)
 3d4:	f022                	sd	s0,32(sp)
 3d6:	1800                	addi	s0,sp,48
 3d8:	fca43c23          	sd	a0,-40(s0)
 3dc:	87ae                	mv	a5,a1
 3de:	fcf42a23          	sw	a5,-44(s0)
 3e2:	fe042623          	sw	zero,-20(s0)
 3e6:	a8a1                	j	43e <gets+0x6e>
 3e8:	fe740793          	addi	a5,s0,-25
 3ec:	4605                	li	a2,1
 3ee:	85be                	mv	a1,a5
 3f0:	4501                	li	a0,0
 3f2:	00000097          	auipc	ra,0x0
 3f6:	2f8080e7          	jalr	760(ra) # 6ea <read>
 3fa:	87aa                	mv	a5,a0
 3fc:	fef42423          	sw	a5,-24(s0)
 400:	fe842783          	lw	a5,-24(s0)
 404:	2781                	sext.w	a5,a5
 406:	04f05763          	blez	a5,454 <gets+0x84>
 40a:	fec42783          	lw	a5,-20(s0)
 40e:	0017871b          	addiw	a4,a5,1
 412:	fee42623          	sw	a4,-20(s0)
 416:	873e                	mv	a4,a5
 418:	fd843783          	ld	a5,-40(s0)
 41c:	97ba                	add	a5,a5,a4
 41e:	fe744703          	lbu	a4,-25(s0)
 422:	00e78023          	sb	a4,0(a5)
 426:	fe744783          	lbu	a5,-25(s0)
 42a:	873e                	mv	a4,a5
 42c:	47a9                	li	a5,10
 42e:	02f70463          	beq	a4,a5,456 <gets+0x86>
 432:	fe744783          	lbu	a5,-25(s0)
 436:	873e                	mv	a4,a5
 438:	47b5                	li	a5,13
 43a:	00f70e63          	beq	a4,a5,456 <gets+0x86>
 43e:	fec42783          	lw	a5,-20(s0)
 442:	2785                	addiw	a5,a5,1
 444:	0007871b          	sext.w	a4,a5
 448:	fd442783          	lw	a5,-44(s0)
 44c:	2781                	sext.w	a5,a5
 44e:	f8f74de3          	blt	a4,a5,3e8 <gets+0x18>
 452:	a011                	j	456 <gets+0x86>
 454:	0001                	nop
 456:	fec42783          	lw	a5,-20(s0)
 45a:	fd843703          	ld	a4,-40(s0)
 45e:	97ba                	add	a5,a5,a4
 460:	00078023          	sb	zero,0(a5)
 464:	fd843783          	ld	a5,-40(s0)
 468:	853e                	mv	a0,a5
 46a:	70a2                	ld	ra,40(sp)
 46c:	7402                	ld	s0,32(sp)
 46e:	6145                	addi	sp,sp,48
 470:	8082                	ret

0000000000000472 <stat>:
 472:	7179                	addi	sp,sp,-48
 474:	f406                	sd	ra,40(sp)
 476:	f022                	sd	s0,32(sp)
 478:	1800                	addi	s0,sp,48
 47a:	fca43c23          	sd	a0,-40(s0)
 47e:	fcb43823          	sd	a1,-48(s0)
 482:	4581                	li	a1,0
 484:	fd843503          	ld	a0,-40(s0)
 488:	00000097          	auipc	ra,0x0
 48c:	28a080e7          	jalr	650(ra) # 712 <open>
 490:	87aa                	mv	a5,a0
 492:	fef42623          	sw	a5,-20(s0)
 496:	fec42783          	lw	a5,-20(s0)
 49a:	2781                	sext.w	a5,a5
 49c:	0007d463          	bgez	a5,4a4 <stat+0x32>
 4a0:	57fd                	li	a5,-1
 4a2:	a035                	j	4ce <stat+0x5c>
 4a4:	fec42783          	lw	a5,-20(s0)
 4a8:	fd043583          	ld	a1,-48(s0)
 4ac:	853e                	mv	a0,a5
 4ae:	00000097          	auipc	ra,0x0
 4b2:	27c080e7          	jalr	636(ra) # 72a <fstat>
 4b6:	87aa                	mv	a5,a0
 4b8:	fef42423          	sw	a5,-24(s0)
 4bc:	fec42783          	lw	a5,-20(s0)
 4c0:	853e                	mv	a0,a5
 4c2:	00000097          	auipc	ra,0x0
 4c6:	238080e7          	jalr	568(ra) # 6fa <close>
 4ca:	fe842783          	lw	a5,-24(s0)
 4ce:	853e                	mv	a0,a5
 4d0:	70a2                	ld	ra,40(sp)
 4d2:	7402                	ld	s0,32(sp)
 4d4:	6145                	addi	sp,sp,48
 4d6:	8082                	ret

00000000000004d8 <atoi>:
 4d8:	7179                	addi	sp,sp,-48
 4da:	f422                	sd	s0,40(sp)
 4dc:	1800                	addi	s0,sp,48
 4de:	fca43c23          	sd	a0,-40(s0)
 4e2:	fe042623          	sw	zero,-20(s0)
 4e6:	a81d                	j	51c <atoi+0x44>
 4e8:	fec42783          	lw	a5,-20(s0)
 4ec:	873e                	mv	a4,a5
 4ee:	87ba                	mv	a5,a4
 4f0:	0027979b          	slliw	a5,a5,0x2
 4f4:	9fb9                	addw	a5,a5,a4
 4f6:	0017979b          	slliw	a5,a5,0x1
 4fa:	0007871b          	sext.w	a4,a5
 4fe:	fd843783          	ld	a5,-40(s0)
 502:	00178693          	addi	a3,a5,1
 506:	fcd43c23          	sd	a3,-40(s0)
 50a:	0007c783          	lbu	a5,0(a5)
 50e:	2781                	sext.w	a5,a5
 510:	9fb9                	addw	a5,a5,a4
 512:	2781                	sext.w	a5,a5
 514:	fd07879b          	addiw	a5,a5,-48
 518:	fef42623          	sw	a5,-20(s0)
 51c:	fd843783          	ld	a5,-40(s0)
 520:	0007c783          	lbu	a5,0(a5)
 524:	873e                	mv	a4,a5
 526:	02f00793          	li	a5,47
 52a:	00e7fb63          	bgeu	a5,a4,540 <atoi+0x68>
 52e:	fd843783          	ld	a5,-40(s0)
 532:	0007c783          	lbu	a5,0(a5)
 536:	873e                	mv	a4,a5
 538:	03900793          	li	a5,57
 53c:	fae7f6e3          	bgeu	a5,a4,4e8 <atoi+0x10>
 540:	fec42783          	lw	a5,-20(s0)
 544:	853e                	mv	a0,a5
 546:	7422                	ld	s0,40(sp)
 548:	6145                	addi	sp,sp,48
 54a:	8082                	ret

000000000000054c <memmove>:
 54c:	7139                	addi	sp,sp,-64
 54e:	fc22                	sd	s0,56(sp)
 550:	0080                	addi	s0,sp,64
 552:	fca43c23          	sd	a0,-40(s0)
 556:	fcb43823          	sd	a1,-48(s0)
 55a:	87b2                	mv	a5,a2
 55c:	fcf42623          	sw	a5,-52(s0)
 560:	fd843783          	ld	a5,-40(s0)
 564:	fef43423          	sd	a5,-24(s0)
 568:	fd043783          	ld	a5,-48(s0)
 56c:	fef43023          	sd	a5,-32(s0)
 570:	fe043703          	ld	a4,-32(s0)
 574:	fe843783          	ld	a5,-24(s0)
 578:	02e7fc63          	bgeu	a5,a4,5b0 <memmove+0x64>
 57c:	a00d                	j	59e <memmove+0x52>
 57e:	fe043703          	ld	a4,-32(s0)
 582:	00170793          	addi	a5,a4,1
 586:	fef43023          	sd	a5,-32(s0)
 58a:	fe843783          	ld	a5,-24(s0)
 58e:	00178693          	addi	a3,a5,1
 592:	fed43423          	sd	a3,-24(s0)
 596:	00074703          	lbu	a4,0(a4)
 59a:	00e78023          	sb	a4,0(a5)
 59e:	fcc42783          	lw	a5,-52(s0)
 5a2:	fff7871b          	addiw	a4,a5,-1
 5a6:	fce42623          	sw	a4,-52(s0)
 5aa:	fcf04ae3          	bgtz	a5,57e <memmove+0x32>
 5ae:	a891                	j	602 <memmove+0xb6>
 5b0:	fcc42783          	lw	a5,-52(s0)
 5b4:	fe843703          	ld	a4,-24(s0)
 5b8:	97ba                	add	a5,a5,a4
 5ba:	fef43423          	sd	a5,-24(s0)
 5be:	fcc42783          	lw	a5,-52(s0)
 5c2:	fe043703          	ld	a4,-32(s0)
 5c6:	97ba                	add	a5,a5,a4
 5c8:	fef43023          	sd	a5,-32(s0)
 5cc:	a01d                	j	5f2 <memmove+0xa6>
 5ce:	fe043783          	ld	a5,-32(s0)
 5d2:	17fd                	addi	a5,a5,-1
 5d4:	fef43023          	sd	a5,-32(s0)
 5d8:	fe843783          	ld	a5,-24(s0)
 5dc:	17fd                	addi	a5,a5,-1
 5de:	fef43423          	sd	a5,-24(s0)
 5e2:	fe043783          	ld	a5,-32(s0)
 5e6:	0007c703          	lbu	a4,0(a5)
 5ea:	fe843783          	ld	a5,-24(s0)
 5ee:	00e78023          	sb	a4,0(a5)
 5f2:	fcc42783          	lw	a5,-52(s0)
 5f6:	fff7871b          	addiw	a4,a5,-1
 5fa:	fce42623          	sw	a4,-52(s0)
 5fe:	fcf048e3          	bgtz	a5,5ce <memmove+0x82>
 602:	fd843783          	ld	a5,-40(s0)
 606:	853e                	mv	a0,a5
 608:	7462                	ld	s0,56(sp)
 60a:	6121                	addi	sp,sp,64
 60c:	8082                	ret

000000000000060e <memcmp>:
 60e:	7139                	addi	sp,sp,-64
 610:	fc22                	sd	s0,56(sp)
 612:	0080                	addi	s0,sp,64
 614:	fca43c23          	sd	a0,-40(s0)
 618:	fcb43823          	sd	a1,-48(s0)
 61c:	87b2                	mv	a5,a2
 61e:	fcf42623          	sw	a5,-52(s0)
 622:	fd843783          	ld	a5,-40(s0)
 626:	fef43423          	sd	a5,-24(s0)
 62a:	fd043783          	ld	a5,-48(s0)
 62e:	fef43023          	sd	a5,-32(s0)
 632:	a0a1                	j	67a <memcmp+0x6c>
 634:	fe843783          	ld	a5,-24(s0)
 638:	0007c703          	lbu	a4,0(a5)
 63c:	fe043783          	ld	a5,-32(s0)
 640:	0007c783          	lbu	a5,0(a5)
 644:	02f70163          	beq	a4,a5,666 <memcmp+0x58>
 648:	fe843783          	ld	a5,-24(s0)
 64c:	0007c783          	lbu	a5,0(a5)
 650:	0007871b          	sext.w	a4,a5
 654:	fe043783          	ld	a5,-32(s0)
 658:	0007c783          	lbu	a5,0(a5)
 65c:	2781                	sext.w	a5,a5
 65e:	40f707bb          	subw	a5,a4,a5
 662:	2781                	sext.w	a5,a5
 664:	a01d                	j	68a <memcmp+0x7c>
 666:	fe843783          	ld	a5,-24(s0)
 66a:	0785                	addi	a5,a5,1
 66c:	fef43423          	sd	a5,-24(s0)
 670:	fe043783          	ld	a5,-32(s0)
 674:	0785                	addi	a5,a5,1
 676:	fef43023          	sd	a5,-32(s0)
 67a:	fcc42783          	lw	a5,-52(s0)
 67e:	fff7871b          	addiw	a4,a5,-1
 682:	fce42623          	sw	a4,-52(s0)
 686:	f7dd                	bnez	a5,634 <memcmp+0x26>
 688:	4781                	li	a5,0
 68a:	853e                	mv	a0,a5
 68c:	7462                	ld	s0,56(sp)
 68e:	6121                	addi	sp,sp,64
 690:	8082                	ret

0000000000000692 <memcpy>:
 692:	7179                	addi	sp,sp,-48
 694:	f406                	sd	ra,40(sp)
 696:	f022                	sd	s0,32(sp)
 698:	1800                	addi	s0,sp,48
 69a:	fea43423          	sd	a0,-24(s0)
 69e:	feb43023          	sd	a1,-32(s0)
 6a2:	87b2                	mv	a5,a2
 6a4:	fcf42e23          	sw	a5,-36(s0)
 6a8:	fdc42783          	lw	a5,-36(s0)
 6ac:	863e                	mv	a2,a5
 6ae:	fe043583          	ld	a1,-32(s0)
 6b2:	fe843503          	ld	a0,-24(s0)
 6b6:	00000097          	auipc	ra,0x0
 6ba:	e96080e7          	jalr	-362(ra) # 54c <memmove>
 6be:	87aa                	mv	a5,a0
 6c0:	853e                	mv	a0,a5
 6c2:	70a2                	ld	ra,40(sp)
 6c4:	7402                	ld	s0,32(sp)
 6c6:	6145                	addi	sp,sp,48
 6c8:	8082                	ret

00000000000006ca <fork>:
 6ca:	4885                	li	a7,1
 6cc:	00000073          	ecall
 6d0:	8082                	ret

00000000000006d2 <exit>:
 6d2:	4889                	li	a7,2
 6d4:	00000073          	ecall
 6d8:	8082                	ret

00000000000006da <wait>:
 6da:	488d                	li	a7,3
 6dc:	00000073          	ecall
 6e0:	8082                	ret

00000000000006e2 <pipe>:
 6e2:	4891                	li	a7,4
 6e4:	00000073          	ecall
 6e8:	8082                	ret

00000000000006ea <read>:
 6ea:	4895                	li	a7,5
 6ec:	00000073          	ecall
 6f0:	8082                	ret

00000000000006f2 <write>:
 6f2:	48c1                	li	a7,16
 6f4:	00000073          	ecall
 6f8:	8082                	ret

00000000000006fa <close>:
 6fa:	48d5                	li	a7,21
 6fc:	00000073          	ecall
 700:	8082                	ret

0000000000000702 <kill>:
 702:	4899                	li	a7,6
 704:	00000073          	ecall
 708:	8082                	ret

000000000000070a <exec>:
 70a:	489d                	li	a7,7
 70c:	00000073          	ecall
 710:	8082                	ret

0000000000000712 <open>:
 712:	48bd                	li	a7,15
 714:	00000073          	ecall
 718:	8082                	ret

000000000000071a <mknod>:
 71a:	48c5                	li	a7,17
 71c:	00000073          	ecall
 720:	8082                	ret

0000000000000722 <unlink>:
 722:	48c9                	li	a7,18
 724:	00000073          	ecall
 728:	8082                	ret

000000000000072a <fstat>:
 72a:	48a1                	li	a7,8
 72c:	00000073          	ecall
 730:	8082                	ret

0000000000000732 <link>:
 732:	48cd                	li	a7,19
 734:	00000073          	ecall
 738:	8082                	ret

000000000000073a <mkdir>:
 73a:	48d1                	li	a7,20
 73c:	00000073          	ecall
 740:	8082                	ret

0000000000000742 <chdir>:
 742:	48a5                	li	a7,9
 744:	00000073          	ecall
 748:	8082                	ret

000000000000074a <dup>:
 74a:	48a9                	li	a7,10
 74c:	00000073          	ecall
 750:	8082                	ret

0000000000000752 <getpid>:
 752:	48ad                	li	a7,11
 754:	00000073          	ecall
 758:	8082                	ret

000000000000075a <sbrk>:
 75a:	48b1                	li	a7,12
 75c:	00000073          	ecall
 760:	8082                	ret

0000000000000762 <sleep>:
 762:	48b5                	li	a7,13
 764:	00000073          	ecall
 768:	8082                	ret

000000000000076a <uptime>:
 76a:	48b9                	li	a7,14
 76c:	00000073          	ecall
 770:	8082                	ret

0000000000000772 <waitx>:
 772:	48d9                	li	a7,22
 774:	00000073          	ecall
 778:	8082                	ret

000000000000077a <getsyscount>:
 77a:	48dd                	li	a7,23
 77c:	00000073          	ecall
 780:	8082                	ret

0000000000000782 <sigalarm>:
 782:	48e1                	li	a7,24
 784:	00000073          	ecall
 788:	8082                	ret

000000000000078a <sigreturn>:
 78a:	48e5                	li	a7,25
 78c:	00000073          	ecall
 790:	8082                	ret

0000000000000792 <settickets>:
 792:	48e9                	li	a7,26
 794:	00000073          	ecall
 798:	8082                	ret

000000000000079a <putc>:
 79a:	1101                	addi	sp,sp,-32
 79c:	ec06                	sd	ra,24(sp)
 79e:	e822                	sd	s0,16(sp)
 7a0:	1000                	addi	s0,sp,32
 7a2:	87aa                	mv	a5,a0
 7a4:	872e                	mv	a4,a1
 7a6:	fef42623          	sw	a5,-20(s0)
 7aa:	87ba                	mv	a5,a4
 7ac:	fef405a3          	sb	a5,-21(s0)
 7b0:	feb40713          	addi	a4,s0,-21
 7b4:	fec42783          	lw	a5,-20(s0)
 7b8:	4605                	li	a2,1
 7ba:	85ba                	mv	a1,a4
 7bc:	853e                	mv	a0,a5
 7be:	00000097          	auipc	ra,0x0
 7c2:	f34080e7          	jalr	-204(ra) # 6f2 <write>
 7c6:	0001                	nop
 7c8:	60e2                	ld	ra,24(sp)
 7ca:	6442                	ld	s0,16(sp)
 7cc:	6105                	addi	sp,sp,32
 7ce:	8082                	ret

00000000000007d0 <printint>:
 7d0:	7139                	addi	sp,sp,-64
 7d2:	fc06                	sd	ra,56(sp)
 7d4:	f822                	sd	s0,48(sp)
 7d6:	0080                	addi	s0,sp,64
 7d8:	87aa                	mv	a5,a0
 7da:	8736                	mv	a4,a3
 7dc:	fcf42623          	sw	a5,-52(s0)
 7e0:	87ae                	mv	a5,a1
 7e2:	fcf42423          	sw	a5,-56(s0)
 7e6:	87b2                	mv	a5,a2
 7e8:	fcf42223          	sw	a5,-60(s0)
 7ec:	87ba                	mv	a5,a4
 7ee:	fcf42023          	sw	a5,-64(s0)
 7f2:	fe042423          	sw	zero,-24(s0)
 7f6:	fc042783          	lw	a5,-64(s0)
 7fa:	2781                	sext.w	a5,a5
 7fc:	c38d                	beqz	a5,81e <printint+0x4e>
 7fe:	fc842783          	lw	a5,-56(s0)
 802:	2781                	sext.w	a5,a5
 804:	0007dd63          	bgez	a5,81e <printint+0x4e>
 808:	4785                	li	a5,1
 80a:	fef42423          	sw	a5,-24(s0)
 80e:	fc842783          	lw	a5,-56(s0)
 812:	40f007bb          	negw	a5,a5
 816:	2781                	sext.w	a5,a5
 818:	fef42223          	sw	a5,-28(s0)
 81c:	a029                	j	826 <printint+0x56>
 81e:	fc842783          	lw	a5,-56(s0)
 822:	fef42223          	sw	a5,-28(s0)
 826:	fe042623          	sw	zero,-20(s0)
 82a:	fc442783          	lw	a5,-60(s0)
 82e:	fe442703          	lw	a4,-28(s0)
 832:	02f777bb          	remuw	a5,a4,a5
 836:	0007861b          	sext.w	a2,a5
 83a:	fec42783          	lw	a5,-20(s0)
 83e:	0017871b          	addiw	a4,a5,1
 842:	fee42623          	sw	a4,-20(s0)
 846:	00000697          	auipc	a3,0x0
 84a:	7ba68693          	addi	a3,a3,1978 # 1000 <digits>
 84e:	02061713          	slli	a4,a2,0x20
 852:	9301                	srli	a4,a4,0x20
 854:	9736                	add	a4,a4,a3
 856:	00074703          	lbu	a4,0(a4)
 85a:	17c1                	addi	a5,a5,-16
 85c:	97a2                	add	a5,a5,s0
 85e:	fee78023          	sb	a4,-32(a5)
 862:	fc442783          	lw	a5,-60(s0)
 866:	fe442703          	lw	a4,-28(s0)
 86a:	02f757bb          	divuw	a5,a4,a5
 86e:	fef42223          	sw	a5,-28(s0)
 872:	fe442783          	lw	a5,-28(s0)
 876:	2781                	sext.w	a5,a5
 878:	fbcd                	bnez	a5,82a <printint+0x5a>
 87a:	fe842783          	lw	a5,-24(s0)
 87e:	2781                	sext.w	a5,a5
 880:	cf85                	beqz	a5,8b8 <printint+0xe8>
 882:	fec42783          	lw	a5,-20(s0)
 886:	0017871b          	addiw	a4,a5,1
 88a:	fee42623          	sw	a4,-20(s0)
 88e:	17c1                	addi	a5,a5,-16
 890:	97a2                	add	a5,a5,s0
 892:	02d00713          	li	a4,45
 896:	fee78023          	sb	a4,-32(a5)
 89a:	a839                	j	8b8 <printint+0xe8>
 89c:	fec42783          	lw	a5,-20(s0)
 8a0:	17c1                	addi	a5,a5,-16
 8a2:	97a2                	add	a5,a5,s0
 8a4:	fe07c703          	lbu	a4,-32(a5)
 8a8:	fcc42783          	lw	a5,-52(s0)
 8ac:	85ba                	mv	a1,a4
 8ae:	853e                	mv	a0,a5
 8b0:	00000097          	auipc	ra,0x0
 8b4:	eea080e7          	jalr	-278(ra) # 79a <putc>
 8b8:	fec42783          	lw	a5,-20(s0)
 8bc:	37fd                	addiw	a5,a5,-1
 8be:	fef42623          	sw	a5,-20(s0)
 8c2:	fec42783          	lw	a5,-20(s0)
 8c6:	2781                	sext.w	a5,a5
 8c8:	fc07dae3          	bgez	a5,89c <printint+0xcc>
 8cc:	0001                	nop
 8ce:	0001                	nop
 8d0:	70e2                	ld	ra,56(sp)
 8d2:	7442                	ld	s0,48(sp)
 8d4:	6121                	addi	sp,sp,64
 8d6:	8082                	ret

00000000000008d8 <printptr>:
 8d8:	7179                	addi	sp,sp,-48
 8da:	f406                	sd	ra,40(sp)
 8dc:	f022                	sd	s0,32(sp)
 8de:	1800                	addi	s0,sp,48
 8e0:	87aa                	mv	a5,a0
 8e2:	fcb43823          	sd	a1,-48(s0)
 8e6:	fcf42e23          	sw	a5,-36(s0)
 8ea:	fdc42783          	lw	a5,-36(s0)
 8ee:	03000593          	li	a1,48
 8f2:	853e                	mv	a0,a5
 8f4:	00000097          	auipc	ra,0x0
 8f8:	ea6080e7          	jalr	-346(ra) # 79a <putc>
 8fc:	fdc42783          	lw	a5,-36(s0)
 900:	07800593          	li	a1,120
 904:	853e                	mv	a0,a5
 906:	00000097          	auipc	ra,0x0
 90a:	e94080e7          	jalr	-364(ra) # 79a <putc>
 90e:	fe042623          	sw	zero,-20(s0)
 912:	a82d                	j	94c <printptr+0x74>
 914:	fd043783          	ld	a5,-48(s0)
 918:	93f1                	srli	a5,a5,0x3c
 91a:	00000717          	auipc	a4,0x0
 91e:	6e670713          	addi	a4,a4,1766 # 1000 <digits>
 922:	97ba                	add	a5,a5,a4
 924:	0007c703          	lbu	a4,0(a5)
 928:	fdc42783          	lw	a5,-36(s0)
 92c:	85ba                	mv	a1,a4
 92e:	853e                	mv	a0,a5
 930:	00000097          	auipc	ra,0x0
 934:	e6a080e7          	jalr	-406(ra) # 79a <putc>
 938:	fec42783          	lw	a5,-20(s0)
 93c:	2785                	addiw	a5,a5,1
 93e:	fef42623          	sw	a5,-20(s0)
 942:	fd043783          	ld	a5,-48(s0)
 946:	0792                	slli	a5,a5,0x4
 948:	fcf43823          	sd	a5,-48(s0)
 94c:	fec42783          	lw	a5,-20(s0)
 950:	873e                	mv	a4,a5
 952:	47bd                	li	a5,15
 954:	fce7f0e3          	bgeu	a5,a4,914 <printptr+0x3c>
 958:	0001                	nop
 95a:	0001                	nop
 95c:	70a2                	ld	ra,40(sp)
 95e:	7402                	ld	s0,32(sp)
 960:	6145                	addi	sp,sp,48
 962:	8082                	ret

0000000000000964 <vprintf>:
 964:	715d                	addi	sp,sp,-80
 966:	e486                	sd	ra,72(sp)
 968:	e0a2                	sd	s0,64(sp)
 96a:	0880                	addi	s0,sp,80
 96c:	87aa                	mv	a5,a0
 96e:	fcb43023          	sd	a1,-64(s0)
 972:	fac43c23          	sd	a2,-72(s0)
 976:	fcf42623          	sw	a5,-52(s0)
 97a:	fe042023          	sw	zero,-32(s0)
 97e:	fe042223          	sw	zero,-28(s0)
 982:	a42d                	j	bac <vprintf+0x248>
 984:	fe442783          	lw	a5,-28(s0)
 988:	fc043703          	ld	a4,-64(s0)
 98c:	97ba                	add	a5,a5,a4
 98e:	0007c783          	lbu	a5,0(a5)
 992:	fcf42e23          	sw	a5,-36(s0)
 996:	fe042783          	lw	a5,-32(s0)
 99a:	2781                	sext.w	a5,a5
 99c:	eb9d                	bnez	a5,9d2 <vprintf+0x6e>
 99e:	fdc42783          	lw	a5,-36(s0)
 9a2:	0007871b          	sext.w	a4,a5
 9a6:	02500793          	li	a5,37
 9aa:	00f71763          	bne	a4,a5,9b8 <vprintf+0x54>
 9ae:	02500793          	li	a5,37
 9b2:	fef42023          	sw	a5,-32(s0)
 9b6:	a2f5                	j	ba2 <vprintf+0x23e>
 9b8:	fdc42783          	lw	a5,-36(s0)
 9bc:	0ff7f713          	zext.b	a4,a5
 9c0:	fcc42783          	lw	a5,-52(s0)
 9c4:	85ba                	mv	a1,a4
 9c6:	853e                	mv	a0,a5
 9c8:	00000097          	auipc	ra,0x0
 9cc:	dd2080e7          	jalr	-558(ra) # 79a <putc>
 9d0:	aac9                	j	ba2 <vprintf+0x23e>
 9d2:	fe042783          	lw	a5,-32(s0)
 9d6:	0007871b          	sext.w	a4,a5
 9da:	02500793          	li	a5,37
 9de:	1cf71263          	bne	a4,a5,ba2 <vprintf+0x23e>
 9e2:	fdc42783          	lw	a5,-36(s0)
 9e6:	0007871b          	sext.w	a4,a5
 9ea:	06400793          	li	a5,100
 9ee:	02f71463          	bne	a4,a5,a16 <vprintf+0xb2>
 9f2:	fb843783          	ld	a5,-72(s0)
 9f6:	00878713          	addi	a4,a5,8
 9fa:	fae43c23          	sd	a4,-72(s0)
 9fe:	4398                	lw	a4,0(a5)
 a00:	fcc42783          	lw	a5,-52(s0)
 a04:	4685                	li	a3,1
 a06:	4629                	li	a2,10
 a08:	85ba                	mv	a1,a4
 a0a:	853e                	mv	a0,a5
 a0c:	00000097          	auipc	ra,0x0
 a10:	dc4080e7          	jalr	-572(ra) # 7d0 <printint>
 a14:	a269                	j	b9e <vprintf+0x23a>
 a16:	fdc42783          	lw	a5,-36(s0)
 a1a:	0007871b          	sext.w	a4,a5
 a1e:	06c00793          	li	a5,108
 a22:	02f71663          	bne	a4,a5,a4e <vprintf+0xea>
 a26:	fb843783          	ld	a5,-72(s0)
 a2a:	00878713          	addi	a4,a5,8
 a2e:	fae43c23          	sd	a4,-72(s0)
 a32:	639c                	ld	a5,0(a5)
 a34:	0007871b          	sext.w	a4,a5
 a38:	fcc42783          	lw	a5,-52(s0)
 a3c:	4681                	li	a3,0
 a3e:	4629                	li	a2,10
 a40:	85ba                	mv	a1,a4
 a42:	853e                	mv	a0,a5
 a44:	00000097          	auipc	ra,0x0
 a48:	d8c080e7          	jalr	-628(ra) # 7d0 <printint>
 a4c:	aa89                	j	b9e <vprintf+0x23a>
 a4e:	fdc42783          	lw	a5,-36(s0)
 a52:	0007871b          	sext.w	a4,a5
 a56:	07800793          	li	a5,120
 a5a:	02f71463          	bne	a4,a5,a82 <vprintf+0x11e>
 a5e:	fb843783          	ld	a5,-72(s0)
 a62:	00878713          	addi	a4,a5,8
 a66:	fae43c23          	sd	a4,-72(s0)
 a6a:	4398                	lw	a4,0(a5)
 a6c:	fcc42783          	lw	a5,-52(s0)
 a70:	4681                	li	a3,0
 a72:	4641                	li	a2,16
 a74:	85ba                	mv	a1,a4
 a76:	853e                	mv	a0,a5
 a78:	00000097          	auipc	ra,0x0
 a7c:	d58080e7          	jalr	-680(ra) # 7d0 <printint>
 a80:	aa39                	j	b9e <vprintf+0x23a>
 a82:	fdc42783          	lw	a5,-36(s0)
 a86:	0007871b          	sext.w	a4,a5
 a8a:	07000793          	li	a5,112
 a8e:	02f71263          	bne	a4,a5,ab2 <vprintf+0x14e>
 a92:	fb843783          	ld	a5,-72(s0)
 a96:	00878713          	addi	a4,a5,8
 a9a:	fae43c23          	sd	a4,-72(s0)
 a9e:	6398                	ld	a4,0(a5)
 aa0:	fcc42783          	lw	a5,-52(s0)
 aa4:	85ba                	mv	a1,a4
 aa6:	853e                	mv	a0,a5
 aa8:	00000097          	auipc	ra,0x0
 aac:	e30080e7          	jalr	-464(ra) # 8d8 <printptr>
 ab0:	a0fd                	j	b9e <vprintf+0x23a>
 ab2:	fdc42783          	lw	a5,-36(s0)
 ab6:	0007871b          	sext.w	a4,a5
 aba:	07300793          	li	a5,115
 abe:	04f71c63          	bne	a4,a5,b16 <vprintf+0x1b2>
 ac2:	fb843783          	ld	a5,-72(s0)
 ac6:	00878713          	addi	a4,a5,8
 aca:	fae43c23          	sd	a4,-72(s0)
 ace:	639c                	ld	a5,0(a5)
 ad0:	fef43423          	sd	a5,-24(s0)
 ad4:	fe843783          	ld	a5,-24(s0)
 ad8:	eb8d                	bnez	a5,b0a <vprintf+0x1a6>
 ada:	00000797          	auipc	a5,0x0
 ade:	4be78793          	addi	a5,a5,1214 # f98 <malloc+0x184>
 ae2:	fef43423          	sd	a5,-24(s0)
 ae6:	a015                	j	b0a <vprintf+0x1a6>
 ae8:	fe843783          	ld	a5,-24(s0)
 aec:	0007c703          	lbu	a4,0(a5)
 af0:	fcc42783          	lw	a5,-52(s0)
 af4:	85ba                	mv	a1,a4
 af6:	853e                	mv	a0,a5
 af8:	00000097          	auipc	ra,0x0
 afc:	ca2080e7          	jalr	-862(ra) # 79a <putc>
 b00:	fe843783          	ld	a5,-24(s0)
 b04:	0785                	addi	a5,a5,1
 b06:	fef43423          	sd	a5,-24(s0)
 b0a:	fe843783          	ld	a5,-24(s0)
 b0e:	0007c783          	lbu	a5,0(a5)
 b12:	fbf9                	bnez	a5,ae8 <vprintf+0x184>
 b14:	a069                	j	b9e <vprintf+0x23a>
 b16:	fdc42783          	lw	a5,-36(s0)
 b1a:	0007871b          	sext.w	a4,a5
 b1e:	06300793          	li	a5,99
 b22:	02f71463          	bne	a4,a5,b4a <vprintf+0x1e6>
 b26:	fb843783          	ld	a5,-72(s0)
 b2a:	00878713          	addi	a4,a5,8
 b2e:	fae43c23          	sd	a4,-72(s0)
 b32:	439c                	lw	a5,0(a5)
 b34:	0ff7f713          	zext.b	a4,a5
 b38:	fcc42783          	lw	a5,-52(s0)
 b3c:	85ba                	mv	a1,a4
 b3e:	853e                	mv	a0,a5
 b40:	00000097          	auipc	ra,0x0
 b44:	c5a080e7          	jalr	-934(ra) # 79a <putc>
 b48:	a899                	j	b9e <vprintf+0x23a>
 b4a:	fdc42783          	lw	a5,-36(s0)
 b4e:	0007871b          	sext.w	a4,a5
 b52:	02500793          	li	a5,37
 b56:	00f71f63          	bne	a4,a5,b74 <vprintf+0x210>
 b5a:	fdc42783          	lw	a5,-36(s0)
 b5e:	0ff7f713          	zext.b	a4,a5
 b62:	fcc42783          	lw	a5,-52(s0)
 b66:	85ba                	mv	a1,a4
 b68:	853e                	mv	a0,a5
 b6a:	00000097          	auipc	ra,0x0
 b6e:	c30080e7          	jalr	-976(ra) # 79a <putc>
 b72:	a035                	j	b9e <vprintf+0x23a>
 b74:	fcc42783          	lw	a5,-52(s0)
 b78:	02500593          	li	a1,37
 b7c:	853e                	mv	a0,a5
 b7e:	00000097          	auipc	ra,0x0
 b82:	c1c080e7          	jalr	-996(ra) # 79a <putc>
 b86:	fdc42783          	lw	a5,-36(s0)
 b8a:	0ff7f713          	zext.b	a4,a5
 b8e:	fcc42783          	lw	a5,-52(s0)
 b92:	85ba                	mv	a1,a4
 b94:	853e                	mv	a0,a5
 b96:	00000097          	auipc	ra,0x0
 b9a:	c04080e7          	jalr	-1020(ra) # 79a <putc>
 b9e:	fe042023          	sw	zero,-32(s0)
 ba2:	fe442783          	lw	a5,-28(s0)
 ba6:	2785                	addiw	a5,a5,1
 ba8:	fef42223          	sw	a5,-28(s0)
 bac:	fe442783          	lw	a5,-28(s0)
 bb0:	fc043703          	ld	a4,-64(s0)
 bb4:	97ba                	add	a5,a5,a4
 bb6:	0007c783          	lbu	a5,0(a5)
 bba:	dc0795e3          	bnez	a5,984 <vprintf+0x20>
 bbe:	0001                	nop
 bc0:	0001                	nop
 bc2:	60a6                	ld	ra,72(sp)
 bc4:	6406                	ld	s0,64(sp)
 bc6:	6161                	addi	sp,sp,80
 bc8:	8082                	ret

0000000000000bca <fprintf>:
 bca:	7159                	addi	sp,sp,-112
 bcc:	fc06                	sd	ra,56(sp)
 bce:	f822                	sd	s0,48(sp)
 bd0:	0080                	addi	s0,sp,64
 bd2:	fcb43823          	sd	a1,-48(s0)
 bd6:	e010                	sd	a2,0(s0)
 bd8:	e414                	sd	a3,8(s0)
 bda:	e818                	sd	a4,16(s0)
 bdc:	ec1c                	sd	a5,24(s0)
 bde:	03043023          	sd	a6,32(s0)
 be2:	03143423          	sd	a7,40(s0)
 be6:	87aa                	mv	a5,a0
 be8:	fcf42e23          	sw	a5,-36(s0)
 bec:	03040793          	addi	a5,s0,48
 bf0:	fcf43423          	sd	a5,-56(s0)
 bf4:	fc843783          	ld	a5,-56(s0)
 bf8:	fd078793          	addi	a5,a5,-48
 bfc:	fef43423          	sd	a5,-24(s0)
 c00:	fe843703          	ld	a4,-24(s0)
 c04:	fdc42783          	lw	a5,-36(s0)
 c08:	863a                	mv	a2,a4
 c0a:	fd043583          	ld	a1,-48(s0)
 c0e:	853e                	mv	a0,a5
 c10:	00000097          	auipc	ra,0x0
 c14:	d54080e7          	jalr	-684(ra) # 964 <vprintf>
 c18:	0001                	nop
 c1a:	70e2                	ld	ra,56(sp)
 c1c:	7442                	ld	s0,48(sp)
 c1e:	6165                	addi	sp,sp,112
 c20:	8082                	ret

0000000000000c22 <printf>:
 c22:	7159                	addi	sp,sp,-112
 c24:	f406                	sd	ra,40(sp)
 c26:	f022                	sd	s0,32(sp)
 c28:	1800                	addi	s0,sp,48
 c2a:	fca43c23          	sd	a0,-40(s0)
 c2e:	e40c                	sd	a1,8(s0)
 c30:	e810                	sd	a2,16(s0)
 c32:	ec14                	sd	a3,24(s0)
 c34:	f018                	sd	a4,32(s0)
 c36:	f41c                	sd	a5,40(s0)
 c38:	03043823          	sd	a6,48(s0)
 c3c:	03143c23          	sd	a7,56(s0)
 c40:	04040793          	addi	a5,s0,64
 c44:	fcf43823          	sd	a5,-48(s0)
 c48:	fd043783          	ld	a5,-48(s0)
 c4c:	fc878793          	addi	a5,a5,-56
 c50:	fef43423          	sd	a5,-24(s0)
 c54:	fe843783          	ld	a5,-24(s0)
 c58:	863e                	mv	a2,a5
 c5a:	fd843583          	ld	a1,-40(s0)
 c5e:	4505                	li	a0,1
 c60:	00000097          	auipc	ra,0x0
 c64:	d04080e7          	jalr	-764(ra) # 964 <vprintf>
 c68:	0001                	nop
 c6a:	70a2                	ld	ra,40(sp)
 c6c:	7402                	ld	s0,32(sp)
 c6e:	6165                	addi	sp,sp,112
 c70:	8082                	ret

0000000000000c72 <free>:
 c72:	7179                	addi	sp,sp,-48
 c74:	f422                	sd	s0,40(sp)
 c76:	1800                	addi	s0,sp,48
 c78:	fca43c23          	sd	a0,-40(s0)
 c7c:	fd843783          	ld	a5,-40(s0)
 c80:	17c1                	addi	a5,a5,-16
 c82:	fef43023          	sd	a5,-32(s0)
 c86:	00000797          	auipc	a5,0x0
 c8a:	5aa78793          	addi	a5,a5,1450 # 1230 <freep>
 c8e:	639c                	ld	a5,0(a5)
 c90:	fef43423          	sd	a5,-24(s0)
 c94:	a815                	j	cc8 <free+0x56>
 c96:	fe843783          	ld	a5,-24(s0)
 c9a:	639c                	ld	a5,0(a5)
 c9c:	fe843703          	ld	a4,-24(s0)
 ca0:	00f76f63          	bltu	a4,a5,cbe <free+0x4c>
 ca4:	fe043703          	ld	a4,-32(s0)
 ca8:	fe843783          	ld	a5,-24(s0)
 cac:	02e7eb63          	bltu	a5,a4,ce2 <free+0x70>
 cb0:	fe843783          	ld	a5,-24(s0)
 cb4:	639c                	ld	a5,0(a5)
 cb6:	fe043703          	ld	a4,-32(s0)
 cba:	02f76463          	bltu	a4,a5,ce2 <free+0x70>
 cbe:	fe843783          	ld	a5,-24(s0)
 cc2:	639c                	ld	a5,0(a5)
 cc4:	fef43423          	sd	a5,-24(s0)
 cc8:	fe043703          	ld	a4,-32(s0)
 ccc:	fe843783          	ld	a5,-24(s0)
 cd0:	fce7f3e3          	bgeu	a5,a4,c96 <free+0x24>
 cd4:	fe843783          	ld	a5,-24(s0)
 cd8:	639c                	ld	a5,0(a5)
 cda:	fe043703          	ld	a4,-32(s0)
 cde:	faf77ce3          	bgeu	a4,a5,c96 <free+0x24>
 ce2:	fe043783          	ld	a5,-32(s0)
 ce6:	479c                	lw	a5,8(a5)
 ce8:	1782                	slli	a5,a5,0x20
 cea:	9381                	srli	a5,a5,0x20
 cec:	0792                	slli	a5,a5,0x4
 cee:	fe043703          	ld	a4,-32(s0)
 cf2:	973e                	add	a4,a4,a5
 cf4:	fe843783          	ld	a5,-24(s0)
 cf8:	639c                	ld	a5,0(a5)
 cfa:	02f71763          	bne	a4,a5,d28 <free+0xb6>
 cfe:	fe043783          	ld	a5,-32(s0)
 d02:	4798                	lw	a4,8(a5)
 d04:	fe843783          	ld	a5,-24(s0)
 d08:	639c                	ld	a5,0(a5)
 d0a:	479c                	lw	a5,8(a5)
 d0c:	9fb9                	addw	a5,a5,a4
 d0e:	0007871b          	sext.w	a4,a5
 d12:	fe043783          	ld	a5,-32(s0)
 d16:	c798                	sw	a4,8(a5)
 d18:	fe843783          	ld	a5,-24(s0)
 d1c:	639c                	ld	a5,0(a5)
 d1e:	6398                	ld	a4,0(a5)
 d20:	fe043783          	ld	a5,-32(s0)
 d24:	e398                	sd	a4,0(a5)
 d26:	a039                	j	d34 <free+0xc2>
 d28:	fe843783          	ld	a5,-24(s0)
 d2c:	6398                	ld	a4,0(a5)
 d2e:	fe043783          	ld	a5,-32(s0)
 d32:	e398                	sd	a4,0(a5)
 d34:	fe843783          	ld	a5,-24(s0)
 d38:	479c                	lw	a5,8(a5)
 d3a:	1782                	slli	a5,a5,0x20
 d3c:	9381                	srli	a5,a5,0x20
 d3e:	0792                	slli	a5,a5,0x4
 d40:	fe843703          	ld	a4,-24(s0)
 d44:	97ba                	add	a5,a5,a4
 d46:	fe043703          	ld	a4,-32(s0)
 d4a:	02f71563          	bne	a4,a5,d74 <free+0x102>
 d4e:	fe843783          	ld	a5,-24(s0)
 d52:	4798                	lw	a4,8(a5)
 d54:	fe043783          	ld	a5,-32(s0)
 d58:	479c                	lw	a5,8(a5)
 d5a:	9fb9                	addw	a5,a5,a4
 d5c:	0007871b          	sext.w	a4,a5
 d60:	fe843783          	ld	a5,-24(s0)
 d64:	c798                	sw	a4,8(a5)
 d66:	fe043783          	ld	a5,-32(s0)
 d6a:	6398                	ld	a4,0(a5)
 d6c:	fe843783          	ld	a5,-24(s0)
 d70:	e398                	sd	a4,0(a5)
 d72:	a031                	j	d7e <free+0x10c>
 d74:	fe843783          	ld	a5,-24(s0)
 d78:	fe043703          	ld	a4,-32(s0)
 d7c:	e398                	sd	a4,0(a5)
 d7e:	00000797          	auipc	a5,0x0
 d82:	4b278793          	addi	a5,a5,1202 # 1230 <freep>
 d86:	fe843703          	ld	a4,-24(s0)
 d8a:	e398                	sd	a4,0(a5)
 d8c:	0001                	nop
 d8e:	7422                	ld	s0,40(sp)
 d90:	6145                	addi	sp,sp,48
 d92:	8082                	ret

0000000000000d94 <morecore>:
 d94:	7179                	addi	sp,sp,-48
 d96:	f406                	sd	ra,40(sp)
 d98:	f022                	sd	s0,32(sp)
 d9a:	1800                	addi	s0,sp,48
 d9c:	87aa                	mv	a5,a0
 d9e:	fcf42e23          	sw	a5,-36(s0)
 da2:	fdc42783          	lw	a5,-36(s0)
 da6:	0007871b          	sext.w	a4,a5
 daa:	6785                	lui	a5,0x1
 dac:	00f77563          	bgeu	a4,a5,db6 <morecore+0x22>
 db0:	6785                	lui	a5,0x1
 db2:	fcf42e23          	sw	a5,-36(s0)
 db6:	fdc42783          	lw	a5,-36(s0)
 dba:	0047979b          	slliw	a5,a5,0x4
 dbe:	2781                	sext.w	a5,a5
 dc0:	2781                	sext.w	a5,a5
 dc2:	853e                	mv	a0,a5
 dc4:	00000097          	auipc	ra,0x0
 dc8:	996080e7          	jalr	-1642(ra) # 75a <sbrk>
 dcc:	fea43423          	sd	a0,-24(s0)
 dd0:	fe843703          	ld	a4,-24(s0)
 dd4:	57fd                	li	a5,-1
 dd6:	00f71463          	bne	a4,a5,dde <morecore+0x4a>
 dda:	4781                	li	a5,0
 ddc:	a03d                	j	e0a <morecore+0x76>
 dde:	fe843783          	ld	a5,-24(s0)
 de2:	fef43023          	sd	a5,-32(s0)
 de6:	fe043783          	ld	a5,-32(s0)
 dea:	fdc42703          	lw	a4,-36(s0)
 dee:	c798                	sw	a4,8(a5)
 df0:	fe043783          	ld	a5,-32(s0)
 df4:	07c1                	addi	a5,a5,16 # 1010 <digits+0x10>
 df6:	853e                	mv	a0,a5
 df8:	00000097          	auipc	ra,0x0
 dfc:	e7a080e7          	jalr	-390(ra) # c72 <free>
 e00:	00000797          	auipc	a5,0x0
 e04:	43078793          	addi	a5,a5,1072 # 1230 <freep>
 e08:	639c                	ld	a5,0(a5)
 e0a:	853e                	mv	a0,a5
 e0c:	70a2                	ld	ra,40(sp)
 e0e:	7402                	ld	s0,32(sp)
 e10:	6145                	addi	sp,sp,48
 e12:	8082                	ret

0000000000000e14 <malloc>:
 e14:	7139                	addi	sp,sp,-64
 e16:	fc06                	sd	ra,56(sp)
 e18:	f822                	sd	s0,48(sp)
 e1a:	0080                	addi	s0,sp,64
 e1c:	87aa                	mv	a5,a0
 e1e:	fcf42623          	sw	a5,-52(s0)
 e22:	fcc46783          	lwu	a5,-52(s0)
 e26:	07bd                	addi	a5,a5,15
 e28:	8391                	srli	a5,a5,0x4
 e2a:	2781                	sext.w	a5,a5
 e2c:	2785                	addiw	a5,a5,1
 e2e:	fcf42e23          	sw	a5,-36(s0)
 e32:	00000797          	auipc	a5,0x0
 e36:	3fe78793          	addi	a5,a5,1022 # 1230 <freep>
 e3a:	639c                	ld	a5,0(a5)
 e3c:	fef43023          	sd	a5,-32(s0)
 e40:	fe043783          	ld	a5,-32(s0)
 e44:	ef95                	bnez	a5,e80 <malloc+0x6c>
 e46:	00000797          	auipc	a5,0x0
 e4a:	3da78793          	addi	a5,a5,986 # 1220 <base>
 e4e:	fef43023          	sd	a5,-32(s0)
 e52:	00000797          	auipc	a5,0x0
 e56:	3de78793          	addi	a5,a5,990 # 1230 <freep>
 e5a:	fe043703          	ld	a4,-32(s0)
 e5e:	e398                	sd	a4,0(a5)
 e60:	00000797          	auipc	a5,0x0
 e64:	3d078793          	addi	a5,a5,976 # 1230 <freep>
 e68:	6398                	ld	a4,0(a5)
 e6a:	00000797          	auipc	a5,0x0
 e6e:	3b678793          	addi	a5,a5,950 # 1220 <base>
 e72:	e398                	sd	a4,0(a5)
 e74:	00000797          	auipc	a5,0x0
 e78:	3ac78793          	addi	a5,a5,940 # 1220 <base>
 e7c:	0007a423          	sw	zero,8(a5)
 e80:	fe043783          	ld	a5,-32(s0)
 e84:	639c                	ld	a5,0(a5)
 e86:	fef43423          	sd	a5,-24(s0)
 e8a:	fe843783          	ld	a5,-24(s0)
 e8e:	4798                	lw	a4,8(a5)
 e90:	fdc42783          	lw	a5,-36(s0)
 e94:	2781                	sext.w	a5,a5
 e96:	06f76763          	bltu	a4,a5,f04 <malloc+0xf0>
 e9a:	fe843783          	ld	a5,-24(s0)
 e9e:	4798                	lw	a4,8(a5)
 ea0:	fdc42783          	lw	a5,-36(s0)
 ea4:	2781                	sext.w	a5,a5
 ea6:	00e79963          	bne	a5,a4,eb8 <malloc+0xa4>
 eaa:	fe843783          	ld	a5,-24(s0)
 eae:	6398                	ld	a4,0(a5)
 eb0:	fe043783          	ld	a5,-32(s0)
 eb4:	e398                	sd	a4,0(a5)
 eb6:	a825                	j	eee <malloc+0xda>
 eb8:	fe843783          	ld	a5,-24(s0)
 ebc:	479c                	lw	a5,8(a5)
 ebe:	fdc42703          	lw	a4,-36(s0)
 ec2:	9f99                	subw	a5,a5,a4
 ec4:	0007871b          	sext.w	a4,a5
 ec8:	fe843783          	ld	a5,-24(s0)
 ecc:	c798                	sw	a4,8(a5)
 ece:	fe843783          	ld	a5,-24(s0)
 ed2:	479c                	lw	a5,8(a5)
 ed4:	1782                	slli	a5,a5,0x20
 ed6:	9381                	srli	a5,a5,0x20
 ed8:	0792                	slli	a5,a5,0x4
 eda:	fe843703          	ld	a4,-24(s0)
 ede:	97ba                	add	a5,a5,a4
 ee0:	fef43423          	sd	a5,-24(s0)
 ee4:	fe843783          	ld	a5,-24(s0)
 ee8:	fdc42703          	lw	a4,-36(s0)
 eec:	c798                	sw	a4,8(a5)
 eee:	00000797          	auipc	a5,0x0
 ef2:	34278793          	addi	a5,a5,834 # 1230 <freep>
 ef6:	fe043703          	ld	a4,-32(s0)
 efa:	e398                	sd	a4,0(a5)
 efc:	fe843783          	ld	a5,-24(s0)
 f00:	07c1                	addi	a5,a5,16
 f02:	a091                	j	f46 <malloc+0x132>
 f04:	00000797          	auipc	a5,0x0
 f08:	32c78793          	addi	a5,a5,812 # 1230 <freep>
 f0c:	639c                	ld	a5,0(a5)
 f0e:	fe843703          	ld	a4,-24(s0)
 f12:	02f71063          	bne	a4,a5,f32 <malloc+0x11e>
 f16:	fdc42783          	lw	a5,-36(s0)
 f1a:	853e                	mv	a0,a5
 f1c:	00000097          	auipc	ra,0x0
 f20:	e78080e7          	jalr	-392(ra) # d94 <morecore>
 f24:	fea43423          	sd	a0,-24(s0)
 f28:	fe843783          	ld	a5,-24(s0)
 f2c:	e399                	bnez	a5,f32 <malloc+0x11e>
 f2e:	4781                	li	a5,0
 f30:	a819                	j	f46 <malloc+0x132>
 f32:	fe843783          	ld	a5,-24(s0)
 f36:	fef43023          	sd	a5,-32(s0)
 f3a:	fe843783          	ld	a5,-24(s0)
 f3e:	639c                	ld	a5,0(a5)
 f40:	fef43423          	sd	a5,-24(s0)
 f44:	b799                	j	e8a <malloc+0x76>
 f46:	853e                	mv	a0,a5
 f48:	70e2                	ld	ra,56(sp)
 f4a:	7442                	ld	s0,48(sp)
 f4c:	6121                	addi	sp,sp,64
 f4e:	8082                	ret
