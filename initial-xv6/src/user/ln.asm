
user/_ln:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <main>:
   0:	1101                	addi	sp,sp,-32
   2:	ec06                	sd	ra,24(sp)
   4:	e822                	sd	s0,16(sp)
   6:	1000                	addi	s0,sp,32
   8:	87aa                	mv	a5,a0
   a:	feb43023          	sd	a1,-32(s0)
   e:	fef42623          	sw	a5,-20(s0)
  12:	fec42783          	lw	a5,-20(s0)
  16:	0007871b          	sext.w	a4,a5
  1a:	478d                	li	a5,3
  1c:	02f70063          	beq	a4,a5,3c <main+0x3c>
  20:	00001597          	auipc	a1,0x1
  24:	da058593          	addi	a1,a1,-608 # dc0 <malloc+0x144>
  28:	4509                	li	a0,2
  2a:	00001097          	auipc	ra,0x1
  2e:	a08080e7          	jalr	-1528(ra) # a32 <fprintf>
  32:	4505                	li	a0,1
  34:	00000097          	auipc	ra,0x0
  38:	506080e7          	jalr	1286(ra) # 53a <exit>
  3c:	fe043783          	ld	a5,-32(s0)
  40:	07a1                	addi	a5,a5,8
  42:	6398                	ld	a4,0(a5)
  44:	fe043783          	ld	a5,-32(s0)
  48:	07c1                	addi	a5,a5,16
  4a:	639c                	ld	a5,0(a5)
  4c:	85be                	mv	a1,a5
  4e:	853a                	mv	a0,a4
  50:	00000097          	auipc	ra,0x0
  54:	54a080e7          	jalr	1354(ra) # 59a <link>
  58:	87aa                	mv	a5,a0
  5a:	0207d563          	bgez	a5,84 <main+0x84>
  5e:	fe043783          	ld	a5,-32(s0)
  62:	07a1                	addi	a5,a5,8
  64:	6398                	ld	a4,0(a5)
  66:	fe043783          	ld	a5,-32(s0)
  6a:	07c1                	addi	a5,a5,16
  6c:	639c                	ld	a5,0(a5)
  6e:	86be                	mv	a3,a5
  70:	863a                	mv	a2,a4
  72:	00001597          	auipc	a1,0x1
  76:	d6658593          	addi	a1,a1,-666 # dd8 <malloc+0x15c>
  7a:	4509                	li	a0,2
  7c:	00001097          	auipc	ra,0x1
  80:	9b6080e7          	jalr	-1610(ra) # a32 <fprintf>
  84:	4501                	li	a0,0
  86:	00000097          	auipc	ra,0x0
  8a:	4b4080e7          	jalr	1204(ra) # 53a <exit>

000000000000008e <_main>:
  8e:	1141                	addi	sp,sp,-16
  90:	e406                	sd	ra,8(sp)
  92:	e022                	sd	s0,0(sp)
  94:	0800                	addi	s0,sp,16
  96:	00000097          	auipc	ra,0x0
  9a:	f6a080e7          	jalr	-150(ra) # 0 <main>
  9e:	4501                	li	a0,0
  a0:	00000097          	auipc	ra,0x0
  a4:	49a080e7          	jalr	1178(ra) # 53a <exit>

00000000000000a8 <strcpy>:
  a8:	7179                	addi	sp,sp,-48
  aa:	f422                	sd	s0,40(sp)
  ac:	1800                	addi	s0,sp,48
  ae:	fca43c23          	sd	a0,-40(s0)
  b2:	fcb43823          	sd	a1,-48(s0)
  b6:	fd843783          	ld	a5,-40(s0)
  ba:	fef43423          	sd	a5,-24(s0)
  be:	0001                	nop
  c0:	fd043703          	ld	a4,-48(s0)
  c4:	00170793          	addi	a5,a4,1
  c8:	fcf43823          	sd	a5,-48(s0)
  cc:	fd843783          	ld	a5,-40(s0)
  d0:	00178693          	addi	a3,a5,1
  d4:	fcd43c23          	sd	a3,-40(s0)
  d8:	00074703          	lbu	a4,0(a4)
  dc:	00e78023          	sb	a4,0(a5)
  e0:	0007c783          	lbu	a5,0(a5)
  e4:	fff1                	bnez	a5,c0 <strcpy+0x18>
  e6:	fe843783          	ld	a5,-24(s0)
  ea:	853e                	mv	a0,a5
  ec:	7422                	ld	s0,40(sp)
  ee:	6145                	addi	sp,sp,48
  f0:	8082                	ret

00000000000000f2 <strcmp>:
  f2:	1101                	addi	sp,sp,-32
  f4:	ec22                	sd	s0,24(sp)
  f6:	1000                	addi	s0,sp,32
  f8:	fea43423          	sd	a0,-24(s0)
  fc:	feb43023          	sd	a1,-32(s0)
 100:	a819                	j	116 <strcmp+0x24>
 102:	fe843783          	ld	a5,-24(s0)
 106:	0785                	addi	a5,a5,1
 108:	fef43423          	sd	a5,-24(s0)
 10c:	fe043783          	ld	a5,-32(s0)
 110:	0785                	addi	a5,a5,1
 112:	fef43023          	sd	a5,-32(s0)
 116:	fe843783          	ld	a5,-24(s0)
 11a:	0007c783          	lbu	a5,0(a5)
 11e:	cb99                	beqz	a5,134 <strcmp+0x42>
 120:	fe843783          	ld	a5,-24(s0)
 124:	0007c703          	lbu	a4,0(a5)
 128:	fe043783          	ld	a5,-32(s0)
 12c:	0007c783          	lbu	a5,0(a5)
 130:	fcf709e3          	beq	a4,a5,102 <strcmp+0x10>
 134:	fe843783          	ld	a5,-24(s0)
 138:	0007c783          	lbu	a5,0(a5)
 13c:	0007871b          	sext.w	a4,a5
 140:	fe043783          	ld	a5,-32(s0)
 144:	0007c783          	lbu	a5,0(a5)
 148:	2781                	sext.w	a5,a5
 14a:	40f707bb          	subw	a5,a4,a5
 14e:	2781                	sext.w	a5,a5
 150:	853e                	mv	a0,a5
 152:	6462                	ld	s0,24(sp)
 154:	6105                	addi	sp,sp,32
 156:	8082                	ret

0000000000000158 <strlen>:
 158:	7179                	addi	sp,sp,-48
 15a:	f422                	sd	s0,40(sp)
 15c:	1800                	addi	s0,sp,48
 15e:	fca43c23          	sd	a0,-40(s0)
 162:	fe042623          	sw	zero,-20(s0)
 166:	a031                	j	172 <strlen+0x1a>
 168:	fec42783          	lw	a5,-20(s0)
 16c:	2785                	addiw	a5,a5,1
 16e:	fef42623          	sw	a5,-20(s0)
 172:	fec42783          	lw	a5,-20(s0)
 176:	fd843703          	ld	a4,-40(s0)
 17a:	97ba                	add	a5,a5,a4
 17c:	0007c783          	lbu	a5,0(a5)
 180:	f7e5                	bnez	a5,168 <strlen+0x10>
 182:	fec42783          	lw	a5,-20(s0)
 186:	853e                	mv	a0,a5
 188:	7422                	ld	s0,40(sp)
 18a:	6145                	addi	sp,sp,48
 18c:	8082                	ret

000000000000018e <memset>:
 18e:	7179                	addi	sp,sp,-48
 190:	f422                	sd	s0,40(sp)
 192:	1800                	addi	s0,sp,48
 194:	fca43c23          	sd	a0,-40(s0)
 198:	87ae                	mv	a5,a1
 19a:	8732                	mv	a4,a2
 19c:	fcf42a23          	sw	a5,-44(s0)
 1a0:	87ba                	mv	a5,a4
 1a2:	fcf42823          	sw	a5,-48(s0)
 1a6:	fd843783          	ld	a5,-40(s0)
 1aa:	fef43023          	sd	a5,-32(s0)
 1ae:	fe042623          	sw	zero,-20(s0)
 1b2:	a00d                	j	1d4 <memset+0x46>
 1b4:	fec42783          	lw	a5,-20(s0)
 1b8:	fe043703          	ld	a4,-32(s0)
 1bc:	97ba                	add	a5,a5,a4
 1be:	fd442703          	lw	a4,-44(s0)
 1c2:	0ff77713          	zext.b	a4,a4
 1c6:	00e78023          	sb	a4,0(a5)
 1ca:	fec42783          	lw	a5,-20(s0)
 1ce:	2785                	addiw	a5,a5,1
 1d0:	fef42623          	sw	a5,-20(s0)
 1d4:	fec42703          	lw	a4,-20(s0)
 1d8:	fd042783          	lw	a5,-48(s0)
 1dc:	2781                	sext.w	a5,a5
 1de:	fcf76be3          	bltu	a4,a5,1b4 <memset+0x26>
 1e2:	fd843783          	ld	a5,-40(s0)
 1e6:	853e                	mv	a0,a5
 1e8:	7422                	ld	s0,40(sp)
 1ea:	6145                	addi	sp,sp,48
 1ec:	8082                	ret

00000000000001ee <strchr>:
 1ee:	1101                	addi	sp,sp,-32
 1f0:	ec22                	sd	s0,24(sp)
 1f2:	1000                	addi	s0,sp,32
 1f4:	fea43423          	sd	a0,-24(s0)
 1f8:	87ae                	mv	a5,a1
 1fa:	fef403a3          	sb	a5,-25(s0)
 1fe:	a01d                	j	224 <strchr+0x36>
 200:	fe843783          	ld	a5,-24(s0)
 204:	0007c703          	lbu	a4,0(a5)
 208:	fe744783          	lbu	a5,-25(s0)
 20c:	0ff7f793          	zext.b	a5,a5
 210:	00e79563          	bne	a5,a4,21a <strchr+0x2c>
 214:	fe843783          	ld	a5,-24(s0)
 218:	a821                	j	230 <strchr+0x42>
 21a:	fe843783          	ld	a5,-24(s0)
 21e:	0785                	addi	a5,a5,1
 220:	fef43423          	sd	a5,-24(s0)
 224:	fe843783          	ld	a5,-24(s0)
 228:	0007c783          	lbu	a5,0(a5)
 22c:	fbf1                	bnez	a5,200 <strchr+0x12>
 22e:	4781                	li	a5,0
 230:	853e                	mv	a0,a5
 232:	6462                	ld	s0,24(sp)
 234:	6105                	addi	sp,sp,32
 236:	8082                	ret

0000000000000238 <gets>:
 238:	7179                	addi	sp,sp,-48
 23a:	f406                	sd	ra,40(sp)
 23c:	f022                	sd	s0,32(sp)
 23e:	1800                	addi	s0,sp,48
 240:	fca43c23          	sd	a0,-40(s0)
 244:	87ae                	mv	a5,a1
 246:	fcf42a23          	sw	a5,-44(s0)
 24a:	fe042623          	sw	zero,-20(s0)
 24e:	a8a1                	j	2a6 <gets+0x6e>
 250:	fe740793          	addi	a5,s0,-25
 254:	4605                	li	a2,1
 256:	85be                	mv	a1,a5
 258:	4501                	li	a0,0
 25a:	00000097          	auipc	ra,0x0
 25e:	2f8080e7          	jalr	760(ra) # 552 <read>
 262:	87aa                	mv	a5,a0
 264:	fef42423          	sw	a5,-24(s0)
 268:	fe842783          	lw	a5,-24(s0)
 26c:	2781                	sext.w	a5,a5
 26e:	04f05763          	blez	a5,2bc <gets+0x84>
 272:	fec42783          	lw	a5,-20(s0)
 276:	0017871b          	addiw	a4,a5,1
 27a:	fee42623          	sw	a4,-20(s0)
 27e:	873e                	mv	a4,a5
 280:	fd843783          	ld	a5,-40(s0)
 284:	97ba                	add	a5,a5,a4
 286:	fe744703          	lbu	a4,-25(s0)
 28a:	00e78023          	sb	a4,0(a5)
 28e:	fe744783          	lbu	a5,-25(s0)
 292:	873e                	mv	a4,a5
 294:	47a9                	li	a5,10
 296:	02f70463          	beq	a4,a5,2be <gets+0x86>
 29a:	fe744783          	lbu	a5,-25(s0)
 29e:	873e                	mv	a4,a5
 2a0:	47b5                	li	a5,13
 2a2:	00f70e63          	beq	a4,a5,2be <gets+0x86>
 2a6:	fec42783          	lw	a5,-20(s0)
 2aa:	2785                	addiw	a5,a5,1
 2ac:	0007871b          	sext.w	a4,a5
 2b0:	fd442783          	lw	a5,-44(s0)
 2b4:	2781                	sext.w	a5,a5
 2b6:	f8f74de3          	blt	a4,a5,250 <gets+0x18>
 2ba:	a011                	j	2be <gets+0x86>
 2bc:	0001                	nop
 2be:	fec42783          	lw	a5,-20(s0)
 2c2:	fd843703          	ld	a4,-40(s0)
 2c6:	97ba                	add	a5,a5,a4
 2c8:	00078023          	sb	zero,0(a5)
 2cc:	fd843783          	ld	a5,-40(s0)
 2d0:	853e                	mv	a0,a5
 2d2:	70a2                	ld	ra,40(sp)
 2d4:	7402                	ld	s0,32(sp)
 2d6:	6145                	addi	sp,sp,48
 2d8:	8082                	ret

00000000000002da <stat>:
 2da:	7179                	addi	sp,sp,-48
 2dc:	f406                	sd	ra,40(sp)
 2de:	f022                	sd	s0,32(sp)
 2e0:	1800                	addi	s0,sp,48
 2e2:	fca43c23          	sd	a0,-40(s0)
 2e6:	fcb43823          	sd	a1,-48(s0)
 2ea:	4581                	li	a1,0
 2ec:	fd843503          	ld	a0,-40(s0)
 2f0:	00000097          	auipc	ra,0x0
 2f4:	28a080e7          	jalr	650(ra) # 57a <open>
 2f8:	87aa                	mv	a5,a0
 2fa:	fef42623          	sw	a5,-20(s0)
 2fe:	fec42783          	lw	a5,-20(s0)
 302:	2781                	sext.w	a5,a5
 304:	0007d463          	bgez	a5,30c <stat+0x32>
 308:	57fd                	li	a5,-1
 30a:	a035                	j	336 <stat+0x5c>
 30c:	fec42783          	lw	a5,-20(s0)
 310:	fd043583          	ld	a1,-48(s0)
 314:	853e                	mv	a0,a5
 316:	00000097          	auipc	ra,0x0
 31a:	27c080e7          	jalr	636(ra) # 592 <fstat>
 31e:	87aa                	mv	a5,a0
 320:	fef42423          	sw	a5,-24(s0)
 324:	fec42783          	lw	a5,-20(s0)
 328:	853e                	mv	a0,a5
 32a:	00000097          	auipc	ra,0x0
 32e:	238080e7          	jalr	568(ra) # 562 <close>
 332:	fe842783          	lw	a5,-24(s0)
 336:	853e                	mv	a0,a5
 338:	70a2                	ld	ra,40(sp)
 33a:	7402                	ld	s0,32(sp)
 33c:	6145                	addi	sp,sp,48
 33e:	8082                	ret

0000000000000340 <atoi>:
 340:	7179                	addi	sp,sp,-48
 342:	f422                	sd	s0,40(sp)
 344:	1800                	addi	s0,sp,48
 346:	fca43c23          	sd	a0,-40(s0)
 34a:	fe042623          	sw	zero,-20(s0)
 34e:	a81d                	j	384 <atoi+0x44>
 350:	fec42783          	lw	a5,-20(s0)
 354:	873e                	mv	a4,a5
 356:	87ba                	mv	a5,a4
 358:	0027979b          	slliw	a5,a5,0x2
 35c:	9fb9                	addw	a5,a5,a4
 35e:	0017979b          	slliw	a5,a5,0x1
 362:	0007871b          	sext.w	a4,a5
 366:	fd843783          	ld	a5,-40(s0)
 36a:	00178693          	addi	a3,a5,1
 36e:	fcd43c23          	sd	a3,-40(s0)
 372:	0007c783          	lbu	a5,0(a5)
 376:	2781                	sext.w	a5,a5
 378:	9fb9                	addw	a5,a5,a4
 37a:	2781                	sext.w	a5,a5
 37c:	fd07879b          	addiw	a5,a5,-48
 380:	fef42623          	sw	a5,-20(s0)
 384:	fd843783          	ld	a5,-40(s0)
 388:	0007c783          	lbu	a5,0(a5)
 38c:	873e                	mv	a4,a5
 38e:	02f00793          	li	a5,47
 392:	00e7fb63          	bgeu	a5,a4,3a8 <atoi+0x68>
 396:	fd843783          	ld	a5,-40(s0)
 39a:	0007c783          	lbu	a5,0(a5)
 39e:	873e                	mv	a4,a5
 3a0:	03900793          	li	a5,57
 3a4:	fae7f6e3          	bgeu	a5,a4,350 <atoi+0x10>
 3a8:	fec42783          	lw	a5,-20(s0)
 3ac:	853e                	mv	a0,a5
 3ae:	7422                	ld	s0,40(sp)
 3b0:	6145                	addi	sp,sp,48
 3b2:	8082                	ret

00000000000003b4 <memmove>:
 3b4:	7139                	addi	sp,sp,-64
 3b6:	fc22                	sd	s0,56(sp)
 3b8:	0080                	addi	s0,sp,64
 3ba:	fca43c23          	sd	a0,-40(s0)
 3be:	fcb43823          	sd	a1,-48(s0)
 3c2:	87b2                	mv	a5,a2
 3c4:	fcf42623          	sw	a5,-52(s0)
 3c8:	fd843783          	ld	a5,-40(s0)
 3cc:	fef43423          	sd	a5,-24(s0)
 3d0:	fd043783          	ld	a5,-48(s0)
 3d4:	fef43023          	sd	a5,-32(s0)
 3d8:	fe043703          	ld	a4,-32(s0)
 3dc:	fe843783          	ld	a5,-24(s0)
 3e0:	02e7fc63          	bgeu	a5,a4,418 <memmove+0x64>
 3e4:	a00d                	j	406 <memmove+0x52>
 3e6:	fe043703          	ld	a4,-32(s0)
 3ea:	00170793          	addi	a5,a4,1
 3ee:	fef43023          	sd	a5,-32(s0)
 3f2:	fe843783          	ld	a5,-24(s0)
 3f6:	00178693          	addi	a3,a5,1
 3fa:	fed43423          	sd	a3,-24(s0)
 3fe:	00074703          	lbu	a4,0(a4)
 402:	00e78023          	sb	a4,0(a5)
 406:	fcc42783          	lw	a5,-52(s0)
 40a:	fff7871b          	addiw	a4,a5,-1
 40e:	fce42623          	sw	a4,-52(s0)
 412:	fcf04ae3          	bgtz	a5,3e6 <memmove+0x32>
 416:	a891                	j	46a <memmove+0xb6>
 418:	fcc42783          	lw	a5,-52(s0)
 41c:	fe843703          	ld	a4,-24(s0)
 420:	97ba                	add	a5,a5,a4
 422:	fef43423          	sd	a5,-24(s0)
 426:	fcc42783          	lw	a5,-52(s0)
 42a:	fe043703          	ld	a4,-32(s0)
 42e:	97ba                	add	a5,a5,a4
 430:	fef43023          	sd	a5,-32(s0)
 434:	a01d                	j	45a <memmove+0xa6>
 436:	fe043783          	ld	a5,-32(s0)
 43a:	17fd                	addi	a5,a5,-1
 43c:	fef43023          	sd	a5,-32(s0)
 440:	fe843783          	ld	a5,-24(s0)
 444:	17fd                	addi	a5,a5,-1
 446:	fef43423          	sd	a5,-24(s0)
 44a:	fe043783          	ld	a5,-32(s0)
 44e:	0007c703          	lbu	a4,0(a5)
 452:	fe843783          	ld	a5,-24(s0)
 456:	00e78023          	sb	a4,0(a5)
 45a:	fcc42783          	lw	a5,-52(s0)
 45e:	fff7871b          	addiw	a4,a5,-1
 462:	fce42623          	sw	a4,-52(s0)
 466:	fcf048e3          	bgtz	a5,436 <memmove+0x82>
 46a:	fd843783          	ld	a5,-40(s0)
 46e:	853e                	mv	a0,a5
 470:	7462                	ld	s0,56(sp)
 472:	6121                	addi	sp,sp,64
 474:	8082                	ret

0000000000000476 <memcmp>:
 476:	7139                	addi	sp,sp,-64
 478:	fc22                	sd	s0,56(sp)
 47a:	0080                	addi	s0,sp,64
 47c:	fca43c23          	sd	a0,-40(s0)
 480:	fcb43823          	sd	a1,-48(s0)
 484:	87b2                	mv	a5,a2
 486:	fcf42623          	sw	a5,-52(s0)
 48a:	fd843783          	ld	a5,-40(s0)
 48e:	fef43423          	sd	a5,-24(s0)
 492:	fd043783          	ld	a5,-48(s0)
 496:	fef43023          	sd	a5,-32(s0)
 49a:	a0a1                	j	4e2 <memcmp+0x6c>
 49c:	fe843783          	ld	a5,-24(s0)
 4a0:	0007c703          	lbu	a4,0(a5)
 4a4:	fe043783          	ld	a5,-32(s0)
 4a8:	0007c783          	lbu	a5,0(a5)
 4ac:	02f70163          	beq	a4,a5,4ce <memcmp+0x58>
 4b0:	fe843783          	ld	a5,-24(s0)
 4b4:	0007c783          	lbu	a5,0(a5)
 4b8:	0007871b          	sext.w	a4,a5
 4bc:	fe043783          	ld	a5,-32(s0)
 4c0:	0007c783          	lbu	a5,0(a5)
 4c4:	2781                	sext.w	a5,a5
 4c6:	40f707bb          	subw	a5,a4,a5
 4ca:	2781                	sext.w	a5,a5
 4cc:	a01d                	j	4f2 <memcmp+0x7c>
 4ce:	fe843783          	ld	a5,-24(s0)
 4d2:	0785                	addi	a5,a5,1
 4d4:	fef43423          	sd	a5,-24(s0)
 4d8:	fe043783          	ld	a5,-32(s0)
 4dc:	0785                	addi	a5,a5,1
 4de:	fef43023          	sd	a5,-32(s0)
 4e2:	fcc42783          	lw	a5,-52(s0)
 4e6:	fff7871b          	addiw	a4,a5,-1
 4ea:	fce42623          	sw	a4,-52(s0)
 4ee:	f7dd                	bnez	a5,49c <memcmp+0x26>
 4f0:	4781                	li	a5,0
 4f2:	853e                	mv	a0,a5
 4f4:	7462                	ld	s0,56(sp)
 4f6:	6121                	addi	sp,sp,64
 4f8:	8082                	ret

00000000000004fa <memcpy>:
 4fa:	7179                	addi	sp,sp,-48
 4fc:	f406                	sd	ra,40(sp)
 4fe:	f022                	sd	s0,32(sp)
 500:	1800                	addi	s0,sp,48
 502:	fea43423          	sd	a0,-24(s0)
 506:	feb43023          	sd	a1,-32(s0)
 50a:	87b2                	mv	a5,a2
 50c:	fcf42e23          	sw	a5,-36(s0)
 510:	fdc42783          	lw	a5,-36(s0)
 514:	863e                	mv	a2,a5
 516:	fe043583          	ld	a1,-32(s0)
 51a:	fe843503          	ld	a0,-24(s0)
 51e:	00000097          	auipc	ra,0x0
 522:	e96080e7          	jalr	-362(ra) # 3b4 <memmove>
 526:	87aa                	mv	a5,a0
 528:	853e                	mv	a0,a5
 52a:	70a2                	ld	ra,40(sp)
 52c:	7402                	ld	s0,32(sp)
 52e:	6145                	addi	sp,sp,48
 530:	8082                	ret

0000000000000532 <fork>:
 532:	4885                	li	a7,1
 534:	00000073          	ecall
 538:	8082                	ret

000000000000053a <exit>:
 53a:	4889                	li	a7,2
 53c:	00000073          	ecall
 540:	8082                	ret

0000000000000542 <wait>:
 542:	488d                	li	a7,3
 544:	00000073          	ecall
 548:	8082                	ret

000000000000054a <pipe>:
 54a:	4891                	li	a7,4
 54c:	00000073          	ecall
 550:	8082                	ret

0000000000000552 <read>:
 552:	4895                	li	a7,5
 554:	00000073          	ecall
 558:	8082                	ret

000000000000055a <write>:
 55a:	48c1                	li	a7,16
 55c:	00000073          	ecall
 560:	8082                	ret

0000000000000562 <close>:
 562:	48d5                	li	a7,21
 564:	00000073          	ecall
 568:	8082                	ret

000000000000056a <kill>:
 56a:	4899                	li	a7,6
 56c:	00000073          	ecall
 570:	8082                	ret

0000000000000572 <exec>:
 572:	489d                	li	a7,7
 574:	00000073          	ecall
 578:	8082                	ret

000000000000057a <open>:
 57a:	48bd                	li	a7,15
 57c:	00000073          	ecall
 580:	8082                	ret

0000000000000582 <mknod>:
 582:	48c5                	li	a7,17
 584:	00000073          	ecall
 588:	8082                	ret

000000000000058a <unlink>:
 58a:	48c9                	li	a7,18
 58c:	00000073          	ecall
 590:	8082                	ret

0000000000000592 <fstat>:
 592:	48a1                	li	a7,8
 594:	00000073          	ecall
 598:	8082                	ret

000000000000059a <link>:
 59a:	48cd                	li	a7,19
 59c:	00000073          	ecall
 5a0:	8082                	ret

00000000000005a2 <mkdir>:
 5a2:	48d1                	li	a7,20
 5a4:	00000073          	ecall
 5a8:	8082                	ret

00000000000005aa <chdir>:
 5aa:	48a5                	li	a7,9
 5ac:	00000073          	ecall
 5b0:	8082                	ret

00000000000005b2 <dup>:
 5b2:	48a9                	li	a7,10
 5b4:	00000073          	ecall
 5b8:	8082                	ret

00000000000005ba <getpid>:
 5ba:	48ad                	li	a7,11
 5bc:	00000073          	ecall
 5c0:	8082                	ret

00000000000005c2 <sbrk>:
 5c2:	48b1                	li	a7,12
 5c4:	00000073          	ecall
 5c8:	8082                	ret

00000000000005ca <sleep>:
 5ca:	48b5                	li	a7,13
 5cc:	00000073          	ecall
 5d0:	8082                	ret

00000000000005d2 <uptime>:
 5d2:	48b9                	li	a7,14
 5d4:	00000073          	ecall
 5d8:	8082                	ret

00000000000005da <waitx>:
 5da:	48d9                	li	a7,22
 5dc:	00000073          	ecall
 5e0:	8082                	ret

00000000000005e2 <getsyscount>:
 5e2:	48dd                	li	a7,23
 5e4:	00000073          	ecall
 5e8:	8082                	ret

00000000000005ea <sigalarm>:
 5ea:	48e1                	li	a7,24
 5ec:	00000073          	ecall
 5f0:	8082                	ret

00000000000005f2 <sigreturn>:
 5f2:	48e5                	li	a7,25
 5f4:	00000073          	ecall
 5f8:	8082                	ret

00000000000005fa <settickets>:
 5fa:	48e9                	li	a7,26
 5fc:	00000073          	ecall
 600:	8082                	ret

0000000000000602 <putc>:
 602:	1101                	addi	sp,sp,-32
 604:	ec06                	sd	ra,24(sp)
 606:	e822                	sd	s0,16(sp)
 608:	1000                	addi	s0,sp,32
 60a:	87aa                	mv	a5,a0
 60c:	872e                	mv	a4,a1
 60e:	fef42623          	sw	a5,-20(s0)
 612:	87ba                	mv	a5,a4
 614:	fef405a3          	sb	a5,-21(s0)
 618:	feb40713          	addi	a4,s0,-21
 61c:	fec42783          	lw	a5,-20(s0)
 620:	4605                	li	a2,1
 622:	85ba                	mv	a1,a4
 624:	853e                	mv	a0,a5
 626:	00000097          	auipc	ra,0x0
 62a:	f34080e7          	jalr	-204(ra) # 55a <write>
 62e:	0001                	nop
 630:	60e2                	ld	ra,24(sp)
 632:	6442                	ld	s0,16(sp)
 634:	6105                	addi	sp,sp,32
 636:	8082                	ret

0000000000000638 <printint>:
 638:	7139                	addi	sp,sp,-64
 63a:	fc06                	sd	ra,56(sp)
 63c:	f822                	sd	s0,48(sp)
 63e:	0080                	addi	s0,sp,64
 640:	87aa                	mv	a5,a0
 642:	8736                	mv	a4,a3
 644:	fcf42623          	sw	a5,-52(s0)
 648:	87ae                	mv	a5,a1
 64a:	fcf42423          	sw	a5,-56(s0)
 64e:	87b2                	mv	a5,a2
 650:	fcf42223          	sw	a5,-60(s0)
 654:	87ba                	mv	a5,a4
 656:	fcf42023          	sw	a5,-64(s0)
 65a:	fe042423          	sw	zero,-24(s0)
 65e:	fc042783          	lw	a5,-64(s0)
 662:	2781                	sext.w	a5,a5
 664:	c38d                	beqz	a5,686 <printint+0x4e>
 666:	fc842783          	lw	a5,-56(s0)
 66a:	2781                	sext.w	a5,a5
 66c:	0007dd63          	bgez	a5,686 <printint+0x4e>
 670:	4785                	li	a5,1
 672:	fef42423          	sw	a5,-24(s0)
 676:	fc842783          	lw	a5,-56(s0)
 67a:	40f007bb          	negw	a5,a5
 67e:	2781                	sext.w	a5,a5
 680:	fef42223          	sw	a5,-28(s0)
 684:	a029                	j	68e <printint+0x56>
 686:	fc842783          	lw	a5,-56(s0)
 68a:	fef42223          	sw	a5,-28(s0)
 68e:	fe042623          	sw	zero,-20(s0)
 692:	fc442783          	lw	a5,-60(s0)
 696:	fe442703          	lw	a4,-28(s0)
 69a:	02f777bb          	remuw	a5,a4,a5
 69e:	0007861b          	sext.w	a2,a5
 6a2:	fec42783          	lw	a5,-20(s0)
 6a6:	0017871b          	addiw	a4,a5,1
 6aa:	fee42623          	sw	a4,-20(s0)
 6ae:	00001697          	auipc	a3,0x1
 6b2:	95268693          	addi	a3,a3,-1710 # 1000 <digits>
 6b6:	02061713          	slli	a4,a2,0x20
 6ba:	9301                	srli	a4,a4,0x20
 6bc:	9736                	add	a4,a4,a3
 6be:	00074703          	lbu	a4,0(a4)
 6c2:	17c1                	addi	a5,a5,-16
 6c4:	97a2                	add	a5,a5,s0
 6c6:	fee78023          	sb	a4,-32(a5)
 6ca:	fc442783          	lw	a5,-60(s0)
 6ce:	fe442703          	lw	a4,-28(s0)
 6d2:	02f757bb          	divuw	a5,a4,a5
 6d6:	fef42223          	sw	a5,-28(s0)
 6da:	fe442783          	lw	a5,-28(s0)
 6de:	2781                	sext.w	a5,a5
 6e0:	fbcd                	bnez	a5,692 <printint+0x5a>
 6e2:	fe842783          	lw	a5,-24(s0)
 6e6:	2781                	sext.w	a5,a5
 6e8:	cf85                	beqz	a5,720 <printint+0xe8>
 6ea:	fec42783          	lw	a5,-20(s0)
 6ee:	0017871b          	addiw	a4,a5,1
 6f2:	fee42623          	sw	a4,-20(s0)
 6f6:	17c1                	addi	a5,a5,-16
 6f8:	97a2                	add	a5,a5,s0
 6fa:	02d00713          	li	a4,45
 6fe:	fee78023          	sb	a4,-32(a5)
 702:	a839                	j	720 <printint+0xe8>
 704:	fec42783          	lw	a5,-20(s0)
 708:	17c1                	addi	a5,a5,-16
 70a:	97a2                	add	a5,a5,s0
 70c:	fe07c703          	lbu	a4,-32(a5)
 710:	fcc42783          	lw	a5,-52(s0)
 714:	85ba                	mv	a1,a4
 716:	853e                	mv	a0,a5
 718:	00000097          	auipc	ra,0x0
 71c:	eea080e7          	jalr	-278(ra) # 602 <putc>
 720:	fec42783          	lw	a5,-20(s0)
 724:	37fd                	addiw	a5,a5,-1
 726:	fef42623          	sw	a5,-20(s0)
 72a:	fec42783          	lw	a5,-20(s0)
 72e:	2781                	sext.w	a5,a5
 730:	fc07dae3          	bgez	a5,704 <printint+0xcc>
 734:	0001                	nop
 736:	0001                	nop
 738:	70e2                	ld	ra,56(sp)
 73a:	7442                	ld	s0,48(sp)
 73c:	6121                	addi	sp,sp,64
 73e:	8082                	ret

0000000000000740 <printptr>:
 740:	7179                	addi	sp,sp,-48
 742:	f406                	sd	ra,40(sp)
 744:	f022                	sd	s0,32(sp)
 746:	1800                	addi	s0,sp,48
 748:	87aa                	mv	a5,a0
 74a:	fcb43823          	sd	a1,-48(s0)
 74e:	fcf42e23          	sw	a5,-36(s0)
 752:	fdc42783          	lw	a5,-36(s0)
 756:	03000593          	li	a1,48
 75a:	853e                	mv	a0,a5
 75c:	00000097          	auipc	ra,0x0
 760:	ea6080e7          	jalr	-346(ra) # 602 <putc>
 764:	fdc42783          	lw	a5,-36(s0)
 768:	07800593          	li	a1,120
 76c:	853e                	mv	a0,a5
 76e:	00000097          	auipc	ra,0x0
 772:	e94080e7          	jalr	-364(ra) # 602 <putc>
 776:	fe042623          	sw	zero,-20(s0)
 77a:	a82d                	j	7b4 <printptr+0x74>
 77c:	fd043783          	ld	a5,-48(s0)
 780:	93f1                	srli	a5,a5,0x3c
 782:	00001717          	auipc	a4,0x1
 786:	87e70713          	addi	a4,a4,-1922 # 1000 <digits>
 78a:	97ba                	add	a5,a5,a4
 78c:	0007c703          	lbu	a4,0(a5)
 790:	fdc42783          	lw	a5,-36(s0)
 794:	85ba                	mv	a1,a4
 796:	853e                	mv	a0,a5
 798:	00000097          	auipc	ra,0x0
 79c:	e6a080e7          	jalr	-406(ra) # 602 <putc>
 7a0:	fec42783          	lw	a5,-20(s0)
 7a4:	2785                	addiw	a5,a5,1
 7a6:	fef42623          	sw	a5,-20(s0)
 7aa:	fd043783          	ld	a5,-48(s0)
 7ae:	0792                	slli	a5,a5,0x4
 7b0:	fcf43823          	sd	a5,-48(s0)
 7b4:	fec42783          	lw	a5,-20(s0)
 7b8:	873e                	mv	a4,a5
 7ba:	47bd                	li	a5,15
 7bc:	fce7f0e3          	bgeu	a5,a4,77c <printptr+0x3c>
 7c0:	0001                	nop
 7c2:	0001                	nop
 7c4:	70a2                	ld	ra,40(sp)
 7c6:	7402                	ld	s0,32(sp)
 7c8:	6145                	addi	sp,sp,48
 7ca:	8082                	ret

00000000000007cc <vprintf>:
 7cc:	715d                	addi	sp,sp,-80
 7ce:	e486                	sd	ra,72(sp)
 7d0:	e0a2                	sd	s0,64(sp)
 7d2:	0880                	addi	s0,sp,80
 7d4:	87aa                	mv	a5,a0
 7d6:	fcb43023          	sd	a1,-64(s0)
 7da:	fac43c23          	sd	a2,-72(s0)
 7de:	fcf42623          	sw	a5,-52(s0)
 7e2:	fe042023          	sw	zero,-32(s0)
 7e6:	fe042223          	sw	zero,-28(s0)
 7ea:	a42d                	j	a14 <vprintf+0x248>
 7ec:	fe442783          	lw	a5,-28(s0)
 7f0:	fc043703          	ld	a4,-64(s0)
 7f4:	97ba                	add	a5,a5,a4
 7f6:	0007c783          	lbu	a5,0(a5)
 7fa:	fcf42e23          	sw	a5,-36(s0)
 7fe:	fe042783          	lw	a5,-32(s0)
 802:	2781                	sext.w	a5,a5
 804:	eb9d                	bnez	a5,83a <vprintf+0x6e>
 806:	fdc42783          	lw	a5,-36(s0)
 80a:	0007871b          	sext.w	a4,a5
 80e:	02500793          	li	a5,37
 812:	00f71763          	bne	a4,a5,820 <vprintf+0x54>
 816:	02500793          	li	a5,37
 81a:	fef42023          	sw	a5,-32(s0)
 81e:	a2f5                	j	a0a <vprintf+0x23e>
 820:	fdc42783          	lw	a5,-36(s0)
 824:	0ff7f713          	zext.b	a4,a5
 828:	fcc42783          	lw	a5,-52(s0)
 82c:	85ba                	mv	a1,a4
 82e:	853e                	mv	a0,a5
 830:	00000097          	auipc	ra,0x0
 834:	dd2080e7          	jalr	-558(ra) # 602 <putc>
 838:	aac9                	j	a0a <vprintf+0x23e>
 83a:	fe042783          	lw	a5,-32(s0)
 83e:	0007871b          	sext.w	a4,a5
 842:	02500793          	li	a5,37
 846:	1cf71263          	bne	a4,a5,a0a <vprintf+0x23e>
 84a:	fdc42783          	lw	a5,-36(s0)
 84e:	0007871b          	sext.w	a4,a5
 852:	06400793          	li	a5,100
 856:	02f71463          	bne	a4,a5,87e <vprintf+0xb2>
 85a:	fb843783          	ld	a5,-72(s0)
 85e:	00878713          	addi	a4,a5,8
 862:	fae43c23          	sd	a4,-72(s0)
 866:	4398                	lw	a4,0(a5)
 868:	fcc42783          	lw	a5,-52(s0)
 86c:	4685                	li	a3,1
 86e:	4629                	li	a2,10
 870:	85ba                	mv	a1,a4
 872:	853e                	mv	a0,a5
 874:	00000097          	auipc	ra,0x0
 878:	dc4080e7          	jalr	-572(ra) # 638 <printint>
 87c:	a269                	j	a06 <vprintf+0x23a>
 87e:	fdc42783          	lw	a5,-36(s0)
 882:	0007871b          	sext.w	a4,a5
 886:	06c00793          	li	a5,108
 88a:	02f71663          	bne	a4,a5,8b6 <vprintf+0xea>
 88e:	fb843783          	ld	a5,-72(s0)
 892:	00878713          	addi	a4,a5,8
 896:	fae43c23          	sd	a4,-72(s0)
 89a:	639c                	ld	a5,0(a5)
 89c:	0007871b          	sext.w	a4,a5
 8a0:	fcc42783          	lw	a5,-52(s0)
 8a4:	4681                	li	a3,0
 8a6:	4629                	li	a2,10
 8a8:	85ba                	mv	a1,a4
 8aa:	853e                	mv	a0,a5
 8ac:	00000097          	auipc	ra,0x0
 8b0:	d8c080e7          	jalr	-628(ra) # 638 <printint>
 8b4:	aa89                	j	a06 <vprintf+0x23a>
 8b6:	fdc42783          	lw	a5,-36(s0)
 8ba:	0007871b          	sext.w	a4,a5
 8be:	07800793          	li	a5,120
 8c2:	02f71463          	bne	a4,a5,8ea <vprintf+0x11e>
 8c6:	fb843783          	ld	a5,-72(s0)
 8ca:	00878713          	addi	a4,a5,8
 8ce:	fae43c23          	sd	a4,-72(s0)
 8d2:	4398                	lw	a4,0(a5)
 8d4:	fcc42783          	lw	a5,-52(s0)
 8d8:	4681                	li	a3,0
 8da:	4641                	li	a2,16
 8dc:	85ba                	mv	a1,a4
 8de:	853e                	mv	a0,a5
 8e0:	00000097          	auipc	ra,0x0
 8e4:	d58080e7          	jalr	-680(ra) # 638 <printint>
 8e8:	aa39                	j	a06 <vprintf+0x23a>
 8ea:	fdc42783          	lw	a5,-36(s0)
 8ee:	0007871b          	sext.w	a4,a5
 8f2:	07000793          	li	a5,112
 8f6:	02f71263          	bne	a4,a5,91a <vprintf+0x14e>
 8fa:	fb843783          	ld	a5,-72(s0)
 8fe:	00878713          	addi	a4,a5,8
 902:	fae43c23          	sd	a4,-72(s0)
 906:	6398                	ld	a4,0(a5)
 908:	fcc42783          	lw	a5,-52(s0)
 90c:	85ba                	mv	a1,a4
 90e:	853e                	mv	a0,a5
 910:	00000097          	auipc	ra,0x0
 914:	e30080e7          	jalr	-464(ra) # 740 <printptr>
 918:	a0fd                	j	a06 <vprintf+0x23a>
 91a:	fdc42783          	lw	a5,-36(s0)
 91e:	0007871b          	sext.w	a4,a5
 922:	07300793          	li	a5,115
 926:	04f71c63          	bne	a4,a5,97e <vprintf+0x1b2>
 92a:	fb843783          	ld	a5,-72(s0)
 92e:	00878713          	addi	a4,a5,8
 932:	fae43c23          	sd	a4,-72(s0)
 936:	639c                	ld	a5,0(a5)
 938:	fef43423          	sd	a5,-24(s0)
 93c:	fe843783          	ld	a5,-24(s0)
 940:	eb8d                	bnez	a5,972 <vprintf+0x1a6>
 942:	00000797          	auipc	a5,0x0
 946:	4ae78793          	addi	a5,a5,1198 # df0 <malloc+0x174>
 94a:	fef43423          	sd	a5,-24(s0)
 94e:	a015                	j	972 <vprintf+0x1a6>
 950:	fe843783          	ld	a5,-24(s0)
 954:	0007c703          	lbu	a4,0(a5)
 958:	fcc42783          	lw	a5,-52(s0)
 95c:	85ba                	mv	a1,a4
 95e:	853e                	mv	a0,a5
 960:	00000097          	auipc	ra,0x0
 964:	ca2080e7          	jalr	-862(ra) # 602 <putc>
 968:	fe843783          	ld	a5,-24(s0)
 96c:	0785                	addi	a5,a5,1
 96e:	fef43423          	sd	a5,-24(s0)
 972:	fe843783          	ld	a5,-24(s0)
 976:	0007c783          	lbu	a5,0(a5)
 97a:	fbf9                	bnez	a5,950 <vprintf+0x184>
 97c:	a069                	j	a06 <vprintf+0x23a>
 97e:	fdc42783          	lw	a5,-36(s0)
 982:	0007871b          	sext.w	a4,a5
 986:	06300793          	li	a5,99
 98a:	02f71463          	bne	a4,a5,9b2 <vprintf+0x1e6>
 98e:	fb843783          	ld	a5,-72(s0)
 992:	00878713          	addi	a4,a5,8
 996:	fae43c23          	sd	a4,-72(s0)
 99a:	439c                	lw	a5,0(a5)
 99c:	0ff7f713          	zext.b	a4,a5
 9a0:	fcc42783          	lw	a5,-52(s0)
 9a4:	85ba                	mv	a1,a4
 9a6:	853e                	mv	a0,a5
 9a8:	00000097          	auipc	ra,0x0
 9ac:	c5a080e7          	jalr	-934(ra) # 602 <putc>
 9b0:	a899                	j	a06 <vprintf+0x23a>
 9b2:	fdc42783          	lw	a5,-36(s0)
 9b6:	0007871b          	sext.w	a4,a5
 9ba:	02500793          	li	a5,37
 9be:	00f71f63          	bne	a4,a5,9dc <vprintf+0x210>
 9c2:	fdc42783          	lw	a5,-36(s0)
 9c6:	0ff7f713          	zext.b	a4,a5
 9ca:	fcc42783          	lw	a5,-52(s0)
 9ce:	85ba                	mv	a1,a4
 9d0:	853e                	mv	a0,a5
 9d2:	00000097          	auipc	ra,0x0
 9d6:	c30080e7          	jalr	-976(ra) # 602 <putc>
 9da:	a035                	j	a06 <vprintf+0x23a>
 9dc:	fcc42783          	lw	a5,-52(s0)
 9e0:	02500593          	li	a1,37
 9e4:	853e                	mv	a0,a5
 9e6:	00000097          	auipc	ra,0x0
 9ea:	c1c080e7          	jalr	-996(ra) # 602 <putc>
 9ee:	fdc42783          	lw	a5,-36(s0)
 9f2:	0ff7f713          	zext.b	a4,a5
 9f6:	fcc42783          	lw	a5,-52(s0)
 9fa:	85ba                	mv	a1,a4
 9fc:	853e                	mv	a0,a5
 9fe:	00000097          	auipc	ra,0x0
 a02:	c04080e7          	jalr	-1020(ra) # 602 <putc>
 a06:	fe042023          	sw	zero,-32(s0)
 a0a:	fe442783          	lw	a5,-28(s0)
 a0e:	2785                	addiw	a5,a5,1
 a10:	fef42223          	sw	a5,-28(s0)
 a14:	fe442783          	lw	a5,-28(s0)
 a18:	fc043703          	ld	a4,-64(s0)
 a1c:	97ba                	add	a5,a5,a4
 a1e:	0007c783          	lbu	a5,0(a5)
 a22:	dc0795e3          	bnez	a5,7ec <vprintf+0x20>
 a26:	0001                	nop
 a28:	0001                	nop
 a2a:	60a6                	ld	ra,72(sp)
 a2c:	6406                	ld	s0,64(sp)
 a2e:	6161                	addi	sp,sp,80
 a30:	8082                	ret

0000000000000a32 <fprintf>:
 a32:	7159                	addi	sp,sp,-112
 a34:	fc06                	sd	ra,56(sp)
 a36:	f822                	sd	s0,48(sp)
 a38:	0080                	addi	s0,sp,64
 a3a:	fcb43823          	sd	a1,-48(s0)
 a3e:	e010                	sd	a2,0(s0)
 a40:	e414                	sd	a3,8(s0)
 a42:	e818                	sd	a4,16(s0)
 a44:	ec1c                	sd	a5,24(s0)
 a46:	03043023          	sd	a6,32(s0)
 a4a:	03143423          	sd	a7,40(s0)
 a4e:	87aa                	mv	a5,a0
 a50:	fcf42e23          	sw	a5,-36(s0)
 a54:	03040793          	addi	a5,s0,48
 a58:	fcf43423          	sd	a5,-56(s0)
 a5c:	fc843783          	ld	a5,-56(s0)
 a60:	fd078793          	addi	a5,a5,-48
 a64:	fef43423          	sd	a5,-24(s0)
 a68:	fe843703          	ld	a4,-24(s0)
 a6c:	fdc42783          	lw	a5,-36(s0)
 a70:	863a                	mv	a2,a4
 a72:	fd043583          	ld	a1,-48(s0)
 a76:	853e                	mv	a0,a5
 a78:	00000097          	auipc	ra,0x0
 a7c:	d54080e7          	jalr	-684(ra) # 7cc <vprintf>
 a80:	0001                	nop
 a82:	70e2                	ld	ra,56(sp)
 a84:	7442                	ld	s0,48(sp)
 a86:	6165                	addi	sp,sp,112
 a88:	8082                	ret

0000000000000a8a <printf>:
 a8a:	7159                	addi	sp,sp,-112
 a8c:	f406                	sd	ra,40(sp)
 a8e:	f022                	sd	s0,32(sp)
 a90:	1800                	addi	s0,sp,48
 a92:	fca43c23          	sd	a0,-40(s0)
 a96:	e40c                	sd	a1,8(s0)
 a98:	e810                	sd	a2,16(s0)
 a9a:	ec14                	sd	a3,24(s0)
 a9c:	f018                	sd	a4,32(s0)
 a9e:	f41c                	sd	a5,40(s0)
 aa0:	03043823          	sd	a6,48(s0)
 aa4:	03143c23          	sd	a7,56(s0)
 aa8:	04040793          	addi	a5,s0,64
 aac:	fcf43823          	sd	a5,-48(s0)
 ab0:	fd043783          	ld	a5,-48(s0)
 ab4:	fc878793          	addi	a5,a5,-56
 ab8:	fef43423          	sd	a5,-24(s0)
 abc:	fe843783          	ld	a5,-24(s0)
 ac0:	863e                	mv	a2,a5
 ac2:	fd843583          	ld	a1,-40(s0)
 ac6:	4505                	li	a0,1
 ac8:	00000097          	auipc	ra,0x0
 acc:	d04080e7          	jalr	-764(ra) # 7cc <vprintf>
 ad0:	0001                	nop
 ad2:	70a2                	ld	ra,40(sp)
 ad4:	7402                	ld	s0,32(sp)
 ad6:	6165                	addi	sp,sp,112
 ad8:	8082                	ret

0000000000000ada <free>:
 ada:	7179                	addi	sp,sp,-48
 adc:	f422                	sd	s0,40(sp)
 ade:	1800                	addi	s0,sp,48
 ae0:	fca43c23          	sd	a0,-40(s0)
 ae4:	fd843783          	ld	a5,-40(s0)
 ae8:	17c1                	addi	a5,a5,-16
 aea:	fef43023          	sd	a5,-32(s0)
 aee:	00000797          	auipc	a5,0x0
 af2:	54278793          	addi	a5,a5,1346 # 1030 <freep>
 af6:	639c                	ld	a5,0(a5)
 af8:	fef43423          	sd	a5,-24(s0)
 afc:	a815                	j	b30 <free+0x56>
 afe:	fe843783          	ld	a5,-24(s0)
 b02:	639c                	ld	a5,0(a5)
 b04:	fe843703          	ld	a4,-24(s0)
 b08:	00f76f63          	bltu	a4,a5,b26 <free+0x4c>
 b0c:	fe043703          	ld	a4,-32(s0)
 b10:	fe843783          	ld	a5,-24(s0)
 b14:	02e7eb63          	bltu	a5,a4,b4a <free+0x70>
 b18:	fe843783          	ld	a5,-24(s0)
 b1c:	639c                	ld	a5,0(a5)
 b1e:	fe043703          	ld	a4,-32(s0)
 b22:	02f76463          	bltu	a4,a5,b4a <free+0x70>
 b26:	fe843783          	ld	a5,-24(s0)
 b2a:	639c                	ld	a5,0(a5)
 b2c:	fef43423          	sd	a5,-24(s0)
 b30:	fe043703          	ld	a4,-32(s0)
 b34:	fe843783          	ld	a5,-24(s0)
 b38:	fce7f3e3          	bgeu	a5,a4,afe <free+0x24>
 b3c:	fe843783          	ld	a5,-24(s0)
 b40:	639c                	ld	a5,0(a5)
 b42:	fe043703          	ld	a4,-32(s0)
 b46:	faf77ce3          	bgeu	a4,a5,afe <free+0x24>
 b4a:	fe043783          	ld	a5,-32(s0)
 b4e:	479c                	lw	a5,8(a5)
 b50:	1782                	slli	a5,a5,0x20
 b52:	9381                	srli	a5,a5,0x20
 b54:	0792                	slli	a5,a5,0x4
 b56:	fe043703          	ld	a4,-32(s0)
 b5a:	973e                	add	a4,a4,a5
 b5c:	fe843783          	ld	a5,-24(s0)
 b60:	639c                	ld	a5,0(a5)
 b62:	02f71763          	bne	a4,a5,b90 <free+0xb6>
 b66:	fe043783          	ld	a5,-32(s0)
 b6a:	4798                	lw	a4,8(a5)
 b6c:	fe843783          	ld	a5,-24(s0)
 b70:	639c                	ld	a5,0(a5)
 b72:	479c                	lw	a5,8(a5)
 b74:	9fb9                	addw	a5,a5,a4
 b76:	0007871b          	sext.w	a4,a5
 b7a:	fe043783          	ld	a5,-32(s0)
 b7e:	c798                	sw	a4,8(a5)
 b80:	fe843783          	ld	a5,-24(s0)
 b84:	639c                	ld	a5,0(a5)
 b86:	6398                	ld	a4,0(a5)
 b88:	fe043783          	ld	a5,-32(s0)
 b8c:	e398                	sd	a4,0(a5)
 b8e:	a039                	j	b9c <free+0xc2>
 b90:	fe843783          	ld	a5,-24(s0)
 b94:	6398                	ld	a4,0(a5)
 b96:	fe043783          	ld	a5,-32(s0)
 b9a:	e398                	sd	a4,0(a5)
 b9c:	fe843783          	ld	a5,-24(s0)
 ba0:	479c                	lw	a5,8(a5)
 ba2:	1782                	slli	a5,a5,0x20
 ba4:	9381                	srli	a5,a5,0x20
 ba6:	0792                	slli	a5,a5,0x4
 ba8:	fe843703          	ld	a4,-24(s0)
 bac:	97ba                	add	a5,a5,a4
 bae:	fe043703          	ld	a4,-32(s0)
 bb2:	02f71563          	bne	a4,a5,bdc <free+0x102>
 bb6:	fe843783          	ld	a5,-24(s0)
 bba:	4798                	lw	a4,8(a5)
 bbc:	fe043783          	ld	a5,-32(s0)
 bc0:	479c                	lw	a5,8(a5)
 bc2:	9fb9                	addw	a5,a5,a4
 bc4:	0007871b          	sext.w	a4,a5
 bc8:	fe843783          	ld	a5,-24(s0)
 bcc:	c798                	sw	a4,8(a5)
 bce:	fe043783          	ld	a5,-32(s0)
 bd2:	6398                	ld	a4,0(a5)
 bd4:	fe843783          	ld	a5,-24(s0)
 bd8:	e398                	sd	a4,0(a5)
 bda:	a031                	j	be6 <free+0x10c>
 bdc:	fe843783          	ld	a5,-24(s0)
 be0:	fe043703          	ld	a4,-32(s0)
 be4:	e398                	sd	a4,0(a5)
 be6:	00000797          	auipc	a5,0x0
 bea:	44a78793          	addi	a5,a5,1098 # 1030 <freep>
 bee:	fe843703          	ld	a4,-24(s0)
 bf2:	e398                	sd	a4,0(a5)
 bf4:	0001                	nop
 bf6:	7422                	ld	s0,40(sp)
 bf8:	6145                	addi	sp,sp,48
 bfa:	8082                	ret

0000000000000bfc <morecore>:
 bfc:	7179                	addi	sp,sp,-48
 bfe:	f406                	sd	ra,40(sp)
 c00:	f022                	sd	s0,32(sp)
 c02:	1800                	addi	s0,sp,48
 c04:	87aa                	mv	a5,a0
 c06:	fcf42e23          	sw	a5,-36(s0)
 c0a:	fdc42783          	lw	a5,-36(s0)
 c0e:	0007871b          	sext.w	a4,a5
 c12:	6785                	lui	a5,0x1
 c14:	00f77563          	bgeu	a4,a5,c1e <morecore+0x22>
 c18:	6785                	lui	a5,0x1
 c1a:	fcf42e23          	sw	a5,-36(s0)
 c1e:	fdc42783          	lw	a5,-36(s0)
 c22:	0047979b          	slliw	a5,a5,0x4
 c26:	2781                	sext.w	a5,a5
 c28:	2781                	sext.w	a5,a5
 c2a:	853e                	mv	a0,a5
 c2c:	00000097          	auipc	ra,0x0
 c30:	996080e7          	jalr	-1642(ra) # 5c2 <sbrk>
 c34:	fea43423          	sd	a0,-24(s0)
 c38:	fe843703          	ld	a4,-24(s0)
 c3c:	57fd                	li	a5,-1
 c3e:	00f71463          	bne	a4,a5,c46 <morecore+0x4a>
 c42:	4781                	li	a5,0
 c44:	a03d                	j	c72 <morecore+0x76>
 c46:	fe843783          	ld	a5,-24(s0)
 c4a:	fef43023          	sd	a5,-32(s0)
 c4e:	fe043783          	ld	a5,-32(s0)
 c52:	fdc42703          	lw	a4,-36(s0)
 c56:	c798                	sw	a4,8(a5)
 c58:	fe043783          	ld	a5,-32(s0)
 c5c:	07c1                	addi	a5,a5,16 # 1010 <digits+0x10>
 c5e:	853e                	mv	a0,a5
 c60:	00000097          	auipc	ra,0x0
 c64:	e7a080e7          	jalr	-390(ra) # ada <free>
 c68:	00000797          	auipc	a5,0x0
 c6c:	3c878793          	addi	a5,a5,968 # 1030 <freep>
 c70:	639c                	ld	a5,0(a5)
 c72:	853e                	mv	a0,a5
 c74:	70a2                	ld	ra,40(sp)
 c76:	7402                	ld	s0,32(sp)
 c78:	6145                	addi	sp,sp,48
 c7a:	8082                	ret

0000000000000c7c <malloc>:
 c7c:	7139                	addi	sp,sp,-64
 c7e:	fc06                	sd	ra,56(sp)
 c80:	f822                	sd	s0,48(sp)
 c82:	0080                	addi	s0,sp,64
 c84:	87aa                	mv	a5,a0
 c86:	fcf42623          	sw	a5,-52(s0)
 c8a:	fcc46783          	lwu	a5,-52(s0)
 c8e:	07bd                	addi	a5,a5,15
 c90:	8391                	srli	a5,a5,0x4
 c92:	2781                	sext.w	a5,a5
 c94:	2785                	addiw	a5,a5,1
 c96:	fcf42e23          	sw	a5,-36(s0)
 c9a:	00000797          	auipc	a5,0x0
 c9e:	39678793          	addi	a5,a5,918 # 1030 <freep>
 ca2:	639c                	ld	a5,0(a5)
 ca4:	fef43023          	sd	a5,-32(s0)
 ca8:	fe043783          	ld	a5,-32(s0)
 cac:	ef95                	bnez	a5,ce8 <malloc+0x6c>
 cae:	00000797          	auipc	a5,0x0
 cb2:	37278793          	addi	a5,a5,882 # 1020 <base>
 cb6:	fef43023          	sd	a5,-32(s0)
 cba:	00000797          	auipc	a5,0x0
 cbe:	37678793          	addi	a5,a5,886 # 1030 <freep>
 cc2:	fe043703          	ld	a4,-32(s0)
 cc6:	e398                	sd	a4,0(a5)
 cc8:	00000797          	auipc	a5,0x0
 ccc:	36878793          	addi	a5,a5,872 # 1030 <freep>
 cd0:	6398                	ld	a4,0(a5)
 cd2:	00000797          	auipc	a5,0x0
 cd6:	34e78793          	addi	a5,a5,846 # 1020 <base>
 cda:	e398                	sd	a4,0(a5)
 cdc:	00000797          	auipc	a5,0x0
 ce0:	34478793          	addi	a5,a5,836 # 1020 <base>
 ce4:	0007a423          	sw	zero,8(a5)
 ce8:	fe043783          	ld	a5,-32(s0)
 cec:	639c                	ld	a5,0(a5)
 cee:	fef43423          	sd	a5,-24(s0)
 cf2:	fe843783          	ld	a5,-24(s0)
 cf6:	4798                	lw	a4,8(a5)
 cf8:	fdc42783          	lw	a5,-36(s0)
 cfc:	2781                	sext.w	a5,a5
 cfe:	06f76763          	bltu	a4,a5,d6c <malloc+0xf0>
 d02:	fe843783          	ld	a5,-24(s0)
 d06:	4798                	lw	a4,8(a5)
 d08:	fdc42783          	lw	a5,-36(s0)
 d0c:	2781                	sext.w	a5,a5
 d0e:	00e79963          	bne	a5,a4,d20 <malloc+0xa4>
 d12:	fe843783          	ld	a5,-24(s0)
 d16:	6398                	ld	a4,0(a5)
 d18:	fe043783          	ld	a5,-32(s0)
 d1c:	e398                	sd	a4,0(a5)
 d1e:	a825                	j	d56 <malloc+0xda>
 d20:	fe843783          	ld	a5,-24(s0)
 d24:	479c                	lw	a5,8(a5)
 d26:	fdc42703          	lw	a4,-36(s0)
 d2a:	9f99                	subw	a5,a5,a4
 d2c:	0007871b          	sext.w	a4,a5
 d30:	fe843783          	ld	a5,-24(s0)
 d34:	c798                	sw	a4,8(a5)
 d36:	fe843783          	ld	a5,-24(s0)
 d3a:	479c                	lw	a5,8(a5)
 d3c:	1782                	slli	a5,a5,0x20
 d3e:	9381                	srli	a5,a5,0x20
 d40:	0792                	slli	a5,a5,0x4
 d42:	fe843703          	ld	a4,-24(s0)
 d46:	97ba                	add	a5,a5,a4
 d48:	fef43423          	sd	a5,-24(s0)
 d4c:	fe843783          	ld	a5,-24(s0)
 d50:	fdc42703          	lw	a4,-36(s0)
 d54:	c798                	sw	a4,8(a5)
 d56:	00000797          	auipc	a5,0x0
 d5a:	2da78793          	addi	a5,a5,730 # 1030 <freep>
 d5e:	fe043703          	ld	a4,-32(s0)
 d62:	e398                	sd	a4,0(a5)
 d64:	fe843783          	ld	a5,-24(s0)
 d68:	07c1                	addi	a5,a5,16
 d6a:	a091                	j	dae <malloc+0x132>
 d6c:	00000797          	auipc	a5,0x0
 d70:	2c478793          	addi	a5,a5,708 # 1030 <freep>
 d74:	639c                	ld	a5,0(a5)
 d76:	fe843703          	ld	a4,-24(s0)
 d7a:	02f71063          	bne	a4,a5,d9a <malloc+0x11e>
 d7e:	fdc42783          	lw	a5,-36(s0)
 d82:	853e                	mv	a0,a5
 d84:	00000097          	auipc	ra,0x0
 d88:	e78080e7          	jalr	-392(ra) # bfc <morecore>
 d8c:	fea43423          	sd	a0,-24(s0)
 d90:	fe843783          	ld	a5,-24(s0)
 d94:	e399                	bnez	a5,d9a <malloc+0x11e>
 d96:	4781                	li	a5,0
 d98:	a819                	j	dae <malloc+0x132>
 d9a:	fe843783          	ld	a5,-24(s0)
 d9e:	fef43023          	sd	a5,-32(s0)
 da2:	fe843783          	ld	a5,-24(s0)
 da6:	639c                	ld	a5,0(a5)
 da8:	fef43423          	sd	a5,-24(s0)
 dac:	b799                	j	cf2 <malloc+0x76>
 dae:	853e                	mv	a0,a5
 db0:	70e2                	ld	ra,56(sp)
 db2:	7442                	ld	s0,48(sp)
 db4:	6121                	addi	sp,sp,64
 db6:	8082                	ret
