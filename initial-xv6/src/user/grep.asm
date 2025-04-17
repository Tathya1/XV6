
user/_grep:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <grep>:
       0:	7139                	addi	sp,sp,-64
       2:	fc06                	sd	ra,56(sp)
       4:	f822                	sd	s0,48(sp)
       6:	0080                	addi	s0,sp,64
       8:	fca43423          	sd	a0,-56(s0)
       c:	87ae                	mv	a5,a1
       e:	fcf42223          	sw	a5,-60(s0)
      12:	fe042623          	sw	zero,-20(s0)
      16:	a0c5                	j	f6 <grep+0xf6>
      18:	fec42783          	lw	a5,-20(s0)
      1c:	873e                	mv	a4,a5
      1e:	fdc42783          	lw	a5,-36(s0)
      22:	9fb9                	addw	a5,a5,a4
      24:	fef42623          	sw	a5,-20(s0)
      28:	00002717          	auipc	a4,0x2
      2c:	ff870713          	addi	a4,a4,-8 # 2020 <buf>
      30:	fec42783          	lw	a5,-20(s0)
      34:	97ba                	add	a5,a5,a4
      36:	00078023          	sb	zero,0(a5)
      3a:	00002797          	auipc	a5,0x2
      3e:	fe678793          	addi	a5,a5,-26 # 2020 <buf>
      42:	fef43023          	sd	a5,-32(s0)
      46:	a891                	j	9a <grep+0x9a>
      48:	fd043783          	ld	a5,-48(s0)
      4c:	00078023          	sb	zero,0(a5)
      50:	fe043583          	ld	a1,-32(s0)
      54:	fc843503          	ld	a0,-56(s0)
      58:	00000097          	auipc	ra,0x0
      5c:	1fc080e7          	jalr	508(ra) # 254 <match>
      60:	87aa                	mv	a5,a0
      62:	c79d                	beqz	a5,90 <grep+0x90>
      64:	fd043783          	ld	a5,-48(s0)
      68:	4729                	li	a4,10
      6a:	00e78023          	sb	a4,0(a5)
      6e:	fd043783          	ld	a5,-48(s0)
      72:	00178713          	addi	a4,a5,1
      76:	fe043783          	ld	a5,-32(s0)
      7a:	40f707b3          	sub	a5,a4,a5
      7e:	2781                	sext.w	a5,a5
      80:	863e                	mv	a2,a5
      82:	fe043583          	ld	a1,-32(s0)
      86:	4505                	li	a0,1
      88:	00001097          	auipc	ra,0x1
      8c:	860080e7          	jalr	-1952(ra) # 8e8 <write>
      90:	fd043783          	ld	a5,-48(s0)
      94:	0785                	addi	a5,a5,1
      96:	fef43023          	sd	a5,-32(s0)
      9a:	45a9                	li	a1,10
      9c:	fe043503          	ld	a0,-32(s0)
      a0:	00000097          	auipc	ra,0x0
      a4:	4dc080e7          	jalr	1244(ra) # 57c <strchr>
      a8:	fca43823          	sd	a0,-48(s0)
      ac:	fd043783          	ld	a5,-48(s0)
      b0:	ffc1                	bnez	a5,48 <grep+0x48>
      b2:	fec42783          	lw	a5,-20(s0)
      b6:	2781                	sext.w	a5,a5
      b8:	02f05f63          	blez	a5,f6 <grep+0xf6>
      bc:	fec42703          	lw	a4,-20(s0)
      c0:	fe043683          	ld	a3,-32(s0)
      c4:	00002797          	auipc	a5,0x2
      c8:	f5c78793          	addi	a5,a5,-164 # 2020 <buf>
      cc:	40f687b3          	sub	a5,a3,a5
      d0:	2781                	sext.w	a5,a5
      d2:	40f707bb          	subw	a5,a4,a5
      d6:	2781                	sext.w	a5,a5
      d8:	fef42623          	sw	a5,-20(s0)
      dc:	fec42783          	lw	a5,-20(s0)
      e0:	863e                	mv	a2,a5
      e2:	fe043583          	ld	a1,-32(s0)
      e6:	00002517          	auipc	a0,0x2
      ea:	f3a50513          	addi	a0,a0,-198 # 2020 <buf>
      ee:	00000097          	auipc	ra,0x0
      f2:	654080e7          	jalr	1620(ra) # 742 <memmove>
      f6:	fec42703          	lw	a4,-20(s0)
      fa:	00002797          	auipc	a5,0x2
      fe:	f2678793          	addi	a5,a5,-218 # 2020 <buf>
     102:	00f706b3          	add	a3,a4,a5
     106:	fec42783          	lw	a5,-20(s0)
     10a:	3ff00713          	li	a4,1023
     10e:	40f707bb          	subw	a5,a4,a5
     112:	2781                	sext.w	a5,a5
     114:	0007871b          	sext.w	a4,a5
     118:	fc442783          	lw	a5,-60(s0)
     11c:	863a                	mv	a2,a4
     11e:	85b6                	mv	a1,a3
     120:	853e                	mv	a0,a5
     122:	00000097          	auipc	ra,0x0
     126:	7be080e7          	jalr	1982(ra) # 8e0 <read>
     12a:	87aa                	mv	a5,a0
     12c:	fcf42e23          	sw	a5,-36(s0)
     130:	fdc42783          	lw	a5,-36(s0)
     134:	2781                	sext.w	a5,a5
     136:	eef041e3          	bgtz	a5,18 <grep+0x18>
     13a:	0001                	nop
     13c:	0001                	nop
     13e:	70e2                	ld	ra,56(sp)
     140:	7442                	ld	s0,48(sp)
     142:	6121                	addi	sp,sp,64
     144:	8082                	ret

0000000000000146 <main>:
     146:	7139                	addi	sp,sp,-64
     148:	fc06                	sd	ra,56(sp)
     14a:	f822                	sd	s0,48(sp)
     14c:	0080                	addi	s0,sp,64
     14e:	87aa                	mv	a5,a0
     150:	fcb43023          	sd	a1,-64(s0)
     154:	fcf42623          	sw	a5,-52(s0)
     158:	fcc42783          	lw	a5,-52(s0)
     15c:	0007871b          	sext.w	a4,a5
     160:	4785                	li	a5,1
     162:	02e7c063          	blt	a5,a4,182 <main+0x3c>
     166:	00001597          	auipc	a1,0x1
     16a:	fea58593          	addi	a1,a1,-22 # 1150 <malloc+0x146>
     16e:	4509                	li	a0,2
     170:	00001097          	auipc	ra,0x1
     174:	c50080e7          	jalr	-944(ra) # dc0 <fprintf>
     178:	4505                	li	a0,1
     17a:	00000097          	auipc	ra,0x0
     17e:	74e080e7          	jalr	1870(ra) # 8c8 <exit>
     182:	fc043783          	ld	a5,-64(s0)
     186:	679c                	ld	a5,8(a5)
     188:	fef43023          	sd	a5,-32(s0)
     18c:	fcc42783          	lw	a5,-52(s0)
     190:	0007871b          	sext.w	a4,a5
     194:	4789                	li	a5,2
     196:	00e7ce63          	blt	a5,a4,1b2 <main+0x6c>
     19a:	4581                	li	a1,0
     19c:	fe043503          	ld	a0,-32(s0)
     1a0:	00000097          	auipc	ra,0x0
     1a4:	e60080e7          	jalr	-416(ra) # 0 <grep>
     1a8:	4501                	li	a0,0
     1aa:	00000097          	auipc	ra,0x0
     1ae:	71e080e7          	jalr	1822(ra) # 8c8 <exit>
     1b2:	4789                	li	a5,2
     1b4:	fef42623          	sw	a5,-20(s0)
     1b8:	a041                	j	238 <main+0xf2>
     1ba:	fec42783          	lw	a5,-20(s0)
     1be:	078e                	slli	a5,a5,0x3
     1c0:	fc043703          	ld	a4,-64(s0)
     1c4:	97ba                	add	a5,a5,a4
     1c6:	639c                	ld	a5,0(a5)
     1c8:	4581                	li	a1,0
     1ca:	853e                	mv	a0,a5
     1cc:	00000097          	auipc	ra,0x0
     1d0:	73c080e7          	jalr	1852(ra) # 908 <open>
     1d4:	87aa                	mv	a5,a0
     1d6:	fcf42e23          	sw	a5,-36(s0)
     1da:	fdc42783          	lw	a5,-36(s0)
     1de:	2781                	sext.w	a5,a5
     1e0:	0207d763          	bgez	a5,20e <main+0xc8>
     1e4:	fec42783          	lw	a5,-20(s0)
     1e8:	078e                	slli	a5,a5,0x3
     1ea:	fc043703          	ld	a4,-64(s0)
     1ee:	97ba                	add	a5,a5,a4
     1f0:	639c                	ld	a5,0(a5)
     1f2:	85be                	mv	a1,a5
     1f4:	00001517          	auipc	a0,0x1
     1f8:	f7c50513          	addi	a0,a0,-132 # 1170 <malloc+0x166>
     1fc:	00001097          	auipc	ra,0x1
     200:	c1c080e7          	jalr	-996(ra) # e18 <printf>
     204:	4505                	li	a0,1
     206:	00000097          	auipc	ra,0x0
     20a:	6c2080e7          	jalr	1730(ra) # 8c8 <exit>
     20e:	fdc42783          	lw	a5,-36(s0)
     212:	85be                	mv	a1,a5
     214:	fe043503          	ld	a0,-32(s0)
     218:	00000097          	auipc	ra,0x0
     21c:	de8080e7          	jalr	-536(ra) # 0 <grep>
     220:	fdc42783          	lw	a5,-36(s0)
     224:	853e                	mv	a0,a5
     226:	00000097          	auipc	ra,0x0
     22a:	6ca080e7          	jalr	1738(ra) # 8f0 <close>
     22e:	fec42783          	lw	a5,-20(s0)
     232:	2785                	addiw	a5,a5,1
     234:	fef42623          	sw	a5,-20(s0)
     238:	fec42783          	lw	a5,-20(s0)
     23c:	873e                	mv	a4,a5
     23e:	fcc42783          	lw	a5,-52(s0)
     242:	2701                	sext.w	a4,a4
     244:	2781                	sext.w	a5,a5
     246:	f6f74ae3          	blt	a4,a5,1ba <main+0x74>
     24a:	4501                	li	a0,0
     24c:	00000097          	auipc	ra,0x0
     250:	67c080e7          	jalr	1660(ra) # 8c8 <exit>

0000000000000254 <match>:
     254:	1101                	addi	sp,sp,-32
     256:	ec06                	sd	ra,24(sp)
     258:	e822                	sd	s0,16(sp)
     25a:	1000                	addi	s0,sp,32
     25c:	fea43423          	sd	a0,-24(s0)
     260:	feb43023          	sd	a1,-32(s0)
     264:	fe843783          	ld	a5,-24(s0)
     268:	0007c783          	lbu	a5,0(a5)
     26c:	873e                	mv	a4,a5
     26e:	05e00793          	li	a5,94
     272:	00f71e63          	bne	a4,a5,28e <match+0x3a>
     276:	fe843783          	ld	a5,-24(s0)
     27a:	0785                	addi	a5,a5,1
     27c:	fe043583          	ld	a1,-32(s0)
     280:	853e                	mv	a0,a5
     282:	00000097          	auipc	ra,0x0
     286:	042080e7          	jalr	66(ra) # 2c4 <matchhere>
     28a:	87aa                	mv	a5,a0
     28c:	a03d                	j	2ba <match+0x66>
     28e:	fe043583          	ld	a1,-32(s0)
     292:	fe843503          	ld	a0,-24(s0)
     296:	00000097          	auipc	ra,0x0
     29a:	02e080e7          	jalr	46(ra) # 2c4 <matchhere>
     29e:	87aa                	mv	a5,a0
     2a0:	c399                	beqz	a5,2a6 <match+0x52>
     2a2:	4785                	li	a5,1
     2a4:	a819                	j	2ba <match+0x66>
     2a6:	fe043783          	ld	a5,-32(s0)
     2aa:	00178713          	addi	a4,a5,1
     2ae:	fee43023          	sd	a4,-32(s0)
     2b2:	0007c783          	lbu	a5,0(a5)
     2b6:	ffe1                	bnez	a5,28e <match+0x3a>
     2b8:	4781                	li	a5,0
     2ba:	853e                	mv	a0,a5
     2bc:	60e2                	ld	ra,24(sp)
     2be:	6442                	ld	s0,16(sp)
     2c0:	6105                	addi	sp,sp,32
     2c2:	8082                	ret

00000000000002c4 <matchhere>:
     2c4:	1101                	addi	sp,sp,-32
     2c6:	ec06                	sd	ra,24(sp)
     2c8:	e822                	sd	s0,16(sp)
     2ca:	1000                	addi	s0,sp,32
     2cc:	fea43423          	sd	a0,-24(s0)
     2d0:	feb43023          	sd	a1,-32(s0)
     2d4:	fe843783          	ld	a5,-24(s0)
     2d8:	0007c783          	lbu	a5,0(a5)
     2dc:	e399                	bnez	a5,2e2 <matchhere+0x1e>
     2de:	4785                	li	a5,1
     2e0:	a0c1                	j	3a0 <matchhere+0xdc>
     2e2:	fe843783          	ld	a5,-24(s0)
     2e6:	0785                	addi	a5,a5,1
     2e8:	0007c783          	lbu	a5,0(a5)
     2ec:	873e                	mv	a4,a5
     2ee:	02a00793          	li	a5,42
     2f2:	02f71563          	bne	a4,a5,31c <matchhere+0x58>
     2f6:	fe843783          	ld	a5,-24(s0)
     2fa:	0007c783          	lbu	a5,0(a5)
     2fe:	0007871b          	sext.w	a4,a5
     302:	fe843783          	ld	a5,-24(s0)
     306:	0789                	addi	a5,a5,2
     308:	fe043603          	ld	a2,-32(s0)
     30c:	85be                	mv	a1,a5
     30e:	853a                	mv	a0,a4
     310:	00000097          	auipc	ra,0x0
     314:	09a080e7          	jalr	154(ra) # 3aa <matchstar>
     318:	87aa                	mv	a5,a0
     31a:	a059                	j	3a0 <matchhere+0xdc>
     31c:	fe843783          	ld	a5,-24(s0)
     320:	0007c783          	lbu	a5,0(a5)
     324:	873e                	mv	a4,a5
     326:	02400793          	li	a5,36
     32a:	02f71363          	bne	a4,a5,350 <matchhere+0x8c>
     32e:	fe843783          	ld	a5,-24(s0)
     332:	0785                	addi	a5,a5,1
     334:	0007c783          	lbu	a5,0(a5)
     338:	ef81                	bnez	a5,350 <matchhere+0x8c>
     33a:	fe043783          	ld	a5,-32(s0)
     33e:	0007c783          	lbu	a5,0(a5)
     342:	2781                	sext.w	a5,a5
     344:	0017b793          	seqz	a5,a5
     348:	0ff7f793          	zext.b	a5,a5
     34c:	2781                	sext.w	a5,a5
     34e:	a889                	j	3a0 <matchhere+0xdc>
     350:	fe043783          	ld	a5,-32(s0)
     354:	0007c783          	lbu	a5,0(a5)
     358:	c3b9                	beqz	a5,39e <matchhere+0xda>
     35a:	fe843783          	ld	a5,-24(s0)
     35e:	0007c783          	lbu	a5,0(a5)
     362:	873e                	mv	a4,a5
     364:	02e00793          	li	a5,46
     368:	00f70c63          	beq	a4,a5,380 <matchhere+0xbc>
     36c:	fe843783          	ld	a5,-24(s0)
     370:	0007c703          	lbu	a4,0(a5)
     374:	fe043783          	ld	a5,-32(s0)
     378:	0007c783          	lbu	a5,0(a5)
     37c:	02f71163          	bne	a4,a5,39e <matchhere+0xda>
     380:	fe843783          	ld	a5,-24(s0)
     384:	00178713          	addi	a4,a5,1
     388:	fe043783          	ld	a5,-32(s0)
     38c:	0785                	addi	a5,a5,1
     38e:	85be                	mv	a1,a5
     390:	853a                	mv	a0,a4
     392:	00000097          	auipc	ra,0x0
     396:	f32080e7          	jalr	-206(ra) # 2c4 <matchhere>
     39a:	87aa                	mv	a5,a0
     39c:	a011                	j	3a0 <matchhere+0xdc>
     39e:	4781                	li	a5,0
     3a0:	853e                	mv	a0,a5
     3a2:	60e2                	ld	ra,24(sp)
     3a4:	6442                	ld	s0,16(sp)
     3a6:	6105                	addi	sp,sp,32
     3a8:	8082                	ret

00000000000003aa <matchstar>:
     3aa:	7179                	addi	sp,sp,-48
     3ac:	f406                	sd	ra,40(sp)
     3ae:	f022                	sd	s0,32(sp)
     3b0:	1800                	addi	s0,sp,48
     3b2:	87aa                	mv	a5,a0
     3b4:	feb43023          	sd	a1,-32(s0)
     3b8:	fcc43c23          	sd	a2,-40(s0)
     3bc:	fef42623          	sw	a5,-20(s0)
     3c0:	fd843583          	ld	a1,-40(s0)
     3c4:	fe043503          	ld	a0,-32(s0)
     3c8:	00000097          	auipc	ra,0x0
     3cc:	efc080e7          	jalr	-260(ra) # 2c4 <matchhere>
     3d0:	87aa                	mv	a5,a0
     3d2:	c399                	beqz	a5,3d8 <matchstar+0x2e>
     3d4:	4785                	li	a5,1
     3d6:	a835                	j	412 <matchstar+0x68>
     3d8:	fd843783          	ld	a5,-40(s0)
     3dc:	0007c783          	lbu	a5,0(a5)
     3e0:	cb85                	beqz	a5,410 <matchstar+0x66>
     3e2:	fd843783          	ld	a5,-40(s0)
     3e6:	00178713          	addi	a4,a5,1
     3ea:	fce43c23          	sd	a4,-40(s0)
     3ee:	0007c783          	lbu	a5,0(a5)
     3f2:	0007871b          	sext.w	a4,a5
     3f6:	fec42783          	lw	a5,-20(s0)
     3fa:	2781                	sext.w	a5,a5
     3fc:	fce782e3          	beq	a5,a4,3c0 <matchstar+0x16>
     400:	fec42783          	lw	a5,-20(s0)
     404:	0007871b          	sext.w	a4,a5
     408:	02e00793          	li	a5,46
     40c:	faf70ae3          	beq	a4,a5,3c0 <matchstar+0x16>
     410:	4781                	li	a5,0
     412:	853e                	mv	a0,a5
     414:	70a2                	ld	ra,40(sp)
     416:	7402                	ld	s0,32(sp)
     418:	6145                	addi	sp,sp,48
     41a:	8082                	ret

000000000000041c <_main>:
     41c:	1141                	addi	sp,sp,-16
     41e:	e406                	sd	ra,8(sp)
     420:	e022                	sd	s0,0(sp)
     422:	0800                	addi	s0,sp,16
     424:	00000097          	auipc	ra,0x0
     428:	d22080e7          	jalr	-734(ra) # 146 <main>
     42c:	4501                	li	a0,0
     42e:	00000097          	auipc	ra,0x0
     432:	49a080e7          	jalr	1178(ra) # 8c8 <exit>

0000000000000436 <strcpy>:
     436:	7179                	addi	sp,sp,-48
     438:	f422                	sd	s0,40(sp)
     43a:	1800                	addi	s0,sp,48
     43c:	fca43c23          	sd	a0,-40(s0)
     440:	fcb43823          	sd	a1,-48(s0)
     444:	fd843783          	ld	a5,-40(s0)
     448:	fef43423          	sd	a5,-24(s0)
     44c:	0001                	nop
     44e:	fd043703          	ld	a4,-48(s0)
     452:	00170793          	addi	a5,a4,1
     456:	fcf43823          	sd	a5,-48(s0)
     45a:	fd843783          	ld	a5,-40(s0)
     45e:	00178693          	addi	a3,a5,1
     462:	fcd43c23          	sd	a3,-40(s0)
     466:	00074703          	lbu	a4,0(a4)
     46a:	00e78023          	sb	a4,0(a5)
     46e:	0007c783          	lbu	a5,0(a5)
     472:	fff1                	bnez	a5,44e <strcpy+0x18>
     474:	fe843783          	ld	a5,-24(s0)
     478:	853e                	mv	a0,a5
     47a:	7422                	ld	s0,40(sp)
     47c:	6145                	addi	sp,sp,48
     47e:	8082                	ret

0000000000000480 <strcmp>:
     480:	1101                	addi	sp,sp,-32
     482:	ec22                	sd	s0,24(sp)
     484:	1000                	addi	s0,sp,32
     486:	fea43423          	sd	a0,-24(s0)
     48a:	feb43023          	sd	a1,-32(s0)
     48e:	a819                	j	4a4 <strcmp+0x24>
     490:	fe843783          	ld	a5,-24(s0)
     494:	0785                	addi	a5,a5,1
     496:	fef43423          	sd	a5,-24(s0)
     49a:	fe043783          	ld	a5,-32(s0)
     49e:	0785                	addi	a5,a5,1
     4a0:	fef43023          	sd	a5,-32(s0)
     4a4:	fe843783          	ld	a5,-24(s0)
     4a8:	0007c783          	lbu	a5,0(a5)
     4ac:	cb99                	beqz	a5,4c2 <strcmp+0x42>
     4ae:	fe843783          	ld	a5,-24(s0)
     4b2:	0007c703          	lbu	a4,0(a5)
     4b6:	fe043783          	ld	a5,-32(s0)
     4ba:	0007c783          	lbu	a5,0(a5)
     4be:	fcf709e3          	beq	a4,a5,490 <strcmp+0x10>
     4c2:	fe843783          	ld	a5,-24(s0)
     4c6:	0007c783          	lbu	a5,0(a5)
     4ca:	0007871b          	sext.w	a4,a5
     4ce:	fe043783          	ld	a5,-32(s0)
     4d2:	0007c783          	lbu	a5,0(a5)
     4d6:	2781                	sext.w	a5,a5
     4d8:	40f707bb          	subw	a5,a4,a5
     4dc:	2781                	sext.w	a5,a5
     4de:	853e                	mv	a0,a5
     4e0:	6462                	ld	s0,24(sp)
     4e2:	6105                	addi	sp,sp,32
     4e4:	8082                	ret

00000000000004e6 <strlen>:
     4e6:	7179                	addi	sp,sp,-48
     4e8:	f422                	sd	s0,40(sp)
     4ea:	1800                	addi	s0,sp,48
     4ec:	fca43c23          	sd	a0,-40(s0)
     4f0:	fe042623          	sw	zero,-20(s0)
     4f4:	a031                	j	500 <strlen+0x1a>
     4f6:	fec42783          	lw	a5,-20(s0)
     4fa:	2785                	addiw	a5,a5,1
     4fc:	fef42623          	sw	a5,-20(s0)
     500:	fec42783          	lw	a5,-20(s0)
     504:	fd843703          	ld	a4,-40(s0)
     508:	97ba                	add	a5,a5,a4
     50a:	0007c783          	lbu	a5,0(a5)
     50e:	f7e5                	bnez	a5,4f6 <strlen+0x10>
     510:	fec42783          	lw	a5,-20(s0)
     514:	853e                	mv	a0,a5
     516:	7422                	ld	s0,40(sp)
     518:	6145                	addi	sp,sp,48
     51a:	8082                	ret

000000000000051c <memset>:
     51c:	7179                	addi	sp,sp,-48
     51e:	f422                	sd	s0,40(sp)
     520:	1800                	addi	s0,sp,48
     522:	fca43c23          	sd	a0,-40(s0)
     526:	87ae                	mv	a5,a1
     528:	8732                	mv	a4,a2
     52a:	fcf42a23          	sw	a5,-44(s0)
     52e:	87ba                	mv	a5,a4
     530:	fcf42823          	sw	a5,-48(s0)
     534:	fd843783          	ld	a5,-40(s0)
     538:	fef43023          	sd	a5,-32(s0)
     53c:	fe042623          	sw	zero,-20(s0)
     540:	a00d                	j	562 <memset+0x46>
     542:	fec42783          	lw	a5,-20(s0)
     546:	fe043703          	ld	a4,-32(s0)
     54a:	97ba                	add	a5,a5,a4
     54c:	fd442703          	lw	a4,-44(s0)
     550:	0ff77713          	zext.b	a4,a4
     554:	00e78023          	sb	a4,0(a5)
     558:	fec42783          	lw	a5,-20(s0)
     55c:	2785                	addiw	a5,a5,1
     55e:	fef42623          	sw	a5,-20(s0)
     562:	fec42703          	lw	a4,-20(s0)
     566:	fd042783          	lw	a5,-48(s0)
     56a:	2781                	sext.w	a5,a5
     56c:	fcf76be3          	bltu	a4,a5,542 <memset+0x26>
     570:	fd843783          	ld	a5,-40(s0)
     574:	853e                	mv	a0,a5
     576:	7422                	ld	s0,40(sp)
     578:	6145                	addi	sp,sp,48
     57a:	8082                	ret

000000000000057c <strchr>:
     57c:	1101                	addi	sp,sp,-32
     57e:	ec22                	sd	s0,24(sp)
     580:	1000                	addi	s0,sp,32
     582:	fea43423          	sd	a0,-24(s0)
     586:	87ae                	mv	a5,a1
     588:	fef403a3          	sb	a5,-25(s0)
     58c:	a01d                	j	5b2 <strchr+0x36>
     58e:	fe843783          	ld	a5,-24(s0)
     592:	0007c703          	lbu	a4,0(a5)
     596:	fe744783          	lbu	a5,-25(s0)
     59a:	0ff7f793          	zext.b	a5,a5
     59e:	00e79563          	bne	a5,a4,5a8 <strchr+0x2c>
     5a2:	fe843783          	ld	a5,-24(s0)
     5a6:	a821                	j	5be <strchr+0x42>
     5a8:	fe843783          	ld	a5,-24(s0)
     5ac:	0785                	addi	a5,a5,1
     5ae:	fef43423          	sd	a5,-24(s0)
     5b2:	fe843783          	ld	a5,-24(s0)
     5b6:	0007c783          	lbu	a5,0(a5)
     5ba:	fbf1                	bnez	a5,58e <strchr+0x12>
     5bc:	4781                	li	a5,0
     5be:	853e                	mv	a0,a5
     5c0:	6462                	ld	s0,24(sp)
     5c2:	6105                	addi	sp,sp,32
     5c4:	8082                	ret

00000000000005c6 <gets>:
     5c6:	7179                	addi	sp,sp,-48
     5c8:	f406                	sd	ra,40(sp)
     5ca:	f022                	sd	s0,32(sp)
     5cc:	1800                	addi	s0,sp,48
     5ce:	fca43c23          	sd	a0,-40(s0)
     5d2:	87ae                	mv	a5,a1
     5d4:	fcf42a23          	sw	a5,-44(s0)
     5d8:	fe042623          	sw	zero,-20(s0)
     5dc:	a8a1                	j	634 <gets+0x6e>
     5de:	fe740793          	addi	a5,s0,-25
     5e2:	4605                	li	a2,1
     5e4:	85be                	mv	a1,a5
     5e6:	4501                	li	a0,0
     5e8:	00000097          	auipc	ra,0x0
     5ec:	2f8080e7          	jalr	760(ra) # 8e0 <read>
     5f0:	87aa                	mv	a5,a0
     5f2:	fef42423          	sw	a5,-24(s0)
     5f6:	fe842783          	lw	a5,-24(s0)
     5fa:	2781                	sext.w	a5,a5
     5fc:	04f05763          	blez	a5,64a <gets+0x84>
     600:	fec42783          	lw	a5,-20(s0)
     604:	0017871b          	addiw	a4,a5,1
     608:	fee42623          	sw	a4,-20(s0)
     60c:	873e                	mv	a4,a5
     60e:	fd843783          	ld	a5,-40(s0)
     612:	97ba                	add	a5,a5,a4
     614:	fe744703          	lbu	a4,-25(s0)
     618:	00e78023          	sb	a4,0(a5)
     61c:	fe744783          	lbu	a5,-25(s0)
     620:	873e                	mv	a4,a5
     622:	47a9                	li	a5,10
     624:	02f70463          	beq	a4,a5,64c <gets+0x86>
     628:	fe744783          	lbu	a5,-25(s0)
     62c:	873e                	mv	a4,a5
     62e:	47b5                	li	a5,13
     630:	00f70e63          	beq	a4,a5,64c <gets+0x86>
     634:	fec42783          	lw	a5,-20(s0)
     638:	2785                	addiw	a5,a5,1
     63a:	0007871b          	sext.w	a4,a5
     63e:	fd442783          	lw	a5,-44(s0)
     642:	2781                	sext.w	a5,a5
     644:	f8f74de3          	blt	a4,a5,5de <gets+0x18>
     648:	a011                	j	64c <gets+0x86>
     64a:	0001                	nop
     64c:	fec42783          	lw	a5,-20(s0)
     650:	fd843703          	ld	a4,-40(s0)
     654:	97ba                	add	a5,a5,a4
     656:	00078023          	sb	zero,0(a5)
     65a:	fd843783          	ld	a5,-40(s0)
     65e:	853e                	mv	a0,a5
     660:	70a2                	ld	ra,40(sp)
     662:	7402                	ld	s0,32(sp)
     664:	6145                	addi	sp,sp,48
     666:	8082                	ret

0000000000000668 <stat>:
     668:	7179                	addi	sp,sp,-48
     66a:	f406                	sd	ra,40(sp)
     66c:	f022                	sd	s0,32(sp)
     66e:	1800                	addi	s0,sp,48
     670:	fca43c23          	sd	a0,-40(s0)
     674:	fcb43823          	sd	a1,-48(s0)
     678:	4581                	li	a1,0
     67a:	fd843503          	ld	a0,-40(s0)
     67e:	00000097          	auipc	ra,0x0
     682:	28a080e7          	jalr	650(ra) # 908 <open>
     686:	87aa                	mv	a5,a0
     688:	fef42623          	sw	a5,-20(s0)
     68c:	fec42783          	lw	a5,-20(s0)
     690:	2781                	sext.w	a5,a5
     692:	0007d463          	bgez	a5,69a <stat+0x32>
     696:	57fd                	li	a5,-1
     698:	a035                	j	6c4 <stat+0x5c>
     69a:	fec42783          	lw	a5,-20(s0)
     69e:	fd043583          	ld	a1,-48(s0)
     6a2:	853e                	mv	a0,a5
     6a4:	00000097          	auipc	ra,0x0
     6a8:	27c080e7          	jalr	636(ra) # 920 <fstat>
     6ac:	87aa                	mv	a5,a0
     6ae:	fef42423          	sw	a5,-24(s0)
     6b2:	fec42783          	lw	a5,-20(s0)
     6b6:	853e                	mv	a0,a5
     6b8:	00000097          	auipc	ra,0x0
     6bc:	238080e7          	jalr	568(ra) # 8f0 <close>
     6c0:	fe842783          	lw	a5,-24(s0)
     6c4:	853e                	mv	a0,a5
     6c6:	70a2                	ld	ra,40(sp)
     6c8:	7402                	ld	s0,32(sp)
     6ca:	6145                	addi	sp,sp,48
     6cc:	8082                	ret

00000000000006ce <atoi>:
     6ce:	7179                	addi	sp,sp,-48
     6d0:	f422                	sd	s0,40(sp)
     6d2:	1800                	addi	s0,sp,48
     6d4:	fca43c23          	sd	a0,-40(s0)
     6d8:	fe042623          	sw	zero,-20(s0)
     6dc:	a81d                	j	712 <atoi+0x44>
     6de:	fec42783          	lw	a5,-20(s0)
     6e2:	873e                	mv	a4,a5
     6e4:	87ba                	mv	a5,a4
     6e6:	0027979b          	slliw	a5,a5,0x2
     6ea:	9fb9                	addw	a5,a5,a4
     6ec:	0017979b          	slliw	a5,a5,0x1
     6f0:	0007871b          	sext.w	a4,a5
     6f4:	fd843783          	ld	a5,-40(s0)
     6f8:	00178693          	addi	a3,a5,1
     6fc:	fcd43c23          	sd	a3,-40(s0)
     700:	0007c783          	lbu	a5,0(a5)
     704:	2781                	sext.w	a5,a5
     706:	9fb9                	addw	a5,a5,a4
     708:	2781                	sext.w	a5,a5
     70a:	fd07879b          	addiw	a5,a5,-48
     70e:	fef42623          	sw	a5,-20(s0)
     712:	fd843783          	ld	a5,-40(s0)
     716:	0007c783          	lbu	a5,0(a5)
     71a:	873e                	mv	a4,a5
     71c:	02f00793          	li	a5,47
     720:	00e7fb63          	bgeu	a5,a4,736 <atoi+0x68>
     724:	fd843783          	ld	a5,-40(s0)
     728:	0007c783          	lbu	a5,0(a5)
     72c:	873e                	mv	a4,a5
     72e:	03900793          	li	a5,57
     732:	fae7f6e3          	bgeu	a5,a4,6de <atoi+0x10>
     736:	fec42783          	lw	a5,-20(s0)
     73a:	853e                	mv	a0,a5
     73c:	7422                	ld	s0,40(sp)
     73e:	6145                	addi	sp,sp,48
     740:	8082                	ret

0000000000000742 <memmove>:
     742:	7139                	addi	sp,sp,-64
     744:	fc22                	sd	s0,56(sp)
     746:	0080                	addi	s0,sp,64
     748:	fca43c23          	sd	a0,-40(s0)
     74c:	fcb43823          	sd	a1,-48(s0)
     750:	87b2                	mv	a5,a2
     752:	fcf42623          	sw	a5,-52(s0)
     756:	fd843783          	ld	a5,-40(s0)
     75a:	fef43423          	sd	a5,-24(s0)
     75e:	fd043783          	ld	a5,-48(s0)
     762:	fef43023          	sd	a5,-32(s0)
     766:	fe043703          	ld	a4,-32(s0)
     76a:	fe843783          	ld	a5,-24(s0)
     76e:	02e7fc63          	bgeu	a5,a4,7a6 <memmove+0x64>
     772:	a00d                	j	794 <memmove+0x52>
     774:	fe043703          	ld	a4,-32(s0)
     778:	00170793          	addi	a5,a4,1
     77c:	fef43023          	sd	a5,-32(s0)
     780:	fe843783          	ld	a5,-24(s0)
     784:	00178693          	addi	a3,a5,1
     788:	fed43423          	sd	a3,-24(s0)
     78c:	00074703          	lbu	a4,0(a4)
     790:	00e78023          	sb	a4,0(a5)
     794:	fcc42783          	lw	a5,-52(s0)
     798:	fff7871b          	addiw	a4,a5,-1
     79c:	fce42623          	sw	a4,-52(s0)
     7a0:	fcf04ae3          	bgtz	a5,774 <memmove+0x32>
     7a4:	a891                	j	7f8 <memmove+0xb6>
     7a6:	fcc42783          	lw	a5,-52(s0)
     7aa:	fe843703          	ld	a4,-24(s0)
     7ae:	97ba                	add	a5,a5,a4
     7b0:	fef43423          	sd	a5,-24(s0)
     7b4:	fcc42783          	lw	a5,-52(s0)
     7b8:	fe043703          	ld	a4,-32(s0)
     7bc:	97ba                	add	a5,a5,a4
     7be:	fef43023          	sd	a5,-32(s0)
     7c2:	a01d                	j	7e8 <memmove+0xa6>
     7c4:	fe043783          	ld	a5,-32(s0)
     7c8:	17fd                	addi	a5,a5,-1
     7ca:	fef43023          	sd	a5,-32(s0)
     7ce:	fe843783          	ld	a5,-24(s0)
     7d2:	17fd                	addi	a5,a5,-1
     7d4:	fef43423          	sd	a5,-24(s0)
     7d8:	fe043783          	ld	a5,-32(s0)
     7dc:	0007c703          	lbu	a4,0(a5)
     7e0:	fe843783          	ld	a5,-24(s0)
     7e4:	00e78023          	sb	a4,0(a5)
     7e8:	fcc42783          	lw	a5,-52(s0)
     7ec:	fff7871b          	addiw	a4,a5,-1
     7f0:	fce42623          	sw	a4,-52(s0)
     7f4:	fcf048e3          	bgtz	a5,7c4 <memmove+0x82>
     7f8:	fd843783          	ld	a5,-40(s0)
     7fc:	853e                	mv	a0,a5
     7fe:	7462                	ld	s0,56(sp)
     800:	6121                	addi	sp,sp,64
     802:	8082                	ret

0000000000000804 <memcmp>:
     804:	7139                	addi	sp,sp,-64
     806:	fc22                	sd	s0,56(sp)
     808:	0080                	addi	s0,sp,64
     80a:	fca43c23          	sd	a0,-40(s0)
     80e:	fcb43823          	sd	a1,-48(s0)
     812:	87b2                	mv	a5,a2
     814:	fcf42623          	sw	a5,-52(s0)
     818:	fd843783          	ld	a5,-40(s0)
     81c:	fef43423          	sd	a5,-24(s0)
     820:	fd043783          	ld	a5,-48(s0)
     824:	fef43023          	sd	a5,-32(s0)
     828:	a0a1                	j	870 <memcmp+0x6c>
     82a:	fe843783          	ld	a5,-24(s0)
     82e:	0007c703          	lbu	a4,0(a5)
     832:	fe043783          	ld	a5,-32(s0)
     836:	0007c783          	lbu	a5,0(a5)
     83a:	02f70163          	beq	a4,a5,85c <memcmp+0x58>
     83e:	fe843783          	ld	a5,-24(s0)
     842:	0007c783          	lbu	a5,0(a5)
     846:	0007871b          	sext.w	a4,a5
     84a:	fe043783          	ld	a5,-32(s0)
     84e:	0007c783          	lbu	a5,0(a5)
     852:	2781                	sext.w	a5,a5
     854:	40f707bb          	subw	a5,a4,a5
     858:	2781                	sext.w	a5,a5
     85a:	a01d                	j	880 <memcmp+0x7c>
     85c:	fe843783          	ld	a5,-24(s0)
     860:	0785                	addi	a5,a5,1
     862:	fef43423          	sd	a5,-24(s0)
     866:	fe043783          	ld	a5,-32(s0)
     86a:	0785                	addi	a5,a5,1
     86c:	fef43023          	sd	a5,-32(s0)
     870:	fcc42783          	lw	a5,-52(s0)
     874:	fff7871b          	addiw	a4,a5,-1
     878:	fce42623          	sw	a4,-52(s0)
     87c:	f7dd                	bnez	a5,82a <memcmp+0x26>
     87e:	4781                	li	a5,0
     880:	853e                	mv	a0,a5
     882:	7462                	ld	s0,56(sp)
     884:	6121                	addi	sp,sp,64
     886:	8082                	ret

0000000000000888 <memcpy>:
     888:	7179                	addi	sp,sp,-48
     88a:	f406                	sd	ra,40(sp)
     88c:	f022                	sd	s0,32(sp)
     88e:	1800                	addi	s0,sp,48
     890:	fea43423          	sd	a0,-24(s0)
     894:	feb43023          	sd	a1,-32(s0)
     898:	87b2                	mv	a5,a2
     89a:	fcf42e23          	sw	a5,-36(s0)
     89e:	fdc42783          	lw	a5,-36(s0)
     8a2:	863e                	mv	a2,a5
     8a4:	fe043583          	ld	a1,-32(s0)
     8a8:	fe843503          	ld	a0,-24(s0)
     8ac:	00000097          	auipc	ra,0x0
     8b0:	e96080e7          	jalr	-362(ra) # 742 <memmove>
     8b4:	87aa                	mv	a5,a0
     8b6:	853e                	mv	a0,a5
     8b8:	70a2                	ld	ra,40(sp)
     8ba:	7402                	ld	s0,32(sp)
     8bc:	6145                	addi	sp,sp,48
     8be:	8082                	ret

00000000000008c0 <fork>:
     8c0:	4885                	li	a7,1
     8c2:	00000073          	ecall
     8c6:	8082                	ret

00000000000008c8 <exit>:
     8c8:	4889                	li	a7,2
     8ca:	00000073          	ecall
     8ce:	8082                	ret

00000000000008d0 <wait>:
     8d0:	488d                	li	a7,3
     8d2:	00000073          	ecall
     8d6:	8082                	ret

00000000000008d8 <pipe>:
     8d8:	4891                	li	a7,4
     8da:	00000073          	ecall
     8de:	8082                	ret

00000000000008e0 <read>:
     8e0:	4895                	li	a7,5
     8e2:	00000073          	ecall
     8e6:	8082                	ret

00000000000008e8 <write>:
     8e8:	48c1                	li	a7,16
     8ea:	00000073          	ecall
     8ee:	8082                	ret

00000000000008f0 <close>:
     8f0:	48d5                	li	a7,21
     8f2:	00000073          	ecall
     8f6:	8082                	ret

00000000000008f8 <kill>:
     8f8:	4899                	li	a7,6
     8fa:	00000073          	ecall
     8fe:	8082                	ret

0000000000000900 <exec>:
     900:	489d                	li	a7,7
     902:	00000073          	ecall
     906:	8082                	ret

0000000000000908 <open>:
     908:	48bd                	li	a7,15
     90a:	00000073          	ecall
     90e:	8082                	ret

0000000000000910 <mknod>:
     910:	48c5                	li	a7,17
     912:	00000073          	ecall
     916:	8082                	ret

0000000000000918 <unlink>:
     918:	48c9                	li	a7,18
     91a:	00000073          	ecall
     91e:	8082                	ret

0000000000000920 <fstat>:
     920:	48a1                	li	a7,8
     922:	00000073          	ecall
     926:	8082                	ret

0000000000000928 <link>:
     928:	48cd                	li	a7,19
     92a:	00000073          	ecall
     92e:	8082                	ret

0000000000000930 <mkdir>:
     930:	48d1                	li	a7,20
     932:	00000073          	ecall
     936:	8082                	ret

0000000000000938 <chdir>:
     938:	48a5                	li	a7,9
     93a:	00000073          	ecall
     93e:	8082                	ret

0000000000000940 <dup>:
     940:	48a9                	li	a7,10
     942:	00000073          	ecall
     946:	8082                	ret

0000000000000948 <getpid>:
     948:	48ad                	li	a7,11
     94a:	00000073          	ecall
     94e:	8082                	ret

0000000000000950 <sbrk>:
     950:	48b1                	li	a7,12
     952:	00000073          	ecall
     956:	8082                	ret

0000000000000958 <sleep>:
     958:	48b5                	li	a7,13
     95a:	00000073          	ecall
     95e:	8082                	ret

0000000000000960 <uptime>:
     960:	48b9                	li	a7,14
     962:	00000073          	ecall
     966:	8082                	ret

0000000000000968 <waitx>:
     968:	48d9                	li	a7,22
     96a:	00000073          	ecall
     96e:	8082                	ret

0000000000000970 <getsyscount>:
     970:	48dd                	li	a7,23
     972:	00000073          	ecall
     976:	8082                	ret

0000000000000978 <sigalarm>:
     978:	48e1                	li	a7,24
     97a:	00000073          	ecall
     97e:	8082                	ret

0000000000000980 <sigreturn>:
     980:	48e5                	li	a7,25
     982:	00000073          	ecall
     986:	8082                	ret

0000000000000988 <settickets>:
     988:	48e9                	li	a7,26
     98a:	00000073          	ecall
     98e:	8082                	ret

0000000000000990 <putc>:
     990:	1101                	addi	sp,sp,-32
     992:	ec06                	sd	ra,24(sp)
     994:	e822                	sd	s0,16(sp)
     996:	1000                	addi	s0,sp,32
     998:	87aa                	mv	a5,a0
     99a:	872e                	mv	a4,a1
     99c:	fef42623          	sw	a5,-20(s0)
     9a0:	87ba                	mv	a5,a4
     9a2:	fef405a3          	sb	a5,-21(s0)
     9a6:	feb40713          	addi	a4,s0,-21
     9aa:	fec42783          	lw	a5,-20(s0)
     9ae:	4605                	li	a2,1
     9b0:	85ba                	mv	a1,a4
     9b2:	853e                	mv	a0,a5
     9b4:	00000097          	auipc	ra,0x0
     9b8:	f34080e7          	jalr	-204(ra) # 8e8 <write>
     9bc:	0001                	nop
     9be:	60e2                	ld	ra,24(sp)
     9c0:	6442                	ld	s0,16(sp)
     9c2:	6105                	addi	sp,sp,32
     9c4:	8082                	ret

00000000000009c6 <printint>:
     9c6:	7139                	addi	sp,sp,-64
     9c8:	fc06                	sd	ra,56(sp)
     9ca:	f822                	sd	s0,48(sp)
     9cc:	0080                	addi	s0,sp,64
     9ce:	87aa                	mv	a5,a0
     9d0:	8736                	mv	a4,a3
     9d2:	fcf42623          	sw	a5,-52(s0)
     9d6:	87ae                	mv	a5,a1
     9d8:	fcf42423          	sw	a5,-56(s0)
     9dc:	87b2                	mv	a5,a2
     9de:	fcf42223          	sw	a5,-60(s0)
     9e2:	87ba                	mv	a5,a4
     9e4:	fcf42023          	sw	a5,-64(s0)
     9e8:	fe042423          	sw	zero,-24(s0)
     9ec:	fc042783          	lw	a5,-64(s0)
     9f0:	2781                	sext.w	a5,a5
     9f2:	c38d                	beqz	a5,a14 <printint+0x4e>
     9f4:	fc842783          	lw	a5,-56(s0)
     9f8:	2781                	sext.w	a5,a5
     9fa:	0007dd63          	bgez	a5,a14 <printint+0x4e>
     9fe:	4785                	li	a5,1
     a00:	fef42423          	sw	a5,-24(s0)
     a04:	fc842783          	lw	a5,-56(s0)
     a08:	40f007bb          	negw	a5,a5
     a0c:	2781                	sext.w	a5,a5
     a0e:	fef42223          	sw	a5,-28(s0)
     a12:	a029                	j	a1c <printint+0x56>
     a14:	fc842783          	lw	a5,-56(s0)
     a18:	fef42223          	sw	a5,-28(s0)
     a1c:	fe042623          	sw	zero,-20(s0)
     a20:	fc442783          	lw	a5,-60(s0)
     a24:	fe442703          	lw	a4,-28(s0)
     a28:	02f777bb          	remuw	a5,a4,a5
     a2c:	0007861b          	sext.w	a2,a5
     a30:	fec42783          	lw	a5,-20(s0)
     a34:	0017871b          	addiw	a4,a5,1
     a38:	fee42623          	sw	a4,-20(s0)
     a3c:	00001697          	auipc	a3,0x1
     a40:	5c468693          	addi	a3,a3,1476 # 2000 <digits>
     a44:	02061713          	slli	a4,a2,0x20
     a48:	9301                	srli	a4,a4,0x20
     a4a:	9736                	add	a4,a4,a3
     a4c:	00074703          	lbu	a4,0(a4)
     a50:	17c1                	addi	a5,a5,-16
     a52:	97a2                	add	a5,a5,s0
     a54:	fee78023          	sb	a4,-32(a5)
     a58:	fc442783          	lw	a5,-60(s0)
     a5c:	fe442703          	lw	a4,-28(s0)
     a60:	02f757bb          	divuw	a5,a4,a5
     a64:	fef42223          	sw	a5,-28(s0)
     a68:	fe442783          	lw	a5,-28(s0)
     a6c:	2781                	sext.w	a5,a5
     a6e:	fbcd                	bnez	a5,a20 <printint+0x5a>
     a70:	fe842783          	lw	a5,-24(s0)
     a74:	2781                	sext.w	a5,a5
     a76:	cf85                	beqz	a5,aae <printint+0xe8>
     a78:	fec42783          	lw	a5,-20(s0)
     a7c:	0017871b          	addiw	a4,a5,1
     a80:	fee42623          	sw	a4,-20(s0)
     a84:	17c1                	addi	a5,a5,-16
     a86:	97a2                	add	a5,a5,s0
     a88:	02d00713          	li	a4,45
     a8c:	fee78023          	sb	a4,-32(a5)
     a90:	a839                	j	aae <printint+0xe8>
     a92:	fec42783          	lw	a5,-20(s0)
     a96:	17c1                	addi	a5,a5,-16
     a98:	97a2                	add	a5,a5,s0
     a9a:	fe07c703          	lbu	a4,-32(a5)
     a9e:	fcc42783          	lw	a5,-52(s0)
     aa2:	85ba                	mv	a1,a4
     aa4:	853e                	mv	a0,a5
     aa6:	00000097          	auipc	ra,0x0
     aaa:	eea080e7          	jalr	-278(ra) # 990 <putc>
     aae:	fec42783          	lw	a5,-20(s0)
     ab2:	37fd                	addiw	a5,a5,-1
     ab4:	fef42623          	sw	a5,-20(s0)
     ab8:	fec42783          	lw	a5,-20(s0)
     abc:	2781                	sext.w	a5,a5
     abe:	fc07dae3          	bgez	a5,a92 <printint+0xcc>
     ac2:	0001                	nop
     ac4:	0001                	nop
     ac6:	70e2                	ld	ra,56(sp)
     ac8:	7442                	ld	s0,48(sp)
     aca:	6121                	addi	sp,sp,64
     acc:	8082                	ret

0000000000000ace <printptr>:
     ace:	7179                	addi	sp,sp,-48
     ad0:	f406                	sd	ra,40(sp)
     ad2:	f022                	sd	s0,32(sp)
     ad4:	1800                	addi	s0,sp,48
     ad6:	87aa                	mv	a5,a0
     ad8:	fcb43823          	sd	a1,-48(s0)
     adc:	fcf42e23          	sw	a5,-36(s0)
     ae0:	fdc42783          	lw	a5,-36(s0)
     ae4:	03000593          	li	a1,48
     ae8:	853e                	mv	a0,a5
     aea:	00000097          	auipc	ra,0x0
     aee:	ea6080e7          	jalr	-346(ra) # 990 <putc>
     af2:	fdc42783          	lw	a5,-36(s0)
     af6:	07800593          	li	a1,120
     afa:	853e                	mv	a0,a5
     afc:	00000097          	auipc	ra,0x0
     b00:	e94080e7          	jalr	-364(ra) # 990 <putc>
     b04:	fe042623          	sw	zero,-20(s0)
     b08:	a82d                	j	b42 <printptr+0x74>
     b0a:	fd043783          	ld	a5,-48(s0)
     b0e:	93f1                	srli	a5,a5,0x3c
     b10:	00001717          	auipc	a4,0x1
     b14:	4f070713          	addi	a4,a4,1264 # 2000 <digits>
     b18:	97ba                	add	a5,a5,a4
     b1a:	0007c703          	lbu	a4,0(a5)
     b1e:	fdc42783          	lw	a5,-36(s0)
     b22:	85ba                	mv	a1,a4
     b24:	853e                	mv	a0,a5
     b26:	00000097          	auipc	ra,0x0
     b2a:	e6a080e7          	jalr	-406(ra) # 990 <putc>
     b2e:	fec42783          	lw	a5,-20(s0)
     b32:	2785                	addiw	a5,a5,1
     b34:	fef42623          	sw	a5,-20(s0)
     b38:	fd043783          	ld	a5,-48(s0)
     b3c:	0792                	slli	a5,a5,0x4
     b3e:	fcf43823          	sd	a5,-48(s0)
     b42:	fec42783          	lw	a5,-20(s0)
     b46:	873e                	mv	a4,a5
     b48:	47bd                	li	a5,15
     b4a:	fce7f0e3          	bgeu	a5,a4,b0a <printptr+0x3c>
     b4e:	0001                	nop
     b50:	0001                	nop
     b52:	70a2                	ld	ra,40(sp)
     b54:	7402                	ld	s0,32(sp)
     b56:	6145                	addi	sp,sp,48
     b58:	8082                	ret

0000000000000b5a <vprintf>:
     b5a:	715d                	addi	sp,sp,-80
     b5c:	e486                	sd	ra,72(sp)
     b5e:	e0a2                	sd	s0,64(sp)
     b60:	0880                	addi	s0,sp,80
     b62:	87aa                	mv	a5,a0
     b64:	fcb43023          	sd	a1,-64(s0)
     b68:	fac43c23          	sd	a2,-72(s0)
     b6c:	fcf42623          	sw	a5,-52(s0)
     b70:	fe042023          	sw	zero,-32(s0)
     b74:	fe042223          	sw	zero,-28(s0)
     b78:	a42d                	j	da2 <vprintf+0x248>
     b7a:	fe442783          	lw	a5,-28(s0)
     b7e:	fc043703          	ld	a4,-64(s0)
     b82:	97ba                	add	a5,a5,a4
     b84:	0007c783          	lbu	a5,0(a5)
     b88:	fcf42e23          	sw	a5,-36(s0)
     b8c:	fe042783          	lw	a5,-32(s0)
     b90:	2781                	sext.w	a5,a5
     b92:	eb9d                	bnez	a5,bc8 <vprintf+0x6e>
     b94:	fdc42783          	lw	a5,-36(s0)
     b98:	0007871b          	sext.w	a4,a5
     b9c:	02500793          	li	a5,37
     ba0:	00f71763          	bne	a4,a5,bae <vprintf+0x54>
     ba4:	02500793          	li	a5,37
     ba8:	fef42023          	sw	a5,-32(s0)
     bac:	a2f5                	j	d98 <vprintf+0x23e>
     bae:	fdc42783          	lw	a5,-36(s0)
     bb2:	0ff7f713          	zext.b	a4,a5
     bb6:	fcc42783          	lw	a5,-52(s0)
     bba:	85ba                	mv	a1,a4
     bbc:	853e                	mv	a0,a5
     bbe:	00000097          	auipc	ra,0x0
     bc2:	dd2080e7          	jalr	-558(ra) # 990 <putc>
     bc6:	aac9                	j	d98 <vprintf+0x23e>
     bc8:	fe042783          	lw	a5,-32(s0)
     bcc:	0007871b          	sext.w	a4,a5
     bd0:	02500793          	li	a5,37
     bd4:	1cf71263          	bne	a4,a5,d98 <vprintf+0x23e>
     bd8:	fdc42783          	lw	a5,-36(s0)
     bdc:	0007871b          	sext.w	a4,a5
     be0:	06400793          	li	a5,100
     be4:	02f71463          	bne	a4,a5,c0c <vprintf+0xb2>
     be8:	fb843783          	ld	a5,-72(s0)
     bec:	00878713          	addi	a4,a5,8
     bf0:	fae43c23          	sd	a4,-72(s0)
     bf4:	4398                	lw	a4,0(a5)
     bf6:	fcc42783          	lw	a5,-52(s0)
     bfa:	4685                	li	a3,1
     bfc:	4629                	li	a2,10
     bfe:	85ba                	mv	a1,a4
     c00:	853e                	mv	a0,a5
     c02:	00000097          	auipc	ra,0x0
     c06:	dc4080e7          	jalr	-572(ra) # 9c6 <printint>
     c0a:	a269                	j	d94 <vprintf+0x23a>
     c0c:	fdc42783          	lw	a5,-36(s0)
     c10:	0007871b          	sext.w	a4,a5
     c14:	06c00793          	li	a5,108
     c18:	02f71663          	bne	a4,a5,c44 <vprintf+0xea>
     c1c:	fb843783          	ld	a5,-72(s0)
     c20:	00878713          	addi	a4,a5,8
     c24:	fae43c23          	sd	a4,-72(s0)
     c28:	639c                	ld	a5,0(a5)
     c2a:	0007871b          	sext.w	a4,a5
     c2e:	fcc42783          	lw	a5,-52(s0)
     c32:	4681                	li	a3,0
     c34:	4629                	li	a2,10
     c36:	85ba                	mv	a1,a4
     c38:	853e                	mv	a0,a5
     c3a:	00000097          	auipc	ra,0x0
     c3e:	d8c080e7          	jalr	-628(ra) # 9c6 <printint>
     c42:	aa89                	j	d94 <vprintf+0x23a>
     c44:	fdc42783          	lw	a5,-36(s0)
     c48:	0007871b          	sext.w	a4,a5
     c4c:	07800793          	li	a5,120
     c50:	02f71463          	bne	a4,a5,c78 <vprintf+0x11e>
     c54:	fb843783          	ld	a5,-72(s0)
     c58:	00878713          	addi	a4,a5,8
     c5c:	fae43c23          	sd	a4,-72(s0)
     c60:	4398                	lw	a4,0(a5)
     c62:	fcc42783          	lw	a5,-52(s0)
     c66:	4681                	li	a3,0
     c68:	4641                	li	a2,16
     c6a:	85ba                	mv	a1,a4
     c6c:	853e                	mv	a0,a5
     c6e:	00000097          	auipc	ra,0x0
     c72:	d58080e7          	jalr	-680(ra) # 9c6 <printint>
     c76:	aa39                	j	d94 <vprintf+0x23a>
     c78:	fdc42783          	lw	a5,-36(s0)
     c7c:	0007871b          	sext.w	a4,a5
     c80:	07000793          	li	a5,112
     c84:	02f71263          	bne	a4,a5,ca8 <vprintf+0x14e>
     c88:	fb843783          	ld	a5,-72(s0)
     c8c:	00878713          	addi	a4,a5,8
     c90:	fae43c23          	sd	a4,-72(s0)
     c94:	6398                	ld	a4,0(a5)
     c96:	fcc42783          	lw	a5,-52(s0)
     c9a:	85ba                	mv	a1,a4
     c9c:	853e                	mv	a0,a5
     c9e:	00000097          	auipc	ra,0x0
     ca2:	e30080e7          	jalr	-464(ra) # ace <printptr>
     ca6:	a0fd                	j	d94 <vprintf+0x23a>
     ca8:	fdc42783          	lw	a5,-36(s0)
     cac:	0007871b          	sext.w	a4,a5
     cb0:	07300793          	li	a5,115
     cb4:	04f71c63          	bne	a4,a5,d0c <vprintf+0x1b2>
     cb8:	fb843783          	ld	a5,-72(s0)
     cbc:	00878713          	addi	a4,a5,8
     cc0:	fae43c23          	sd	a4,-72(s0)
     cc4:	639c                	ld	a5,0(a5)
     cc6:	fef43423          	sd	a5,-24(s0)
     cca:	fe843783          	ld	a5,-24(s0)
     cce:	eb8d                	bnez	a5,d00 <vprintf+0x1a6>
     cd0:	00000797          	auipc	a5,0x0
     cd4:	4b878793          	addi	a5,a5,1208 # 1188 <malloc+0x17e>
     cd8:	fef43423          	sd	a5,-24(s0)
     cdc:	a015                	j	d00 <vprintf+0x1a6>
     cde:	fe843783          	ld	a5,-24(s0)
     ce2:	0007c703          	lbu	a4,0(a5)
     ce6:	fcc42783          	lw	a5,-52(s0)
     cea:	85ba                	mv	a1,a4
     cec:	853e                	mv	a0,a5
     cee:	00000097          	auipc	ra,0x0
     cf2:	ca2080e7          	jalr	-862(ra) # 990 <putc>
     cf6:	fe843783          	ld	a5,-24(s0)
     cfa:	0785                	addi	a5,a5,1
     cfc:	fef43423          	sd	a5,-24(s0)
     d00:	fe843783          	ld	a5,-24(s0)
     d04:	0007c783          	lbu	a5,0(a5)
     d08:	fbf9                	bnez	a5,cde <vprintf+0x184>
     d0a:	a069                	j	d94 <vprintf+0x23a>
     d0c:	fdc42783          	lw	a5,-36(s0)
     d10:	0007871b          	sext.w	a4,a5
     d14:	06300793          	li	a5,99
     d18:	02f71463          	bne	a4,a5,d40 <vprintf+0x1e6>
     d1c:	fb843783          	ld	a5,-72(s0)
     d20:	00878713          	addi	a4,a5,8
     d24:	fae43c23          	sd	a4,-72(s0)
     d28:	439c                	lw	a5,0(a5)
     d2a:	0ff7f713          	zext.b	a4,a5
     d2e:	fcc42783          	lw	a5,-52(s0)
     d32:	85ba                	mv	a1,a4
     d34:	853e                	mv	a0,a5
     d36:	00000097          	auipc	ra,0x0
     d3a:	c5a080e7          	jalr	-934(ra) # 990 <putc>
     d3e:	a899                	j	d94 <vprintf+0x23a>
     d40:	fdc42783          	lw	a5,-36(s0)
     d44:	0007871b          	sext.w	a4,a5
     d48:	02500793          	li	a5,37
     d4c:	00f71f63          	bne	a4,a5,d6a <vprintf+0x210>
     d50:	fdc42783          	lw	a5,-36(s0)
     d54:	0ff7f713          	zext.b	a4,a5
     d58:	fcc42783          	lw	a5,-52(s0)
     d5c:	85ba                	mv	a1,a4
     d5e:	853e                	mv	a0,a5
     d60:	00000097          	auipc	ra,0x0
     d64:	c30080e7          	jalr	-976(ra) # 990 <putc>
     d68:	a035                	j	d94 <vprintf+0x23a>
     d6a:	fcc42783          	lw	a5,-52(s0)
     d6e:	02500593          	li	a1,37
     d72:	853e                	mv	a0,a5
     d74:	00000097          	auipc	ra,0x0
     d78:	c1c080e7          	jalr	-996(ra) # 990 <putc>
     d7c:	fdc42783          	lw	a5,-36(s0)
     d80:	0ff7f713          	zext.b	a4,a5
     d84:	fcc42783          	lw	a5,-52(s0)
     d88:	85ba                	mv	a1,a4
     d8a:	853e                	mv	a0,a5
     d8c:	00000097          	auipc	ra,0x0
     d90:	c04080e7          	jalr	-1020(ra) # 990 <putc>
     d94:	fe042023          	sw	zero,-32(s0)
     d98:	fe442783          	lw	a5,-28(s0)
     d9c:	2785                	addiw	a5,a5,1
     d9e:	fef42223          	sw	a5,-28(s0)
     da2:	fe442783          	lw	a5,-28(s0)
     da6:	fc043703          	ld	a4,-64(s0)
     daa:	97ba                	add	a5,a5,a4
     dac:	0007c783          	lbu	a5,0(a5)
     db0:	dc0795e3          	bnez	a5,b7a <vprintf+0x20>
     db4:	0001                	nop
     db6:	0001                	nop
     db8:	60a6                	ld	ra,72(sp)
     dba:	6406                	ld	s0,64(sp)
     dbc:	6161                	addi	sp,sp,80
     dbe:	8082                	ret

0000000000000dc0 <fprintf>:
     dc0:	7159                	addi	sp,sp,-112
     dc2:	fc06                	sd	ra,56(sp)
     dc4:	f822                	sd	s0,48(sp)
     dc6:	0080                	addi	s0,sp,64
     dc8:	fcb43823          	sd	a1,-48(s0)
     dcc:	e010                	sd	a2,0(s0)
     dce:	e414                	sd	a3,8(s0)
     dd0:	e818                	sd	a4,16(s0)
     dd2:	ec1c                	sd	a5,24(s0)
     dd4:	03043023          	sd	a6,32(s0)
     dd8:	03143423          	sd	a7,40(s0)
     ddc:	87aa                	mv	a5,a0
     dde:	fcf42e23          	sw	a5,-36(s0)
     de2:	03040793          	addi	a5,s0,48
     de6:	fcf43423          	sd	a5,-56(s0)
     dea:	fc843783          	ld	a5,-56(s0)
     dee:	fd078793          	addi	a5,a5,-48
     df2:	fef43423          	sd	a5,-24(s0)
     df6:	fe843703          	ld	a4,-24(s0)
     dfa:	fdc42783          	lw	a5,-36(s0)
     dfe:	863a                	mv	a2,a4
     e00:	fd043583          	ld	a1,-48(s0)
     e04:	853e                	mv	a0,a5
     e06:	00000097          	auipc	ra,0x0
     e0a:	d54080e7          	jalr	-684(ra) # b5a <vprintf>
     e0e:	0001                	nop
     e10:	70e2                	ld	ra,56(sp)
     e12:	7442                	ld	s0,48(sp)
     e14:	6165                	addi	sp,sp,112
     e16:	8082                	ret

0000000000000e18 <printf>:
     e18:	7159                	addi	sp,sp,-112
     e1a:	f406                	sd	ra,40(sp)
     e1c:	f022                	sd	s0,32(sp)
     e1e:	1800                	addi	s0,sp,48
     e20:	fca43c23          	sd	a0,-40(s0)
     e24:	e40c                	sd	a1,8(s0)
     e26:	e810                	sd	a2,16(s0)
     e28:	ec14                	sd	a3,24(s0)
     e2a:	f018                	sd	a4,32(s0)
     e2c:	f41c                	sd	a5,40(s0)
     e2e:	03043823          	sd	a6,48(s0)
     e32:	03143c23          	sd	a7,56(s0)
     e36:	04040793          	addi	a5,s0,64
     e3a:	fcf43823          	sd	a5,-48(s0)
     e3e:	fd043783          	ld	a5,-48(s0)
     e42:	fc878793          	addi	a5,a5,-56
     e46:	fef43423          	sd	a5,-24(s0)
     e4a:	fe843783          	ld	a5,-24(s0)
     e4e:	863e                	mv	a2,a5
     e50:	fd843583          	ld	a1,-40(s0)
     e54:	4505                	li	a0,1
     e56:	00000097          	auipc	ra,0x0
     e5a:	d04080e7          	jalr	-764(ra) # b5a <vprintf>
     e5e:	0001                	nop
     e60:	70a2                	ld	ra,40(sp)
     e62:	7402                	ld	s0,32(sp)
     e64:	6165                	addi	sp,sp,112
     e66:	8082                	ret

0000000000000e68 <free>:
     e68:	7179                	addi	sp,sp,-48
     e6a:	f422                	sd	s0,40(sp)
     e6c:	1800                	addi	s0,sp,48
     e6e:	fca43c23          	sd	a0,-40(s0)
     e72:	fd843783          	ld	a5,-40(s0)
     e76:	17c1                	addi	a5,a5,-16
     e78:	fef43023          	sd	a5,-32(s0)
     e7c:	00001797          	auipc	a5,0x1
     e80:	5b478793          	addi	a5,a5,1460 # 2430 <freep>
     e84:	639c                	ld	a5,0(a5)
     e86:	fef43423          	sd	a5,-24(s0)
     e8a:	a815                	j	ebe <free+0x56>
     e8c:	fe843783          	ld	a5,-24(s0)
     e90:	639c                	ld	a5,0(a5)
     e92:	fe843703          	ld	a4,-24(s0)
     e96:	00f76f63          	bltu	a4,a5,eb4 <free+0x4c>
     e9a:	fe043703          	ld	a4,-32(s0)
     e9e:	fe843783          	ld	a5,-24(s0)
     ea2:	02e7eb63          	bltu	a5,a4,ed8 <free+0x70>
     ea6:	fe843783          	ld	a5,-24(s0)
     eaa:	639c                	ld	a5,0(a5)
     eac:	fe043703          	ld	a4,-32(s0)
     eb0:	02f76463          	bltu	a4,a5,ed8 <free+0x70>
     eb4:	fe843783          	ld	a5,-24(s0)
     eb8:	639c                	ld	a5,0(a5)
     eba:	fef43423          	sd	a5,-24(s0)
     ebe:	fe043703          	ld	a4,-32(s0)
     ec2:	fe843783          	ld	a5,-24(s0)
     ec6:	fce7f3e3          	bgeu	a5,a4,e8c <free+0x24>
     eca:	fe843783          	ld	a5,-24(s0)
     ece:	639c                	ld	a5,0(a5)
     ed0:	fe043703          	ld	a4,-32(s0)
     ed4:	faf77ce3          	bgeu	a4,a5,e8c <free+0x24>
     ed8:	fe043783          	ld	a5,-32(s0)
     edc:	479c                	lw	a5,8(a5)
     ede:	1782                	slli	a5,a5,0x20
     ee0:	9381                	srli	a5,a5,0x20
     ee2:	0792                	slli	a5,a5,0x4
     ee4:	fe043703          	ld	a4,-32(s0)
     ee8:	973e                	add	a4,a4,a5
     eea:	fe843783          	ld	a5,-24(s0)
     eee:	639c                	ld	a5,0(a5)
     ef0:	02f71763          	bne	a4,a5,f1e <free+0xb6>
     ef4:	fe043783          	ld	a5,-32(s0)
     ef8:	4798                	lw	a4,8(a5)
     efa:	fe843783          	ld	a5,-24(s0)
     efe:	639c                	ld	a5,0(a5)
     f00:	479c                	lw	a5,8(a5)
     f02:	9fb9                	addw	a5,a5,a4
     f04:	0007871b          	sext.w	a4,a5
     f08:	fe043783          	ld	a5,-32(s0)
     f0c:	c798                	sw	a4,8(a5)
     f0e:	fe843783          	ld	a5,-24(s0)
     f12:	639c                	ld	a5,0(a5)
     f14:	6398                	ld	a4,0(a5)
     f16:	fe043783          	ld	a5,-32(s0)
     f1a:	e398                	sd	a4,0(a5)
     f1c:	a039                	j	f2a <free+0xc2>
     f1e:	fe843783          	ld	a5,-24(s0)
     f22:	6398                	ld	a4,0(a5)
     f24:	fe043783          	ld	a5,-32(s0)
     f28:	e398                	sd	a4,0(a5)
     f2a:	fe843783          	ld	a5,-24(s0)
     f2e:	479c                	lw	a5,8(a5)
     f30:	1782                	slli	a5,a5,0x20
     f32:	9381                	srli	a5,a5,0x20
     f34:	0792                	slli	a5,a5,0x4
     f36:	fe843703          	ld	a4,-24(s0)
     f3a:	97ba                	add	a5,a5,a4
     f3c:	fe043703          	ld	a4,-32(s0)
     f40:	02f71563          	bne	a4,a5,f6a <free+0x102>
     f44:	fe843783          	ld	a5,-24(s0)
     f48:	4798                	lw	a4,8(a5)
     f4a:	fe043783          	ld	a5,-32(s0)
     f4e:	479c                	lw	a5,8(a5)
     f50:	9fb9                	addw	a5,a5,a4
     f52:	0007871b          	sext.w	a4,a5
     f56:	fe843783          	ld	a5,-24(s0)
     f5a:	c798                	sw	a4,8(a5)
     f5c:	fe043783          	ld	a5,-32(s0)
     f60:	6398                	ld	a4,0(a5)
     f62:	fe843783          	ld	a5,-24(s0)
     f66:	e398                	sd	a4,0(a5)
     f68:	a031                	j	f74 <free+0x10c>
     f6a:	fe843783          	ld	a5,-24(s0)
     f6e:	fe043703          	ld	a4,-32(s0)
     f72:	e398                	sd	a4,0(a5)
     f74:	00001797          	auipc	a5,0x1
     f78:	4bc78793          	addi	a5,a5,1212 # 2430 <freep>
     f7c:	fe843703          	ld	a4,-24(s0)
     f80:	e398                	sd	a4,0(a5)
     f82:	0001                	nop
     f84:	7422                	ld	s0,40(sp)
     f86:	6145                	addi	sp,sp,48
     f88:	8082                	ret

0000000000000f8a <morecore>:
     f8a:	7179                	addi	sp,sp,-48
     f8c:	f406                	sd	ra,40(sp)
     f8e:	f022                	sd	s0,32(sp)
     f90:	1800                	addi	s0,sp,48
     f92:	87aa                	mv	a5,a0
     f94:	fcf42e23          	sw	a5,-36(s0)
     f98:	fdc42783          	lw	a5,-36(s0)
     f9c:	0007871b          	sext.w	a4,a5
     fa0:	6785                	lui	a5,0x1
     fa2:	00f77563          	bgeu	a4,a5,fac <morecore+0x22>
     fa6:	6785                	lui	a5,0x1
     fa8:	fcf42e23          	sw	a5,-36(s0)
     fac:	fdc42783          	lw	a5,-36(s0)
     fb0:	0047979b          	slliw	a5,a5,0x4
     fb4:	2781                	sext.w	a5,a5
     fb6:	2781                	sext.w	a5,a5
     fb8:	853e                	mv	a0,a5
     fba:	00000097          	auipc	ra,0x0
     fbe:	996080e7          	jalr	-1642(ra) # 950 <sbrk>
     fc2:	fea43423          	sd	a0,-24(s0)
     fc6:	fe843703          	ld	a4,-24(s0)
     fca:	57fd                	li	a5,-1
     fcc:	00f71463          	bne	a4,a5,fd4 <morecore+0x4a>
     fd0:	4781                	li	a5,0
     fd2:	a03d                	j	1000 <morecore+0x76>
     fd4:	fe843783          	ld	a5,-24(s0)
     fd8:	fef43023          	sd	a5,-32(s0)
     fdc:	fe043783          	ld	a5,-32(s0)
     fe0:	fdc42703          	lw	a4,-36(s0)
     fe4:	c798                	sw	a4,8(a5)
     fe6:	fe043783          	ld	a5,-32(s0)
     fea:	07c1                	addi	a5,a5,16 # 1010 <malloc+0x6>
     fec:	853e                	mv	a0,a5
     fee:	00000097          	auipc	ra,0x0
     ff2:	e7a080e7          	jalr	-390(ra) # e68 <free>
     ff6:	00001797          	auipc	a5,0x1
     ffa:	43a78793          	addi	a5,a5,1082 # 2430 <freep>
     ffe:	639c                	ld	a5,0(a5)
    1000:	853e                	mv	a0,a5
    1002:	70a2                	ld	ra,40(sp)
    1004:	7402                	ld	s0,32(sp)
    1006:	6145                	addi	sp,sp,48
    1008:	8082                	ret

000000000000100a <malloc>:
    100a:	7139                	addi	sp,sp,-64
    100c:	fc06                	sd	ra,56(sp)
    100e:	f822                	sd	s0,48(sp)
    1010:	0080                	addi	s0,sp,64
    1012:	87aa                	mv	a5,a0
    1014:	fcf42623          	sw	a5,-52(s0)
    1018:	fcc46783          	lwu	a5,-52(s0)
    101c:	07bd                	addi	a5,a5,15
    101e:	8391                	srli	a5,a5,0x4
    1020:	2781                	sext.w	a5,a5
    1022:	2785                	addiw	a5,a5,1
    1024:	fcf42e23          	sw	a5,-36(s0)
    1028:	00001797          	auipc	a5,0x1
    102c:	40878793          	addi	a5,a5,1032 # 2430 <freep>
    1030:	639c                	ld	a5,0(a5)
    1032:	fef43023          	sd	a5,-32(s0)
    1036:	fe043783          	ld	a5,-32(s0)
    103a:	ef95                	bnez	a5,1076 <malloc+0x6c>
    103c:	00001797          	auipc	a5,0x1
    1040:	3e478793          	addi	a5,a5,996 # 2420 <base>
    1044:	fef43023          	sd	a5,-32(s0)
    1048:	00001797          	auipc	a5,0x1
    104c:	3e878793          	addi	a5,a5,1000 # 2430 <freep>
    1050:	fe043703          	ld	a4,-32(s0)
    1054:	e398                	sd	a4,0(a5)
    1056:	00001797          	auipc	a5,0x1
    105a:	3da78793          	addi	a5,a5,986 # 2430 <freep>
    105e:	6398                	ld	a4,0(a5)
    1060:	00001797          	auipc	a5,0x1
    1064:	3c078793          	addi	a5,a5,960 # 2420 <base>
    1068:	e398                	sd	a4,0(a5)
    106a:	00001797          	auipc	a5,0x1
    106e:	3b678793          	addi	a5,a5,950 # 2420 <base>
    1072:	0007a423          	sw	zero,8(a5)
    1076:	fe043783          	ld	a5,-32(s0)
    107a:	639c                	ld	a5,0(a5)
    107c:	fef43423          	sd	a5,-24(s0)
    1080:	fe843783          	ld	a5,-24(s0)
    1084:	4798                	lw	a4,8(a5)
    1086:	fdc42783          	lw	a5,-36(s0)
    108a:	2781                	sext.w	a5,a5
    108c:	06f76763          	bltu	a4,a5,10fa <malloc+0xf0>
    1090:	fe843783          	ld	a5,-24(s0)
    1094:	4798                	lw	a4,8(a5)
    1096:	fdc42783          	lw	a5,-36(s0)
    109a:	2781                	sext.w	a5,a5
    109c:	00e79963          	bne	a5,a4,10ae <malloc+0xa4>
    10a0:	fe843783          	ld	a5,-24(s0)
    10a4:	6398                	ld	a4,0(a5)
    10a6:	fe043783          	ld	a5,-32(s0)
    10aa:	e398                	sd	a4,0(a5)
    10ac:	a825                	j	10e4 <malloc+0xda>
    10ae:	fe843783          	ld	a5,-24(s0)
    10b2:	479c                	lw	a5,8(a5)
    10b4:	fdc42703          	lw	a4,-36(s0)
    10b8:	9f99                	subw	a5,a5,a4
    10ba:	0007871b          	sext.w	a4,a5
    10be:	fe843783          	ld	a5,-24(s0)
    10c2:	c798                	sw	a4,8(a5)
    10c4:	fe843783          	ld	a5,-24(s0)
    10c8:	479c                	lw	a5,8(a5)
    10ca:	1782                	slli	a5,a5,0x20
    10cc:	9381                	srli	a5,a5,0x20
    10ce:	0792                	slli	a5,a5,0x4
    10d0:	fe843703          	ld	a4,-24(s0)
    10d4:	97ba                	add	a5,a5,a4
    10d6:	fef43423          	sd	a5,-24(s0)
    10da:	fe843783          	ld	a5,-24(s0)
    10de:	fdc42703          	lw	a4,-36(s0)
    10e2:	c798                	sw	a4,8(a5)
    10e4:	00001797          	auipc	a5,0x1
    10e8:	34c78793          	addi	a5,a5,844 # 2430 <freep>
    10ec:	fe043703          	ld	a4,-32(s0)
    10f0:	e398                	sd	a4,0(a5)
    10f2:	fe843783          	ld	a5,-24(s0)
    10f6:	07c1                	addi	a5,a5,16
    10f8:	a091                	j	113c <malloc+0x132>
    10fa:	00001797          	auipc	a5,0x1
    10fe:	33678793          	addi	a5,a5,822 # 2430 <freep>
    1102:	639c                	ld	a5,0(a5)
    1104:	fe843703          	ld	a4,-24(s0)
    1108:	02f71063          	bne	a4,a5,1128 <malloc+0x11e>
    110c:	fdc42783          	lw	a5,-36(s0)
    1110:	853e                	mv	a0,a5
    1112:	00000097          	auipc	ra,0x0
    1116:	e78080e7          	jalr	-392(ra) # f8a <morecore>
    111a:	fea43423          	sd	a0,-24(s0)
    111e:	fe843783          	ld	a5,-24(s0)
    1122:	e399                	bnez	a5,1128 <malloc+0x11e>
    1124:	4781                	li	a5,0
    1126:	a819                	j	113c <malloc+0x132>
    1128:	fe843783          	ld	a5,-24(s0)
    112c:	fef43023          	sd	a5,-32(s0)
    1130:	fe843783          	ld	a5,-24(s0)
    1134:	639c                	ld	a5,0(a5)
    1136:	fef43423          	sd	a5,-24(s0)
    113a:	b799                	j	1080 <malloc+0x76>
    113c:	853e                	mv	a0,a5
    113e:	70e2                	ld	ra,56(sp)
    1140:	7442                	ld	s0,48(sp)
    1142:	6121                	addi	sp,sp,64
    1144:	8082                	ret
