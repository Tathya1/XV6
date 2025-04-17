
user/_cat:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <cat>:
   0:	7179                	addi	sp,sp,-48
   2:	f406                	sd	ra,40(sp)
   4:	f022                	sd	s0,32(sp)
   6:	1800                	addi	s0,sp,48
   8:	87aa                	mv	a5,a0
   a:	fcf42e23          	sw	a5,-36(s0)
   e:	a091                	j	52 <cat+0x52>
  10:	fec42783          	lw	a5,-20(s0)
  14:	863e                	mv	a2,a5
  16:	00001597          	auipc	a1,0x1
  1a:	00a58593          	addi	a1,a1,10 # 1020 <buf>
  1e:	4505                	li	a0,1
  20:	00000097          	auipc	ra,0x0
  24:	62c080e7          	jalr	1580(ra) # 64c <write>
  28:	87aa                	mv	a5,a0
  2a:	873e                	mv	a4,a5
  2c:	fec42783          	lw	a5,-20(s0)
  30:	2781                	sext.w	a5,a5
  32:	02e78063          	beq	a5,a4,52 <cat+0x52>
  36:	00001597          	auipc	a1,0x1
  3a:	e7a58593          	addi	a1,a1,-390 # eb0 <malloc+0x142>
  3e:	4509                	li	a0,2
  40:	00001097          	auipc	ra,0x1
  44:	ae4080e7          	jalr	-1308(ra) # b24 <fprintf>
  48:	4505                	li	a0,1
  4a:	00000097          	auipc	ra,0x0
  4e:	5e2080e7          	jalr	1506(ra) # 62c <exit>
  52:	fdc42783          	lw	a5,-36(s0)
  56:	20000613          	li	a2,512
  5a:	00001597          	auipc	a1,0x1
  5e:	fc658593          	addi	a1,a1,-58 # 1020 <buf>
  62:	853e                	mv	a0,a5
  64:	00000097          	auipc	ra,0x0
  68:	5e0080e7          	jalr	1504(ra) # 644 <read>
  6c:	87aa                	mv	a5,a0
  6e:	fef42623          	sw	a5,-20(s0)
  72:	fec42783          	lw	a5,-20(s0)
  76:	2781                	sext.w	a5,a5
  78:	f8f04ce3          	bgtz	a5,10 <cat+0x10>
  7c:	fec42783          	lw	a5,-20(s0)
  80:	2781                	sext.w	a5,a5
  82:	0207d063          	bgez	a5,a2 <cat+0xa2>
  86:	00001597          	auipc	a1,0x1
  8a:	e4258593          	addi	a1,a1,-446 # ec8 <malloc+0x15a>
  8e:	4509                	li	a0,2
  90:	00001097          	auipc	ra,0x1
  94:	a94080e7          	jalr	-1388(ra) # b24 <fprintf>
  98:	4505                	li	a0,1
  9a:	00000097          	auipc	ra,0x0
  9e:	592080e7          	jalr	1426(ra) # 62c <exit>
  a2:	0001                	nop
  a4:	70a2                	ld	ra,40(sp)
  a6:	7402                	ld	s0,32(sp)
  a8:	6145                	addi	sp,sp,48
  aa:	8082                	ret

00000000000000ac <main>:
  ac:	7179                	addi	sp,sp,-48
  ae:	f406                	sd	ra,40(sp)
  b0:	f022                	sd	s0,32(sp)
  b2:	1800                	addi	s0,sp,48
  b4:	87aa                	mv	a5,a0
  b6:	fcb43823          	sd	a1,-48(s0)
  ba:	fcf42e23          	sw	a5,-36(s0)
  be:	fdc42783          	lw	a5,-36(s0)
  c2:	0007871b          	sext.w	a4,a5
  c6:	4785                	li	a5,1
  c8:	00e7cc63          	blt	a5,a4,e0 <main+0x34>
  cc:	4501                	li	a0,0
  ce:	00000097          	auipc	ra,0x0
  d2:	f32080e7          	jalr	-206(ra) # 0 <cat>
  d6:	4501                	li	a0,0
  d8:	00000097          	auipc	ra,0x0
  dc:	554080e7          	jalr	1364(ra) # 62c <exit>
  e0:	4785                	li	a5,1
  e2:	fef42623          	sw	a5,-20(s0)
  e6:	a8bd                	j	164 <main+0xb8>
  e8:	fec42783          	lw	a5,-20(s0)
  ec:	078e                	slli	a5,a5,0x3
  ee:	fd043703          	ld	a4,-48(s0)
  f2:	97ba                	add	a5,a5,a4
  f4:	639c                	ld	a5,0(a5)
  f6:	4581                	li	a1,0
  f8:	853e                	mv	a0,a5
  fa:	00000097          	auipc	ra,0x0
  fe:	572080e7          	jalr	1394(ra) # 66c <open>
 102:	87aa                	mv	a5,a0
 104:	fef42423          	sw	a5,-24(s0)
 108:	fe842783          	lw	a5,-24(s0)
 10c:	2781                	sext.w	a5,a5
 10e:	0207d863          	bgez	a5,13e <main+0x92>
 112:	fec42783          	lw	a5,-20(s0)
 116:	078e                	slli	a5,a5,0x3
 118:	fd043703          	ld	a4,-48(s0)
 11c:	97ba                	add	a5,a5,a4
 11e:	639c                	ld	a5,0(a5)
 120:	863e                	mv	a2,a5
 122:	00001597          	auipc	a1,0x1
 126:	dbe58593          	addi	a1,a1,-578 # ee0 <malloc+0x172>
 12a:	4509                	li	a0,2
 12c:	00001097          	auipc	ra,0x1
 130:	9f8080e7          	jalr	-1544(ra) # b24 <fprintf>
 134:	4505                	li	a0,1
 136:	00000097          	auipc	ra,0x0
 13a:	4f6080e7          	jalr	1270(ra) # 62c <exit>
 13e:	fe842783          	lw	a5,-24(s0)
 142:	853e                	mv	a0,a5
 144:	00000097          	auipc	ra,0x0
 148:	ebc080e7          	jalr	-324(ra) # 0 <cat>
 14c:	fe842783          	lw	a5,-24(s0)
 150:	853e                	mv	a0,a5
 152:	00000097          	auipc	ra,0x0
 156:	502080e7          	jalr	1282(ra) # 654 <close>
 15a:	fec42783          	lw	a5,-20(s0)
 15e:	2785                	addiw	a5,a5,1
 160:	fef42623          	sw	a5,-20(s0)
 164:	fec42783          	lw	a5,-20(s0)
 168:	873e                	mv	a4,a5
 16a:	fdc42783          	lw	a5,-36(s0)
 16e:	2701                	sext.w	a4,a4
 170:	2781                	sext.w	a5,a5
 172:	f6f74be3          	blt	a4,a5,e8 <main+0x3c>
 176:	4501                	li	a0,0
 178:	00000097          	auipc	ra,0x0
 17c:	4b4080e7          	jalr	1204(ra) # 62c <exit>

0000000000000180 <_main>:
 180:	1141                	addi	sp,sp,-16
 182:	e406                	sd	ra,8(sp)
 184:	e022                	sd	s0,0(sp)
 186:	0800                	addi	s0,sp,16
 188:	00000097          	auipc	ra,0x0
 18c:	f24080e7          	jalr	-220(ra) # ac <main>
 190:	4501                	li	a0,0
 192:	00000097          	auipc	ra,0x0
 196:	49a080e7          	jalr	1178(ra) # 62c <exit>

000000000000019a <strcpy>:
 19a:	7179                	addi	sp,sp,-48
 19c:	f422                	sd	s0,40(sp)
 19e:	1800                	addi	s0,sp,48
 1a0:	fca43c23          	sd	a0,-40(s0)
 1a4:	fcb43823          	sd	a1,-48(s0)
 1a8:	fd843783          	ld	a5,-40(s0)
 1ac:	fef43423          	sd	a5,-24(s0)
 1b0:	0001                	nop
 1b2:	fd043703          	ld	a4,-48(s0)
 1b6:	00170793          	addi	a5,a4,1
 1ba:	fcf43823          	sd	a5,-48(s0)
 1be:	fd843783          	ld	a5,-40(s0)
 1c2:	00178693          	addi	a3,a5,1
 1c6:	fcd43c23          	sd	a3,-40(s0)
 1ca:	00074703          	lbu	a4,0(a4)
 1ce:	00e78023          	sb	a4,0(a5)
 1d2:	0007c783          	lbu	a5,0(a5)
 1d6:	fff1                	bnez	a5,1b2 <strcpy+0x18>
 1d8:	fe843783          	ld	a5,-24(s0)
 1dc:	853e                	mv	a0,a5
 1de:	7422                	ld	s0,40(sp)
 1e0:	6145                	addi	sp,sp,48
 1e2:	8082                	ret

00000000000001e4 <strcmp>:
 1e4:	1101                	addi	sp,sp,-32
 1e6:	ec22                	sd	s0,24(sp)
 1e8:	1000                	addi	s0,sp,32
 1ea:	fea43423          	sd	a0,-24(s0)
 1ee:	feb43023          	sd	a1,-32(s0)
 1f2:	a819                	j	208 <strcmp+0x24>
 1f4:	fe843783          	ld	a5,-24(s0)
 1f8:	0785                	addi	a5,a5,1
 1fa:	fef43423          	sd	a5,-24(s0)
 1fe:	fe043783          	ld	a5,-32(s0)
 202:	0785                	addi	a5,a5,1
 204:	fef43023          	sd	a5,-32(s0)
 208:	fe843783          	ld	a5,-24(s0)
 20c:	0007c783          	lbu	a5,0(a5)
 210:	cb99                	beqz	a5,226 <strcmp+0x42>
 212:	fe843783          	ld	a5,-24(s0)
 216:	0007c703          	lbu	a4,0(a5)
 21a:	fe043783          	ld	a5,-32(s0)
 21e:	0007c783          	lbu	a5,0(a5)
 222:	fcf709e3          	beq	a4,a5,1f4 <strcmp+0x10>
 226:	fe843783          	ld	a5,-24(s0)
 22a:	0007c783          	lbu	a5,0(a5)
 22e:	0007871b          	sext.w	a4,a5
 232:	fe043783          	ld	a5,-32(s0)
 236:	0007c783          	lbu	a5,0(a5)
 23a:	2781                	sext.w	a5,a5
 23c:	40f707bb          	subw	a5,a4,a5
 240:	2781                	sext.w	a5,a5
 242:	853e                	mv	a0,a5
 244:	6462                	ld	s0,24(sp)
 246:	6105                	addi	sp,sp,32
 248:	8082                	ret

000000000000024a <strlen>:
 24a:	7179                	addi	sp,sp,-48
 24c:	f422                	sd	s0,40(sp)
 24e:	1800                	addi	s0,sp,48
 250:	fca43c23          	sd	a0,-40(s0)
 254:	fe042623          	sw	zero,-20(s0)
 258:	a031                	j	264 <strlen+0x1a>
 25a:	fec42783          	lw	a5,-20(s0)
 25e:	2785                	addiw	a5,a5,1
 260:	fef42623          	sw	a5,-20(s0)
 264:	fec42783          	lw	a5,-20(s0)
 268:	fd843703          	ld	a4,-40(s0)
 26c:	97ba                	add	a5,a5,a4
 26e:	0007c783          	lbu	a5,0(a5)
 272:	f7e5                	bnez	a5,25a <strlen+0x10>
 274:	fec42783          	lw	a5,-20(s0)
 278:	853e                	mv	a0,a5
 27a:	7422                	ld	s0,40(sp)
 27c:	6145                	addi	sp,sp,48
 27e:	8082                	ret

0000000000000280 <memset>:
 280:	7179                	addi	sp,sp,-48
 282:	f422                	sd	s0,40(sp)
 284:	1800                	addi	s0,sp,48
 286:	fca43c23          	sd	a0,-40(s0)
 28a:	87ae                	mv	a5,a1
 28c:	8732                	mv	a4,a2
 28e:	fcf42a23          	sw	a5,-44(s0)
 292:	87ba                	mv	a5,a4
 294:	fcf42823          	sw	a5,-48(s0)
 298:	fd843783          	ld	a5,-40(s0)
 29c:	fef43023          	sd	a5,-32(s0)
 2a0:	fe042623          	sw	zero,-20(s0)
 2a4:	a00d                	j	2c6 <memset+0x46>
 2a6:	fec42783          	lw	a5,-20(s0)
 2aa:	fe043703          	ld	a4,-32(s0)
 2ae:	97ba                	add	a5,a5,a4
 2b0:	fd442703          	lw	a4,-44(s0)
 2b4:	0ff77713          	zext.b	a4,a4
 2b8:	00e78023          	sb	a4,0(a5)
 2bc:	fec42783          	lw	a5,-20(s0)
 2c0:	2785                	addiw	a5,a5,1
 2c2:	fef42623          	sw	a5,-20(s0)
 2c6:	fec42703          	lw	a4,-20(s0)
 2ca:	fd042783          	lw	a5,-48(s0)
 2ce:	2781                	sext.w	a5,a5
 2d0:	fcf76be3          	bltu	a4,a5,2a6 <memset+0x26>
 2d4:	fd843783          	ld	a5,-40(s0)
 2d8:	853e                	mv	a0,a5
 2da:	7422                	ld	s0,40(sp)
 2dc:	6145                	addi	sp,sp,48
 2de:	8082                	ret

00000000000002e0 <strchr>:
 2e0:	1101                	addi	sp,sp,-32
 2e2:	ec22                	sd	s0,24(sp)
 2e4:	1000                	addi	s0,sp,32
 2e6:	fea43423          	sd	a0,-24(s0)
 2ea:	87ae                	mv	a5,a1
 2ec:	fef403a3          	sb	a5,-25(s0)
 2f0:	a01d                	j	316 <strchr+0x36>
 2f2:	fe843783          	ld	a5,-24(s0)
 2f6:	0007c703          	lbu	a4,0(a5)
 2fa:	fe744783          	lbu	a5,-25(s0)
 2fe:	0ff7f793          	zext.b	a5,a5
 302:	00e79563          	bne	a5,a4,30c <strchr+0x2c>
 306:	fe843783          	ld	a5,-24(s0)
 30a:	a821                	j	322 <strchr+0x42>
 30c:	fe843783          	ld	a5,-24(s0)
 310:	0785                	addi	a5,a5,1
 312:	fef43423          	sd	a5,-24(s0)
 316:	fe843783          	ld	a5,-24(s0)
 31a:	0007c783          	lbu	a5,0(a5)
 31e:	fbf1                	bnez	a5,2f2 <strchr+0x12>
 320:	4781                	li	a5,0
 322:	853e                	mv	a0,a5
 324:	6462                	ld	s0,24(sp)
 326:	6105                	addi	sp,sp,32
 328:	8082                	ret

000000000000032a <gets>:
 32a:	7179                	addi	sp,sp,-48
 32c:	f406                	sd	ra,40(sp)
 32e:	f022                	sd	s0,32(sp)
 330:	1800                	addi	s0,sp,48
 332:	fca43c23          	sd	a0,-40(s0)
 336:	87ae                	mv	a5,a1
 338:	fcf42a23          	sw	a5,-44(s0)
 33c:	fe042623          	sw	zero,-20(s0)
 340:	a8a1                	j	398 <gets+0x6e>
 342:	fe740793          	addi	a5,s0,-25
 346:	4605                	li	a2,1
 348:	85be                	mv	a1,a5
 34a:	4501                	li	a0,0
 34c:	00000097          	auipc	ra,0x0
 350:	2f8080e7          	jalr	760(ra) # 644 <read>
 354:	87aa                	mv	a5,a0
 356:	fef42423          	sw	a5,-24(s0)
 35a:	fe842783          	lw	a5,-24(s0)
 35e:	2781                	sext.w	a5,a5
 360:	04f05763          	blez	a5,3ae <gets+0x84>
 364:	fec42783          	lw	a5,-20(s0)
 368:	0017871b          	addiw	a4,a5,1
 36c:	fee42623          	sw	a4,-20(s0)
 370:	873e                	mv	a4,a5
 372:	fd843783          	ld	a5,-40(s0)
 376:	97ba                	add	a5,a5,a4
 378:	fe744703          	lbu	a4,-25(s0)
 37c:	00e78023          	sb	a4,0(a5)
 380:	fe744783          	lbu	a5,-25(s0)
 384:	873e                	mv	a4,a5
 386:	47a9                	li	a5,10
 388:	02f70463          	beq	a4,a5,3b0 <gets+0x86>
 38c:	fe744783          	lbu	a5,-25(s0)
 390:	873e                	mv	a4,a5
 392:	47b5                	li	a5,13
 394:	00f70e63          	beq	a4,a5,3b0 <gets+0x86>
 398:	fec42783          	lw	a5,-20(s0)
 39c:	2785                	addiw	a5,a5,1
 39e:	0007871b          	sext.w	a4,a5
 3a2:	fd442783          	lw	a5,-44(s0)
 3a6:	2781                	sext.w	a5,a5
 3a8:	f8f74de3          	blt	a4,a5,342 <gets+0x18>
 3ac:	a011                	j	3b0 <gets+0x86>
 3ae:	0001                	nop
 3b0:	fec42783          	lw	a5,-20(s0)
 3b4:	fd843703          	ld	a4,-40(s0)
 3b8:	97ba                	add	a5,a5,a4
 3ba:	00078023          	sb	zero,0(a5)
 3be:	fd843783          	ld	a5,-40(s0)
 3c2:	853e                	mv	a0,a5
 3c4:	70a2                	ld	ra,40(sp)
 3c6:	7402                	ld	s0,32(sp)
 3c8:	6145                	addi	sp,sp,48
 3ca:	8082                	ret

00000000000003cc <stat>:
 3cc:	7179                	addi	sp,sp,-48
 3ce:	f406                	sd	ra,40(sp)
 3d0:	f022                	sd	s0,32(sp)
 3d2:	1800                	addi	s0,sp,48
 3d4:	fca43c23          	sd	a0,-40(s0)
 3d8:	fcb43823          	sd	a1,-48(s0)
 3dc:	4581                	li	a1,0
 3de:	fd843503          	ld	a0,-40(s0)
 3e2:	00000097          	auipc	ra,0x0
 3e6:	28a080e7          	jalr	650(ra) # 66c <open>
 3ea:	87aa                	mv	a5,a0
 3ec:	fef42623          	sw	a5,-20(s0)
 3f0:	fec42783          	lw	a5,-20(s0)
 3f4:	2781                	sext.w	a5,a5
 3f6:	0007d463          	bgez	a5,3fe <stat+0x32>
 3fa:	57fd                	li	a5,-1
 3fc:	a035                	j	428 <stat+0x5c>
 3fe:	fec42783          	lw	a5,-20(s0)
 402:	fd043583          	ld	a1,-48(s0)
 406:	853e                	mv	a0,a5
 408:	00000097          	auipc	ra,0x0
 40c:	27c080e7          	jalr	636(ra) # 684 <fstat>
 410:	87aa                	mv	a5,a0
 412:	fef42423          	sw	a5,-24(s0)
 416:	fec42783          	lw	a5,-20(s0)
 41a:	853e                	mv	a0,a5
 41c:	00000097          	auipc	ra,0x0
 420:	238080e7          	jalr	568(ra) # 654 <close>
 424:	fe842783          	lw	a5,-24(s0)
 428:	853e                	mv	a0,a5
 42a:	70a2                	ld	ra,40(sp)
 42c:	7402                	ld	s0,32(sp)
 42e:	6145                	addi	sp,sp,48
 430:	8082                	ret

0000000000000432 <atoi>:
 432:	7179                	addi	sp,sp,-48
 434:	f422                	sd	s0,40(sp)
 436:	1800                	addi	s0,sp,48
 438:	fca43c23          	sd	a0,-40(s0)
 43c:	fe042623          	sw	zero,-20(s0)
 440:	a81d                	j	476 <atoi+0x44>
 442:	fec42783          	lw	a5,-20(s0)
 446:	873e                	mv	a4,a5
 448:	87ba                	mv	a5,a4
 44a:	0027979b          	slliw	a5,a5,0x2
 44e:	9fb9                	addw	a5,a5,a4
 450:	0017979b          	slliw	a5,a5,0x1
 454:	0007871b          	sext.w	a4,a5
 458:	fd843783          	ld	a5,-40(s0)
 45c:	00178693          	addi	a3,a5,1
 460:	fcd43c23          	sd	a3,-40(s0)
 464:	0007c783          	lbu	a5,0(a5)
 468:	2781                	sext.w	a5,a5
 46a:	9fb9                	addw	a5,a5,a4
 46c:	2781                	sext.w	a5,a5
 46e:	fd07879b          	addiw	a5,a5,-48
 472:	fef42623          	sw	a5,-20(s0)
 476:	fd843783          	ld	a5,-40(s0)
 47a:	0007c783          	lbu	a5,0(a5)
 47e:	873e                	mv	a4,a5
 480:	02f00793          	li	a5,47
 484:	00e7fb63          	bgeu	a5,a4,49a <atoi+0x68>
 488:	fd843783          	ld	a5,-40(s0)
 48c:	0007c783          	lbu	a5,0(a5)
 490:	873e                	mv	a4,a5
 492:	03900793          	li	a5,57
 496:	fae7f6e3          	bgeu	a5,a4,442 <atoi+0x10>
 49a:	fec42783          	lw	a5,-20(s0)
 49e:	853e                	mv	a0,a5
 4a0:	7422                	ld	s0,40(sp)
 4a2:	6145                	addi	sp,sp,48
 4a4:	8082                	ret

00000000000004a6 <memmove>:
 4a6:	7139                	addi	sp,sp,-64
 4a8:	fc22                	sd	s0,56(sp)
 4aa:	0080                	addi	s0,sp,64
 4ac:	fca43c23          	sd	a0,-40(s0)
 4b0:	fcb43823          	sd	a1,-48(s0)
 4b4:	87b2                	mv	a5,a2
 4b6:	fcf42623          	sw	a5,-52(s0)
 4ba:	fd843783          	ld	a5,-40(s0)
 4be:	fef43423          	sd	a5,-24(s0)
 4c2:	fd043783          	ld	a5,-48(s0)
 4c6:	fef43023          	sd	a5,-32(s0)
 4ca:	fe043703          	ld	a4,-32(s0)
 4ce:	fe843783          	ld	a5,-24(s0)
 4d2:	02e7fc63          	bgeu	a5,a4,50a <memmove+0x64>
 4d6:	a00d                	j	4f8 <memmove+0x52>
 4d8:	fe043703          	ld	a4,-32(s0)
 4dc:	00170793          	addi	a5,a4,1
 4e0:	fef43023          	sd	a5,-32(s0)
 4e4:	fe843783          	ld	a5,-24(s0)
 4e8:	00178693          	addi	a3,a5,1
 4ec:	fed43423          	sd	a3,-24(s0)
 4f0:	00074703          	lbu	a4,0(a4)
 4f4:	00e78023          	sb	a4,0(a5)
 4f8:	fcc42783          	lw	a5,-52(s0)
 4fc:	fff7871b          	addiw	a4,a5,-1
 500:	fce42623          	sw	a4,-52(s0)
 504:	fcf04ae3          	bgtz	a5,4d8 <memmove+0x32>
 508:	a891                	j	55c <memmove+0xb6>
 50a:	fcc42783          	lw	a5,-52(s0)
 50e:	fe843703          	ld	a4,-24(s0)
 512:	97ba                	add	a5,a5,a4
 514:	fef43423          	sd	a5,-24(s0)
 518:	fcc42783          	lw	a5,-52(s0)
 51c:	fe043703          	ld	a4,-32(s0)
 520:	97ba                	add	a5,a5,a4
 522:	fef43023          	sd	a5,-32(s0)
 526:	a01d                	j	54c <memmove+0xa6>
 528:	fe043783          	ld	a5,-32(s0)
 52c:	17fd                	addi	a5,a5,-1
 52e:	fef43023          	sd	a5,-32(s0)
 532:	fe843783          	ld	a5,-24(s0)
 536:	17fd                	addi	a5,a5,-1
 538:	fef43423          	sd	a5,-24(s0)
 53c:	fe043783          	ld	a5,-32(s0)
 540:	0007c703          	lbu	a4,0(a5)
 544:	fe843783          	ld	a5,-24(s0)
 548:	00e78023          	sb	a4,0(a5)
 54c:	fcc42783          	lw	a5,-52(s0)
 550:	fff7871b          	addiw	a4,a5,-1
 554:	fce42623          	sw	a4,-52(s0)
 558:	fcf048e3          	bgtz	a5,528 <memmove+0x82>
 55c:	fd843783          	ld	a5,-40(s0)
 560:	853e                	mv	a0,a5
 562:	7462                	ld	s0,56(sp)
 564:	6121                	addi	sp,sp,64
 566:	8082                	ret

0000000000000568 <memcmp>:
 568:	7139                	addi	sp,sp,-64
 56a:	fc22                	sd	s0,56(sp)
 56c:	0080                	addi	s0,sp,64
 56e:	fca43c23          	sd	a0,-40(s0)
 572:	fcb43823          	sd	a1,-48(s0)
 576:	87b2                	mv	a5,a2
 578:	fcf42623          	sw	a5,-52(s0)
 57c:	fd843783          	ld	a5,-40(s0)
 580:	fef43423          	sd	a5,-24(s0)
 584:	fd043783          	ld	a5,-48(s0)
 588:	fef43023          	sd	a5,-32(s0)
 58c:	a0a1                	j	5d4 <memcmp+0x6c>
 58e:	fe843783          	ld	a5,-24(s0)
 592:	0007c703          	lbu	a4,0(a5)
 596:	fe043783          	ld	a5,-32(s0)
 59a:	0007c783          	lbu	a5,0(a5)
 59e:	02f70163          	beq	a4,a5,5c0 <memcmp+0x58>
 5a2:	fe843783          	ld	a5,-24(s0)
 5a6:	0007c783          	lbu	a5,0(a5)
 5aa:	0007871b          	sext.w	a4,a5
 5ae:	fe043783          	ld	a5,-32(s0)
 5b2:	0007c783          	lbu	a5,0(a5)
 5b6:	2781                	sext.w	a5,a5
 5b8:	40f707bb          	subw	a5,a4,a5
 5bc:	2781                	sext.w	a5,a5
 5be:	a01d                	j	5e4 <memcmp+0x7c>
 5c0:	fe843783          	ld	a5,-24(s0)
 5c4:	0785                	addi	a5,a5,1
 5c6:	fef43423          	sd	a5,-24(s0)
 5ca:	fe043783          	ld	a5,-32(s0)
 5ce:	0785                	addi	a5,a5,1
 5d0:	fef43023          	sd	a5,-32(s0)
 5d4:	fcc42783          	lw	a5,-52(s0)
 5d8:	fff7871b          	addiw	a4,a5,-1
 5dc:	fce42623          	sw	a4,-52(s0)
 5e0:	f7dd                	bnez	a5,58e <memcmp+0x26>
 5e2:	4781                	li	a5,0
 5e4:	853e                	mv	a0,a5
 5e6:	7462                	ld	s0,56(sp)
 5e8:	6121                	addi	sp,sp,64
 5ea:	8082                	ret

00000000000005ec <memcpy>:
 5ec:	7179                	addi	sp,sp,-48
 5ee:	f406                	sd	ra,40(sp)
 5f0:	f022                	sd	s0,32(sp)
 5f2:	1800                	addi	s0,sp,48
 5f4:	fea43423          	sd	a0,-24(s0)
 5f8:	feb43023          	sd	a1,-32(s0)
 5fc:	87b2                	mv	a5,a2
 5fe:	fcf42e23          	sw	a5,-36(s0)
 602:	fdc42783          	lw	a5,-36(s0)
 606:	863e                	mv	a2,a5
 608:	fe043583          	ld	a1,-32(s0)
 60c:	fe843503          	ld	a0,-24(s0)
 610:	00000097          	auipc	ra,0x0
 614:	e96080e7          	jalr	-362(ra) # 4a6 <memmove>
 618:	87aa                	mv	a5,a0
 61a:	853e                	mv	a0,a5
 61c:	70a2                	ld	ra,40(sp)
 61e:	7402                	ld	s0,32(sp)
 620:	6145                	addi	sp,sp,48
 622:	8082                	ret

0000000000000624 <fork>:
 624:	4885                	li	a7,1
 626:	00000073          	ecall
 62a:	8082                	ret

000000000000062c <exit>:
 62c:	4889                	li	a7,2
 62e:	00000073          	ecall
 632:	8082                	ret

0000000000000634 <wait>:
 634:	488d                	li	a7,3
 636:	00000073          	ecall
 63a:	8082                	ret

000000000000063c <pipe>:
 63c:	4891                	li	a7,4
 63e:	00000073          	ecall
 642:	8082                	ret

0000000000000644 <read>:
 644:	4895                	li	a7,5
 646:	00000073          	ecall
 64a:	8082                	ret

000000000000064c <write>:
 64c:	48c1                	li	a7,16
 64e:	00000073          	ecall
 652:	8082                	ret

0000000000000654 <close>:
 654:	48d5                	li	a7,21
 656:	00000073          	ecall
 65a:	8082                	ret

000000000000065c <kill>:
 65c:	4899                	li	a7,6
 65e:	00000073          	ecall
 662:	8082                	ret

0000000000000664 <exec>:
 664:	489d                	li	a7,7
 666:	00000073          	ecall
 66a:	8082                	ret

000000000000066c <open>:
 66c:	48bd                	li	a7,15
 66e:	00000073          	ecall
 672:	8082                	ret

0000000000000674 <mknod>:
 674:	48c5                	li	a7,17
 676:	00000073          	ecall
 67a:	8082                	ret

000000000000067c <unlink>:
 67c:	48c9                	li	a7,18
 67e:	00000073          	ecall
 682:	8082                	ret

0000000000000684 <fstat>:
 684:	48a1                	li	a7,8
 686:	00000073          	ecall
 68a:	8082                	ret

000000000000068c <link>:
 68c:	48cd                	li	a7,19
 68e:	00000073          	ecall
 692:	8082                	ret

0000000000000694 <mkdir>:
 694:	48d1                	li	a7,20
 696:	00000073          	ecall
 69a:	8082                	ret

000000000000069c <chdir>:
 69c:	48a5                	li	a7,9
 69e:	00000073          	ecall
 6a2:	8082                	ret

00000000000006a4 <dup>:
 6a4:	48a9                	li	a7,10
 6a6:	00000073          	ecall
 6aa:	8082                	ret

00000000000006ac <getpid>:
 6ac:	48ad                	li	a7,11
 6ae:	00000073          	ecall
 6b2:	8082                	ret

00000000000006b4 <sbrk>:
 6b4:	48b1                	li	a7,12
 6b6:	00000073          	ecall
 6ba:	8082                	ret

00000000000006bc <sleep>:
 6bc:	48b5                	li	a7,13
 6be:	00000073          	ecall
 6c2:	8082                	ret

00000000000006c4 <uptime>:
 6c4:	48b9                	li	a7,14
 6c6:	00000073          	ecall
 6ca:	8082                	ret

00000000000006cc <waitx>:
 6cc:	48d9                	li	a7,22
 6ce:	00000073          	ecall
 6d2:	8082                	ret

00000000000006d4 <getsyscount>:
 6d4:	48dd                	li	a7,23
 6d6:	00000073          	ecall
 6da:	8082                	ret

00000000000006dc <sigalarm>:
 6dc:	48e1                	li	a7,24
 6de:	00000073          	ecall
 6e2:	8082                	ret

00000000000006e4 <sigreturn>:
 6e4:	48e5                	li	a7,25
 6e6:	00000073          	ecall
 6ea:	8082                	ret

00000000000006ec <settickets>:
 6ec:	48e9                	li	a7,26
 6ee:	00000073          	ecall
 6f2:	8082                	ret

00000000000006f4 <putc>:
 6f4:	1101                	addi	sp,sp,-32
 6f6:	ec06                	sd	ra,24(sp)
 6f8:	e822                	sd	s0,16(sp)
 6fa:	1000                	addi	s0,sp,32
 6fc:	87aa                	mv	a5,a0
 6fe:	872e                	mv	a4,a1
 700:	fef42623          	sw	a5,-20(s0)
 704:	87ba                	mv	a5,a4
 706:	fef405a3          	sb	a5,-21(s0)
 70a:	feb40713          	addi	a4,s0,-21
 70e:	fec42783          	lw	a5,-20(s0)
 712:	4605                	li	a2,1
 714:	85ba                	mv	a1,a4
 716:	853e                	mv	a0,a5
 718:	00000097          	auipc	ra,0x0
 71c:	f34080e7          	jalr	-204(ra) # 64c <write>
 720:	0001                	nop
 722:	60e2                	ld	ra,24(sp)
 724:	6442                	ld	s0,16(sp)
 726:	6105                	addi	sp,sp,32
 728:	8082                	ret

000000000000072a <printint>:
 72a:	7139                	addi	sp,sp,-64
 72c:	fc06                	sd	ra,56(sp)
 72e:	f822                	sd	s0,48(sp)
 730:	0080                	addi	s0,sp,64
 732:	87aa                	mv	a5,a0
 734:	8736                	mv	a4,a3
 736:	fcf42623          	sw	a5,-52(s0)
 73a:	87ae                	mv	a5,a1
 73c:	fcf42423          	sw	a5,-56(s0)
 740:	87b2                	mv	a5,a2
 742:	fcf42223          	sw	a5,-60(s0)
 746:	87ba                	mv	a5,a4
 748:	fcf42023          	sw	a5,-64(s0)
 74c:	fe042423          	sw	zero,-24(s0)
 750:	fc042783          	lw	a5,-64(s0)
 754:	2781                	sext.w	a5,a5
 756:	c38d                	beqz	a5,778 <printint+0x4e>
 758:	fc842783          	lw	a5,-56(s0)
 75c:	2781                	sext.w	a5,a5
 75e:	0007dd63          	bgez	a5,778 <printint+0x4e>
 762:	4785                	li	a5,1
 764:	fef42423          	sw	a5,-24(s0)
 768:	fc842783          	lw	a5,-56(s0)
 76c:	40f007bb          	negw	a5,a5
 770:	2781                	sext.w	a5,a5
 772:	fef42223          	sw	a5,-28(s0)
 776:	a029                	j	780 <printint+0x56>
 778:	fc842783          	lw	a5,-56(s0)
 77c:	fef42223          	sw	a5,-28(s0)
 780:	fe042623          	sw	zero,-20(s0)
 784:	fc442783          	lw	a5,-60(s0)
 788:	fe442703          	lw	a4,-28(s0)
 78c:	02f777bb          	remuw	a5,a4,a5
 790:	0007861b          	sext.w	a2,a5
 794:	fec42783          	lw	a5,-20(s0)
 798:	0017871b          	addiw	a4,a5,1
 79c:	fee42623          	sw	a4,-20(s0)
 7a0:	00001697          	auipc	a3,0x1
 7a4:	86068693          	addi	a3,a3,-1952 # 1000 <digits>
 7a8:	02061713          	slli	a4,a2,0x20
 7ac:	9301                	srli	a4,a4,0x20
 7ae:	9736                	add	a4,a4,a3
 7b0:	00074703          	lbu	a4,0(a4)
 7b4:	17c1                	addi	a5,a5,-16
 7b6:	97a2                	add	a5,a5,s0
 7b8:	fee78023          	sb	a4,-32(a5)
 7bc:	fc442783          	lw	a5,-60(s0)
 7c0:	fe442703          	lw	a4,-28(s0)
 7c4:	02f757bb          	divuw	a5,a4,a5
 7c8:	fef42223          	sw	a5,-28(s0)
 7cc:	fe442783          	lw	a5,-28(s0)
 7d0:	2781                	sext.w	a5,a5
 7d2:	fbcd                	bnez	a5,784 <printint+0x5a>
 7d4:	fe842783          	lw	a5,-24(s0)
 7d8:	2781                	sext.w	a5,a5
 7da:	cf85                	beqz	a5,812 <printint+0xe8>
 7dc:	fec42783          	lw	a5,-20(s0)
 7e0:	0017871b          	addiw	a4,a5,1
 7e4:	fee42623          	sw	a4,-20(s0)
 7e8:	17c1                	addi	a5,a5,-16
 7ea:	97a2                	add	a5,a5,s0
 7ec:	02d00713          	li	a4,45
 7f0:	fee78023          	sb	a4,-32(a5)
 7f4:	a839                	j	812 <printint+0xe8>
 7f6:	fec42783          	lw	a5,-20(s0)
 7fa:	17c1                	addi	a5,a5,-16
 7fc:	97a2                	add	a5,a5,s0
 7fe:	fe07c703          	lbu	a4,-32(a5)
 802:	fcc42783          	lw	a5,-52(s0)
 806:	85ba                	mv	a1,a4
 808:	853e                	mv	a0,a5
 80a:	00000097          	auipc	ra,0x0
 80e:	eea080e7          	jalr	-278(ra) # 6f4 <putc>
 812:	fec42783          	lw	a5,-20(s0)
 816:	37fd                	addiw	a5,a5,-1
 818:	fef42623          	sw	a5,-20(s0)
 81c:	fec42783          	lw	a5,-20(s0)
 820:	2781                	sext.w	a5,a5
 822:	fc07dae3          	bgez	a5,7f6 <printint+0xcc>
 826:	0001                	nop
 828:	0001                	nop
 82a:	70e2                	ld	ra,56(sp)
 82c:	7442                	ld	s0,48(sp)
 82e:	6121                	addi	sp,sp,64
 830:	8082                	ret

0000000000000832 <printptr>:
 832:	7179                	addi	sp,sp,-48
 834:	f406                	sd	ra,40(sp)
 836:	f022                	sd	s0,32(sp)
 838:	1800                	addi	s0,sp,48
 83a:	87aa                	mv	a5,a0
 83c:	fcb43823          	sd	a1,-48(s0)
 840:	fcf42e23          	sw	a5,-36(s0)
 844:	fdc42783          	lw	a5,-36(s0)
 848:	03000593          	li	a1,48
 84c:	853e                	mv	a0,a5
 84e:	00000097          	auipc	ra,0x0
 852:	ea6080e7          	jalr	-346(ra) # 6f4 <putc>
 856:	fdc42783          	lw	a5,-36(s0)
 85a:	07800593          	li	a1,120
 85e:	853e                	mv	a0,a5
 860:	00000097          	auipc	ra,0x0
 864:	e94080e7          	jalr	-364(ra) # 6f4 <putc>
 868:	fe042623          	sw	zero,-20(s0)
 86c:	a82d                	j	8a6 <printptr+0x74>
 86e:	fd043783          	ld	a5,-48(s0)
 872:	93f1                	srli	a5,a5,0x3c
 874:	00000717          	auipc	a4,0x0
 878:	78c70713          	addi	a4,a4,1932 # 1000 <digits>
 87c:	97ba                	add	a5,a5,a4
 87e:	0007c703          	lbu	a4,0(a5)
 882:	fdc42783          	lw	a5,-36(s0)
 886:	85ba                	mv	a1,a4
 888:	853e                	mv	a0,a5
 88a:	00000097          	auipc	ra,0x0
 88e:	e6a080e7          	jalr	-406(ra) # 6f4 <putc>
 892:	fec42783          	lw	a5,-20(s0)
 896:	2785                	addiw	a5,a5,1
 898:	fef42623          	sw	a5,-20(s0)
 89c:	fd043783          	ld	a5,-48(s0)
 8a0:	0792                	slli	a5,a5,0x4
 8a2:	fcf43823          	sd	a5,-48(s0)
 8a6:	fec42783          	lw	a5,-20(s0)
 8aa:	873e                	mv	a4,a5
 8ac:	47bd                	li	a5,15
 8ae:	fce7f0e3          	bgeu	a5,a4,86e <printptr+0x3c>
 8b2:	0001                	nop
 8b4:	0001                	nop
 8b6:	70a2                	ld	ra,40(sp)
 8b8:	7402                	ld	s0,32(sp)
 8ba:	6145                	addi	sp,sp,48
 8bc:	8082                	ret

00000000000008be <vprintf>:
 8be:	715d                	addi	sp,sp,-80
 8c0:	e486                	sd	ra,72(sp)
 8c2:	e0a2                	sd	s0,64(sp)
 8c4:	0880                	addi	s0,sp,80
 8c6:	87aa                	mv	a5,a0
 8c8:	fcb43023          	sd	a1,-64(s0)
 8cc:	fac43c23          	sd	a2,-72(s0)
 8d0:	fcf42623          	sw	a5,-52(s0)
 8d4:	fe042023          	sw	zero,-32(s0)
 8d8:	fe042223          	sw	zero,-28(s0)
 8dc:	a42d                	j	b06 <vprintf+0x248>
 8de:	fe442783          	lw	a5,-28(s0)
 8e2:	fc043703          	ld	a4,-64(s0)
 8e6:	97ba                	add	a5,a5,a4
 8e8:	0007c783          	lbu	a5,0(a5)
 8ec:	fcf42e23          	sw	a5,-36(s0)
 8f0:	fe042783          	lw	a5,-32(s0)
 8f4:	2781                	sext.w	a5,a5
 8f6:	eb9d                	bnez	a5,92c <vprintf+0x6e>
 8f8:	fdc42783          	lw	a5,-36(s0)
 8fc:	0007871b          	sext.w	a4,a5
 900:	02500793          	li	a5,37
 904:	00f71763          	bne	a4,a5,912 <vprintf+0x54>
 908:	02500793          	li	a5,37
 90c:	fef42023          	sw	a5,-32(s0)
 910:	a2f5                	j	afc <vprintf+0x23e>
 912:	fdc42783          	lw	a5,-36(s0)
 916:	0ff7f713          	zext.b	a4,a5
 91a:	fcc42783          	lw	a5,-52(s0)
 91e:	85ba                	mv	a1,a4
 920:	853e                	mv	a0,a5
 922:	00000097          	auipc	ra,0x0
 926:	dd2080e7          	jalr	-558(ra) # 6f4 <putc>
 92a:	aac9                	j	afc <vprintf+0x23e>
 92c:	fe042783          	lw	a5,-32(s0)
 930:	0007871b          	sext.w	a4,a5
 934:	02500793          	li	a5,37
 938:	1cf71263          	bne	a4,a5,afc <vprintf+0x23e>
 93c:	fdc42783          	lw	a5,-36(s0)
 940:	0007871b          	sext.w	a4,a5
 944:	06400793          	li	a5,100
 948:	02f71463          	bne	a4,a5,970 <vprintf+0xb2>
 94c:	fb843783          	ld	a5,-72(s0)
 950:	00878713          	addi	a4,a5,8
 954:	fae43c23          	sd	a4,-72(s0)
 958:	4398                	lw	a4,0(a5)
 95a:	fcc42783          	lw	a5,-52(s0)
 95e:	4685                	li	a3,1
 960:	4629                	li	a2,10
 962:	85ba                	mv	a1,a4
 964:	853e                	mv	a0,a5
 966:	00000097          	auipc	ra,0x0
 96a:	dc4080e7          	jalr	-572(ra) # 72a <printint>
 96e:	a269                	j	af8 <vprintf+0x23a>
 970:	fdc42783          	lw	a5,-36(s0)
 974:	0007871b          	sext.w	a4,a5
 978:	06c00793          	li	a5,108
 97c:	02f71663          	bne	a4,a5,9a8 <vprintf+0xea>
 980:	fb843783          	ld	a5,-72(s0)
 984:	00878713          	addi	a4,a5,8
 988:	fae43c23          	sd	a4,-72(s0)
 98c:	639c                	ld	a5,0(a5)
 98e:	0007871b          	sext.w	a4,a5
 992:	fcc42783          	lw	a5,-52(s0)
 996:	4681                	li	a3,0
 998:	4629                	li	a2,10
 99a:	85ba                	mv	a1,a4
 99c:	853e                	mv	a0,a5
 99e:	00000097          	auipc	ra,0x0
 9a2:	d8c080e7          	jalr	-628(ra) # 72a <printint>
 9a6:	aa89                	j	af8 <vprintf+0x23a>
 9a8:	fdc42783          	lw	a5,-36(s0)
 9ac:	0007871b          	sext.w	a4,a5
 9b0:	07800793          	li	a5,120
 9b4:	02f71463          	bne	a4,a5,9dc <vprintf+0x11e>
 9b8:	fb843783          	ld	a5,-72(s0)
 9bc:	00878713          	addi	a4,a5,8
 9c0:	fae43c23          	sd	a4,-72(s0)
 9c4:	4398                	lw	a4,0(a5)
 9c6:	fcc42783          	lw	a5,-52(s0)
 9ca:	4681                	li	a3,0
 9cc:	4641                	li	a2,16
 9ce:	85ba                	mv	a1,a4
 9d0:	853e                	mv	a0,a5
 9d2:	00000097          	auipc	ra,0x0
 9d6:	d58080e7          	jalr	-680(ra) # 72a <printint>
 9da:	aa39                	j	af8 <vprintf+0x23a>
 9dc:	fdc42783          	lw	a5,-36(s0)
 9e0:	0007871b          	sext.w	a4,a5
 9e4:	07000793          	li	a5,112
 9e8:	02f71263          	bne	a4,a5,a0c <vprintf+0x14e>
 9ec:	fb843783          	ld	a5,-72(s0)
 9f0:	00878713          	addi	a4,a5,8
 9f4:	fae43c23          	sd	a4,-72(s0)
 9f8:	6398                	ld	a4,0(a5)
 9fa:	fcc42783          	lw	a5,-52(s0)
 9fe:	85ba                	mv	a1,a4
 a00:	853e                	mv	a0,a5
 a02:	00000097          	auipc	ra,0x0
 a06:	e30080e7          	jalr	-464(ra) # 832 <printptr>
 a0a:	a0fd                	j	af8 <vprintf+0x23a>
 a0c:	fdc42783          	lw	a5,-36(s0)
 a10:	0007871b          	sext.w	a4,a5
 a14:	07300793          	li	a5,115
 a18:	04f71c63          	bne	a4,a5,a70 <vprintf+0x1b2>
 a1c:	fb843783          	ld	a5,-72(s0)
 a20:	00878713          	addi	a4,a5,8
 a24:	fae43c23          	sd	a4,-72(s0)
 a28:	639c                	ld	a5,0(a5)
 a2a:	fef43423          	sd	a5,-24(s0)
 a2e:	fe843783          	ld	a5,-24(s0)
 a32:	eb8d                	bnez	a5,a64 <vprintf+0x1a6>
 a34:	00000797          	auipc	a5,0x0
 a38:	4c478793          	addi	a5,a5,1220 # ef8 <malloc+0x18a>
 a3c:	fef43423          	sd	a5,-24(s0)
 a40:	a015                	j	a64 <vprintf+0x1a6>
 a42:	fe843783          	ld	a5,-24(s0)
 a46:	0007c703          	lbu	a4,0(a5)
 a4a:	fcc42783          	lw	a5,-52(s0)
 a4e:	85ba                	mv	a1,a4
 a50:	853e                	mv	a0,a5
 a52:	00000097          	auipc	ra,0x0
 a56:	ca2080e7          	jalr	-862(ra) # 6f4 <putc>
 a5a:	fe843783          	ld	a5,-24(s0)
 a5e:	0785                	addi	a5,a5,1
 a60:	fef43423          	sd	a5,-24(s0)
 a64:	fe843783          	ld	a5,-24(s0)
 a68:	0007c783          	lbu	a5,0(a5)
 a6c:	fbf9                	bnez	a5,a42 <vprintf+0x184>
 a6e:	a069                	j	af8 <vprintf+0x23a>
 a70:	fdc42783          	lw	a5,-36(s0)
 a74:	0007871b          	sext.w	a4,a5
 a78:	06300793          	li	a5,99
 a7c:	02f71463          	bne	a4,a5,aa4 <vprintf+0x1e6>
 a80:	fb843783          	ld	a5,-72(s0)
 a84:	00878713          	addi	a4,a5,8
 a88:	fae43c23          	sd	a4,-72(s0)
 a8c:	439c                	lw	a5,0(a5)
 a8e:	0ff7f713          	zext.b	a4,a5
 a92:	fcc42783          	lw	a5,-52(s0)
 a96:	85ba                	mv	a1,a4
 a98:	853e                	mv	a0,a5
 a9a:	00000097          	auipc	ra,0x0
 a9e:	c5a080e7          	jalr	-934(ra) # 6f4 <putc>
 aa2:	a899                	j	af8 <vprintf+0x23a>
 aa4:	fdc42783          	lw	a5,-36(s0)
 aa8:	0007871b          	sext.w	a4,a5
 aac:	02500793          	li	a5,37
 ab0:	00f71f63          	bne	a4,a5,ace <vprintf+0x210>
 ab4:	fdc42783          	lw	a5,-36(s0)
 ab8:	0ff7f713          	zext.b	a4,a5
 abc:	fcc42783          	lw	a5,-52(s0)
 ac0:	85ba                	mv	a1,a4
 ac2:	853e                	mv	a0,a5
 ac4:	00000097          	auipc	ra,0x0
 ac8:	c30080e7          	jalr	-976(ra) # 6f4 <putc>
 acc:	a035                	j	af8 <vprintf+0x23a>
 ace:	fcc42783          	lw	a5,-52(s0)
 ad2:	02500593          	li	a1,37
 ad6:	853e                	mv	a0,a5
 ad8:	00000097          	auipc	ra,0x0
 adc:	c1c080e7          	jalr	-996(ra) # 6f4 <putc>
 ae0:	fdc42783          	lw	a5,-36(s0)
 ae4:	0ff7f713          	zext.b	a4,a5
 ae8:	fcc42783          	lw	a5,-52(s0)
 aec:	85ba                	mv	a1,a4
 aee:	853e                	mv	a0,a5
 af0:	00000097          	auipc	ra,0x0
 af4:	c04080e7          	jalr	-1020(ra) # 6f4 <putc>
 af8:	fe042023          	sw	zero,-32(s0)
 afc:	fe442783          	lw	a5,-28(s0)
 b00:	2785                	addiw	a5,a5,1
 b02:	fef42223          	sw	a5,-28(s0)
 b06:	fe442783          	lw	a5,-28(s0)
 b0a:	fc043703          	ld	a4,-64(s0)
 b0e:	97ba                	add	a5,a5,a4
 b10:	0007c783          	lbu	a5,0(a5)
 b14:	dc0795e3          	bnez	a5,8de <vprintf+0x20>
 b18:	0001                	nop
 b1a:	0001                	nop
 b1c:	60a6                	ld	ra,72(sp)
 b1e:	6406                	ld	s0,64(sp)
 b20:	6161                	addi	sp,sp,80
 b22:	8082                	ret

0000000000000b24 <fprintf>:
 b24:	7159                	addi	sp,sp,-112
 b26:	fc06                	sd	ra,56(sp)
 b28:	f822                	sd	s0,48(sp)
 b2a:	0080                	addi	s0,sp,64
 b2c:	fcb43823          	sd	a1,-48(s0)
 b30:	e010                	sd	a2,0(s0)
 b32:	e414                	sd	a3,8(s0)
 b34:	e818                	sd	a4,16(s0)
 b36:	ec1c                	sd	a5,24(s0)
 b38:	03043023          	sd	a6,32(s0)
 b3c:	03143423          	sd	a7,40(s0)
 b40:	87aa                	mv	a5,a0
 b42:	fcf42e23          	sw	a5,-36(s0)
 b46:	03040793          	addi	a5,s0,48
 b4a:	fcf43423          	sd	a5,-56(s0)
 b4e:	fc843783          	ld	a5,-56(s0)
 b52:	fd078793          	addi	a5,a5,-48
 b56:	fef43423          	sd	a5,-24(s0)
 b5a:	fe843703          	ld	a4,-24(s0)
 b5e:	fdc42783          	lw	a5,-36(s0)
 b62:	863a                	mv	a2,a4
 b64:	fd043583          	ld	a1,-48(s0)
 b68:	853e                	mv	a0,a5
 b6a:	00000097          	auipc	ra,0x0
 b6e:	d54080e7          	jalr	-684(ra) # 8be <vprintf>
 b72:	0001                	nop
 b74:	70e2                	ld	ra,56(sp)
 b76:	7442                	ld	s0,48(sp)
 b78:	6165                	addi	sp,sp,112
 b7a:	8082                	ret

0000000000000b7c <printf>:
 b7c:	7159                	addi	sp,sp,-112
 b7e:	f406                	sd	ra,40(sp)
 b80:	f022                	sd	s0,32(sp)
 b82:	1800                	addi	s0,sp,48
 b84:	fca43c23          	sd	a0,-40(s0)
 b88:	e40c                	sd	a1,8(s0)
 b8a:	e810                	sd	a2,16(s0)
 b8c:	ec14                	sd	a3,24(s0)
 b8e:	f018                	sd	a4,32(s0)
 b90:	f41c                	sd	a5,40(s0)
 b92:	03043823          	sd	a6,48(s0)
 b96:	03143c23          	sd	a7,56(s0)
 b9a:	04040793          	addi	a5,s0,64
 b9e:	fcf43823          	sd	a5,-48(s0)
 ba2:	fd043783          	ld	a5,-48(s0)
 ba6:	fc878793          	addi	a5,a5,-56
 baa:	fef43423          	sd	a5,-24(s0)
 bae:	fe843783          	ld	a5,-24(s0)
 bb2:	863e                	mv	a2,a5
 bb4:	fd843583          	ld	a1,-40(s0)
 bb8:	4505                	li	a0,1
 bba:	00000097          	auipc	ra,0x0
 bbe:	d04080e7          	jalr	-764(ra) # 8be <vprintf>
 bc2:	0001                	nop
 bc4:	70a2                	ld	ra,40(sp)
 bc6:	7402                	ld	s0,32(sp)
 bc8:	6165                	addi	sp,sp,112
 bca:	8082                	ret

0000000000000bcc <free>:
 bcc:	7179                	addi	sp,sp,-48
 bce:	f422                	sd	s0,40(sp)
 bd0:	1800                	addi	s0,sp,48
 bd2:	fca43c23          	sd	a0,-40(s0)
 bd6:	fd843783          	ld	a5,-40(s0)
 bda:	17c1                	addi	a5,a5,-16
 bdc:	fef43023          	sd	a5,-32(s0)
 be0:	00000797          	auipc	a5,0x0
 be4:	65078793          	addi	a5,a5,1616 # 1230 <freep>
 be8:	639c                	ld	a5,0(a5)
 bea:	fef43423          	sd	a5,-24(s0)
 bee:	a815                	j	c22 <free+0x56>
 bf0:	fe843783          	ld	a5,-24(s0)
 bf4:	639c                	ld	a5,0(a5)
 bf6:	fe843703          	ld	a4,-24(s0)
 bfa:	00f76f63          	bltu	a4,a5,c18 <free+0x4c>
 bfe:	fe043703          	ld	a4,-32(s0)
 c02:	fe843783          	ld	a5,-24(s0)
 c06:	02e7eb63          	bltu	a5,a4,c3c <free+0x70>
 c0a:	fe843783          	ld	a5,-24(s0)
 c0e:	639c                	ld	a5,0(a5)
 c10:	fe043703          	ld	a4,-32(s0)
 c14:	02f76463          	bltu	a4,a5,c3c <free+0x70>
 c18:	fe843783          	ld	a5,-24(s0)
 c1c:	639c                	ld	a5,0(a5)
 c1e:	fef43423          	sd	a5,-24(s0)
 c22:	fe043703          	ld	a4,-32(s0)
 c26:	fe843783          	ld	a5,-24(s0)
 c2a:	fce7f3e3          	bgeu	a5,a4,bf0 <free+0x24>
 c2e:	fe843783          	ld	a5,-24(s0)
 c32:	639c                	ld	a5,0(a5)
 c34:	fe043703          	ld	a4,-32(s0)
 c38:	faf77ce3          	bgeu	a4,a5,bf0 <free+0x24>
 c3c:	fe043783          	ld	a5,-32(s0)
 c40:	479c                	lw	a5,8(a5)
 c42:	1782                	slli	a5,a5,0x20
 c44:	9381                	srli	a5,a5,0x20
 c46:	0792                	slli	a5,a5,0x4
 c48:	fe043703          	ld	a4,-32(s0)
 c4c:	973e                	add	a4,a4,a5
 c4e:	fe843783          	ld	a5,-24(s0)
 c52:	639c                	ld	a5,0(a5)
 c54:	02f71763          	bne	a4,a5,c82 <free+0xb6>
 c58:	fe043783          	ld	a5,-32(s0)
 c5c:	4798                	lw	a4,8(a5)
 c5e:	fe843783          	ld	a5,-24(s0)
 c62:	639c                	ld	a5,0(a5)
 c64:	479c                	lw	a5,8(a5)
 c66:	9fb9                	addw	a5,a5,a4
 c68:	0007871b          	sext.w	a4,a5
 c6c:	fe043783          	ld	a5,-32(s0)
 c70:	c798                	sw	a4,8(a5)
 c72:	fe843783          	ld	a5,-24(s0)
 c76:	639c                	ld	a5,0(a5)
 c78:	6398                	ld	a4,0(a5)
 c7a:	fe043783          	ld	a5,-32(s0)
 c7e:	e398                	sd	a4,0(a5)
 c80:	a039                	j	c8e <free+0xc2>
 c82:	fe843783          	ld	a5,-24(s0)
 c86:	6398                	ld	a4,0(a5)
 c88:	fe043783          	ld	a5,-32(s0)
 c8c:	e398                	sd	a4,0(a5)
 c8e:	fe843783          	ld	a5,-24(s0)
 c92:	479c                	lw	a5,8(a5)
 c94:	1782                	slli	a5,a5,0x20
 c96:	9381                	srli	a5,a5,0x20
 c98:	0792                	slli	a5,a5,0x4
 c9a:	fe843703          	ld	a4,-24(s0)
 c9e:	97ba                	add	a5,a5,a4
 ca0:	fe043703          	ld	a4,-32(s0)
 ca4:	02f71563          	bne	a4,a5,cce <free+0x102>
 ca8:	fe843783          	ld	a5,-24(s0)
 cac:	4798                	lw	a4,8(a5)
 cae:	fe043783          	ld	a5,-32(s0)
 cb2:	479c                	lw	a5,8(a5)
 cb4:	9fb9                	addw	a5,a5,a4
 cb6:	0007871b          	sext.w	a4,a5
 cba:	fe843783          	ld	a5,-24(s0)
 cbe:	c798                	sw	a4,8(a5)
 cc0:	fe043783          	ld	a5,-32(s0)
 cc4:	6398                	ld	a4,0(a5)
 cc6:	fe843783          	ld	a5,-24(s0)
 cca:	e398                	sd	a4,0(a5)
 ccc:	a031                	j	cd8 <free+0x10c>
 cce:	fe843783          	ld	a5,-24(s0)
 cd2:	fe043703          	ld	a4,-32(s0)
 cd6:	e398                	sd	a4,0(a5)
 cd8:	00000797          	auipc	a5,0x0
 cdc:	55878793          	addi	a5,a5,1368 # 1230 <freep>
 ce0:	fe843703          	ld	a4,-24(s0)
 ce4:	e398                	sd	a4,0(a5)
 ce6:	0001                	nop
 ce8:	7422                	ld	s0,40(sp)
 cea:	6145                	addi	sp,sp,48
 cec:	8082                	ret

0000000000000cee <morecore>:
 cee:	7179                	addi	sp,sp,-48
 cf0:	f406                	sd	ra,40(sp)
 cf2:	f022                	sd	s0,32(sp)
 cf4:	1800                	addi	s0,sp,48
 cf6:	87aa                	mv	a5,a0
 cf8:	fcf42e23          	sw	a5,-36(s0)
 cfc:	fdc42783          	lw	a5,-36(s0)
 d00:	0007871b          	sext.w	a4,a5
 d04:	6785                	lui	a5,0x1
 d06:	00f77563          	bgeu	a4,a5,d10 <morecore+0x22>
 d0a:	6785                	lui	a5,0x1
 d0c:	fcf42e23          	sw	a5,-36(s0)
 d10:	fdc42783          	lw	a5,-36(s0)
 d14:	0047979b          	slliw	a5,a5,0x4
 d18:	2781                	sext.w	a5,a5
 d1a:	2781                	sext.w	a5,a5
 d1c:	853e                	mv	a0,a5
 d1e:	00000097          	auipc	ra,0x0
 d22:	996080e7          	jalr	-1642(ra) # 6b4 <sbrk>
 d26:	fea43423          	sd	a0,-24(s0)
 d2a:	fe843703          	ld	a4,-24(s0)
 d2e:	57fd                	li	a5,-1
 d30:	00f71463          	bne	a4,a5,d38 <morecore+0x4a>
 d34:	4781                	li	a5,0
 d36:	a03d                	j	d64 <morecore+0x76>
 d38:	fe843783          	ld	a5,-24(s0)
 d3c:	fef43023          	sd	a5,-32(s0)
 d40:	fe043783          	ld	a5,-32(s0)
 d44:	fdc42703          	lw	a4,-36(s0)
 d48:	c798                	sw	a4,8(a5)
 d4a:	fe043783          	ld	a5,-32(s0)
 d4e:	07c1                	addi	a5,a5,16 # 1010 <digits+0x10>
 d50:	853e                	mv	a0,a5
 d52:	00000097          	auipc	ra,0x0
 d56:	e7a080e7          	jalr	-390(ra) # bcc <free>
 d5a:	00000797          	auipc	a5,0x0
 d5e:	4d678793          	addi	a5,a5,1238 # 1230 <freep>
 d62:	639c                	ld	a5,0(a5)
 d64:	853e                	mv	a0,a5
 d66:	70a2                	ld	ra,40(sp)
 d68:	7402                	ld	s0,32(sp)
 d6a:	6145                	addi	sp,sp,48
 d6c:	8082                	ret

0000000000000d6e <malloc>:
 d6e:	7139                	addi	sp,sp,-64
 d70:	fc06                	sd	ra,56(sp)
 d72:	f822                	sd	s0,48(sp)
 d74:	0080                	addi	s0,sp,64
 d76:	87aa                	mv	a5,a0
 d78:	fcf42623          	sw	a5,-52(s0)
 d7c:	fcc46783          	lwu	a5,-52(s0)
 d80:	07bd                	addi	a5,a5,15
 d82:	8391                	srli	a5,a5,0x4
 d84:	2781                	sext.w	a5,a5
 d86:	2785                	addiw	a5,a5,1
 d88:	fcf42e23          	sw	a5,-36(s0)
 d8c:	00000797          	auipc	a5,0x0
 d90:	4a478793          	addi	a5,a5,1188 # 1230 <freep>
 d94:	639c                	ld	a5,0(a5)
 d96:	fef43023          	sd	a5,-32(s0)
 d9a:	fe043783          	ld	a5,-32(s0)
 d9e:	ef95                	bnez	a5,dda <malloc+0x6c>
 da0:	00000797          	auipc	a5,0x0
 da4:	48078793          	addi	a5,a5,1152 # 1220 <base>
 da8:	fef43023          	sd	a5,-32(s0)
 dac:	00000797          	auipc	a5,0x0
 db0:	48478793          	addi	a5,a5,1156 # 1230 <freep>
 db4:	fe043703          	ld	a4,-32(s0)
 db8:	e398                	sd	a4,0(a5)
 dba:	00000797          	auipc	a5,0x0
 dbe:	47678793          	addi	a5,a5,1142 # 1230 <freep>
 dc2:	6398                	ld	a4,0(a5)
 dc4:	00000797          	auipc	a5,0x0
 dc8:	45c78793          	addi	a5,a5,1116 # 1220 <base>
 dcc:	e398                	sd	a4,0(a5)
 dce:	00000797          	auipc	a5,0x0
 dd2:	45278793          	addi	a5,a5,1106 # 1220 <base>
 dd6:	0007a423          	sw	zero,8(a5)
 dda:	fe043783          	ld	a5,-32(s0)
 dde:	639c                	ld	a5,0(a5)
 de0:	fef43423          	sd	a5,-24(s0)
 de4:	fe843783          	ld	a5,-24(s0)
 de8:	4798                	lw	a4,8(a5)
 dea:	fdc42783          	lw	a5,-36(s0)
 dee:	2781                	sext.w	a5,a5
 df0:	06f76763          	bltu	a4,a5,e5e <malloc+0xf0>
 df4:	fe843783          	ld	a5,-24(s0)
 df8:	4798                	lw	a4,8(a5)
 dfa:	fdc42783          	lw	a5,-36(s0)
 dfe:	2781                	sext.w	a5,a5
 e00:	00e79963          	bne	a5,a4,e12 <malloc+0xa4>
 e04:	fe843783          	ld	a5,-24(s0)
 e08:	6398                	ld	a4,0(a5)
 e0a:	fe043783          	ld	a5,-32(s0)
 e0e:	e398                	sd	a4,0(a5)
 e10:	a825                	j	e48 <malloc+0xda>
 e12:	fe843783          	ld	a5,-24(s0)
 e16:	479c                	lw	a5,8(a5)
 e18:	fdc42703          	lw	a4,-36(s0)
 e1c:	9f99                	subw	a5,a5,a4
 e1e:	0007871b          	sext.w	a4,a5
 e22:	fe843783          	ld	a5,-24(s0)
 e26:	c798                	sw	a4,8(a5)
 e28:	fe843783          	ld	a5,-24(s0)
 e2c:	479c                	lw	a5,8(a5)
 e2e:	1782                	slli	a5,a5,0x20
 e30:	9381                	srli	a5,a5,0x20
 e32:	0792                	slli	a5,a5,0x4
 e34:	fe843703          	ld	a4,-24(s0)
 e38:	97ba                	add	a5,a5,a4
 e3a:	fef43423          	sd	a5,-24(s0)
 e3e:	fe843783          	ld	a5,-24(s0)
 e42:	fdc42703          	lw	a4,-36(s0)
 e46:	c798                	sw	a4,8(a5)
 e48:	00000797          	auipc	a5,0x0
 e4c:	3e878793          	addi	a5,a5,1000 # 1230 <freep>
 e50:	fe043703          	ld	a4,-32(s0)
 e54:	e398                	sd	a4,0(a5)
 e56:	fe843783          	ld	a5,-24(s0)
 e5a:	07c1                	addi	a5,a5,16
 e5c:	a091                	j	ea0 <malloc+0x132>
 e5e:	00000797          	auipc	a5,0x0
 e62:	3d278793          	addi	a5,a5,978 # 1230 <freep>
 e66:	639c                	ld	a5,0(a5)
 e68:	fe843703          	ld	a4,-24(s0)
 e6c:	02f71063          	bne	a4,a5,e8c <malloc+0x11e>
 e70:	fdc42783          	lw	a5,-36(s0)
 e74:	853e                	mv	a0,a5
 e76:	00000097          	auipc	ra,0x0
 e7a:	e78080e7          	jalr	-392(ra) # cee <morecore>
 e7e:	fea43423          	sd	a0,-24(s0)
 e82:	fe843783          	ld	a5,-24(s0)
 e86:	e399                	bnez	a5,e8c <malloc+0x11e>
 e88:	4781                	li	a5,0
 e8a:	a819                	j	ea0 <malloc+0x132>
 e8c:	fe843783          	ld	a5,-24(s0)
 e90:	fef43023          	sd	a5,-32(s0)
 e94:	fe843783          	ld	a5,-24(s0)
 e98:	639c                	ld	a5,0(a5)
 e9a:	fef43423          	sd	a5,-24(s0)
 e9e:	b799                	j	de4 <malloc+0x76>
 ea0:	853e                	mv	a0,a5
 ea2:	70e2                	ld	ra,56(sp)
 ea4:	7442                	ld	s0,48(sp)
 ea6:	6121                	addi	sp,sp,64
 ea8:	8082                	ret
